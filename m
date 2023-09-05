Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B7EAC83F2C
	for <linux-phy@archiver.kernel.org>; Tue,  5 Sep 2023 09:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8I3IT6gkOINweMqXBAbP4SxzlMIoUrDLvUhz4YLEAdY=; b=OhTxsQDxrnJN7G
	MuCyweU+XKMeFEv2J1NHHJDp2ic3nXF7my/GfrEvTRyq/s2itep225KxiplzX5LtfbfE5mNf23MmK
	8BxDIFU0YbO6wjunm7zvxhlN1O8bo6YLZQGqjrDih2eYm/0IetSdAtFXYW/AfUbGugJ6n8PUe8152
	oB9LCBsrIiJM0BVq3fhQY4MTtJngmdcGe7N1wYa1cOmG5npSBRnoxQ2CcVtYDJYFazphbH7YwTvnE
	2BmZOyjFbl1+nLWvGpETuXdtdEh78B4FPVwrzi5ykTe6HSuH8SJJWFc9c8kKAIOQhExugaPivASNV
	gqsUqYoQTDMZPyOPH4ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdSdb-005dmy-24;
	Tue, 05 Sep 2023 09:46:23 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdSdX-005dmQ-2A;
	Tue, 05 Sep 2023 09:46:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 160B211FB;
	Tue,  5 Sep 2023 02:46:50 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A8FD53F793;
	Tue,  5 Sep 2023 02:46:10 -0700 (PDT)
Date: Tue, 5 Sep 2023 10:46:08 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec
 <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev
Subject: Re: [PATCH] phy: sun4i-usb: Fix a W=1 compilation failure
Message-ID: <20230905104608.74490e60@donnerap.manchester.arm.com>
In-Reply-To: <858ca657-3845-f65e-b9d8-9d7700e4a069@wanadoo.fr>
References: <0bc81612171baaa6d5dff58c8e009debc03e1ba8.1693735840.git.christophe.jaillet@wanadoo.fr>
	<20230904005855.658819b3@slackpad.lan>
	<858ca657-3845-f65e-b9d8-9d7700e4a069@wanadoo.fr>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_024619_807323_EE362E88 
X-CRM114-Status: GOOD (  30.47  )
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

T24gTW9uLCA0IFNlcCAyMDIzIDE5OjU3OjMzICswMjAwCkNocmlzdG9waGUgSkFJTExFVCA8Y2hy
aXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI+IHdyb3RlOgoKSGksCgo+IExlIDA0LzA5LzIwMjMg
w6AgMDE6NTgsIEFuZHJlIFByenl3YXJhIGEgw6ljcml0wqA6Cj4gPiBPbiBTdW4sICAzIFNlcCAy
MDIzIDEyOjExOjA2ICswMjAwCj4gPiBDaHJpc3RvcGhlIEpBSUxMRVQgPGNocmlzdG9waGUuamFp
bGxldEB3YW5hZG9vLmZyPiB3cm90ZToKPiA+ICAgCj4gPj4gV2l0aCBnY2MgMTIuMy4wLCB3aGVu
IHRoaXMgZmlsZSBpcyBidWlsdCwgd2UgZ2V0IGVycm9ycyBzdWNoIGFzOgo+ID4+Cj4gPj4gZHJp
dmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40aS11c2IuYzogSW4gZnVuY3Rpb24g4oCYc3VuNGlf
dXNiX3BoeV9wcm9iZeKAmToKPiA+PiBkcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRpLXVz
Yi5jOjc5MDo1MjogZXJyb3I6IOKAmF92YnVz4oCZIGRpcmVjdGl2ZSBvdXRwdXQgbWF5IGJlIHRy
dW5jYXRlZCB3cml0aW5nIDUgYnl0ZXMgaW50byBhIHJlZ2lvbiBvZiBzaXplIGJldHdlZW4gMiBh
bmQgMTIgWy1XZXJyb3I9Zm9ybWF0LXRydW5jYXRpb249XQo+ID4+ICAgIDc5MCB8ICAgICAgICAg
ICAgICAgICBzbnByaW50ZihuYW1lLCBzaXplb2YobmFtZSksICJ1c2IlZF92YnVzIiwgaSk7Cj4g
Pj4gICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgXn5+fn4KPiA+PiBkcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRpLXVzYi5jOjc5
MDoxNzogbm90ZTog4oCYc25wcmludGbigJkgb3V0cHV0IGJldHdlZW4gMTAgYW5kIDIwIGJ5dGVz
IGludG8gYSBkZXN0aW5hdGlvbiBvZiBzaXplIDE2Cj4gPj4gICAgNzkwIHwgICAgICAgICAgICAg
ICAgIHNucHJpbnRmKG5hbWUsIHNpemVvZihuYW1lKSwgInVzYiVkX3ZidXMiLCBpKTsKPiA+PiAg
ICAgICAgfCAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+Cj4gPj4KPiA+PiBCZWNhdXNlIG9mIHRoZSBwb3NzaWJsZSB2YWx1ZSBvZiAn
aScsIHRoaXMgY2FuJ3QgYmUgYW4gaXNzdWUgaW4gcmVhbCB3b3JsZCAgCj4gPiAKPiA+IFdvdWxk
IHVzaW5nICJ1OCBpOyIgaGVscD8gQWZ0ZXIgYWxsIGN1cnJlbnRseSB0aGVyZSBhcmUgb25seSA0
IFBIWXMKPiA+IG1heCwgYW5kIGluIGdlbmVyYWwgdGhpcyBpc24ndCBleHBlY3RlZCB0byBiZSBt
b3JlIHRoYW4gYSAiaGFuZGZ1bCIsIHNvCj4gPiA4IGJpdHMgc2hvdWxkIGJlIHBsZW50eS4gQW4g
dW5zaWduZWQgaXMgYmV0dGVyIGFueXdheS4KPiA+IEl0IGxlYXZlcyBhIGJpdCBvZiBhIGJpdHRl
ciB0YXN0ZSwgdGhvdWdoLCBhcyB3ZSBzaG91bGRuJ3QgZG8gdGhpcyBraW5kCj4gPiB0eXBlIHR3
ZWFraW5nLCBlc3BlY2lhbGx5IG5vdCB0byB3b3JrIGFyb3VuZCB0aGUgY29tcGlsZXIgdHJ5aW5n
IHRvIGJlCj4gPiBjbGV2ZXIsIGJ1dCB0aGVuIG5vdCBzZWVpbmcgdGhlIHdob2xlIHBpY3R1cmUg
KHRoYXQgImkiIGlzIGJvdW5kZWQgYnkKPiA+IGNvbXBpbGUgdGltZSBjb25zdGFudHMgbm90IGV4
Y2VlZGluZyAiNCIpLiAgCj4gCj4gZGF0YS0+Y2ZnLT5udW1fcGh5cyBpcyBhbHNvIGFuIGludCwg
YW5kIGhhdmluZyAnaScgYXMgYW4gY2hhciBpcyByZWFsbHkgCj4gdW51c3VhbC4KClNvICdpJyBp
cyBqdXN0IHVzZWQgYXMgdGhlIHBoeSBpbmRleCBpcyB0aGlzIGxvb3AsIG5vdGhpbmcgZWxzZSBp
biB0aGUKZnVuY3Rpb24gdXNlcyB0aGF0LiBTbyB3ZSBjb3VsZCBqdXN0IHJlbmFtZSBpdCB0byAi
aWR4IiBvciBldmVuICJwaHlfaWR4IiwKdGhlbiB0aGUgdTggbWlnaHQgbG9vayBsZXNzIG9kZD8K
Cj4gU28sIGlmIGNoYW5naW5nIHRoZSBzaXplIG9mIG5hbWUgKG9ubHkgdG8gd2FzdGUgc29tZSBz
dGFjayBpbiBvcmRlciB0byAKPiBzaWxlbmNlIGEgY29tcGlsZXIgd2FybmluZykgaXMgbm90IGFj
Y2VwdGFibGUsIEkgdGhpbmsgdGhhdCB0aGUgYmVzdCBpcyAKPiB0byBsZWF2ZSB0aGluZ3MgYXMt
aXMuCgpCdXQgdGhhdCdzIG5vdCByZWFsbHkgYW4gb3B0aW9uLCBpcyBpdD8gU2luY2Ugd2Ugbm9y
bWFsbHkgZG9uJ3QgdG9sZXJhdGUKd2FybmluZ3M/CgpBbmQgSSBhbSBub3QgYWdhaW5zdCBpbmNy
ZWFzaW5nIHRoZSBzaXplLCB0aGF0J3MgcHJvYmFibHkgaW5kZWVkIHRoZQpzaW1wbGVzdCBzb2x1
dGlvbiwgYW5kIGdpdmVuIHRoYXQgaXQncyBpbmRlZWQgb24gdGhlIHN0YWNrIHNob3VsZG4ndAph
ZmZlY3QgbXVjaCBlbHNlLiBJIGp1c3Qgd2FudGVkIHRvIHN1Z2dlc3QgYW4gYWx0ZXJuYXRpdmUs
IHNpbmNlIHRoZQppbmNyZWFzZWQgYnVmZmVyIHNpemUgaXMgbm90IG5lY2Vzc2FyeS4KCkNoZWVy
cywKQW5kcmUKCj4gPiAKPiA+IENoZWVycywKPiA+IEFuZHJlCj4gPiAgIAo+ID4+IGFwcGxpY2F0
aW9uLCBidXQgaW4gb3JkZXIgdG8gaGF2ZSAibWFrZSBXPTEiIHdvcmsgY29ycmVjdGx5LCBnaXZl
IG1vcmUKPiA+PiBzcGFjZSBmb3IgJ25hbWUnLgo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogQ2hy
aXN0b3BoZSBKQUlMTEVUIDxjaHJpc3RvcGhlLmphaWxsZXRAd2FuYWRvby5mcj4KPiA+PiAtLS0K
PiA+PiAgIGRyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmMgfCAyICstCj4gPj4g
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+Pgo+ID4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRpLXVzYi5jIGIvZHJp
dmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40aS11c2IuYwo+ID4+IGluZGV4IGVjNTUxNDY0ZGQ0
Zi4uZTUzYTlhOTMxN2JjIDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvcGh5L2FsbHdpbm5lci9w
aHktc3VuNGktdXNiLmMKPiA+PiArKysgYi9kcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRp
LXVzYi5jCj4gPj4gQEAgLTc4Miw3ICs3ODIsNyBAQCBzdGF0aWMgaW50IHN1bjRpX3VzYl9waHlf
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+PiAgIAo+ID4+ICAgCWZvciAo
aSA9IDA7IGkgPCBkYXRhLT5jZmctPm51bV9waHlzOyBpKyspIHsKPiA+PiAgIAkJc3RydWN0IHN1
bjRpX3VzYl9waHkgKnBoeSA9IGRhdGEtPnBoeXMgKyBpOwo+ID4+IC0JCWNoYXIgbmFtZVsxNl07
Cj4gPj4gKwkJY2hhciBuYW1lWzMyXTsKPiA+PiAgIAo+ID4+ICAgCQlpZiAoZGF0YS0+Y2ZnLT5t
aXNzaW5nX3BoeXMgJiBCSVQoaSkpCj4gPj4gICAJCQljb250aW51ZTsgIAo+ID4gCj4gPiAgIAo+
IAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
