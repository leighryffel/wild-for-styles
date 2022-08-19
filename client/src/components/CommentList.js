import CommentCard from "./CommentCard";
import CommentForm from "./CommentForm";

function CommentList({ comments, album_id, change, setChange }) {

  const commentList = comments.map((comment) => (
    <CommentCard
      change={change}
      setChange={setChange}
      key={comment.id}
      id={comment.id}
      comment={comment.comment}
    />
  ));

  return (
    <div>
      <h4>Comments</h4>
      {commentList}
      <CommentForm album_id={album_id} change={change} setChange={setChange} />
    </div>
  );
}

export default CommentList;
