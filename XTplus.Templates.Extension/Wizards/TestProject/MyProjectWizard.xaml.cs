using System.Windows;
using Microsoft.VisualStudio.PlatformUI;

namespace XTplus.Templates.Extension.Wizards.TestProject {
    /// <summary>
    /// Interaction logic for MyProjectWizard.xaml
    /// </summary>
    public partial class MyProjectWizard : DialogWindow {
        public MyProjectWizard() {
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
