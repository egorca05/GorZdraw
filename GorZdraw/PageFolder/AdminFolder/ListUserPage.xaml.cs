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
    /// Логика взаимодействия для ListUserPage.xaml
    /// </summary>
    public partial class ListUserPage : Page
    {
        public ListUserPage()
        {
            InitializeComponent();
            UserDG.ItemsSource = DBEntities.Getcontext().User.ToList()
                .OrderBy(c => c.IdUser);
        }

        private void EdirBtn_Click(object sender, RoutedEventArgs e)
        {
            User user = UserDG.SelectedItem as User;
            VariableClass.IdUser = user.IdUser;
            this.NavigationService.Navigate(new EditUserPasPage(UserDG.SelectedItem as User));
        }
    }
}
