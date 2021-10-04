package item

import (
    ida96af0f171bb75f894a4013a6b3146a4397c58f11adb81a2b7cbea9314783a9 "github.com/microsoft/kiota/abstractions/go"
    i341158d6b31e193c6856ef08d3a5c0a9d9c9674cd883d99b10844de8d933df7a "github.com/microsoft/kiota-samples/msgraph-mail/go/utilities/users/item/messages"
    i9bcbbe222fda57b1c7f212f812b862b760156d2d3a9d1e157ee4f76841199559 "github.com/microsoft/kiota-samples/msgraph-mail/go/utilities/users/item/inferenceclassification"
    ib8edbc02a502b08756d43d6d66bfafac60ac37ce024db3b7e881dc17cea846a8 "github.com/microsoft/kiota-samples/msgraph-mail/go/utilities/users/item/mailfolders"
    ia31bb5deda23f2b146eb943e6d6e68f69c1487606651126c6dbde9f9b4b6ae99 "github.com/microsoft/kiota-samples/msgraph-mail/go/utilities/users/item/messages/item"
    if937953a6e06f9e461297be544e9a26dbe87704845fad3ae4b78b2ca32d53222 "github.com/microsoft/kiota-samples/msgraph-mail/go/utilities/users/item/mailfolders/item"
)

type UserRequestBuilder struct {
    currentPath string;
    httpCore ida96af0f171bb75f894a4013a6b3146a4397c58f11adb81a2b7cbea9314783a9.HttpCore;
    isRawUrl bool;
    pathSegment string;
}
func NewUserRequestBuilder(currentPath string, httpCore ida96af0f171bb75f894a4013a6b3146a4397c58f11adb81a2b7cbea9314783a9.HttpCore, isRawUrl bool)(*UserRequestBuilder) {
    m := &UserRequestBuilder{
    }
    m.pathSegment = "";
    m.httpCore = httpCore;
    m.currentPath = currentPath;
    m.isRawUrl = isRawUrl;
    return m
}
func (m *UserRequestBuilder) InferenceClassification()(i9bcbbe222fda57b1c7f212f812b862b760156d2d3a9d1e157ee4f76841199559.InferenceClassificationRequestBuilder) {
    return *i9bcbbe222fda57b1c7f212f812b862b760156d2d3a9d1e157ee4f76841199559.NewInferenceClassificationRequestBuilder(m.currentPath + m.pathSegment, m.httpCore, false);
}
func (m *UserRequestBuilder) MailFolders()(ib8edbc02a502b08756d43d6d66bfafac60ac37ce024db3b7e881dc17cea846a8.MailFoldersRequestBuilder) {
    return *ib8edbc02a502b08756d43d6d66bfafac60ac37ce024db3b7e881dc17cea846a8.NewMailFoldersRequestBuilder(m.currentPath + m.pathSegment, m.httpCore, false);
}
func (m *UserRequestBuilder) MailFoldersById(id string)(if937953a6e06f9e461297be544e9a26dbe87704845fad3ae4b78b2ca32d53222.MailFolderRequestBuilder) {
    return *if937953a6e06f9e461297be544e9a26dbe87704845fad3ae4b78b2ca32d53222.NewMailFolderRequestBuilder(m.currentPath + m.pathSegment + "/mailFolders/" + id, m.httpCore, false);
}
func (m *UserRequestBuilder) Messages()(i341158d6b31e193c6856ef08d3a5c0a9d9c9674cd883d99b10844de8d933df7a.MessagesRequestBuilder) {
    return *i341158d6b31e193c6856ef08d3a5c0a9d9c9674cd883d99b10844de8d933df7a.NewMessagesRequestBuilder(m.currentPath + m.pathSegment, m.httpCore, false);
}
func (m *UserRequestBuilder) MessagesById(id string)(ia31bb5deda23f2b146eb943e6d6e68f69c1487606651126c6dbde9f9b4b6ae99.MessageRequestBuilder) {
    return *ia31bb5deda23f2b146eb943e6d6e68f69c1487606651126c6dbde9f9b4b6ae99.NewMessageRequestBuilder(m.currentPath + m.pathSegment + "/messages/" + id, m.httpCore, false);
}
