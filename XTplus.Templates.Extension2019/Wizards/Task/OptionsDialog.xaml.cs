using System.Windows;
using Microsoft.VisualStudio.PlatformUI;

namespace XTplus.Templates.Extension.Wizards.Task {
    /// <summary>
    /// Interaction logic for MyProjectWizard.xaml
    /// </summary>
    public partial class OptionsDialog : DialogWindow {
        public OptionsDialog() {
            InitializeComponent();
        }

        private void OnOkClick(object sender, RoutedEventArgs e) {
            DialogResult = true;
        }

        private void OnCancelClick(object sender, RoutedEventArgs e) {
            DialogResult = false;
        }
    }
}
