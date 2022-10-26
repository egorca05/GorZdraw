using GorZdraw.ClassFolder;
using GorZdraw.DataFolder;
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

namespace GorZdraw.PageFolder.AdminFolder
{
    /// <summary>
    /// Логика взаимодействия для EditUserPasPage.xaml
    /// </summary>
    public partial class EditUserPasPage : Page
    {
        public EditUserPasPage(User User)
        {
            InitializeComponent();
            DataContext = User;
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack(); 
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            User user = DBEntities.Getcontext().User.
                FirstOrDefault(s => s.IdUser == VariableClass.IdUser);
            user.PasswordUser = PasswordTb.Text;
            DBEntities.Getcontext().SaveChanges();
            MBClass.InformationMB("Пользователь успешно отредактирован");
            NavigationService.Navigate(new ListUserPage());
        }
    }
}
