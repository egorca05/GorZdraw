using GorZdraw.ClassFolder;
using GorZdraw.DataFolder;
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
    /// Логика взаимодействия для AuthorizationWindow.xaml
    /// </summary>
    public partial class AuthorizationWindow : Window
    {
        public AuthorizationWindow()
        {
            InitializeComponent();
        }

        private void InBtn_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(LoginTB.Text))
            {
                MBClass.ErrorMB("Ввндите логин");
                LoginTB.Focus();
            }
            if (string.IsNullOrEmpty(PasswordTB.Password))
            {
                MBClass.ErrorMB("Ввндите пароль");
                PasswordTB.Focus();
            }
            else
            {
                try
                {
                    var user = DBEntities.Getcontext().User.FirstOrDefault
                        (u => u.LoginUser == LoginTB.Text);
                    if (user == null)
                    {
                        MBClass.ErrorMB("Пользователь не найден");
                        LoginTB.Focus();
                        return;
                    }
                    if (user.PasswordUser != PasswordTB.Password)
                    {
                        MBClass.ErrorMB("Введен не правильный пароль");
                        PasswordTB.Focus();
                        return;
                    }
                    else
                    {
                        switch (user.IdRole)
                        {
                            case 3:
                                MainFrameWindow mainFrameWindow 
                                    = new MainFrameWindow();
                                mainFrameWindow.Show();
                                this.Close();
                                break;
                            case 2:
                                AdminWindow adminWindow = new AdminWindow();
                                adminWindow.Show();
                                this.Close();
                                break;
                            case 1:
                                DirectorWindow directorWindow = new DirectorWindow();
                                directorWindow.Show();
                                this.Close();
                                break;
                        }
                    }
                }
                catch (Exception ex)
                {
                    MBClass.ErrorMB(ex);
                }
            }
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
    }
}
