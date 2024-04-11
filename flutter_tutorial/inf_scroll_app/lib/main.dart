void main() {}

class _InfiniteScrollingListViewState extends State<InfiniteScrollingListView> {
  Widget _buildLoadingIndicator() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
