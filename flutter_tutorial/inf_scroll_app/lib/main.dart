void main() {}

class _InfiniteScrollingListViewState extends State<InfiniteScrollingListView> {

  void _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      if (_currentPage < _totalPages && !_isLoading) {
        _loadMoreItems();
      }
    }
  }

  void _loadMoreItems() {
    setState(() {
      _isLoading = true;
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _items.addAll(List.generate(20, (index) => index + _items.length));
        _isLoading = false;
        _currentPage++;
      });
    });
  }
  Widget _buildLoadingIndicator() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
