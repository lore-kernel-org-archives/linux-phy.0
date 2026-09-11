Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DAB4C88E4C
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6k8a+RXSWsfU622vNCWX4EDjrrQaekuN1Ig2WYblwVs=; b=acdZIJmHkP/GwO
	4e4nRWtzf30HFcT/3na/g6o7EGbKg9IamB1aN+kEKnLaEYxzOn4rMHEvvG9G7yy2P/B1MTpp4AsWn
	w+Jvyuw/iGlwBiD6GmisAecec3Zi2BYG0CqLoNWt59jOE4OrWG/czrLRbFKC0UppPPzz4z9epq6XX
	KS/MOZchIPL2+OS0BXdQJRufU2/s0oyMslLavg4ORVfIxhtUHt0Fehjyd4vzQxa3aCJ/1kFbiU53q
	QJFhR3VO39mNfbLgX/rXIkcEyfYw9+AeRtA51J4kjQFgDeHCy6wZVQLHJBhu8xO0lHoyvIr5QkUqG
	fSGn6Uf2qZjJI3bWzx6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4y5t-0000000GJrt-0bZ2;
	Fri, 11 Sep 2026 10:02:53 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4y5s-0000000GJri-0EYZ
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 10:02:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8D17941536;
	Fri, 11 Sep 2026 10:02:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C45E41F000FF;
	Fri, 11 Sep 2026 10:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789120971;
	bh=oUW3aoZgzM6Dx1leS9dg3EYEA4oyuYwJ4wHKO/d+t18=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=G7ZtyQqCAoVvOOu/aN3dBQeaeM9cJeVsd7p92mrX52PBEV6UM09fnMxnVbMCAWfey
	 Bu+4/nRgxXCB6gwGlkr0wqhyL/O2xc7qbeiK7PYriLz9yGW1R1bv9IJlYZyLB8fK5t
	 K4A0qCu0KRh760vgo10FL+t8VjACcVm3MRnWJrPg9DjrsJze8T8cX0ZfklEUWMgR8I
	 23bpvawdy2uesOyl4KpaDlK+2BRqzQtyABYa4JfxwmTcOrtLsHfqbIsmRux1GEb+3c
	 8CaLXAAP3A+CoZFigGlbcYWN8iEupbBqXHWYcmfijaEGg7Oydpj30Gc7xzKa2W/ASs
	 E5E5qTzJfERRg==
Date: Fri, 11 Sep 2026 12:02:44 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Biju Das <biju.das.jz@bp.renesas.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH v2] phy: renesas: phy-rzg3e-usb3: Use SYSTEM_SLEEP_PM_OPS
 instead of NOIRQ
Message-ID: <imzegouvv6rc4qsu6lku6jpiqjo7gterwervbchgux4bc7hwm4@mihjrryhaps7>
References: <20260527082052.117289-1-ovidiu.panait.rb@renesas.com>
 <hpjrkv3bpbx4rfz2v6bumntiw5k36etktnv4bvxs2dhuv5wr3x@m4estpjcreo3>
 <OSCPR01MB1276930A2DEB5BB5B5EE29932D3BE2@OSCPR01MB12769.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OSCPR01MB1276930A2DEB5BB5B5EE29932D3BE2@OSCPR01MB12769.jpnprd01.prod.outlook.com>
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

T24gRnJpLCBTZXAgMTEsIDIwMjYgYXQgMDg6NTM6MjlBTSArMDAwMCwgT3ZpZGl1IFBhbmFpdCB3
cm90ZToKPiBIaSBNYW5pdmFubmFuLAo+IAo+ID4gCj4gPiBPbiBXZWQsIE1heSAyNywgMjAyNiBh
dCAwODoyMDo1MkFNICswMDAwLCBPdmlkaXUgUGFuYWl0IHdyb3RlOgo+ID4gPiBPbiB0aGUgUmVu
ZXNhcyBSWi9WMkggcGxhdGZvcm0sIGlmIHRoZSB4aGNpIGRyaXZlciBpcyB1bmJvdW5kIGFuZCB0
aGUKPiA+ID4gc3lzdGVtIGlzIHN1c3BlbmRlZCBhZnRlcndhcmRzLCBhIFBNIHVuZGVyZmxvdyBl
cnJvciB3aWxsIG9jY3VyOgo+ID4gPgo+ID4gPiAgIyBlY2hvIDE1ODUwMDAwLnVzYiA+IC9zeXMv
YnVzL3BsYXRmb3JtL2RyaXZlcnMveGhjaS1yZW5lc2FzLWhjZC91bmJpbmQKPiA+ID4gICMgc3lz
dGVtY3RsIHN1c3BlbmQKPiA+ID4gIDE1ODcwMDAwLnVzYi1waHk6IFBNOiBkcG1fcnVuX2NhbGxi
YWNrKCk6IGdlbnBkX3Jlc3VtZV9ub2lycSByZXR1cm5zIC0KPiA+IDEzCj4gPiA+ICAxNTg3MDAw
MC51c2ItcGh5OiBQTTogZmFpbGVkIHRvIHJlc3VtZSBub2lycTogZXJyb3IgLTEzCj4gPiA+ICAx
NTg3MDAwMC51c2ItcGh5OiBSdW50aW1lIFBNIHVzYWdlIGNvdW50IHVuZGVyZmxvdyEKPiA+ID4K
PiA+ID4gV2hlbiB0aGUgeGhjaSBkcml2ZXIgaXMgdW5ib3VuZCwgdGhlIHJ1bnRpbWUgUE0gdXNh
Z2UgY291bnQgb2YgdGhlIFBIWQo+ID4gPiBkcm9wcyB0byAwLiBTaW5jZSB0aGUgc3VzcGVuZC9y
ZXN1bWUgY2FsbGJhY2tzIGFyZSBpbiB0aGUgbm9pcnEgcGhhc2UsCj4gPiA+IHRoZSBwbV9ydW50
aW1lX3Jlc3VtZV9hbmRfZ2V0KCkgb24gcmVzdW1lIGVycm9ycyBvdXQgd2l0aCAtRUFDQ0VTIGFu
ZAo+ID4gPiB0aGUgdXNhZ2UgY291bnQgc3RheXMgYXQgMC4gVGhlIHN1YnNlcXVlbnQgcHV0IGlu
IGRldmljZV9jb21wbGV0ZSgpCj4gPiA+IHRoZW4gdW5kZXJmbG93cyB0aGUgY291bnRlci4KPiA+
ID4KPiA+ID4gVG8gZml4IHRoaXMsIG1vdmUgdGhlIHN1c3BlbmQvcmVzdW1lIGNhbGxiYWNrcyBv
dXQgb2YgdGhlIG5vaXJxIHBoYXNlIGJ5Cj4gPiA+IHN3aXRjaGluZyBmcm9tIE5PSVJRX1NZU1RF
TV9TTEVFUF9QTV9PUFMgdG8gU1lTVEVNX1NMRUVQX1BNX09QUy4KPiA+ID4KPiA+IAo+ID4gV2hp
bGUgdGhpcyBwYXRjaCBmaXhlcyB0aGUgcnVudGltZSBQTSB1bmRlcmZsb3csIGl0IGRvZXMgbm90
IG5lY2Vzc2FyaWx5Cj4gPiBmaXggdGhlCj4gPiB1bmRlcmx5aW5nIGlzc3VlLiBUaGUgaXNzdWUg
aGVyZSBpcyB0aGF0IHRoZSBQSFkgd2FzIGFscmVhZHkgc3VzcGVuZGVkIGR1ZQo+ID4gdG8KPiA+
IHhoY2kgZHJpdmVyIHVuYm91bmQgYW5kIHRoZSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KCkg
aW4KPiA+IHJ6ZzNlX3BoeV91c2IzX3Jlc3VtZSgpIHVubmVjZXNzYXJpbHkgdHJpZXMgdG8gd2Fr
ZXMgdXAgdGhlIFBIWS4KPiA+IAo+ID4gSSB0aGluayB3aGF0IHlvdSBuZWVkIGlzIHBtX3J1bnRp
bWVfZm9yY2Vfe3N1c3BlbmQvcmVzdW1lfSB0bwo+ID4gY29uZGl0aW9uYWxseQo+ID4gcmVzdW1l
IHRoZSBQSFkgaW4gaXRzIHJ6ZzNlX3BoeV91c2IzX3Jlc3VtZSgpIGNhbGxiYWNrLgo+ID4gCj4g
Cj4gSSBhZ3JlZSwgdGhlIFBIWSBzaG91bGQgbm90IGJlIHJlc3VtZWQgaWYgdGhlcmUgaXMgbm8g
Y29uc3VtZXIuICAgICAgICAgICAgICAgICAgICAgICAgICAgIAo+IAo+IEhvd2V2ZXIsIHRoZSBz
dXNwZW5kIGNhbGxiYWNrIGFzc2VydHMgdGhlIFBIWSByZXNldCwgc28gaXRzIHN0YXRlIGlzCj4g
YWx3YXlzIGxvc3QgYWNyb3NzIHN5c3RlbSBzdXNwZW5kLiBSZXN1bWluZyB0aGUgUEhZIHdpdGgK
PiBwbV9ydW50aW1lX2ZvcmNlX3Jlc3VtZSgpIGluIHJ6ZzNlX3BoeV91c2IzX3Jlc3VtZSgpIG1p
Z2h0IGxlYXZlIGl0Cj4gdW5pbml0aWFsaXplZCBpZiBpdCB3YXMgcnVudGltZSBzdXNwZW5kZWQs
IGFuZCByZWxpZXMgb24gdGhlIGNvbnN1bWVyCj4gYWx3YXlzIGNhbGxpbmcgcGh5X2luaXQoKSBh
Z2FpbiBiZWZvcmUgdXNpbmcgaXQuIEkgYW0gbm90IHN1cmUgdGhhdCBpcwo+IGFsd2F5cyB0aGUg
Y2FzZS4KPiAKPiBUaGUgY2xlYW5lc3Qgc29sdXRpb24gSSBzZWUgaXMgdG8gbW92ZSB0aGUgcmVz
ZXQgYXNzZXJ0L2RlYXNzZXJ0IGFuZAo+IHRoZSBQSFkgaW5pdGlhbGl6YXRpb24gdG8gcnVudGlt
ZSBQTSBjYWxsYmFja3MsIGFuZCBpbXBsZW1lbnQgdGhlCj4gc3lzdGVtIHNsZWVwIGFzOgo+IAo+
IE5PSVJRX1NZU1RFTV9TTEVFUF9QTV9PUFMocG1fcnVudGltZV9mb3JjZV9zdXNwZW5kLCBwbV9y
dW50aW1lX2ZvcmNlX3Jlc3VtZSkKPiAKPiBUaGlzIHNob3VsZCBlbnN1cmUgdGhlIFBIWSBpcyBy
ZWluaXRpYWxpemVkIHdoZW5ldmVyIGl0IGlzIHVzZWQgYW5kCj4gdGhhdCBpdCBzdGF5cyBzdXNw
ZW5kZWQgd2hlbiBpdCBpcyBub3QgdXNlZC4KPiAKClNvdW5kcyBnb29kIHRvIG1lLgoKLSBNYW5p
CgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCv
jQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
