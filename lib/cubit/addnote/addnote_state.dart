part of 'addnote_cubit.dart';

class AddnoteState extends Equatable {
  final LoadStatus loadDataStatus;

  const AddnoteState({
    this.loadDataStatus = LoadStatus.initial,
  });

  @override
  List<Object?> get props => [
        loadDataStatus,
      ];

  AddnoteState copyWith({
    LoadStatus? loadDataStatus,
  }) {
    return AddnoteState(
      loadDataStatus: loadDataStatus ?? this.loadDataStatus,
    );
  }
}
