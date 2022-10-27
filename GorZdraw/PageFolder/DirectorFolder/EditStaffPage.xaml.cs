using GorZdraw.ClassFolder;
using GorZdraw.DataFolder;
using GorZdraw.PageFolder.AdminFolder;
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

namespace GorZdraw.PageFolder.DirectorFolder
{
    /// <summary>
    /// Логика взаимодействия для EditStaffPage.xaml
    /// </summary>
    public partial class EditStaffPage : Page
    {
        public EditStaffPage(User User)
        {
            InitializeComponent();
            DataContext = User;
            RoleCb.ItemsSource = DBEntities.Getcontext()
                .Role.ToList();

        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            User user = DBEntities.Getcontext().User.
                FirstOrDefault(s => s.IdUser == VariableClass.IdUser);
            user.LoginUser = LoginTb.Text;
            user.PasswordUser = PasswordTb.Text;
            user.IdRole = Int32.Parse(RoleCb.SelectedValue.ToString());
            DBEntities.Getcontext().SaveChanges();
            MBClass.InformationMB("Поставщик успешно отредактирован");
            NavigationService.Navigate(new ListStaffDirectorPage());
        }
    }
}
