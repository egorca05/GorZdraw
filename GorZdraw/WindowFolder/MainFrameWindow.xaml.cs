using GorZdraw.PageFolder;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace GorZdraw.WindowFolder
{
    /// <summary>
    /// Логика взаимодействия для MainFrameWindow.xaml
    /// </summary>
    public partial class MainFrameWindow : Window
    {
         public MainFrameWindow()
        {
            InitializeComponent();
            MainFrame.Navigate(new PageFolder.AuthorizationPage());
        }

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                DragMove();
            }
        }

        private void RollUpIm_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            Application.Current.MainWindow.WindowState = WindowState.Minimized;
        }

        private void CloseIm_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            ClassFolder.MBClass.ExitMB();
        }

        private void LogOutIm_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            MainFrame.Navigate(new PageFolder.AuthorizationPage());
        }
    }
}
