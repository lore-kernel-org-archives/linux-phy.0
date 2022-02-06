Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E3D6C433FE
	for <linux-phy@archiver.kernel.org>; Sun,  6 Feb 2022 17:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uAgyosJ+n4XdgZApSxooJTxvUqDacxVIZkojwXydW9I=; b=x0HwFfiQ5BHBWA
	dNM5Bz/cbfB088LTxde1otCrJxEr+h7DJzj7ajSi5TaZAqxMnVpalTG8OS+WAMueZ8/uvqw2c6LiT
	Pc6jBrFNgq9VwAYarU43HN0L2ea6m5zRAKbrvjYyqj0aEqhkQQxAPZfmgVH7+1e/RQ7ituQR6gdu2
	Xrhghb4n05I6plW7gqSTMKtjglm/ifJs/cHsLD1qKQBGDzTg7W8r4rTzYEUd7HgGybDfU8FVZDqoR
	bHx4bc3ou+W9qLhfDZJCAe8ckW1qpAeYQWH08VQRZxCbczj6UbFTVb8x7jU8lORYvoQaBgq7PQYNu
	PJvjN+YGjE5ErV2ShYzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGlk0-008VAf-Jz; Sun, 06 Feb 2022 17:54:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGljy-008VA4-47
 for linux-phy@lists.infradead.org; Sun, 06 Feb 2022 17:54:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A8302611F2;
 Sun,  6 Feb 2022 17:54:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1B57C340E9;
 Sun,  6 Feb 2022 17:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644170059;
 bh=ZgaaGrymrJfoXt8JUPDmsicwkZeVuhH1bTY9PINlWGM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CwoZzWfre3xS6bYEeuSlgihY9EssoXepaxlG2CPrCXxQOazcqPbmhfpHz/eKyQCVZ
 0KGU4ACZLaFycbkMW4JDKtQ/jM5v+/7aXnuNMiHWdXT0jlWHvGcArGVz7bajQe+OkE
 hfIoWQfJ0benPdtTPav/M66vr62Lh7SAS0V3V4J9ImlZu7FWRVDjXqi5m7P6Lh1xaO
 asq40fb8A1mmNq00bhoMGR0/cF8zLRVz19xiAsxyxqQl3puXuFsfPoASzOPHFEr2/g
 IevfAEzivBGDbIuZQnMxawRwWaL3fKzJnLTJrFV0neH9gmIAbCpiLa503d5d/QsnLn
 Tputwj+ZsuADg==
Date: Sun, 6 Feb 2022 18:54:13 +0100
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>, devicetree@vger.kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, Holger Brunck
 <holger.brunck@hitachienergy.com>, Andrew Lunn <andrew@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Russell King
 <rmk+kernel@armlinux.org.uk>, linux-phy@lists.infradead.org, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH devicetree v3] dt-bindings: phy: Add `tx-p2p-microvolt`
 property binding
Message-ID: <20220206185413.4c1ac00d@thinkpad>
In-Reply-To: <Yf3egEVYyyXUkklM@robh.at.kernel.org>
References: <20220119131117.30245-1-kabel@kernel.org>
 <74566284-ff3f-8e69-5b7d-d8ede75b78ad@gmail.com>
 <Yf3egEVYyyXUkklM@robh.at.kernel.org>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220206_095422_246632_86EFA60D 
X-CRM114-Status: GOOD (  21.02  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gRnJpLCA0IEZlYiAyMDIyIDIwOjE4OjQwIC0wNjAwClJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+IHdyb3RlOgoKPiBPbiBGcmksIEphbiAyMSwgMjAyMiBhdCAxMToxODowOUFNIC0wODAw
LCBGbG9yaWFuIEZhaW5lbGxpIHdyb3RlOgo+ID4gT24gMS8xOS8yMiA1OjExIEFNLCBNYXJlayBC
ZWjDum4gd3JvdGU6ICAKPiA+ID4gQ29tbW9uIFBIWXMgYW5kIG5ldHdvcmsgUENTZXMgb2Z0ZW4g
aGF2ZSB0aGUgcG9zc2liaWxpdHkgdG8gc3BlY2lmeQo+ID4gPiBwZWFrLXRvLXBlYWsgdm9sdGFn
ZSBvbiB0aGUgZGlmZmVyZW50aWFsIHBhaXIgLSB0aGUgZGVmYXVsdCB2b2x0YWdlCj4gPiA+IHNv
bWV0aW1lcyBuZWVkcyB0byBiZSBjaGFuZ2VkIGZvciBhIHBhcnRpY3VsYXIgYm9hcmQuCj4gPiA+
IAo+ID4gPiBBZGQgcHJvcGVydGllcyBgdHgtcDJwLW1pY3Jvdm9sdGAgYW5kIGB0eC1wMnAtbWlj
cm92b2x0LW5hbWVzYCBmb3IgdGhpcwo+ID4gPiBwdXJwb3NlLiBUaGUgc2Vjb25kIHByb3BlcnR5
IGlzIG5lZWRlZCB0byBzcGVjaWZ5IHRoZSBtb2RlIGZvciB0aGUKPiA+ID4gY29ycmVzcG9uZGlu
ZyB2b2x0YWdlIGluIHRoZSBgdHgtcDJwLW1pY3Jvdm9sdGAgcHJvcGVydHksIGlmIHRoZSB2b2x0
YWdlCj4gPiA+IGlzIHRvIGJlIHVzZWQgb25seSBmb3Igc3BlZmljaWMgbW9kZS4gTW9yZSB2b2x0
YWdlLW1vZGUgcGFpcnMgY2FuIGJlCj4gPiA+IHNwZWNpZmllZC4KPiA+ID4gCj4gPiA+IEV4YW1w
bGUgdXNhZ2Ugd2l0aCBvbmx5IG9uZSB2b2x0YWdlIChpdCB3aWxsIGJlIHVzZWQgZm9yIGFsbCBz
dXBwb3J0ZWQKPiA+ID4gUEhZIG1vZGVzLCB0aGUgYHR4LXAycC1taWNyb3ZvbHQtbmFtZXNgIHBy
b3BlcnR5IGlzIG5vdCBuZWVkZWQgaW4gdGhpcwo+ID4gPiBjYXNlKToKPiA+ID4gCj4gPiA+ICAg
dHgtcDJwLW1pY3Jvdm9sdCA9IDw5MTUwMDA+Owo+ID4gPiAKPiA+ID4gRXhhbXBsZSB1c2FnZSB3
aXRoIHZvbHRhZ2VzIGZvciBtdWx0aXBsZSBtb2RlczoKPiA+ID4gCj4gPiA+ICAgdHgtcDJwLW1p
Y3Jvdm9sdCA9IDw5MTUwMDA+LCA8MTEwMDAwMD4sIDwxMjAwMDAwPjsKPiA+ID4gICB0eC1wMnAt
bWljcm92b2x0LW5hbWVzID0gIjI1MDBiYXNlLXgiLCAidXNiIiwgInBjaWUiOwo+ID4gPiAKPiA+
ID4gQWRkIHRoZXNlIHByb3BlcnRpZXMgaW50byBhIHNlcGFyYXRlIGZpbGUgcGh5L3RyYW5zbWl0
LWFtcGxpdHVkZS55YW1sLAo+ID4gPiB3aGljaCBzaG91bGQgYmUgcmVmZXJlbmNlZCBieSBhbnkg
YmluZGluZyB0aGF0IHVzZXMgaXQuICAKPiA+IAo+ID4gcDJwIGNvbW1vbmx5IG1lYW5zIHBlZXIg
dG8gcGVlciB3aGljaCBpbmNpZGVudGFsbHkgY291bGQgYmUgY29uZnVzaW5nLAo+ID4gY2FuIHlv
dSBzcGVsbCBvdXQgdGhlIHByb3BlcnR5IGVudGlyZToKPiA+IAo+ID4gdHgtcGVha3RvcGVhay1t
aWNyb3ZvbHQgb3I6Cj4gPiAKPiA+IHR4LXBrMnBrLW1pY3Jvdm9sdCBmb3IgYSBtb3JlIGNvbXBh
Y3QgbmFtZSBtYXliZT8gIAo+IAo+IFBlZXIgdG8gcGVlciBtYWtlcyBsaXR0bGUgc2Vuc2UgaW4g
dGVybXMgb2YgYSB2b2x0YWdlLiBJIHRoaW5rIHRoaXMgaXMgCj4gZmluZSBhcy1pcy4KCkNvb2wu
IFNob3VsZCB0aGlzIGdldCBtZXJnZWQgdmlhIGRldmljZXRyZWUsIG9yIHZpYSBwaHkgbWFpbnRh
aW5lcnM/Ck9yIHNob3VsZCBJIHJlc2VuZCB0aGlzIHRvZ2V0aGVyIHdpdGggcGF0Y2hlcyB0aGF0
IG1ha2UgdXNlIG9mIHRoaXMKcHJvcGVydHk/IChJbiB0aGF0IGNhc2UgY2FuIHlvdSBhZGQgeW91
ciBBY2s/KQoKVGhhbmtzLgoKTWFyZWsKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
