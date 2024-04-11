void main() {}

class _InfiniteScrollingListViewState extends State<InfiniteScrollingListView> {
  final List<int> _items = List.generate(20, (index) => index);
  final ScrollController _scrollController = ScrollController();

  final int _totalPages = 5;
  bool _isLoading = false;
  int _currentPage = 1;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Infinite Scrolling ListView"),
      ),
      body: ListView.builder(
        itemCount: _items.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index == _items.length) {
            return _buildLoadingIndicator();
          } else {
            return ListTile(
              title: Text('Item ${_items[index]}'),
            );
          }
        },
        controller: _scrollController,
      ),
    );
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
