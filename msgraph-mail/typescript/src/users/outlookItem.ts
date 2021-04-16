import {SerializationWriter, ParseNode, Parsable} from '@microsoft/kiota-abstractions';
import {Entity} from './entity';

export class OutlookItem extends Entity implements Parsable<OutlookItem> {
    public categories?: string[] | undefined;
    public changeKey?: string | undefined;
    public createdDateTime?: string | undefined;
    public lastModifiedDateTime?: string | undefined;
    public serialize (writer: SerializationWriter) : void {
        super.serialize(writer);
        writer.writeCollectionOfPrimitiveValues<string>("categories", this.categories);
        writer.writeStringValue("changeKey", this.changeKey);
        writer.writeStringValue("createdDateTime", this.createdDateTime);
        writer.writeStringValue("lastModifiedDateTime", this.lastModifiedDateTime);
    };
    public deserializeFields () : Map<string, (item: OutlookItem, node: ParseNode) => void> {
        return new Map<string, (item: OutlookItem, node: ParseNode) => void>([...super.deserializeFields(),
            ["categories", (o, n) => { o.categories = n.getCollectionOfPrimitiveValues<string>(); }],
            ["changeKey", (o, n) => { o.changeKey = n.getStringValue(); }],
            ["createdDateTime", (o, n) => { o.createdDateTime = n.getStringValue(); }],
            ["lastModifiedDateTime", (o, n) => { o.lastModifiedDateTime = n.getStringValue(); }],
        ]);
    };
}
