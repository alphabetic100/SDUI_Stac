import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: "home_screen")
StacWidget homeScreen() {
  return StacScaffold(
    appBar: StacAppBar(
      backgroundColor: "#FFFFFF",
      centerTitle: false,
      title: StacText(
        data: 'Switch Catalog',
        style: StacTextStyle(
          color: '#0056D2',
          fontSize: 16,
          fontWeight: StacFontWeight.w600,
        ),
      ),
      actions: [
        StacIconButton(
          icon: StacIcon(icon: "api", color: "#0056D2"),
          onPressed: StacAction.fromJson({
            "actionType": "navigate",
            "route": "api_demo_screen",
          }),
        ),
        StacIconButton(
          icon: StacIcon(icon: "person_add", color: "#0056D2"),
          onPressed: StacAction.fromJson({
            "actionType": "navigate",
            "route": "user_management_screen",
          }),
        ),
      ],
    ),
    body: StacSingleChildScrollView(
      child: StacColumn(
        crossAxisAlignment: StacCrossAxisAlignment.start,
        children: [
          // Explore Header
          StacPadding(
            padding: const StacEdgeInsets.all(16.0),
            child: StacText(
              data: 'Explore',
              style: StacTextStyle(
                fontSize: 32,
                fontWeight: StacFontWeight.bold,
                color: '#1F1F1F',
              ),
            ),
          ),

          // Topics Header
          StacPadding(
            padding: const StacEdgeInsets.symmetric(horizontal: 16.0),
            child: StacRow(
              mainAxisAlignment: StacMainAxisAlignment.spaceBetween,
              children: [
                StacText(
                  data: 'Topics',
                  style: StacTextStyle(
                    fontSize: 20,
                    fontWeight: StacFontWeight.bold,
                    color: '#1F1F1F',
                  ),
                ),
                StacText(
                  data: 'See All',
                  style: StacTextStyle(
                    fontSize: 14,
                    fontWeight: StacFontWeight.bold,
                    color: '#0056D2',
                  ),
                ),
              ],
            ),
          ),

          const StacSizedBox(height: 16),

          // Topics List
          StacSingleChildScrollView(
            scrollDirection: StacAxis.horizontal,
            padding: const StacEdgeInsets.symmetric(horizontal: 16),
            child: StacRow(
              children: [
                _buildTopicChip('Arts and Humanities', 'work_outline'),
                const StacSizedBox(width: 12),
                _buildTopicChip('Business', 'business'),
                const StacSizedBox(width: 12),
                _buildTopicChip('Computer Science', 'computer'),
              ],
            ),
          ),

          const StacSizedBox(height: 32),

          // My Coursera Header
          StacPadding(
            padding: const StacEdgeInsets.symmetric(horizontal: 16.0),
            child: StacText(
              data: 'My Coursera',
              style: StacTextStyle(
                fontSize: 20,
                fontWeight: StacFontWeight.bold,
                color: '#757575',
              ),
            ),
          ),

          const StacSizedBox(height: 16),

          // Explore with a Coursera Plus Subscription
          StacPadding(
            padding: const StacEdgeInsets.symmetric(horizontal: 16.0),
            child: StacRow(
              mainAxisAlignment: StacMainAxisAlignment.spaceBetween,
              children: [
                StacExpanded(
                  child: StacText(
                    data: 'Explore with a Coursera Plus Subscription',
                    style: StacTextStyle(
                      fontSize: 20,
                      fontWeight: StacFontWeight.bold,
                      color: '#1F1F1F',
                    ),
                  ),
                ),
                StacText(
                  data: 'See All',
                  style: StacTextStyle(
                    fontSize: 14,
                    fontWeight: StacFontWeight.bold,
                    color: '#0056D2',
                  ),
                ),
              ],
            ),
          ),

          const StacSizedBox(height: 16),

          // Course List
          StacSingleChildScrollView(
            scrollDirection: StacAxis.horizontal,
            padding: const StacEdgeInsets.symmetric(horizontal: 16),
            child: StacRow(
              crossAxisAlignment: StacCrossAxisAlignment.start,
              children: [
                _buildCourseCard(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Keller_Williams_Realty_Logo.svg/1200px-Keller_Williams_Realty_Logo.svg.png', // Placeholder
                  'Keller Williams Real Estate Agent',
                  'Keller Williams',
                  'Professional Certificate',
                  4.8,
                  111,
                ),
                const StacSizedBox(width: 16),
                _buildCourseCard(
                  'https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/e3/f27d3063b511e89d806d39d8021e3e/Python-for-Cybersecurity-Specialization-Logo.png', // Placeholder
                  'Python for Cybersecurity',
                  'Infosec',
                  'Specialization',
                  4.5,
                  436,
                ),
                const StacSizedBox(width: 16),
                _buildCourseCard(
                  'https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/26/5e7d5063b511e89d806d39d8021e3e/Indigenous-Canada-Logo.png', // Placeholder
                  'Indigenous Canada',
                  'University of Alberta',
                  'Course',
                  4.8,
                  22000,
                ),
              ],
            ),
          ),

          const StacSizedBox(height: 32),

          // Earn Your Degree Header
          StacPadding(
            padding: const StacEdgeInsets.symmetric(horizontal: 16.0),
            child: StacRow(
              mainAxisAlignment: StacMainAxisAlignment.spaceBetween,
              children: [
                StacText(
                  data: 'Earn Your Degree',
                  style: StacTextStyle(
                    fontSize: 20,
                    fontWeight: StacFontWeight.bold,
                    color: '#1F1F1F',
                  ),
                ),
                StacText(
                  data: 'See All',
                  style: StacTextStyle(
                    fontSize: 14,
                    fontWeight: StacFontWeight.bold,
                    color: '#0056D2',
                  ),
                ),
              ],
            ),
          ),

          const StacSizedBox(height: 16),

          // Degree List
          StacSingleChildScrollView(
            scrollDirection: StacAxis.horizontal,
            padding: const StacEdgeInsets.symmetric(horizontal: 16),
            child: StacRow(
              children: [
                _buildDegreeCard(
                  'https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.contentstack.io/v3/assets/blt69509c9116440be8/blt6655525505055555/6655525505055555/unilogo.png',
                  'University of London',
                ),
                const StacSizedBox(width: 16),
                _buildDegreeCard(
                  'https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.contentstack.io/v3/assets/blt69509c9116440be8/blt6655525505055555/6655525505055555/unilogo.png',
                  'University of London',
                ),
              ],
            ),
          ),
          const StacSizedBox(height: 32),
        ],
      ),
    ),
    bottomNavigationBar: StacBottomNavigationBar(
      selectedItemColor: '#0056D2',
      unselectedItemColor: '#757575',
      items: [
        StacBottomNavigationBarItem(
          icon: StacIcon(icon: 'explore'),
          label: 'Explore',
        ),
        StacBottomNavigationBarItem(
          icon: StacIcon(icon: 'school'),
          label: 'Career',
        ),
        StacBottomNavigationBarItem(
          icon: StacIcon(icon: 'book'),
          label: 'Learn',
        ),
        StacBottomNavigationBarItem(
          icon: StacIcon(icon: 'search'),
          label: 'Search',
        ),
        StacBottomNavigationBarItem(
          icon: StacIcon(icon: 'person'),
          label: 'Profile',
        ),
      ],
    ),
  );
}

StacWidget _buildTopicChip(String label, String iconName) {
  return StacContainer(
    padding: const StacEdgeInsets.symmetric(horizontal: 12, vertical: 8),
    decoration: StacBoxDecoration(
      color: '#FFFFFF',
      border: StacBorder.all(color: '#E0E0E0'),
      borderRadius: StacBorderRadius.circular(8),
    ),
    child: StacRow(
      children: [
        StacIcon(icon: iconName, size: 20, color: '#1F1F1F'),
        const StacSizedBox(width: 8),
        StacText(
          data: label,
          style: StacTextStyle(
            fontSize: 14,
            fontWeight: StacFontWeight.bold,
            color: '#1F1F1F',
          ),
        ),
      ],
    ),
  );
}

StacWidget _buildCourseCard(
  String imageUrl,
  String title,
  String provider,
  String type,
  double rating,
  int reviews,
) {
  return StacContainer(
    width: 200,
    child: StacColumn(
      crossAxisAlignment: StacCrossAxisAlignment.start,
      children: [
        StacClipRRect(
          borderRadius: StacBorderRadius.circular(8),
          child: StacImage(
            src: imageUrl,
            imageType: StacImageType.network,
            height: 120,
            width: 200,
            fit: StacBoxFit.cover,
          ),
        ),
        const StacSizedBox(height: 8),
        StacImage(
          src:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Keller_Williams_Realty_Logo.svg/1200px-Keller_Williams_Realty_Logo.svg.png', // Provider Logo Placeholder
          imageType: StacImageType.network,
          height: 24,
          width: 24,
        ),
        const StacSizedBox(height: 8),
        StacText(
          data: title,
          style: StacTextStyle(
            fontSize: 16,
            fontWeight: StacFontWeight.bold,
            color: '#1F1F1F',
          ),
          maxLines: 2,
          overflow: StacTextOverflow.ellipsis,
        ),
        const StacSizedBox(height: 4),
        StacText(
          data: provider,
          style: StacTextStyle(fontSize: 14, color: '#757575'),
        ),
        StacText(
          data: type,
          style: StacTextStyle(fontSize: 14, color: '#757575'),
        ),
        const StacSizedBox(height: 8),
        StacRow(
          children: [
            StacIcon(icon: 'star', size: 16, color: '#1F1F1F'),
            const StacSizedBox(width: 4),
            StacText(
              data: rating.toString(),
              style: StacTextStyle(
                fontSize: 14,
                fontWeight: StacFontWeight.bold,
                color: '#1F1F1F',
              ),
            ),
            const StacSizedBox(width: 4),
            StacText(
              data: '(${reviews > 1000 ? "${(reviews / 1000).toStringAsFixed(1)}k" : reviews})',
              style: StacTextStyle(
                fontSize: 14,
                color: '#757575',
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

StacWidget _buildDegreeCard(String imageUrl, String title) {
  return StacContainer(
    width: 280,
    height: 160,
    decoration: StacBoxDecoration(
      borderRadius: StacBorderRadius.circular(12),
      // Removed image decoration for now as StacImageProvider is unknown
      color: "#E0E0E0",
    ),
    child: StacStack(
      children: [
        StacPositioned(
          bottom: 12,
          right: 12,
          child: StacContainer(
            padding: const StacEdgeInsets.all(4),
            color: "#FFFFFF",
            child: StacIcon(icon: 'school', color: "#0056D2"),
          ),
        ),
      ],
    ),
  );
}
