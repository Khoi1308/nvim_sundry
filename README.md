# ⚡ nvim_sundry

Đây là bộ cấu hình **Neovim** (Personal Configuration) được tối ưu hóa cho tốc độ và trải nghiệm người dùng, sử dụng **Lazy.nvim** làm trình quản lý plugin.

Cấu hình này tập trung vào sự thẩm mỹ (Kanagawa theme), tốc độ (Blink.cmp, Oil.nvim) và đầy đủ tính năng cho lập trình viên (LSP, Formatting, Treesitter).

## 📋 Yêu cầu hệ thống (Prerequisites)

Để nvim hoạt động trơn tru, máy bạn cần cài sẵn:

* **Neovim** (phiên bản >= **0.10.0**)
* **Git** (để clone plugin)
* **Nerd Font** (Bắt buộc để hiển thị icon): Khuyên dùng [JetBrainsMono Nerd Font](https://www.nerdfonts.com/).
* **Ripgrep** (`rg`): Cần cho Telescope để tìm kiếm text cực nhanh.
* **C Compiler** (`gcc` hoặc `clang`): Cần để biên dịch Treesitter parsers.

## 🛠 Cài đặt (Installation)

1.  **Backup cấu hình cũ (nếu có):**
    ```bash
    mv ~/.config/nvim ~/.config/nvim.bak
    mv ~/.local/share/nvim ~/.local/share/nvim.bak
    ```

2.  **Clone repository này:**
    ```bash
    git clone [LINK_GITHUB_CUA_BAN] ~/.config/nvim
    ```

3.  **Khởi chạy Neovim:**
    Mở `nvim` trên terminal. `Lazy.nvim` sẽ tự động tải và cài đặt toàn bộ plugin. Hãy kiên nhẫn đợi trong lần chạy đầu tiên.

## 📦 Danh sách Plugin nổi bật

Cấu hình được chia thành các module nhỏ trong thư mục `lua/plugins/`.

### 🎨 Giao diện (UI & Theme)
* **[kanagawa.nvim](lua/plugins/kanagawa.lua)**: Theme màu dịu mắt, độ tương phản cao.
* **[bufferline.nvim](lua/plugins/bufferline.lua)**: Thanh tab bar đẹp mắt phía trên, hiển thị các file đang mở.
* **[mini.statusline](lua/plugins/statusline.lua)**: Thanh trạng thái (status bar) tối giản phía dưới.
* **[noice.nvim](lua/plugins/noice.lua)**: Thay thế dòng lệnh (cmdline) cũ kỹ bằng giao diện popup hiện đại, hiển thị thông báo đẹp hơn.
* **[dressing.nvim](lua/plugins/dressing.lua)**: Làm đẹp các ô nhập liệu (Input) và menu chọn (Select).

### 📂 Quản lý File
* **[neo-tree.nvim](lua/plugins/neo-tree.lua)**: Cây thư mục (Sidebar) mạnh mẽ bên trái (`<Space>e` để mở).
* **[oil.nvim](lua/plugins/oil.lua)**: Quản lý file theo phong cách buffer (cho phép sửa/xóa/di chuyển file nhanh như sửa văn bản).

### 🧠 Code Intelligence (LSP & Completion)
* **[blink.cmp](lua/plugins/blink.cmp)**: Plugin gợi ý code (Autocompletion) thế hệ mới viết bằng Rust, tốc độ cực nhanh (thay thế nvim-cmp).
* **[nvim-lspconfig](lua/plugins/lsp-config.lua)**: Cấu hình kết nối tới các Language Server.
* **[mason.nvim](lua/plugins/lsp-config.lua)**: Công cụ quản lý, giúp cài đặt tự động LSP, Linter, Formatter (như `stylua`, `prettierd`, `clang-format`...) chỉ với 1 lệnh.
* **[conform.nvim](lua/plugins/conform.lua)**: Tự động format code khi lưu file (Auto-format).
* **[nvim-treesitter](lua/plugins/nvim-treesitter.lua)**: Highlight cú pháp code thông minh.

### 🔍 Tiện ích khác
* **[telescope.nvim](lua/plugins/telescope.lua)**: Bộ tìm kiếm đa năng (tìm file, tìm chữ, tìm buffer...).
* **[which-key.nvim](lua/plugins/which-key.lua)**: Hiển thị bảng gợi ý phím tắt khi bạn nhấn phím Space.
* **[vim-sleuth](lua/plugins/sleuth.lua)**: Tự động phát hiện chế độ thụt lề (indent) của file đang mở.
* **[gitsigns.nvim](lua/plugins/gitsigns.lua)**: Hiển thị git diff bên lề dòng code.

---

## ⌨️ Phím tắt (Keymaps)

**Leader Key:** `Space` (Phím khoảng trắng)

### 🗂 Điều hướng & Cửa sổ
| Phím tắt | Chức năng | Mô tả |
| :--- | :--- | :--- |
| `<Space>e` | **NeoTree** | Bật/Tắt cây thư mục bên trái |
| `-` | **Oil** | Mở thư mục hiện tại dạng edit buffer |
| `<Space>sv` | Split Vertical | Chia đôi màn hình dọc |
| `<Space>sh` | Split Horizontal | Chia đôi màn hình ngang |
| `<Space>wx` | Close Window | Đóng cửa sổ hiện tại |
| `<Space>wh/j/k/l`| Navigate | Di chuyển qua lại giữa các cửa sổ |
| `gl` | Diagnostics | Xem chi tiết lỗi tại vị trí con trỏ (Float window) |

### 🔍 Tìm kiếm (Telescope)
| Phím tắt | Lệnh | Chức năng |
| :--- | :--- | :--- |
| `<Space>ff` | `find_files` | Tìm nhanh tên file trong project |
| `<Space>fs` | `live_grep` | Tìm nội dung text trong toàn bộ project |
| `<Space>fr` | `oldfiles` | Mở danh sách file vừa truy cập gần đây |
| `<Space>fc` | `grep_string` | Tìm từ khóa ngay dưới con trỏ chuột |
| `<Space>fb` | `buffers` | Tìm trong các tab đang mở |

### 🛠 LSP & Code Action
| Phím tắt | Chức năng |
| :--- | :--- |
| `<Space>cf` | **Format Code** (Dùng conform.nvim) |
| `<Space>ca` | Code Action (Gợi ý sửa lỗi nhanh) |
| `<Space>cn` | Rename (Đổi tên biến/hàm hàng loạt) |
| `<Space>cd` | Go to Definition (Đi tới định nghĩa) |
| `<Space>cr` | Go to References (Tìm nơi sử dụng) |
| `K` | Hover Documentation (Hiện hướng dẫn sử dụng hàm) |

---

## ⚙️ Cấu trúc thư mục

```text
nvim/
├── init.lua              # File khởi động chính
├── lazy-lock.json        # File khóa phiên bản plugin (Không nên sửa tay)
└── lua/
    ├── configs/          # Cấu hình chung
    │   ├── keymaps.lua   # Các phím tắt global
    │   ├── lazy.lua      # Cấu hình plugin manager
    │   └── options.lua   # Cài đặt vim (tab size, line number...)
    ├── lsp/              # Cấu hình riêng cho từng ngôn ngữ (Servers)
    └── plugins/          # Mỗi file là cấu hình cho 1 plugin riêng biệt
