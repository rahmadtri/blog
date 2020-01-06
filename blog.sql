-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2020 at 11:38 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'berita Terkini', 'berita-terkini', NULL, '2019-12-10 22:00:36'),
(2, 'Artikel Baru', 'artikel-baru', NULL, '2019-12-10 21:38:31'),
(3, 'sekolah', 'sekolah', NULL, NULL),
(4, 'kecantikan', 'kecantikan', '2019-12-10 21:00:32', '2019-12-10 21:00:32'),
(5, 'berita terbaru', 'berita-terbaru', '2019-12-10 21:00:40', '2019-12-10 21:00:40'),
(6, 'Seputar mandong', 'seputar-mandong', '2019-12-14 20:41:26', '2019-12-14 20:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_10_235951_create_category_table', 1),
(9, '2019_12_11_053515_create_tags_table', 2),
(10, '2019_12_11_094210_create_posts_table', 2),
(11, '2019_12_12_233408_add_new_slug_posts_table', 2),
(12, '2019_12_12_235744_create_post_tag_table', 2),
(13, '2019_12_13_092354_tambah_softdelete_ke_post', 3),
(14, '2019_12_13_232906_tambah_field_user_post', 4),
(15, '2019_12_14_002546_tambah_tipe_user', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `judul`, `category_id`, `content`, `gambar`, `created_at`, `updated_at`, `slug`, `deleted_at`, `users_id`) VALUES
(1, 'Mandong terkini', 5, '<p>Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptates ratione, repudiandae hic inventore pariatur excepturi. Necessitatibus tenetur enim quisquam veniam quam eius. Animi reiciendis repellendus officia maxime velit dolor quo! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Repudiandae ducimus natus quia nostrum accusantium ipsum labore laborum itaque, earum deleniti quod dolores accusamus rerum expedita provident ea molestias, mollitia animi dolore voluptatibus. Eos earum soluta magni vel atque? Quisquam reprehenderit sequi at labore totam numquam expedita est necessitatibus incidunt dolorum quidem cum delectus excepturi molestiae natus, eveniet veritatis tempora doloribus facere quam illum eos doloremque maxime. Asperiores, ipsa soluta. Adipisci facilis, repudiandae nemo sapiente odit ducimus. Neque ratione pariatur atque nulla velit, maxime quibusdam, reiciendis enim esse consectetur nemo cupiditate voluptatum laudantium! Suscipit velit sunt porro aperiam vel neque, odio quam quibusdam autem quod quos odit obcaecati id corporis dolores esse provident similique, quas excepturi quaerat earum non, dolorem facilis. Sint accusantium reprehenderit molestias ea dolore quas nemo inventore fugit, nam facilis vitae officiis consequuntur laboriosam quo veritatis tenetur voluptate enim eum ipsam. Incidunt, at inventore. Quidem, nemo odit placeat, quae eius molestias deserunt doloribus qui, reiciendis blanditiis magnam? Quibusdam magni asperiores natus fugiat necessitatibus eveniet quas aut veritatis vel, ipsum enim, illum itaque facere beatae commodi soluta distinctio repellat ullam autem. Voluptate, porro nobis! Modi quo molestiae provident incidunt quam? Dolor corrupti deleniti incidunt inventore nobis magnam temporibus fuga impedit aliquid recusandae iste necessitatibus facere blanditiis nesciunt, doloremque hic minima expedita culpa. Aspernatur voluptates veniam iste voluptatem! Quaerat vitae similique culpa animi perferendis sapiente tenetur magni veniam, voluptates voluptatem. Quis mollitia sint dolore maiores, doloribus dolores fugiat ut iure, perferendis est accusamus doloremque et. Corporis perferendis magnam molestias adipisci? In sequi facilis dolore, quidem tempore repudiandae aliquid. Consequatur incidunt accusamus perferendis nulla quae mollitia, nihil vel nostrum in molestias reiciendis id blanditiis dolor dignissimos unde ipsam! Cupiditate obcaecati quas maxime aliquam delectus, corrupti possimus vero, nobis accusamus soluta repellat excepturi earum? Provident, deleniti. Rem soluta deserunt quo veniam quas dolor! Nobis aspernatur mollitia, tempore, adipisci eum officia esse nisi dicta quisquam nemo totam similique vero veritatis dolorum! In similique dignissimos doloribus nemo iste atque est eius ducimus vel aut facere vero reiciendis fugiat, at consequatur delectus odio corrupti unde! Quidem quasi possimus repellendus tempora debitis culpa. Tenetur nobis harum repellendus cumque iste nemo quae fuga quam vero tempore veritatis, tempora, facere at earum est hic ratione culpa! Tempora recusandae quidem omnis dolorum sint nisi corrupti, aliquid ipsa quos hic nemo reprehenderit dolores soluta alias excepturi est aspernatur molestias quibusdam maiores totam necessitatibus similique repellendus. Corporis corrupti eveniet pariatur iste, perferendis suscipit nisi accusantium laboriosam ipsam maiores esse atque vitae dicta animi incidunt ab quaerat at! Dignissimos, ut enim at eveniet laudantium officia delectus velit pariatur quia accusamus modi dolores iste hic, totam ab harum odit voluptate ex sequi amet laboriosam est deleniti. Laboriosam molestiae nam, magni unde commodi impedit. Iure dicta voluptatum id quia saepe corrupti quod provident aperiam, commodi aliquid voluptatibus, quam eum officia recusandae, doloribus cupiditate tempore repellat perspiciatis at quae libero blanditiis. Ea error sequi deleniti, a sunt minus omnis eaque, animi, quasi et beatae? Numquam optio quisquam, non similique eius quam eligendi nemo repellendus dignissimos. Aspernatur, officia amet perspiciatis nisi obcaecati ad quo repudiandae voluptates numquam accusantium inventore et laborum facilis alias dolorem mollitia nostrum deleniti sit? Sunt, tempora? Explicabo itaque quod fuga ipsum et dolorem tempore optio nulla repellat tenetur ratione magnam officia commodi saepe nostrum fugit, exercitationem, animi ad quae est minus facilis consequuntur vel. Autem unde, quisquam veritatis voluptatibus quod odit repellendus, placeat minus debitis ipsum deserunt facere explicabo dolorem necessitatibus incidunt voluptate saepe vitae aliquid quibusdam id ipsa illo. Repudiandae molestiae consectetur ea perspiciatis, doloribus minus eligendi! Dolor enim, et consequuntur placeat accusamus necessitatibus aliquid fugit earum nobis aspernatur, dicta incidunt numquam culpa atque minus consequatur aliquam distinctio qui, suscipit eveniet dolores? Iure quos esse, tempore aliquid voluptatem molestiae minima reprehenderit nobis vitae magni, saepe, debitis odio eum. Facere praesentium sunt ratione, sapiente ullam blanditiis tempora quia ea. Cumque, ab autem reiciendis placeat magni, officiis enim magnam tempore natus quas, hic corporis tempora. Modi ducimus animi esse at, maxime incidunt tempora repudiandae id rem nemo voluptates dolore deserunt inventore! Error ex aliquid molestiae fugit inventore nam architecto eligendi ipsam beatae, laudantium delectus excepturi ipsum tenetur dignissimos est odit rerum dicta ratione voluptas iste quos! Saepe sit tempore quisquam porro eveniet velit, aperiam deleniti ea, autem nesciunt nam modi veritatis corrupti? Incidunt unde delectus reiciendis eius excepturi adipisci ab perferendis cupiditate, nesciunt, ipsa recusandae! Commodi porro eaque quos facere. Neque illum, odit laboriosam, reiciendis, distinctio fugit natus illo facere doloremque iure repudiandae repellendus. Tenetur, cumque commodi? Iusto, in. Laboriosam commodi debitis numquam, deleniti incidunt itaque porro dolorem officia unde, non voluptatem obcaecati odit, quam in inventore atque aperiam perferendis. Veritatis adipisci perferendis possimus quod non amet at aliquam consequuntur natus alias nobis nostrum neque fugit officia corporis rerum unde ducimus voluptatibus dolorem vero, enim aut quae. Non iure repellat, earum nisi illo ducimus odit explicabo tenetur praesentium voluptate, ullam unde tempore expedita quibusdam itaque assumenda, provident laboriosam modi. Autem quasi sit, neque quae explicabo fugiat quis! Eum quis ratione accusamus pariatur rem recusandae harum cum minus, sunt sint quidem, eaque illum repellat sequi odio soluta quam consequuntur doloribus mollitia asperiores id voluptatum! Quia, nulla. Atque aliquam ex, vero quia nobis officiis aliquid dolorum provident sint expedita iste alias molestias a eveniet nemo! Natus ipsum voluptas fugiat iusto architecto voluptatibus, consectetur rem sed modi cum eaque, odit quidem ullam atque, dignissimos tempore consequuntur provident illo eum hic harum! Soluta similique, enim, sed atque reiciendis est culpa, dolores nihil ipsam quibusdam rem facilis quisquam aliquam. Dignissimos quae sit dicta odit reprehenderit voluptatum dolorem illo blanditiis ullam unde. Obcaecati quaerat excepturi fugit at exercitationem saepe nobis dolor iure quasi! Tempore, neque iure repellat reprehenderit praesentium ab commodi modi esse ipsa ut laboriosam, quod odio rem? Corrupti facilis aperiam inventore expedita velit mollitia porro eos sit eum natus! Expedita laboriosam doloribus aperiam quae incidunt numquam corporis, eligendi id quaerat dolorum cumque minima enim voluptatum dolore veritatis magnam quidem ab molestiae accusamus provident quam dolorem dolores? Aperiam, amet. Architecto maxime voluptates quae aliquid fugiat quod adipisci explicabo.</p>', 'public/uplouds/posts/1576499618photo-1485628926614-dbb863e7e1fa.jpg', '2019-12-12 17:43:01', '2019-12-16 05:33:38', 'mandong-terkini', NULL, 1),
(3, 'Mandong hujan deras', 1, '<p>Where can I get some? There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'public/uplouds/posts/1576499665photo-1485628926614-dbb863e7e1fa.jpg', '2019-12-13 02:51:35', '2019-12-16 05:34:25', 'mandong-hujan-deras', NULL, 1),
(7, 'Klaten Hujan', 1, 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'public/uplouds/posts/1576313360photo-1485628926614-dbb863e7e1fa.jpg', '2019-12-14 01:30:05', '2019-12-14 18:39:46', 'klaten-hujan', NULL, 4),
(8, 'Genangan', 3, '<p>The standard Lorem Ipsum passage, used since the 1500s &quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>', 'public/uplouds/posts/1576499715photo-1485628926614-dbb863e7e1fa.jpg', '2019-12-14 01:31:59', '2019-12-16 05:35:15', 'genangan', NULL, 4),
(9, 'Gotong Royong', 6, '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<h2>Where can I get some?</h2>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'public/uplouds/posts/1576499548photo-1512445600578-574f23656707.jpg', '2019-12-14 20:44:56', '2019-12-16 05:32:28', 'gotong-royong', NULL, 1),
(11, 'Ini Hujan', 6, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed hendrerit sed neque ut hendrerit. Donec a ullamcorper lorem. Nunc porttitor dictum nibh. Aliquam ante libero, commodo sit amet posuere bibendum, egestas eget purus. Donec a vestibulum nunc, sit amet ultrices ipsum. Nunc a tellus velit. Suspendisse non viverra tellus. Duis eu magna mollis erat laoreet vehicula sit amet a purus. In hac habitasse platea dictumst. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras ut eleifend velit. Pellentesque est mi, varius et metus vitae, scelerisque facilisis dui. Etiam aliquet justo in semper posuere.</p>\r\n\r\n<p>Sed viverra augue a enim dapibus mattis. Cras elementum mollis ipsum, a ultricies massa placerat id. Morbi sed metus ut nisl feugiat commodo. Mauris scelerisque dolor quis enim sagittis, vitae aliquet lorem blandit. Fusce tincidunt sapien sem, quis tincidunt leo vehicula ut. Quisque facilisis at quam quis volutpat. Nullam vitae condimentum risus, et viverra est.</p>\r\n\r\n<p>Quisque mauris tellus, aliquam ac nulla a, facilisis suscipit magna. Nam vitae malesuada justo, ac congue lorem. Pellentesque posuere nunc dui, eu gravida purus commodo nec. Donec dui eros, interdum non felis eu, tristique rhoncus nisl. Nam quis massa in purus faucibus mattis in eu quam. Donec pharetra malesuada orci convallis tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent posuere tincidunt urna in dignissim. Suspendisse potenti. Morbi sit amet nisi a sapien ullamcorper aliquet.</p>\r\n\r\n<p>Morbi congue ullamcorper turpis, sed pulvinar lorem cursus vitae. Nam gravida dolor elit, viverra hendrerit augue viverra eu. Praesent semper risus erat, et scelerisque dolor maximus sed. Ut non nibh lacus. Aliquam porta ligula sit amet urna tempor tempus. Aliquam erat volutpat. Integer blandit pharetra ligula, mattis aliquet justo vulputate nec.</p>\r\n\r\n<p>Cras placerat ipsum purus, ut congue eros maximus ac. Mauris vitae placerat neque, vitae commodo urna. Vivamus vel dignissim nibh. Quisque a tincidunt libero. Pellentesque massa arcu, ornare et commodo at, finibus ut quam. In laoreet sollicitudin arcu, nec consequat nisl tempor at. Integer imperdiet, mi in fringilla condimentum, risus lacus vulputate metus, vel rhoncus odio dolor in sem. Aliquam ultricies odio et nibh scelerisque interdum. Nam gravida felis at nisl imperdiet, semper consectetur massa lacinia.</p>\r\n\r\n<p>Aliquam porttitor rutrum eros vel finibus. Fusce maximus ut velit sed accumsan. Curabitur mattis dignissim vehicula. Aliquam quis diam non sem interdum dictum. Fusce ligula enim, pellentesque ut placerat eget, egestas id nibh. Fusce rhoncus dolor ac sapien aliquam, vel consequat sapien iaculis. Nullam sagittis feugiat magna ut fringilla. Proin dapibus gravida odio, non ultricies enim aliquet vitae.</p>\r\n\r\n<p>Quisque sit amet congue nunc. Sed aliquet ac risus quis posuere. Ut eu tellus massa. Suspendisse ornare libero vel erat consectetur, sed dignissim arcu euismod. Fusce gravida mauris vitae ipsum semper egestas. Etiam at pharetra mauris. Etiam malesuada est vel maximus mattis. Ut elit enim, scelerisque quis velit et, convallis laoreet purus. Cras luctus placerat dui accumsan placerat. Aliquam ante purus, iaculis sit amet dui vitae, porta tincidunt orci. Phasellus dignissim, magna nec molestie fringilla, massa est interdum tortor, interdum bibendum neque metus quis arcu. Suspendisse non tempus magna, in placerat ante. Praesent nec lorem quis erat iaculis viverra. Nam velit lorem, tempor vitae rhoncus id, finibus eu risus. Nullam volutpat nisl nunc, vitae gravida lectus vulputate molestie. Curabitur laoreet pulvinar nunc eget semper.</p>\r\n\r\n<p>Pellentesque luctus nibh at luctus imperdiet. Nunc laoreet dui sit amet diam interdum pellentesque. Suspendisse arcu ligula, molestie id efficitur sit amet, pellentesque et sapien. Aenean id orci id neque consectetur luctus. Aliquam dictum placerat dictum. Sed ipsum massa, finibus non quam quis, elementum elementum nisi. Sed sit amet lacus massa. Morbi tempor, mauris id egestas elementum, ligula urna malesuada lacus, vitae hendrerit lacus nulla ut felis. Proin arcu ligula, volutpat ut efficitur ac, fermentum a risus. Fusce varius lacinia dolor at imperdiet. Integer varius auctor elit vel vestibulum. Aenean posuere sit amet nisl sit amet facilisis. Proin laoreet dictum vestibulum.</p>\r\n\r\n<p>Proin fermentum feugiat ipsum, vel sodales nibh tincidunt nec. Vestibulum a purus et orci semper finibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque efficitur ipsum vitae sagittis bibendum. Fusce sed purus ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam lacinia, tellus ac tincidunt venenatis, urna felis volutpat leo, et consequat nisi augue a justo.</p>\r\n\r\n<p>Maecenas non ligula sit amet nisl dignissim tempus convallis sed turpis. Nunc vel pellentesque diam, vitae lobortis turpis. Nullam ut porta libero. Donec maximus eros a odio pellentesque, in lobortis elit gravida. Nulla consectetur quam at leo euismod, ut vehicula nisi vestibulum. Donec porttitor ipsum id blandit tincidunt. Pellentesque in odio auctor, pulvinar ante maximus, accumsan libero. Quisque pellentesque felis sit amet dignissim consequat. Mauris feugiat risus diam, in consectetur orci sodales in. Praesent nec congue lacus, eleifend fringilla velit. Nullam ut ligula elit. Phasellus tincidunt nibh sit amet turpis porta dignissim.</p>', 'public/uplouds/posts/1576499325photo-1485628926614-dbb863e7e1fa.jpg', '2019-12-16 05:28:45', '2019-12-16 05:28:45', 'ini-hujan', NULL, 1),
(12, 'Klaten Cerah', 2, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed hendrerit sed neque ut hendrerit. Donec a ullamcorper lorem. Nunc porttitor dictum nibh. Aliquam ante libero, commodo sit amet posuere bibendum, egestas eget purus. Donec a vestibulum nunc, sit amet ultrices ipsum. Nunc a tellus velit. Suspendisse non viverra tellus. Duis eu magna mollis erat laoreet vehicula sit amet a purus. In hac habitasse platea dictumst. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras ut eleifend velit. Pellentesque est mi, varius et metus vitae, scelerisque facilisis dui. Etiam aliquet justo in semper posuere.</p>\r\n\r\n<p>Sed viverra augue a enim dapibus mattis. Cras elementum mollis ipsum, a ultricies massa placerat id. Morbi sed metus ut nisl feugiat commodo. Mauris scelerisque dolor quis enim sagittis, vitae aliquet lorem blandit. Fusce tincidunt sapien sem, quis tincidunt leo vehicula ut. Quisque facilisis at quam quis volutpat. Nullam vitae condimentum risus, et viverra est.</p>\r\n\r\n<p>Quisque mauris tellus, aliquam ac nulla a, facilisis suscipit magna. Nam vitae malesuada justo, ac congue lorem. Pellentesque posuere nunc dui, eu gravida purus commodo nec. Donec dui eros, interdum non felis eu, tristique rhoncus nisl. Nam quis massa in purus faucibus mattis in eu quam. Donec pharetra malesuada orci convallis tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent posuere tincidunt urna in dignissim. Suspendisse potenti. Morbi sit amet nisi a sapien ullamcorper aliquet.</p>\r\n\r\n<p>Morbi congue ullamcorper turpis, sed pulvinar lorem cursus vitae. Nam gravida dolor elit, viverra hendrerit augue viverra eu. Praesent semper risus erat, et scelerisque dolor maximus sed. Ut non nibh lacus. Aliquam porta ligula sit amet urna tempor tempus. Aliquam erat volutpat. Integer blandit pharetra ligula, mattis aliquet justo vulputate nec.</p>\r\n\r\n<p>Cras placerat ipsum purus, ut congue eros maximus ac. Mauris vitae placerat neque, vitae commodo urna. Vivamus vel dignissim nibh. Quisque a tincidunt libero. Pellentesque massa arcu, ornare et commodo at, finibus ut quam. In laoreet sollicitudin arcu, nec consequat nisl tempor at. Integer imperdiet, mi in fringilla condimentum, risus lacus vulputate metus, vel rhoncus odio dolor in sem. Aliquam ultricies odio et nibh scelerisque interdum. Nam gravida felis at nisl imperdiet, semper consectetur massa lacinia.</p>\r\n\r\n<p>Aliquam porttitor rutrum eros vel finibus. Fusce maximus ut velit sed accumsan. Curabitur mattis dignissim vehicula. Aliquam quis diam non sem interdum dictum. Fusce ligula enim, pellentesque ut placerat eget, egestas id nibh. Fusce rhoncus dolor ac sapien aliquam, vel consequat sapien iaculis. Nullam sagittis feugiat magna ut fringilla. Proin dapibus gravida odio, non ultricies enim aliquet vitae.</p>\r\n\r\n<p>Quisque sit amet congue nunc. Sed aliquet ac risus quis posuere. Ut eu tellus massa. Suspendisse ornare libero vel erat consectetur, sed dignissim arcu euismod. Fusce gravida mauris vitae ipsum semper egestas. Etiam at pharetra mauris. Etiam malesuada est vel maximus mattis. Ut elit enim, scelerisque quis velit et, convallis laoreet purus. Cras luctus placerat dui accumsan placerat. Aliquam ante purus, iaculis sit amet dui vitae, porta tincidunt orci. Phasellus dignissim, magna nec molestie fringilla, massa est interdum tortor, interdum bibendum neque metus quis arcu. Suspendisse non tempus magna, in placerat ante. Praesent nec lorem quis erat iaculis viverra. Nam velit lorem, tempor vitae rhoncus id, finibus eu risus. Nullam volutpat nisl nunc, vitae gravida lectus vulputate molestie. Curabitur laoreet pulvinar nunc eget semper.</p>\r\n\r\n<p>Pellentesque luctus nibh at luctus imperdiet. Nunc laoreet dui sit amet diam interdum pellentesque. Suspendisse arcu ligula, molestie id efficitur sit amet, pellentesque et sapien. Aenean id orci id neque consectetur luctus. Aliquam dictum placerat dictum. Sed ipsum massa, finibus non quam quis, elementum elementum nisi. Sed sit amet lacus massa. Morbi tempor, mauris id egestas elementum, ligula urna malesuada lacus, vitae hendrerit lacus nulla ut felis. Proin arcu ligula, volutpat ut efficitur ac, fermentum a risus. Fusce varius lacinia dolor at imperdiet. Integer varius auctor elit vel vestibulum. Aenean posuere sit amet nisl sit amet facilisis. Proin laoreet dictum vestibulum.</p>\r\n\r\n<p>Proin fermentum feugiat ipsum, vel sodales nibh tincidunt nec. Vestibulum a purus et orci semper finibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque efficitur ipsum vitae sagittis bibendum. Fusce sed purus ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam lacinia, tellus ac tincidunt venenatis, urna felis volutpat leo, et consequat nisi augue a justo.</p>\r\n\r\n<p>Maecenas non ligula sit amet nisl dignissim tempus convallis sed turpis. Nunc vel pellentesque diam, vitae lobortis turpis. Nullam ut porta libero. Donec maximus eros a odio pellentesque, in lobortis elit gravida. Nulla consectetur quam at leo euismod, ut vehicula nisi vestibulum. Donec porttitor ipsum id blandit tincidunt. Pellentesque in odio auctor, pulvinar ante maximus, accumsan libero. Quisque pellentesque felis sit amet dignissim consequat. Mauris feugiat risus diam, in consectetur orci sodales in. Praesent nec congue lacus, eleifend fringilla velit. Nullam ut ligula elit. Phasellus tincidunt nibh sit amet turpis porta dignissim.</p>', 'public/uplouds/posts/1576499381photo-1512445600578-574f23656707.jpg', '2019-12-16 05:29:41', '2019-12-16 05:29:41', 'klaten-cerah', NULL, 1),
(13, 'Klaten Bersinar', 3, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed hendrerit sed neque ut hendrerit. Donec a ullamcorper lorem. Nunc porttitor dictum nibh. Aliquam ante libero, commodo sit amet posuere bibendum, egestas eget purus. Donec a vestibulum nunc, sit amet ultrices ipsum. Nunc a tellus velit. Suspendisse non viverra tellus. Duis eu magna mollis erat laoreet vehicula sit amet a purus. In hac habitasse platea dictumst. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras ut eleifend velit. Pellentesque est mi, varius et metus vitae, scelerisque facilisis dui. Etiam aliquet justo in semper posuere.</p>\r\n\r\n<p>Sed viverra augue a enim dapibus mattis. Cras elementum mollis ipsum, a ultricies massa placerat id. Morbi sed metus ut nisl feugiat commodo. Mauris scelerisque dolor quis enim sagittis, vitae aliquet lorem blandit. Fusce tincidunt sapien sem, quis tincidunt leo vehicula ut. Quisque facilisis at quam quis volutpat. Nullam vitae condimentum risus, et viverra est.</p>\r\n\r\n<p>Quisque mauris tellus, aliquam ac nulla a, facilisis suscipit magna. Nam vitae malesuada justo, ac congue lorem. Pellentesque posuere nunc dui, eu gravida purus commodo nec. Donec dui eros, interdum non felis eu, tristique rhoncus nisl. Nam quis massa in purus faucibus mattis in eu quam. Donec pharetra malesuada orci convallis tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent posuere tincidunt urna in dignissim. Suspendisse potenti. Morbi sit amet nisi a sapien ullamcorper aliquet.</p>\r\n\r\n<p>Morbi congue ullamcorper turpis, sed pulvinar lorem cursus vitae. Nam gravida dolor elit, viverra hendrerit augue viverra eu. Praesent semper risus erat, et scelerisque dolor maximus sed. Ut non nibh lacus. Aliquam porta ligula sit amet urna tempor tempus. Aliquam erat volutpat. Integer blandit pharetra ligula, mattis aliquet justo vulputate nec.</p>\r\n\r\n<p>Cras placerat ipsum purus, ut congue eros maximus ac. Mauris vitae placerat neque, vitae commodo urna. Vivamus vel dignissim nibh. Quisque a tincidunt libero. Pellentesque massa arcu, ornare et commodo at, finibus ut quam. In laoreet sollicitudin arcu, nec consequat nisl tempor at. Integer imperdiet, mi in fringilla condimentum, risus lacus vulputate metus, vel rhoncus odio dolor in sem. Aliquam ultricies odio et nibh scelerisque interdum. Nam gravida felis at nisl imperdiet, semper consectetur massa lacinia.</p>\r\n\r\n<p>Aliquam porttitor rutrum eros vel finibus. Fusce maximus ut velit sed accumsan. Curabitur mattis dignissim vehicula. Aliquam quis diam non sem interdum dictum. Fusce ligula enim, pellentesque ut placerat eget, egestas id nibh. Fusce rhoncus dolor ac sapien aliquam, vel consequat sapien iaculis. Nullam sagittis feugiat magna ut fringilla. Proin dapibus gravida odio, non ultricies enim aliquet vitae.</p>\r\n\r\n<p>Quisque sit amet congue nunc. Sed aliquet ac risus quis posuere. Ut eu tellus massa. Suspendisse ornare libero vel erat consectetur, sed dignissim arcu euismod. Fusce gravida mauris vitae ipsum semper egestas. Etiam at pharetra mauris. Etiam malesuada est vel maximus mattis. Ut elit enim, scelerisque quis velit et, convallis laoreet purus. Cras luctus placerat dui accumsan placerat. Aliquam ante purus, iaculis sit amet dui vitae, porta tincidunt orci. Phasellus dignissim, magna nec molestie fringilla, massa est interdum tortor, interdum bibendum neque metus quis arcu. Suspendisse non tempus magna, in placerat ante. Praesent nec lorem quis erat iaculis viverra. Nam velit lorem, tempor vitae rhoncus id, finibus eu risus. Nullam volutpat nisl nunc, vitae gravida lectus vulputate molestie. Curabitur laoreet pulvinar nunc eget semper.</p>\r\n\r\n<p>Pellentesque luctus nibh at luctus imperdiet. Nunc laoreet dui sit amet diam interdum pellentesque. Suspendisse arcu ligula, molestie id efficitur sit amet, pellentesque et sapien. Aenean id orci id neque consectetur luctus. Aliquam dictum placerat dictum. Sed ipsum massa, finibus non quam quis, elementum elementum nisi. Sed sit amet lacus massa. Morbi tempor, mauris id egestas elementum, ligula urna malesuada lacus, vitae hendrerit lacus nulla ut felis. Proin arcu ligula, volutpat ut efficitur ac, fermentum a risus. Fusce varius lacinia dolor at imperdiet. Integer varius auctor elit vel vestibulum. Aenean posuere sit amet nisl sit amet facilisis. Proin laoreet dictum vestibulum.</p>\r\n\r\n<p>Proin fermentum feugiat ipsum, vel sodales nibh tincidunt nec. Vestibulum a purus et orci semper finibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque efficitur ipsum vitae sagittis bibendum. Fusce sed purus ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam lacinia, tellus ac tincidunt venenatis, urna felis volutpat leo, et consequat nisi augue a justo.</p>\r\n\r\n<p>Maecenas non ligula sit amet nisl dignissim tempus convallis sed turpis. Nunc vel pellentesque diam, vitae lobortis turpis. Nullam ut porta libero. Donec maximus eros a odio pellentesque, in lobortis elit gravida. Nulla consectetur quam at leo euismod, ut vehicula nisi vestibulum. Donec porttitor ipsum id blandit tincidunt. Pellentesque in odio auctor, pulvinar ante maximus, accumsan libero. Quisque pellentesque felis sit amet dignissim consequat. Mauris feugiat risus diam, in consectetur orci sodales in. Praesent nec congue lacus, eleifend fringilla velit. Nullam ut ligula elit. Phasellus tincidunt nibh sit amet turpis porta dignissim.</p>', 'public/uplouds/posts/1576499689photo-1485628926614-dbb863e7e1fa.jpg', '2019-12-16 05:30:33', '2019-12-16 05:34:49', 'klaten-bersinar', NULL, 1),
(14, 'Jateng Gayeng', 4, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed hendrerit sed neque ut hendrerit. Donec a ullamcorper lorem. Nunc porttitor dictum nibh. Aliquam ante libero, commodo sit amet posuere bibendum, egestas eget purus. Donec a vestibulum nunc, sit amet ultrices ipsum. Nunc a tellus velit. Suspendisse non viverra tellus. Duis eu magna mollis erat laoreet vehicula sit amet a purus. In hac habitasse platea dictumst. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras ut eleifend velit. Pellentesque est mi, varius et metus vitae, scelerisque facilisis dui. Etiam aliquet justo in semper posuere.</p>\r\n\r\n<p>Sed viverra augue a enim dapibus mattis. Cras elementum mollis ipsum, a ultricies massa placerat id. Morbi sed metus ut nisl feugiat commodo. Mauris scelerisque dolor quis enim sagittis, vitae aliquet lorem blandit. Fusce tincidunt sapien sem, quis tincidunt leo vehicula ut. Quisque facilisis at quam quis volutpat. Nullam vitae condimentum risus, et viverra est.</p>\r\n\r\n<p>Quisque mauris tellus, aliquam ac nulla a, facilisis suscipit magna. Nam vitae malesuada justo, ac congue lorem. Pellentesque posuere nunc dui, eu gravida purus commodo nec. Donec dui eros, interdum non felis eu, tristique rhoncus nisl. Nam quis massa in purus faucibus mattis in eu quam. Donec pharetra malesuada orci convallis tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent posuere tincidunt urna in dignissim. Suspendisse potenti. Morbi sit amet nisi a sapien ullamcorper aliquet.</p>\r\n\r\n<p>Morbi congue ullamcorper turpis, sed pulvinar lorem cursus vitae. Nam gravida dolor elit, viverra hendrerit augue viverra eu. Praesent semper risus erat, et scelerisque dolor maximus sed. Ut non nibh lacus. Aliquam porta ligula sit amet urna tempor tempus. Aliquam erat volutpat. Integer blandit pharetra ligula, mattis aliquet justo vulputate nec.</p>\r\n\r\n<p>Cras placerat ipsum purus, ut congue eros maximus ac. Mauris vitae placerat neque, vitae commodo urna. Vivamus vel dignissim nibh. Quisque a tincidunt libero. Pellentesque massa arcu, ornare et commodo at, finibus ut quam. In laoreet sollicitudin arcu, nec consequat nisl tempor at. Integer imperdiet, mi in fringilla condimentum, risus lacus vulputate metus, vel rhoncus odio dolor in sem. Aliquam ultricies odio et nibh scelerisque interdum. Nam gravida felis at nisl imperdiet, semper consectetur massa lacinia.</p>\r\n\r\n<p>Aliquam porttitor rutrum eros vel finibus. Fusce maximus ut velit sed accumsan. Curabitur mattis dignissim vehicula. Aliquam quis diam non sem interdum dictum. Fusce ligula enim, pellentesque ut placerat eget, egestas id nibh. Fusce rhoncus dolor ac sapien aliquam, vel consequat sapien iaculis. Nullam sagittis feugiat magna ut fringilla. Proin dapibus gravida odio, non ultricies enim aliquet vitae.</p>\r\n\r\n<p>Quisque sit amet congue nunc. Sed aliquet ac risus quis posuere. Ut eu tellus massa. Suspendisse ornare libero vel erat consectetur, sed dignissim arcu euismod. Fusce gravida mauris vitae ipsum semper egestas. Etiam at pharetra mauris. Etiam malesuada est vel maximus mattis. Ut elit enim, scelerisque quis velit et, convallis laoreet purus. Cras luctus placerat dui accumsan placerat. Aliquam ante purus, iaculis sit amet dui vitae, porta tincidunt orci. Phasellus dignissim, magna nec molestie fringilla, massa est interdum tortor, interdum bibendum neque metus quis arcu. Suspendisse non tempus magna, in placerat ante. Praesent nec lorem quis erat iaculis viverra. Nam velit lorem, tempor vitae rhoncus id, finibus eu risus. Nullam volutpat nisl nunc, vitae gravida lectus vulputate molestie. Curabitur laoreet pulvinar nunc eget semper.</p>\r\n\r\n<p>Pellentesque luctus nibh at luctus imperdiet. Nunc laoreet dui sit amet diam interdum pellentesque. Suspendisse arcu ligula, molestie id efficitur sit amet, pellentesque et sapien. Aenean id orci id neque consectetur luctus. Aliquam dictum placerat dictum. Sed ipsum massa, finibus non quam quis, elementum elementum nisi. Sed sit amet lacus massa. Morbi tempor, mauris id egestas elementum, ligula urna malesuada lacus, vitae hendrerit lacus nulla ut felis. Proin arcu ligula, volutpat ut efficitur ac, fermentum a risus. Fusce varius lacinia dolor at imperdiet. Integer varius auctor elit vel vestibulum. Aenean posuere sit amet nisl sit amet facilisis. Proin laoreet dictum vestibulum.</p>\r\n\r\n<p>Proin fermentum feugiat ipsum, vel sodales nibh tincidunt nec. Vestibulum a purus et orci semper finibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque efficitur ipsum vitae sagittis bibendum. Fusce sed purus ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam lacinia, tellus ac tincidunt venenatis, urna felis volutpat leo, et consequat nisi augue a justo.</p>\r\n\r\n<p>Maecenas non ligula sit amet nisl dignissim tempus convallis sed turpis. Nunc vel pellentesque diam, vitae lobortis turpis. Nullam ut porta libero. Donec maximus eros a odio pellentesque, in lobortis elit gravida. Nulla consectetur quam at leo euismod, ut vehicula nisi vestibulum. Donec porttitor ipsum id blandit tincidunt. Pellentesque in odio auctor, pulvinar ante maximus, accumsan libero. Quisque pellentesque felis sit amet dignissim consequat. Mauris feugiat risus diam, in consectetur orci sodales in. Praesent nec congue lacus, eleifend fringilla velit. Nullam ut ligula elit. Phasellus tincidunt nibh sit amet turpis porta dignissim.</p>', 'public/uplouds/posts/1576499641photo-1485628926614-dbb863e7e1fa.jpg', '2019-12-16 05:31:09', '2019-12-16 05:34:01', 'jateng-gayeng', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts_tags`
--

CREATE TABLE `posts_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `posts_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts_tags`
--

INSERT INTO `posts_tags` (`id`, `posts_id`, `tags_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(4, 2, 2, NULL, NULL),
(5, 2, 3, NULL, NULL),
(6, 2, 1, NULL, NULL),
(7, 1, 2, NULL, NULL),
(9, 3, 5, NULL, NULL),
(10, 3, 6, NULL, NULL),
(11, 3, 7, NULL, NULL),
(12, 4, 1, NULL, NULL),
(13, 4, 3, NULL, NULL),
(14, 4, 5, NULL, NULL),
(15, 5, 1, NULL, NULL),
(16, 5, 6, NULL, NULL),
(17, 6, 3, NULL, NULL),
(18, 6, 6, NULL, NULL),
(19, 7, 3, NULL, NULL),
(20, 7, 5, NULL, NULL),
(21, 8, 1, NULL, NULL),
(22, 8, 2, NULL, NULL),
(23, 8, 6, NULL, NULL),
(24, 9, 8, NULL, NULL),
(25, 9, 9, NULL, NULL),
(26, 10, 2, NULL, NULL),
(27, 10, 3, NULL, NULL),
(28, 11, 3, NULL, NULL),
(29, 11, 6, NULL, NULL),
(30, 12, 6, NULL, NULL),
(31, 13, 1, NULL, NULL),
(32, 13, 6, NULL, NULL),
(33, 13, 9, NULL, NULL),
(34, 14, 7, NULL, NULL),
(35, 14, 8, NULL, NULL),
(36, 14, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Sekolah Lama', 'sekolah-lama', '2019-12-12 17:41:45', '2019-12-12 17:41:45'),
(2, 'Tembok Roboh', 'tembok-roboh', '2019-12-12 17:41:51', '2019-12-12 17:41:51'),
(3, 'Cuaca', 'cuaca', '2019-12-12 17:42:06', '2019-12-12 17:42:06'),
(5, 'hujan', 'hujan', '2019-12-13 02:50:06', '2019-12-13 02:50:06'),
(6, 'kenangan', 'kenangan', '2019-12-13 02:50:12', '2019-12-13 02:50:12'),
(7, 'mantan', 'mantan', '2019-12-13 02:50:17', '2019-12-13 02:50:17'),
(8, 'mandong', 'mandong', '2019-12-14 20:41:38', '2019-12-14 20:41:38'),
(9, 'klaten', 'klaten', '2019-12-14 20:41:43', '2019-12-14 20:41:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tipe` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `tipe`) VALUES
(1, 'rahmad Tri', 'triatmoko.rahmad@gmail.com', NULL, '$2y$10$UfrsIsaE/6v/vuadiK2Ry.bVzX3MgkOu1qJ1bzVfGsSWEsGq2ejtW', NULL, '2019-12-13 04:46:07', '2019-12-13 21:58:22', 1),
(4, 'Sukma', 'sukma@gmail.com', NULL, '$2y$10$ynPY1OIoGlDMrEQvGg5ns.gPiHXoxzJlk/YjS.J3wxzNJKezUtOp2', NULL, '2019-12-13 21:11:01', '2019-12-13 21:11:01', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts_tags`
--
ALTER TABLE `posts_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posts_tags`
--
ALTER TABLE `posts_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
