Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB481C05027
	for <linux-phy@archiver.kernel.org>; Tue, 14 Feb 2023 14:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLGLNhXpXqvOWig8SFuxNKtRAfoT2AiEVtSDzNZATak=; b=dNZt3V68An3ibD
	KaNlks5Tfs4I0mYDAdydV8nj6EkSSIf9ISclAWUmhPxizQfGUuw8UhTwUVVQ78sBHDOTqAbVR+0R7
	b8xGh5bO4aOvFPH+ikuF+bUCtKnw+9Yjpl2EOu6YtAL/ibEOyD76dCIDm7ENPj/w9sh//pISE+d4o
	iDZ7W9UKovsVXQyAThuKO3SPfSplXuFwe8rPDBUuv8b7sRWqfmmSW/bLQqK0pngNteoCdCwbNXqJn
	gZIVrmMmiXRez46oFWrHJrRuUagfZOrPJnRGhOdeTwWOog8PM6/q0KjCP8yka6KewZCLQpJmKne1J
	YKkqx4JsZrvb+saXt4DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRwEl-00284m-8c; Tue, 14 Feb 2023 14:24:51 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRvqy-001ulP-G2; Tue, 14 Feb 2023 14:00:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 19D6BB81D57;
	Tue, 14 Feb 2023 14:00:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55B0EC433A0;
	Tue, 14 Feb 2023 14:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676383213;
	bh=mBTD57A30/LvcZnwFqjcP9HsmHOnRFYQxkmV8hVd5Fw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eEcUGLmTTaI9Iqgb81PXHajzB0u+y2Sc3bj5iiwGhYrmyPgN2k5j/7WkEKPX88o/g
	 JpBdwhZ/YckttBYaOVYZs50doO8ujqXMZdFjYC/9M7PF6RNLjcWFTVA3u26WsYVrZ0
	 Ro8HmkWRC+x53l7iw9+m2qxR9/8M4FpBhY2I2O6spbVITzhZzmqnKj6zPkwy2pvfbJ
	 MBUyl79rOhYdEugYO3+V3Jo1tgj+x16XmD0mppJ3VDGP86WHP7jxUUt+wmXE6MPC+q
	 aYZ03abiyTbHFKuKlZwtR41bR9m0xHIQy7cIR3ryTr53B30n2FftrHA9jLjaZl4AJ+
	 hHv5tEQFycgxw==
Date: Tue, 14 Feb 2023 19:30:09 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Chunfeng Yun =?utf-8?B?KOS6keaYpeWzsCk=?= <Chunfeng.Yun@mediatek.com>
Cc: "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Eddie Hung =?utf-8?B?KOa0quato+mRqyk=?= <Eddie.Hung@mediatek.com>
Subject: Re: [PATCH v8] phy: mediatek: tphy: add debugfs files
Message-ID: <Y+uT6VoJra+056zj@matsya>
References: <20230210085827.7970-1-chunfeng.yun@mediatek.com>
 <Y+ZjPYDEbC9iblsj@matsya>
 <4e5d86502cc6b2278d7079dfca688af63bbcb523.camel@mediatek.com>
 <eec940a49f4f9ec9e5bd7ad763e436d34b42be22.camel@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eec940a49f4f9ec9e5bd7ad763e436d34b42be22.camel@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_060016_872309_9A909263 
X-CRM114-Status: GOOD (  40.20  )
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

T24gMTMtMDItMjMsIDA4OjIyLCBDaHVuZmVuZyBZdW4gKOS6keaYpeWzsCkgd3JvdGU6Cj4gT24g
TW9uLCAyMDIzLTAyLTEzIGF0IDE2OjIxICswODAwLCBjaHVuZmVuZyB5dW4gd3JvdGU6Cj4gPiBP
biBGcmksIDIwMjMtMDItMTAgYXQgMjE6MDEgKzA1MzAsIFZpbm9kIEtvdWwgd3JvdGU6Cj4gPiA+
IE9uIDEwLTAyLTIzLCAxNjo1OCwgQ2h1bmZlbmcgWXVuIHdyb3RlOgo+ID4gPiA+IFRoZXNlIGRl
YnVnZnMgZmlsZXMgYXJlIG1haW5seSB1c2VkIHRvIG1ha2UgZXllIGRpYWdyYW0gdGVzdAo+ID4g
PiA+IGVhc2llciwKPiA+ID4gPiBlc3BlY2lhbGx5IGhlbHBmdWwgdG8gZG8gSFFBIHRlc3QgZm9y
IGEgbmV3IElDIHdpdGhvdXQgZWZ1c2UKPiA+ID4gPiBlbmFibGVkLgo+ID4gPiA+IAo+ID4gPiA+
IFNpZ25lZC1vZmYtYnk6IENodW5mZW5nIFl1biA8Y2h1bmZlbmcueXVuQG1lZGlhdGVrLmNvbT4K
PiA+ID4gPiAtLS0KPiA+ID4gPiB2ODogYWJhbmRvbiBwYXRjaCB0byBjcmVhdGUgcGh5IGRlYnVn
IHJvb3QgZmlsZQo+ID4gPiA+ICAgICAvc3lzL2tlcm5lbC9kZWJ1Zy9waHkvIHN1Z2dlc3RlZCBi
eSBWaW5vZAo+ID4gPiAKPiA+ID4gU29ycnkgdGhhdCB3YXMgbm90IG15IHN1Z2dlc3Rpb24KPiA+
IAo+ID4gU29ycnksIEkgbWlzdW5kZXJzdG9vZCB5b3UgbWVhbnMKPiA+ID4gCj4gPiA+ID4gCj4g
PiA+ID4gdjZ+djc6IG5vIGNoYW5nZXMKPiA+ID4gPiAKPiA+ID4gPiB2NTogdXNpbmcgY29tbW9u
IGRlYnVnZnMgY29uZmlnIENPTkZJR19ERUJVR19GUwo+ID4gPiA+IAo+ID4gPiA+IHY0OiBmaXgg
YnVpbGQgd2FybmluZyBvZiBzb21ldGltZXMgdW5pbml0aWFsaXplZCB2YXJpYWJsZQo+ID4gPiA+
IAo+ID4gPiA+IHYzOiBmaXggdHlwbyBvZiAiZGVidWdmcyIgc3VnZ2VzdGVkIGJ5IEFuZ2Vsb0dp
b2FjY2hpbm8KPiA+ID4gPiAKPiA+ID4gPiB2MjogYWRkIENPTkZJR19QSFlfTVRLX1RQSFlfREVC
VUdGUyBzdWdnZXN0ZWQgYnkgQW5nZWxvR2lvYWNjaGlubwo+ID4gPiA+IC0tLQo+ID4gPiA+ICBk
cml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLXRwaHkuYyB8IDQwNQo+ID4gPiA+ICsrKysrKysr
KysrKysrKysrKysrKysrKysrKy0KPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDQwNCBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcGh5L21lZGlhdGVrL3BoeS1tdGstdHBoeS5jCj4gPiA+ID4gYi9kcml2ZXJzL3BoeS9tZWRp
YXRlay9waHktbXRrLXRwaHkuYwo+ID4gPiA+IGluZGV4IGU5MDZhODI3OTFiZC4uNjVhOTVjMzcy
NmJmIDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstdHBo
eS5jCj4gPiA+ID4gKysrIGIvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay10cGh5LmMKPiA+
ID4gPiBAQCAtNyw2ICs3LDcgQEAKPiA+ID4gPiAgCj4gPiA+ID4gICNpbmNsdWRlIDxkdC1iaW5k
aW5ncy9waHkvcGh5Lmg+Cj4gPiA+ID4gICNpbmNsdWRlIDxsaW51eC9jbGsuaD4KPiA+ID4gPiAr
I2luY2x1ZGUgPGxpbnV4L2RlYnVnZnMuaD4KPiA+ID4gPiAgI2luY2x1ZGUgPGxpbnV4L2RlbGF5
Lmg+Cj4gPiA+ID4gICNpbmNsdWRlIDxsaW51eC9pb3BvbGwuaD4KPiA+ID4gPiAgI2luY2x1ZGUg
PGxpbnV4L21mZC9zeXNjb24uaD4KPiA+ID4gPiBAQCAtMjY0LDYgKzI2NSw4IEBACj4gPiA+ID4g
IAo+ID4gPiA+ICAjZGVmaW5lIFRQSFlfQ0xLU19DTlQJMgo+ID4gPiA+ICAKPiA+ID4gPiArI2Rl
ZmluZSBVU0VSX0JVRl9MRU4oY291bnQpIG1pbl90KHNpemVfdCwgOCwgKGNvdW50KSkKPiA+ID4g
PiArCj4gPiA+ID4gIGVudW0gbXRrX3BoeV92ZXJzaW9uIHsKPiA+ID4gPiAgCU1US19QSFlfVjEg
PSAxLAo+ID4gPiA+ICAJTVRLX1BIWV9WMiwKPiA+ID4gPiBAQCAtMzEwLDYgKzMxMyw3IEBAIHN0
cnVjdCBtdGtfcGh5X2luc3RhbmNlIHsKPiA+ID4gPiAgCXN0cnVjdCBjbGtfYnVsa19kYXRhIGNs
a3NbVFBIWV9DTEtTX0NOVF07Cj4gPiA+ID4gIAl1MzIgaW5kZXg7Cj4gPiA+ID4gIAl1MzIgdHlw
ZTsKPiA+ID4gPiArCXN0cnVjdCBkZW50cnkgKmRiZ2ZzOwo+ID4gPiA+ICAJc3RydWN0IHJlZ21h
cCAqdHlwZV9zdzsKPiA+ID4gPiAgCXUzMiB0eXBlX3N3X3JlZzsKPiA+ID4gPiAgCXUzMiB0eXBl
X3N3X2luZGV4Owo+ID4gPiA+IEBAIC0zMzIsMTAgKzMzNiwzOTEgQEAgc3RydWN0IG10a190cGh5
IHsKPiA+ID4gPiAgCWNvbnN0IHN0cnVjdCBtdGtfcGh5X3BkYXRhICpwZGF0YTsKPiA+ID4gPiAg
CXN0cnVjdCBtdGtfcGh5X2luc3RhbmNlICoqcGh5czsKPiA+ID4gPiAgCWludCBucGh5czsKPiA+
ID4gPiArCXN0cnVjdCBkZW50cnkgKmRiZ2ZzX3Jvb3Q7Cj4gPiA+ID4gIAlpbnQgc3JjX3JlZl9j
bGs7IC8qIE1IWiwgcmVmZXJlbmNlIGNsb2NrIGZvciBzbGV3IHJhdGUKPiA+ID4gPiBjYWxpYnJh
dGUgKi8KPiA+ID4gPiAgCWludCBzcmNfY29lZjsgLyogY29lZmZpY2llbnQgZm9yIHNsZXcgcmF0
ZSBjYWxpYnJhdGUgKi8KPiA+ID4gPiAgfTsKPiA+ID4gCj4gPiA+IEkgYXNrZWQgdGhlIHN0cnVj
dCBkZW50cnkgKmRlYnVnZnMgYmUgcGFydCBvZiBzdHJ1Y3QgcGh5LiBEZWJ1Z2ZzCj4gPiA+IHdv
dWxkCj4gPiA+IGJlIGNyZWF0ZWQgYnkgY29yZSBidXQgcmF0aGVyIHRoYW4gZXhwb3J0ZWQsIGl0
IHNob3VsZCBiZSBwb3B1bGF0ZWQKPiA+ID4gaW4KPiA+ID4gcGh5IGFuZCB5b3UgY2FuIHVzZSBp
dCBoZXJlIGluIHRoZSBkcml2ZXIKPiA+ID4gCj4gPiA+ID4gIAo+ID4gCj4gPiBPaywgSSdsbCBk
byB0aGUgZm9sbG93aW5nIHN0ZXBzOgo+ID4gCj4gPiAwLiBwdXQgYSBzdHJ1Y3QgZGVudHJ5ICpk
ZWJ1Z2ZzIGluIHN0cnVjdCBwaHk7Cj4gPiAxLiBkZWZpbmUgYSBzdGF0aWMgc3RydWN0IGRlbnRy
eSAqcGh5X2RlYnVnZnNfcm9vdCBpbiBwaHktY29yZS5jLAo+ID4gdGhlbgo+ID4gICAgY3JlYXRl
IGEgcm9vdCBkaXJlY3RvcnkgKC9zeXMva2VybmVsL2RlYnVnL3BoeS8pIGZvciBwaHkKPiA+IHN1
YnN5c3RlbSAKPiA+IGluIHBoeV9jb3JlX2luaXQoKTsKPiA+IDIuIGNyZWF0ZSBkaXJlY3Rvcnkg
Zm9yIGVhY2ggcGh5IHVuZGVyIHRoZSByb290IGRpcmVjdG9yeQo+ID4gKC9zeXMva2VybmVsL2Rl
YnVnL3BoeS8pOwo+ID4gICAgdGhpcyBzdGVwIGhhcyB0d28gd2F5czoKPiA+ICAgIEE6IGNyZWF0
ZSB0aGUgZGlyZWN0b3J5IEBkZWJ1Z2ZzIG9mIHN0cnVjdCBwaHkgaW4gcGh5X2NyZWF0ZSgpIGJ5
Cj4gPiBkZWZhdWx0OwoKVGhhdCBzb3VuZHMgZ29vZCB0byBtZQoKPiA+ICAgIEI6IHByb3ZpZGUg
c29tZSBhcGkgZm9yIHVzZXIgdG8gY3JlYXRlL2Rlc3RvcnkgdGhlIGRpcmVjdG9yeQo+ID4gQGRl
YnVnZnMgb3Igb3RoZXJzIHdoZW4gbmVlZDsKPiA+IDMuIGFkZCBwcml2YXRlIGRlYnVnZnMgZmls
ZXMgaW4gQGRlYnVnZnMgb2Ygc3RydWN0IHBoeTsKPiA+IAo+ID4gRm9yIHRoZSBjYXNlIGluIHRw
aHkgZHJpdmVyLCBpdCBwcm92aWRlcyBzb21lIHN0cnVjdCBwaHksIHRoZSBkcml2ZXIKPiA+IG1h
eSB3YW50IHRvIGNyZWF0ZSBkZWJ1Z2ZzIGZpbGVzIHdoaWNoIG5vdCBiZWxvbmdzIHRvIGFueSBz
dHJ1Y3QgcGh5Cj4gPiBpbgo+ID4gdGhlIHJvb3QgZGlyZWN0b3J5ICgvc3lzL2tlcm5lbC9kZWJ1
Zy9waHkvKSwgdGhlbiBuZWVkIHByb3ZpZGUgYSBhcGkuCj4gPiAKPiA+ICAgIERvIHlvdSBoYXZl
IGFueSBzdWdnZXN0aW9ucz8KPiA+ICAgIFdoaWNoIHdheSBkbyB5b3UgcHJlZmVyIHRvIHVzZSBp
biBzdGVwIDI/Cj4gPiAKPiA+ICAgIFRoYW5rcyBhIGxvdDsKPiA+IAo+ID4gPiA8c2tpcD4KPiA+
ID4gPiArCj4gPiA+ID4gIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIG10a190cGh5X2Ry
aXZlciA9IHsKPiA+ID4gPiAgCS5wcm9iZQkJPSBtdGtfdHBoeV9wcm9iZSwKPiA+ID4gPiArCS5y
ZW1vdmUJCT0gbXRrX3RwaHlfcmVtb3ZlLAo+ID4gPiA+ICAJLmRyaXZlcgkJPSB7Cj4gPiA+ID4g
IAkJLm5hbWUJPSAibXRrLXRwaHkiLAo+ID4gPiA+ICAJCS5vZl9tYXRjaF90YWJsZSA9IG10a190
cGh5X2lkX3RhYmxlLAo+ID4gPiA+IC0tIAo+ID4gPiA+IDIuMTguMAo+ID4gPiAKPiA+ID4gCgot
LSAKflZpbm9kCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
