using GorZdraw.ClassFolder;
using GorZdraw.DataFolder;
using GorZdraw.WindowFolder;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GorZdraw.PageFolder
{
    /// <summary>
    /// Логика взаимодействия для AuthorizationPage.xaml
    /// </summary>
    public partial class AuthorizationPage : Page
    {
        public AuthorizationPage()
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
                                this.NavigationService.Navigate(new MainMenu());
                                break;
                            case 2:
                                AdminWindow adminWindow = new AdminWindow();
                                adminWindow.Show();
                                break;
                        }
                    }
                }
                catch (Exception ex)
                {
                    MBClass.ErrorMB(ex);
                }
            }


            //AdminWindow adminWindow = new AdminWindow();
            //adminWindow.Show();
        }
    }
}
