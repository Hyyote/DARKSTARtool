using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DARKSTARtool
{
    public partial class MainForm : Form
    {
        private CheckBox chkRegularTweaks = null!;
        private CheckBox chkDangerousTweaks = null!;
        private CheckBox chkMinimalServices = null!;
        private CheckBox chkIntelPowerPlan = null!;
        private CheckBox chkAmdPowerPlan = null!;
        private CheckBox chkPowerSaving = null!;
        private CheckBox btnPowerSaving = null!;
        private Button btnExecute = null!;
        private ProgressBar progressBar = null!;
        private TextBox txtLog = null!;
        private Label lblStatus = null!;
        private string tempDir = string.Empty;
        private string nsudoPath = string.Empty;
        private Point mouseOffset;
        private bool isDragging = false;

        public MainForm()
        {
            InitializeComponent();
            CheckNSudoPresence();
            ApplyRoundedRegion();
            this.Resize += (s, e) => ApplyRoundedRegion();
        }

        private void InitializeComponent()
        {
            this.Text = "DARKSTARtool";
            this.ClientSize = new Size(1100, 800);
            this.StartPosition = FormStartPosition.CenterScreen;
            this.FormBorderStyle = FormBorderStyle.None;
            this.BackColor = Color.FromArgb(10, 10, 12);
            this.Padding = new Padding(1);
            this.DoubleBuffered = true;

            CreateModernTitleBar();

            Panel pnlMain = new Panel
            {
                Location = new Point(1, 49),
                Size = new Size(this.ClientSize.Width - 2, this.ClientSize.Height - 50),
                BackColor = Color.FromArgb(16, 16, 20),
                Padding = new Padding(32),
                Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right
            };
            this.Controls.Add(pnlMain);

            int contentWidth = pnlMain.Width - 64;

Label lblTitle = new Label
{
    Text = "DARKSTARtool",
    Font = new Font("Segoe UI", 28, FontStyle.Bold),
    Location = new Point(32, 16),
    Size = new Size(450, 52),
    ForeColor = Color.FromArgb(240, 240, 245),
    BackColor = Color.Transparent,
    Anchor = AnchorStyles.Top | AnchorStyles.Left,
    AutoSize = false
};
pnlMain.Controls.Add(lblTitle);

Label lblSubtitle = new Label
{
    Text = "Advanced Windows performance optimization",
    Font = new Font("Segoe UI", 11, FontStyle.Regular),
    Location = new Point(32, 70),
    Size = new Size(500, 26),
    ForeColor = Color.FromArgb(160, 160, 170),
    BackColor = Color.Transparent,
    Anchor = AnchorStyles.Top | AnchorStyles.Left
};
pnlMain.Controls.Add(lblSubtitle);

Panel divider = new Panel
{
    Location = new Point(32, 110),
    Size = new Size(contentWidth, 1),
                BackColor = Color.FromArgb(40, 40, 50),
                Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right
            };
            pnlMain.Controls.Add(divider);

            FlowLayoutPanel tileLayout = new FlowLayoutPanel
            {
                Location = new Point(32, 130),
                Size = new Size(contentWidth, pnlMain.Height - 240),
                AutoScroll = true,
                WrapContents = true,
                FlowDirection = FlowDirection.LeftToRight,
                Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right,
                BackColor = Color.Transparent,
                Padding = new Padding(0, 0, 16, 0)
            };
            pnlMain.Controls.Add(tileLayout);

int tileWidth = 320;
int tileSpacing = 16;

Panel tileAdvanced = CreateGlassTile(0, 0, tileWidth, 190, Color.FromArgb(34, 197, 94));
chkRegularTweaks = BuildTileCheckbox(tileAdvanced, "⚡ Advanced optimization", 
    "Complete tweak stack with registry fixes and device tuning for maximum performance.");
tileAdvanced.Margin = new Padding(0, 0, tileSpacing, tileSpacing);
tileLayout.Controls.Add(tileAdvanced);

Panel tileDangerous = CreateGlassTile(0, 0, tileWidth, 190, Color.FromArgb(239, 68, 68));
chkDangerousTweaks = BuildTileCheckbox(tileDangerous, "🔥 A1 tweaks (destructive)", 
    "Aggressive telemetry removal and system cleanup. Use only if you understand the risks.");
chkDangerousTweaks.CheckedChanged += ChkDangerousTweaks_CheckedChanged;
tileDangerous.Margin = new Padding(0, 0, tileSpacing, tileSpacing);
tileLayout.Controls.Add(tileDangerous);

Panel tileMinimal = CreateGlassTile(0, 0, tileWidth, 190, Color.FromArgb(168, 85, 247));
chkMinimalServices = BuildTileCheckbox(tileMinimal, "🦴 Minimal services", 
    "Streamlined service configuration for lean system operation.");
tileMinimal.Margin = new Padding(0, 0, tileSpacing, tileSpacing);
tileLayout.Controls.Add(tileMinimal);

Panel tileIntel = CreateGlassTile(0, 0, tileWidth, 190, Color.FromArgb(59, 130, 246));
chkIntelPowerPlan = BuildTileCheckbox(tileIntel, "⚙️ Intel power plan", 
    "Activate optimized Intel beyond.pow profile and remove others.");
chkIntelPowerPlan.CheckedChanged += ChkPowerPlan_CheckedChanged;
tileIntel.Margin = new Padding(0, 0, tileSpacing, tileSpacing);
tileLayout.Controls.Add(tileIntel);

Panel tileAmd = CreateGlassTile(0, 0, tileWidth, 190, Color.FromArgb(249, 115, 22));
chkAmdPowerPlan = BuildTileCheckbox(tileAmd, "⚙️ AMD power plan", 
    "Activate optimized AMD beyondamd.pow profile and remove others.");
chkAmdPowerPlan.CheckedChanged += ChkPowerPlan_CheckedChanged;
tileAmd.Margin = new Padding(0, 0, tileSpacing, tileSpacing);
tileLayout.Controls.Add(tileAmd);

Panel tilePowerSaving = CreateGlassTile(0, 0, tileWidth, 190, Color.FromArgb(236, 72, 153));
chkPowerSaving = BuildTileCheckbox(tilePowerSaving, "🔋 Disable power saving", 
    "Prevent device throttling with full power mode for USB and PnP devices.");
btnPowerSaving = chkPowerSaving;
tilePowerSaving.Margin = new Padding(0, 0, tileSpacing, tileSpacing);
tileLayout.Controls.Add(tilePowerSaving);

            Panel bottomBar = new Panel
            {
                Location = new Point(0, pnlMain.Height - 80),
                Size = new Size(pnlMain.Width, 80),
                BackColor = Color.FromArgb(20, 20, 26),
                Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right
            };
            pnlMain.Controls.Add(bottomBar);

            lblStatus = new Label
            {
                Text = string.Empty,
                Font = new Font("Segoe UI", 10, FontStyle.Regular),
                Location = new Point(32, 26),
                Size = new Size(400, 28),
                ForeColor = Color.FromArgb(160, 160, 170),
                BackColor = Color.Transparent,
                Anchor = AnchorStyles.Left | AnchorStyles.Bottom,
                Visible = false
            };
            bottomBar.Controls.Add(lblStatus);

            btnExecute = CreateModernButton("▶ Apply selected", bottomBar.Width - 300, 16, 268, 48,
                Color.FromArgb(59, 130, 246), Color.FromArgb(37, 99, 235));
            btnExecute.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
            btnExecute.Click += BtnExecute_Click;
            bottomBar.Controls.Add(btnExecute);

            progressBar = new ProgressBar
            {
                Visible = false,
                Size = new Size(1, 1)
            };
            pnlMain.Controls.Add(progressBar);
        }

        private void CreateModernTitleBar()
        {
            Panel titleBar = new Panel
            {
                Location = new Point(1, 1),
                Size = new Size(this.ClientSize.Width - 2, 48),
                BackColor = Color.FromArgb(16, 16, 20),
                Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right
            };
            titleBar.Paint += (s, e) =>
            {
                using (Pen borderPen = new Pen(Color.FromArgb(40, 40, 50)))
                {
                    e.Graphics.DrawLine(borderPen, 0, titleBar.Height - 1, titleBar.Width, titleBar.Height - 1);
                }
            };
            this.Controls.Add(titleBar);

            Label lblTitleBar = new Label
            {
                Text = "DARKSTARtool",
                Font = new Font("Segoe UI Semibold", 10),
                Location = new Point(16, 14),
                Size = new Size(200, 20),
                ForeColor = Color.FromArgb(200, 200, 210),
                BackColor = Color.Transparent
            };
            titleBar.Controls.Add(lblTitleBar);

            Button btnMinimize = CreateTitleBarButton("─", 0, 0);
            btnMinimize.Location = new Point(titleBar.Width - 96, 8);
            btnMinimize.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            btnMinimize.Click += (s, e) => this.WindowState = FormWindowState.Minimized;
            titleBar.Controls.Add(btnMinimize);

            Button btnClose = CreateTitleBarButton("✕", 0, 0);
            btnClose.Location = new Point(titleBar.Width - 48, 8);
            btnClose.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            btnClose.MouseEnter += (s, e) => btnClose.BackColor = Color.FromArgb(220, 38, 38);
            btnClose.MouseLeave += (s, e) => btnClose.BackColor = Color.Transparent;
            btnClose.Click += (s, e) => Application.Exit();
            titleBar.Controls.Add(btnClose);

            titleBar.MouseDown += TitleBar_MouseDown;
            titleBar.MouseMove += TitleBar_MouseMove;
            titleBar.MouseUp += TitleBar_MouseUp;
            
            lblTitleBar.MouseDown += TitleBar_MouseDown;
            lblTitleBar.MouseMove += TitleBar_MouseMove;
            lblTitleBar.MouseUp += TitleBar_MouseUp;
        }

        private Button CreateTitleBarButton(string text, int x, int y)
        {
            Button button = new Button
            {
                Text = text,
                Font = new Font("Segoe UI", 10),
                Location = new Point(x, y),
                Size = new Size(48, 32),
                FlatStyle = FlatStyle.Flat,
                BackColor = Color.Transparent,
                ForeColor = Color.FromArgb(200, 200, 210),
                Cursor = Cursors.Hand
            };

            button.FlatAppearance.BorderSize = 0;
            button.FlatAppearance.MouseOverBackColor = Color.FromArgb(40, 40, 50);
            button.FlatAppearance.MouseDownBackColor = Color.FromArgb(50, 50, 60);

            return button;
        }

        private void TitleBar_MouseDown(object? sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                isDragging = true;
                mouseOffset = new Point(-e.X, -e.Y);
            }
        }

        private void TitleBar_MouseMove(object? sender, MouseEventArgs e)
        {
            if (isDragging)
            {
                Point mousePos = Control.MousePosition;
                mousePos.Offset(mouseOffset.X, mouseOffset.Y);
                this.Location = mousePos;
            }
        }

        private void TitleBar_MouseUp(object? sender, MouseEventArgs e)
        {
            isDragging = false;
        }

        private Panel CreateGlassTile(int x, int y, int width, int height, Color accentColor)
        {
            Panel tile = new Panel
            {
                Location = new Point(x, y),
                Size = new Size(width, height),
                BackColor = Color.Transparent,
                Padding = new Padding(20),
                Cursor = Cursors.Hand
            };

            tile.Paint += (s, e) =>
            {
                e.Graphics.SmoothingMode = SmoothingMode.AntiAlias;
                Rectangle rect = new Rectangle(0, 0, tile.Width - 1, tile.Height - 1);
                
                using (GraphicsPath path = CreateRoundedRectangle(rect, 12))
                {
                    using (SolidBrush bgBrush = new SolidBrush(Color.FromArgb(24, 24, 30)))
                    {
                        e.Graphics.FillPath(bgBrush, path);
                    }

                    Rectangle glowRect = new Rectangle(0, 0, rect.Width, 3);
                    using (LinearGradientBrush glowBrush = new LinearGradientBrush(
                        glowRect,
                        Color.FromArgb(80, accentColor),
                        Color.Transparent,
                        LinearGradientMode.Vertical))
                    {
                        e.Graphics.FillRectangle(glowBrush, 0, 0, rect.Width, 40);
                    }

                    using (Pen borderPen = new Pen(Color.FromArgb(40, 40, 50), 1))
                    {
                        e.Graphics.DrawPath(borderPen, path);
                    }

                    using (Pen accentPen = new Pen(Color.FromArgb(60, accentColor), 2))
                    {
                        GraphicsPath topPath = new GraphicsPath();
                        topPath.AddArc(new Rectangle(0, 0, 24, 24), 180, 90);
                        topPath.AddLine(12, 0, rect.Width - 12, 0);
                        topPath.AddArc(new Rectangle(rect.Width - 24, 0, 24, 24), 270, 90);
                        e.Graphics.DrawPath(accentPen, topPath);
                    }
                }
            };

            return tile;
        }

private CheckBox BuildTileCheckbox(Panel tile, string title, string description)
{
    CheckBox chk = new CheckBox
    {
        Text = title,
        Font = new Font("Segoe UI", 12, FontStyle.Bold),
        Location = new Point(16, 20),
        Size = new Size(tile.Width - 32, 36),
        Checked = false,
        ForeColor = Color.FromArgb(240, 240, 245),
        BackColor = Color.Transparent,
        Cursor = Cursors.Hand,
        FlatStyle = FlatStyle.Flat,
        Appearance = Appearance.Button,
        TextAlign = ContentAlignment.MiddleLeft
    };
    
    // Visual indicator for checked state
    chk.CheckedChanged += (s, e) =>
    {
        if (chk.Checked)
        {
            chk.Text = "✓ " + title;
            chk.ForeColor = Color.FromArgb(34, 197, 94);
        }
        else
        {
            chk.Text = title;
            chk.ForeColor = Color.FromArgb(240, 240, 245);
        }
    };
    
    tile.Controls.Add(chk);

    Label desc = new Label
    {
        Text = description,
        Font = new Font("Segoe UI", 9),
        Location = new Point(16, 60),
        Size = new Size(tile.Width - 32, 84),
        ForeColor = Color.FromArgb(160, 160, 170),
        BackColor = Color.Transparent
    };
    tile.Controls.Add(desc);

    tile.Click += (s, e) => chk.Checked = !chk.Checked;
    desc.Click += (s, e) => chk.Checked = !chk.Checked;

    return chk;
}

        private Button CreateModernButton(string text, int x, int y, int width, int height, Color bgColor, Color hoverColor)
        {
            Button btn = new Button
            {
                Text = text,
                Font = new Font("Segoe UI", 11, FontStyle.Bold),
                Location = new Point(x, y),
                Size = new Size(width, height),
                BackColor = bgColor,
                ForeColor = Color.FromArgb(240, 240, 245),
                FlatStyle = FlatStyle.Flat,
                Cursor = Cursors.Hand,
                TextAlign = ContentAlignment.MiddleCenter
            };

            btn.FlatAppearance.BorderSize = 0;
            btn.FlatAppearance.MouseDownBackColor = Color.FromArgb(20, 20, 26);
            btn.MouseEnter += (s, e) => btn.BackColor = hoverColor;
            btn.MouseLeave += (s, e) => btn.BackColor = bgColor;

            btn.Paint += (s, e) =>
            {
                e.Graphics.SmoothingMode = SmoothingMode.AntiAlias;
                Rectangle rect = new Rectangle(0, 0, btn.Width, btn.Height);
                using (GraphicsPath path = CreateRoundedRectangle(rect, 8))
                {
                    btn.Region = new Region(path);
                }
            };

            return btn;
        }

        protected override void OnPaintBackground(PaintEventArgs e)
        {
            if (ClientRectangle.Width == 0 || ClientRectangle.Height == 0)
            {
                base.OnPaintBackground(e);
                return;
            }

            using (SolidBrush brush = new SolidBrush(Color.FromArgb(10, 10, 12)))
            {
                e.Graphics.FillRectangle(brush, ClientRectangle);
            }

            e.Graphics.SmoothingMode = SmoothingMode.AntiAlias;
            
            using (GraphicsPath path = new GraphicsPath())
            {
                path.AddEllipse(new Rectangle(-200, -200, 800, 800));
                using (PathGradientBrush glow = new PathGradientBrush(path))
                {
                    glow.CenterColor = Color.FromArgb(20, 59, 130, 246);
                    glow.SurroundColors = new[] { Color.FromArgb(0, 0, 0, 0) };
                    e.Graphics.FillEllipse(glow, -200, -200, 800, 800);
                }
            }

            using (GraphicsPath path2 = new GraphicsPath())
            {
                path2.AddEllipse(new Rectangle(ClientRectangle.Width - 600, ClientRectangle.Height - 600, 800, 800));
                using (PathGradientBrush glow = new PathGradientBrush(path2))
                {
                    glow.CenterColor = Color.FromArgb(20, 168, 85, 247);
                    glow.SurroundColors = new[] { Color.FromArgb(0, 0, 0, 0) };
                    e.Graphics.FillEllipse(glow, ClientRectangle.Width - 600, ClientRectangle.Height - 600, 800, 800);
                }
            }
        }

        private GraphicsPath CreateRoundedRectangle(Rectangle rect, int radius)
        {
            GraphicsPath path = new GraphicsPath();
            int diameter = radius * 2;
            Size size = new Size(diameter, diameter);
            Rectangle arc = new Rectangle(rect.Location, size);

            path.AddArc(arc, 180, 90);
            arc.X = rect.Right - diameter;
            path.AddArc(arc, 270, 90);
            arc.Y = rect.Bottom - diameter;
            path.AddArc(arc, 0, 90);
            arc.X = rect.Left;
            path.AddArc(arc, 90, 90);
            path.CloseFigure();
            return path;
        }

        private void ApplyRoundedRegion()
        {
            Rectangle rect = new Rectangle(0, 0, this.Width, this.Height);
            using (GraphicsPath path = CreateRoundedRectangle(rect, 12))
            {
                Region? oldRegion = this.Region;
                this.Region = new Region(path);
                oldRegion?.Dispose();
            }
        }

        private void PrepareTempDirectory()
        {
            if (!string.IsNullOrEmpty(tempDir) && Directory.Exists(tempDir))
            {
                try
                {
                    Directory.Delete(tempDir, true);
                }
                catch { }
            }

            tempDir = Path.Combine(Path.GetTempPath(), "DARKSTARtool_" + Guid.NewGuid().ToString("N"));
            Directory.CreateDirectory(tempDir);
            Log($"→ Created temp directory");
        }

        private void CleanupTempDirectory()
        {
            if (string.IsNullOrEmpty(tempDir))
            {
                return;
            }

            if (Directory.Exists(tempDir))
            {
                try
                {
                    Directory.Delete(tempDir, true);
                    Log("→ Cleaned up temporary files");
                }
                catch (Exception ex)
                {
                    Log($"⚠ Warning: {ex.Message}");
                }
            }

            tempDir = string.Empty;
        }

        private void CheckNSudoPresence()
        {
            string exeDir = AppContext.BaseDirectory;
            nsudoPath = Path.Combine(exeDir, "NSudo.exe");

            if (!File.Exists(nsudoPath))
            {
                MessageBox.Show(
                    "NSudo.exe not found!\n\n" +
                    "Place NSudo.exe in the same folder.\n\n" +
                    "Download: https://github.com/M2Team/NSudo",
                    "NSudo Required",
                    MessageBoxButtons.OK,
                    MessageBoxIcon.Error
                );
                btnExecute.Enabled = false;
                btnPowerSaving.Enabled = false;
                lblStatus.Text = "⚠️ NSudo.exe not found";
                lblStatus.ForeColor = Color.FromArgb(239, 68, 68);
                lblStatus.Visible = true;
            }
        }

        private void ChkDangerousTweaks_CheckedChanged(object? sender, EventArgs e)
        {
            if (chkDangerousTweaks.Checked)
            {
                DialogResult result = MessageBox.Show(
                    "⚠️ CRITICAL WARNING ⚠️\n\n" +
                    "A1 Tweaks can severely affect system stability:\n\n" +
                    "• Breaks most basic functionality\n" +
                    "• Requires alternative task manager\n" +
                    "• NSudo needed to navigate folders\n" +
                    "• Very difficult to reverse\n\n" +
                    "Continue?",
                    "A1 Tweaks Warning",
                    MessageBoxButtons.YesNo,
                    MessageBoxIcon.Warning
                );

                if (result == DialogResult.No)
                {
                    chkDangerousTweaks.Checked = false;
                }
            }
        }

        private void ChkPowerPlan_CheckedChanged(object? sender, EventArgs e)
        {
            if (sender == chkIntelPowerPlan && chkIntelPowerPlan.Checked)
            {
                chkAmdPowerPlan.Checked = false;
            }
            else if (sender == chkAmdPowerPlan && chkAmdPowerPlan.Checked)
            {
                chkIntelPowerPlan.Checked = false;
            }
        }

        private async void BtnExecute_Click(object? sender, EventArgs e)
        {
            if (!chkRegularTweaks.Checked && !chkDangerousTweaks.Checked && !chkMinimalServices.Checked && !chkIntelPowerPlan.Checked && !chkAmdPowerPlan.Checked && !chkPowerSaving.Checked)
            {
                MessageBox.Show("Select at least one option.",
                    "No Options Selected", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            DialogResult confirm = MessageBox.Show(
                "Apply the selected optimizations now?",
                "Confirm Execution",
                MessageBoxButtons.YesNo,
                MessageBoxIcon.Question
            );

            if (confirm != DialogResult.Yes)
                return;

            btnExecute.Enabled = false;
            chkRegularTweaks.Enabled = false;
            chkDangerousTweaks.Enabled = false;
            chkMinimalServices.Enabled = false;
            chkPowerSaving.Enabled = false;
            chkIntelPowerPlan.Enabled = false;
            chkAmdPowerPlan.Enabled = false;
            lblStatus.Text = "Preparing optimizations...";
            lblStatus.Visible = true;

            Form logWindow = CreateLogWindow();
            bool logWindowClosed = false;
            logWindow.Show();

            try
            {
                await ExecuteTweaks();

                CloseLogWindow(logWindow);
                logWindowClosed = true;

                MessageBox.Show(
                    "✓ Optimizations applied successfully!\n\n" +
                    "Restart recommended to apply all changes.",
                    "Complete",
                    MessageBoxButtons.OK,
                    MessageBoxIcon.Information
                );

                DialogResult reboot = MessageBox.Show(
                    "Restart now?",
                    "Restart Required",
                    MessageBoxButtons.YesNo,
                    MessageBoxIcon.Question
                );

                if (reboot == DialogResult.Yes)
                {
                    Process.Start("shutdown", "/r /t 10");
                    Application.Exit();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error:\n\n{ex.Message}", 
                    "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                if (txtLog != null && !txtLog.IsDisposed)
                {
                    Log($"✗ ERROR: {ex.Message}");
                }
            }
            finally
            {
                btnExecute.Enabled = true;
                chkRegularTweaks.Enabled = true;
                chkDangerousTweaks.Enabled = true;
                chkMinimalServices.Enabled = true;
                chkPowerSaving.Enabled = true;
                chkIntelPowerPlan.Enabled = true;
                chkAmdPowerPlan.Enabled = true;
                lblStatus.Visible = false;
                if (!logWindowClosed)
                {
                    CloseLogWindow(logWindow);
                }
            }
        }

        private Form CreateLogWindow()
        {
            Rectangle screenBounds = Screen.FromControl(this).WorkingArea;
            int logWidth = Math.Min(900, screenBounds.Width - 40);
            int logHeight = Math.Min(500, screenBounds.Height - 80);

            int logX = Math.Max(screenBounds.Left + 20,
                Math.Min(this.Left + (this.Width - logWidth) / 2, screenBounds.Right - logWidth - 20));
            int logY = Math.Max(screenBounds.Top + 40,
                Math.Min(this.Top + 90, screenBounds.Bottom - logHeight - 20));

            Form logForm = new Form
            {
                Text = "DARKSTARtool - System Log",
                Size = new Size(logWidth, logHeight),
                StartPosition = FormStartPosition.Manual,
                Location = new Point(logX, logY),
                FormBorderStyle = FormBorderStyle.None,
                BackColor = Color.FromArgb(16, 16, 20),
                ShowInTaskbar = false,
                TopMost = true
            };

            Panel titleBar = new Panel
            {
                Location = new Point(0, 0),
                Size = new Size(logWidth, 48),
                BackColor = Color.FromArgb(20, 20, 26),
                Dock = DockStyle.Top
            };
            logForm.Controls.Add(titleBar);

            Label lblTitle = new Label
            {
                Text = "⚡ SYSTEM LOG",
                Font = new Font("Segoe UI Semibold", 11),
                Location = new Point(20, 14),
                Size = new Size(logWidth - 40, 24),
                ForeColor = Color.FromArgb(240, 240, 245),
                BackColor = Color.Transparent
            };
            titleBar.Controls.Add(lblTitle);

            Panel logBody = new Panel
            {
                Dock = DockStyle.Fill,
                Padding = new Padding(20),
                BackColor = Color.FromArgb(16, 16, 20)
            };
            logForm.Controls.Add(logBody);

            txtLog = new TextBox
            {
                Multiline = true,
                ReadOnly = true,
                ScrollBars = ScrollBars.Vertical,
                Font = new Font("Cascadia Mono", 9),
                BackColor = Color.FromArgb(12, 12, 16),
                ForeColor = Color.FromArgb(34, 197, 94),
                BorderStyle = BorderStyle.None,
                Dock = DockStyle.Fill
            };
            logBody.Controls.Add(txtLog);

            return logForm;
        }

        private async Task ExecuteTweaks()
        {
            try
            {
                PrepareTempDirectory();
                ExtractEmbeddedResources();

                if (chkRegularTweaks.Checked)
                {
                    await ApplyRegularTweaks();
                }

                if (chkDangerousTweaks.Checked)
                {
                    await ApplyDangerousTweaks();
                }

                if (chkMinimalServices.Checked)
                {
                    await ApplyMinimalServices();
                }

                if (chkPowerSaving.Checked)
                {
                    await ApplyPowerSaving();
                }

                if (chkIntelPowerPlan.Checked)
                {
                    await ApplyPowerPlan("beyond.pow", "Intel");
                }

                if (chkAmdPowerPlan.Checked)
                {
                    await ApplyPowerPlan("beyondamd.pow", "AMD");
                }

                Log("✓ All optimizations completed!");
                lblStatus.Text = "✓ Completed successfully";
                lblStatus.ForeColor = Color.FromArgb(34, 197, 94);
            }
            finally
            {
                CleanupTempDirectory();
            }
        }

        private void ExtractEmbeddedResources()
        {
            Log("→ Extracting resources...");
            var assembly = Assembly.GetExecutingAssembly();
            var resourceNames = assembly.GetManifestResourceNames();

            foreach (var resourceName in resourceNames)
            {
                int markerIndex = resourceName.IndexOf(".Resources.", StringComparison.Ordinal);
                if (markerIndex == -1)
                {
                    continue;
                }

                string relativeName = resourceName[(markerIndex + ".Resources.".Length)..];
                string[] segments = relativeName.Split('.');
                if (segments.Length < 2)
                {
                    continue;
                }

                string extension = segments[^1];
                string fileName = segments[^2];
                string[] directories = segments.Take(segments.Length - 2).ToArray();

                string directoryPath = directories.Any()
                    ? Path.Combine(tempDir, Path.Combine(directories))
                    : tempDir;

                Directory.CreateDirectory(directoryPath);
                string targetPath = Path.Combine(directoryPath, $"{fileName}.{extension}");

                using (Stream? stream = assembly.GetManifestResourceStream(resourceName))
                {
                    if (stream != null)
                    {
                        using (FileStream fileStream = File.Create(targetPath))
                        {
                            stream.CopyTo(fileStream);
                        }
                    }
                }
            }
        }

        private void CopyDirectory(string sourceDir, string destinationDir)
        {
            Directory.CreateDirectory(destinationDir);

            foreach (var file in Directory.GetFiles(sourceDir, "*", SearchOption.AllDirectories))
            {
                string relativePath = Path.GetRelativePath(sourceDir, file);
                string targetPath = Path.Combine(destinationDir, relativePath);
                string? targetFolder = Path.GetDirectoryName(targetPath);

                if (!string.IsNullOrEmpty(targetFolder))
                {
                    Directory.CreateDirectory(targetFolder);
                }

                File.Copy(file, targetPath, true);
            }
        }

        private async Task ApplyMinimalServices()
        {
            Log("\n→ Applying Minimal Services...");
            lblStatus.Text = "Applying minimal services...";

            string minimalServicesPath = Path.Combine(tempDir, "MinimalServices.reg");

            if (!File.Exists(minimalServicesPath))
            {
                Log("✗ ERROR: MinimalServices.reg not found!");
                return;
            }

            await ExecuteWithNSudo(minimalServicesPath, true, isRegistry: true);
            Log("✓ Minimal services baseline applied");
            await Task.Delay(200);
        }

        private async Task ApplyPowerSaving()
        {
            Log("\n→ Disabling device power saving...");
            lblStatus.Text = "Disabling device power saving...";
            lblStatus.ForeColor = Color.FromArgb(34, 197, 94);

            var scripts = new List<string> { "Disable_powersaving.bat", "Disable_pnp_powersaving.ps1" };
            int step = 0;

            foreach (var script in scripts)
            {
                step++;
                string scriptPath = Path.Combine(tempDir, script);

                if (!File.Exists(scriptPath))
                {
                    Log($"⚠ Skipping missing script: {script}");
                    continue;
                }

                Log($"  [{step}/{scripts.Count}] {script}");

                bool isRegistry = Path.GetExtension(scriptPath).Equals(".reg", StringComparison.OrdinalIgnoreCase);
                bool autoConfirm = string.Equals(Path.GetExtension(scriptPath), ".bat", StringComparison.OrdinalIgnoreCase) ||
                    string.Equals(Path.GetExtension(scriptPath), ".ps1", StringComparison.OrdinalIgnoreCase);
                await ExecuteWithNSudo(scriptPath, true, isRegistry, autoConfirm, TimeSpan.FromSeconds(60));
                await Task.Delay(200);
            }

            lblStatus.Text = "✓ Device power saving disabled";
            Log("✓ Completed device power saving tweaks");
        }

        private async Task ApplyRegularTweaks()
        {
            Log("\n→ Applying Advanced Optimization...");
            lblStatus.Text = "Applying advanced optimization...";

            var scripts = new List<string>
            {
                "tweaks1.bat", "tweaks2.bat", "tweaks3.bat", "tweaks4.bat",
                "tweaks5.bat", "tweaks6.bat", "tweaks7.bat",
                "tweaks8.bat", "tweaks9.bat", "tweaks10.bat",
                "delete.reg", "mouse.reg", "tweaks.reg",
                "NETWORK-TWEAKS.ps1", "USBFlags.ps1"
            };

            int totalSteps = scripts.Count + 1;
            int currentStep = 0;

            foreach (var script in scripts)
            {
                currentStep++;
                string scriptPath = Path.Combine(tempDir, script);
                if (!File.Exists(scriptPath))
                {
                    Log($"⚠ Skipping missing script: {script}");
                    continue;
                }

                Log($"  [{currentStep}/{totalSteps}] {script}");
                bool autoConfirm = string.Equals(Path.GetExtension(scriptPath), ".bat", StringComparison.OrdinalIgnoreCase);

                TimeSpan? timeout = null;
                IEnumerable<string>? killList = null;

                if (string.Equals(script, "tweaks2.bat", StringComparison.OrdinalIgnoreCase))
                {
                    timeout = TimeSpan.FromSeconds(35);
                    killList = new[] { "dism", "dismhost" };
                }
                else if (string.Equals(script, "tweaks3.bat", StringComparison.OrdinalIgnoreCase))
                {
                    timeout = TimeSpan.FromSeconds(60);
                }

                await ExecuteWithNSudo(scriptPath, true, autoConfirm: autoConfirm, timeout: timeout, killOnTimeout: killList);

                if (script == "tweaks3.bat")
                {
                    await HandleEtsDisableReg();
                    currentStep++;
                }

                 await Task.Delay(500);
            }
            
            Log("✓ Script execution completed");
            
            // Apply BCDEdit tweaks
            await ApplyBcdEditTweaks();
            
            // Apply Win32PrioritySeparation
            await ApplyWin32PrioritySeparation();
            
            Log("✓ Advanced optimization completed");
        }

        private async Task ApplyBcdEditTweaks()
        {
            Log("\n→ Applying BCDEdit optimizations...");
            lblStatus.Text = "Applying BCDEdit optimizations...";

            var bcdCommands = new List<string>
            {
                "/set {current} nx OptOut,"
                "/set {current} nx AlwaysOff,"
                "/set ems No,"
                "/set bootems No,"
                "/set integrityservices disable,"
                "/set tpmbootentropy ForceDisable,"
                "/set bootmenupolicy Legacy,"
                "/set debug No,"
                "/set hypervisorlaunchtype Off,"
                "/set disableelamdrivers Yes,"
                "/set isolatedcontext No,"
                "/set allowedinmemorysettings 0x0,"
                "/set vm No,"
                "/set vsmlaunchtype Off,"
                "/set x2apicpolicy Enable,"
                "/set configaccesspolicy Default,"
                "/set MSI Default,"
                "/set usephysicaldestination No,"
                "/set usefirmwarepcisettings No,"
                "/set tscsyncpolicy Enhanced,"
                "/deletevalue useplatformtick,"
                "/deletevalue useplatformclock,"
                "/deletevalue disabledynamictick,"
                "/set disabledynamictick yes,"
                "/set uselegacyapicmode No,"
                "/set sos No,"
                "/set pae ForceDisable,"
                "/set pciexpress forcedisable,"
                "/set xsavedisable Yes"
            };

            int completed = 0;
            foreach (var command in bcdCommands)
            {
                completed++;
                try
                {
                    ProcessStartInfo psi = new ProcessStartInfo
                    {
                        FileName = "bcdedit.exe",
                        Arguments = command,
                        UseShellExecute = false,
                        CreateNoWindow = true,
                        RedirectStandardOutput = true,
                        RedirectStandardError = true,
                        Verb = "runas"
                    };

                    using (Process? process = Process.Start(psi))
                    {
                        if (process != null)
                        {
                            await process.WaitForExitAsync();
                            
                            if (process.ExitCode == 0)
                            {
                                Log($"  [{completed}/{bcdCommands.Count}] ✓ bcdedit {command}");
                            }
                            else
                            {
                                Log($"  [{completed}/{bcdCommands.Count}] ⚠ bcdedit {command} (exit code: {process.ExitCode})");
                            }
                        }
                    }
                    
                    await Task.Delay(100);
                }
                catch (Exception ex)
                {
                    Log($"  [{completed}/{bcdCommands.Count}] ✗ bcdedit {command} failed: {ex.Message}");
                }
            }

            Log("✓ BCDEdit optimizations completed");
        }

        private async Task ApplyWin32PrioritySeparation()
        {
            Log("\n→ Setting Win32PrioritySeparation...");
            lblStatus.Text = "Applying Win32PrioritySeparation...";

            try
            {
                // Method 1: Direct registry write via .NET
                using (var key = Microsoft.Win32.Registry.LocalMachine.OpenSubKey(
                    @"SYSTEM\CurrentControlSet\Control\PriorityControl", true))
                {
                    if (key != null)
                    {
                        key.SetValue("Win32PrioritySeparation", 42, Microsoft.Win32.RegistryValueKind.DWord);
                        Log("  ✓ Set Win32PrioritySeparation to 42 (0x2A) via direct write");
                    }
                }

                // Method 2: Double-check with reg.exe for persistence
                ProcessStartInfo psi = new ProcessStartInfo
                {
                    FileName = "reg.exe",
                    Arguments = @"add ""HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl"" /v Win32PrioritySeparation /t REG_DWORD /d 42 /f",
                    UseShellExecute = false,
                    CreateNoWindow = true,
                    RedirectStandardOutput = true,
                    RedirectStandardError = true
                };

                using (Process? process = Process.Start(psi))
                {
                    if (process != null)
                    {
                        await process.WaitForExitAsync();
                        if (process.ExitCode == 0)
                        {
                            Log("  ✓ Confirmed Win32PrioritySeparation via reg.exe");
                        }
                    }
                }

                // Verify what was actually set
                using (var key = Microsoft.Win32.Registry.LocalMachine.OpenSubKey(
                    @"SYSTEM\CurrentControlSet\Control\PriorityControl"))
                {
                    if (key != null)
                    {
                        var actualValue = key.GetValue("Win32PrioritySeparation");
                        if (actualValue != null)
                        {
                            int intValue = Convert.ToInt32(actualValue);
                            Log($"  → Verification: Win32PrioritySeparation = {intValue} (0x{intValue:X})");
                            
                            if (intValue == 42)
                            {
                                Log("  ✓ Win32PrioritySeparation correctly set to 42");
                            }
                            else
                            {
                                Log($"  ✗ Win32PrioritySeparation mismatch: expected 42, got {intValue}");
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Log($"  ✗ Failed to set Win32PrioritySeparation: {ex.Message}");
            }
        }

        private async Task HandleEtsDisableReg()
        {
            string etsDisablePath = @"C:\ets-disable.reg";
            string etsEnablePath = @"C:\ets-enable.reg";

            int attempts = 0;
            while (!File.Exists(etsDisablePath) && attempts < 50)
            {
                await Task.Delay(100);
                attempts++;
            }

            if (File.Exists(etsDisablePath))
            {
                Log("  → Applying ets-disable.reg...");
                await ExecuteWithNSudo(etsDisablePath, true, isRegistry: true);
                Log("  ✓ Applied");

                try
                {
                    if (File.Exists(etsDisablePath)) File.Delete(etsDisablePath);
                    if (File.Exists(etsEnablePath)) File.Delete(etsEnablePath);
                }
                catch { }
            }
        }

        private async Task ApplyDangerousTweaks()
        {
            Log("\n→ Applying A1 Tweaks...");
            lblStatus.Text = "Applying A1 tweaks...";

            var scripts = new List<string>
            {
                "etl.bat", "etl_oldOneNEW.bat", "etl2023.bat",
                "fix3.reg", "fix9.bat", "RENAME.BAT", "B3NEW.BAT",
                "etl3.bat", "EVENTKIT.bat", "MACHINE.BAT",
                "WININETKIT.BAT", "wmic.bat", "WMIETL.BAT"
            };

            int totalSteps = scripts.Count;
            int currentStep = 0;

            foreach (var script in scripts)
            {
                currentStep++;
                string scriptPath = Path.Combine(tempDir, script);
                if (!File.Exists(scriptPath))
                {
                    Log($"⚠ Skipping missing script: {script}");
                    continue;
                }

                Log($"  [{currentStep}/{totalSteps}] {script}");
                bool autoConfirm = string.Equals(Path.GetExtension(scriptPath), ".bat", StringComparison.OrdinalIgnoreCase);
                await ExecuteWithNSudo(scriptPath, false, autoConfirm: autoConfirm);
                await Task.Delay(800);
            }
            Log("✓ A1 tweaks completed");
        }

        private async Task ApplyPowerPlan(string powerPlanFile, string cpuType)
        {
            Log($"\n→ Applying {cpuType} Power Plan...");
            lblStatus.Text = $"Applying {cpuType} power plan...";

            string powerPlanPath = Path.Combine(tempDir, powerPlanFile);

            if (!File.Exists(powerPlanPath))
            {
                Log($"✗ ERROR: {powerPlanFile} not found!");
                return;
            }

            try
            {
                Log($"  Importing {powerPlanFile}...");
                ProcessStartInfo importPsi = new ProcessStartInfo
                {
                    FileName = "powercfg",
                    Arguments = $"/import \"{powerPlanPath}\"",
                    UseShellExecute = false,
                    CreateNoWindow = true,
                    RedirectStandardOutput = true,
                    RedirectStandardError = true
                };

                string importedGuid = "";
                using (Process? importProcess = Process.Start(importPsi))
                {
                    if (importProcess != null)
                    {
                        string output = await importProcess.StandardOutput.ReadToEndAsync();
                        await importProcess.WaitForExitAsync();

                        var match = System.Text.RegularExpressions.Regex.Match(output, @"([0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12})");
                        if (match.Success)
                        {
                            importedGuid = match.Groups[1].Value;
                            Log($"  ✓ Imported with GUID: {importedGuid}");
                        }
                        else
                        {
                            Log($"  ✗ Could not extract GUID from import");
                            return;
                        }
                    }
                }

                Log($"  Setting {cpuType} plan as active...");
                ProcessStartInfo activatePsi = new ProcessStartInfo
                {
                    FileName = "powercfg",
                    Arguments = $"/setactive {importedGuid}",
                    UseShellExecute = false,
                    CreateNoWindow = true
                };

                using (Process? activateProcess = Process.Start(activatePsi))
                {
                    if (activateProcess != null)
                    {
                        await activateProcess.WaitForExitAsync();
                        Log($"  ✓ {cpuType} power plan activated");
                    }
                }

                Log($"  Getting list of all power plans...");
                ProcessStartInfo listPsi = new ProcessStartInfo
                {
                    FileName = "powercfg",
                    Arguments = "/list",
                    UseShellExecute = false,
                    CreateNoWindow = true,
                    RedirectStandardOutput = true
                };

                List<string> allGuids = new List<string>();
                using (Process? listProcess = Process.Start(listPsi))
                {
                    if (listProcess != null)
                    {
                        string listOutput = await listProcess.StandardOutput.ReadToEndAsync();
                        await listProcess.WaitForExitAsync();

                        var guidMatches = System.Text.RegularExpressions.Regex.Matches(listOutput, @"([0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12})");
                        foreach (System.Text.RegularExpressions.Match guidMatch in guidMatches)
                        {
                            string guid = guidMatch.Groups[1].Value;
                            if (guid != importedGuid)
                            {
                                allGuids.Add(guid);
                            }
                        }
                    }
                }

                Log($"  Deleting {allGuids.Count} other power plans...");
                foreach (string guid in allGuids)
                {
                    ProcessStartInfo deletePsi = new ProcessStartInfo
                    {
                        FileName = "powercfg",
                        Arguments = $"/delete {guid}",
                        UseShellExecute = false,
                        CreateNoWindow = true
                    };

                    using (Process? deleteProcess = Process.Start(deletePsi))
                    {
                        if (deleteProcess != null)
                        {
                            await deleteProcess.WaitForExitAsync();
                        }
                    }
                }

                Log($"✓ {cpuType} power plan applied successfully!");
                Log($"✓ All other power plans deleted");
            }
            catch (Exception ex)
            {
                Log($"✗ ERROR applying power plan: {ex.Message}");
            }
        }

        private async Task ExecuteWithNSudo(string scriptPath, bool useTrustedInstaller, bool isRegistry = false, bool autoConfirm = false, TimeSpan? timeout = null, IEnumerable<string>? killOnTimeout = null)
        {
            string privilege = useTrustedInstaller ? "-U:T" : "-U:S";
            string command;
            string extension = Path.GetExtension(scriptPath).ToLower();
            bool isBatch = extension == ".bat";

            if (isRegistry || extension == ".reg")
            {
                command = $"reg import \"{scriptPath}\"";
            }
            else if (extension == ".ps1")
            {
                if (autoConfirm)
                {
                    command = $"powershell.exe -NoProfile -ExecutionPolicy Bypass -NonInteractive -Command \"& {{& '{scriptPath}' -Confirm:$false -Force -ErrorAction SilentlyContinue}}\"";
                }
                else
                {
                    command = $"powershell.exe -ExecutionPolicy Bypass -File \"{scriptPath}\"";
                }
            }
            else
            {
                string quotedScript = $"\"{scriptPath}\"";

                if (isBatch)
                {
                    if (autoConfirm)
                    {
                        command = $"cmd /c \"(echo Y & echo Y & echo Y) | call {quotedScript}\"";
                    }
                    else
                    {
                        command = $"cmd /c \"call {quotedScript}\"";
                    }
                }
                else
                {
                    command = $"cmd /c {quotedScript}";
                }
            }

            ProcessStartInfo psi = new ProcessStartInfo
            {
                FileName = nsudoPath,
                Arguments = $"{privilege} -P:E -ShowWindowMode:Hide -Wait {command}",
                UseShellExecute = false,
                CreateNoWindow = true,
                RedirectStandardOutput = false,
                RedirectStandardError = false,
                RedirectStandardInput = autoConfirm
            };

            using (Process? process = Process.Start(psi))
            {
                if (process != null)
                {
                    if (autoConfirm && process.StartInfo.RedirectStandardInput)
                    {
                        _ = Task.Run(async () =>
                        {
                            try
                            {
                                for (int i = 0; i < 120 && !process.HasExited; i++)
                                {
                                    process.StandardInput.WriteLine("Y");
                                    await Task.Delay(100);
                                }
                                try { process.StandardInput.Close(); } catch { }
                            }
                            catch { }
                        });
                    }

                    if (killOnTimeout != null)
                    {
                        _ = Task.Run(async () =>
                        {
                            await Task.Delay(TimeSpan.FromSeconds(20));
                            if (process.HasExited) return;

                            foreach (var name in killOnTimeout)
                            {
                                try
                                {
                                    foreach (var p in Process.GetProcessesByName(name))
                                    {
                                        try { p.Kill(true); } catch { }
                                    }
                                }
                                catch { }
                            }

                            if (!process.HasExited)
                            {
                                Log($"⚠ Forcing past stalled components ({string.Join(", ", killOnTimeout)})");
                            }
                        });
                    }

                    Task waitTask = process.WaitForExitAsync();
                    Task delay = Task.Delay(timeout ?? TimeSpan.FromMinutes(3));
                    Task completed = await Task.WhenAny(waitTask, delay);

                    if (completed == delay)
                    {
                        try
                        {
                            process.Kill(true);
                        }
                        catch { }
                        Log($"✗ ERROR: {Path.GetFileName(scriptPath)} timed out and was terminated");

                        if (killOnTimeout != null)
                        {
                            foreach (var name in killOnTimeout)
                            {
                                try
                                {
                                    foreach (var p in Process.GetProcessesByName(name))
                                    {
                                        try { p.Kill(true); } catch { }
                                    }
                                }
                                catch { }
                            }
                        }
                    }
                    else
                    {
                        await waitTask;
                    }
                    await Task.Delay(1000);
                }
            }
        }

        private void Log(string message)
        {
            if (txtLog == null || txtLog.IsDisposed)
            {
                return;
            }

            if (txtLog.InvokeRequired)
            {
                txtLog.Invoke(new Action(() => Log(message)));
                return;
            }


            txtLog.AppendText($"[{DateTime.Now:HH:mm:ss}] {message}\r\n");
            txtLog.SelectionStart = txtLog.Text.Length;
            txtLog.ScrollToCaret();
            Application.DoEvents();
        }

        private void CloseLogWindow(Form logWindow)
        {
            if (logWindow.IsDisposed)
            {
                return;
            }

            if (logWindow.InvokeRequired)
            {
                logWindow.Invoke(new Action(logWindow.Close));
            }
            else
            {
                logWindow.Close();
            }
        }
    }
}

