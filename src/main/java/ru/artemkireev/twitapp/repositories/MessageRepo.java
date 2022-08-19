package ru.artemkireev.twitapp.repositories;

import org.springframework.data.repository.CrudRepository;
import ru.artemkireev.twitapp.entities.Message;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Integer> {
    List<Message> findByTag(String tag);
}
