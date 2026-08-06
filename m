Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68767C55ABF
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dj6F2U+D6n7DPAdKariC5oK10IwXUmHl0OhKTEFYhik=; b=mTrVepDQ/soTW9
	NjIQQomCJDfqWKj2hyRllKwinnr3gdYjAtamXUitGDsGcACA1noA720jR0HAPzq1giWvI8DeMKozL
	uY/51Hb8hyHZqTtiXXcQMHhW/Mc3foU1zilKTKp7cdAzsInCW3UG2qJdFFb9/6TPDZHd+J13vBWqB
	4Owa8/AqWZ5HBzJI/u9ZhzFlZh/6b9lZFITIBnsn1BfB95FY+QEtAHVvZcyRzMSGzHROlBpy2W+Fe
	9F6ftdCWNFXKlw2zRRdXNT1k3TrmQOVeQeZEMI+Rrc2vklGG3VAWyx45MRD3gWCwhDsFkW5R3k/6o
	OJskUqaYXZUdHCXrViXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrvbk-00000005aG8-3Ft6;
	Thu, 06 Aug 2026 10:45:52 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrvbj-00000005aFz-18vV
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 10:45:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9C3C760A64;
	Thu,  6 Aug 2026 10:45:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD8731F000E9;
	Thu,  6 Aug 2026 10:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786013150;
	bh=uM/ACu/MVWeUwyN0h3jCVTt6c7K7Xszi3+tCJby86DQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QAyYJBkA0x6D1E19wNkE3qmgZS9+ckNwDx0w9MI55RALFyhTtchBgmzb1ozvScSxK
	 w89IPwWx/7P4aPqaBbrt9XTS+uw5BxrKeIS4fYKmVa5lfVa5INKpAP9dE6e3FvLwR4
	 QkfQ3IPmz4PEwrs+lN6XOY13Q57+9TSNCt/ficfZBA0+RYRXNlBZWze7x3LKOx0o55
	 feSa+03jKqW3sbGsAP2AjVcKmhpaeeFI0VE3I9mV56K4v6WEPjnuqcU57NInU6bjny
	 az7nq9VyIrxoiZ8c6XXRFO8JrLJAYqDnBZv2PeYVkwETgJTDECWbCsgXG6tgSa0KBy
	 lFzraxFZIBw6A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 06/10] dt-bindings: phy: renesas,usb2-phy: Document
 RZ/G3L PHY bindings
To: Biju <biju.das.au@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, robh@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260806102236.149159-7-biju.das.jz@bp.renesas.com>
References: <20260806102236.149159-1-biju.das.jz@bp.renesas.com>
 <20260806102236.149159-7-biju.das.jz@bp.renesas.com>
Date: Thu, 06 Aug 2026 10:45:49 +0000
Message-Id: <20260806104549.CD8731F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBSWi9HM0wgVVNC
IFBIWSByZXNldCBkcml2ZXIgdW5jb25kaXRpb25hbGx5IGRlcGVuZHMgb24gYW4gdW5kb2N1bWVu
dGVkIHBvd2VyIHNlcXVlbmNlciAoInVzYi1wd3JyZHkiKSwgd2hpY2ggd2lsbCBjYXVzZSBwZXJt
YW5lbnQgcHJvYmUgZmFpbHVyZXMgYmVjYXVzZSBubyBzdWNoIHByb3ZpZGVyIGV4aXN0cy4KLSBb
SGlnaF0gVGhlIGByZW5lc2FzLHVzYjItcGh5LXI5YTA4ZzA0NmAgY29tcGF0aWJsZSBzdHJpbmcg
aXMgZG9jdW1lbnRlZCBidXQgbm90IGltcGxlbWVudGVkIGluIHRoZSBjb3JlIFBIWSBkcml2ZXIu
Ci0tCgotLS0gUGF0Y2ggWzZdOiBbUEFUQ0ggdjYgMDYvMTBdIGR0LWJpbmRpbmdzOiBwaHk6IHJl
bmVzYXMsdXNiMi1waHk6IERvY3VtZW50IFJaL0czTCBQSFkgYmluZGluZ3MgLS0tCmNvbW1pdCBh
NDYyZWIwZDc2MWY1ZGQyNWU0OTFkNzQ1MjczNDk3YTMzZTkwMzA4CkF1dGhvcjogQmlqdSBEYXMg
PGJpanUuZGFzLmp6QGJwLnJlbmVzYXMuY29tPgoKZHQtYmluZGluZ3M6IHBoeTogcmVuZXNhcyx1
c2IyLXBoeTogRG9jdW1lbnQgUlovRzNMIFBIWSBiaW5kaW5ncwoKQWRkIGRldmljZSB0cmVlIGJp
bmRpbmcgc3VwcG9ydCBmb3IgdGhlIFJaL0czTCAocjlhMDhnMDQ2KSBVU0IyIFBIWS4KVGhlIFJa
L0czTCBVU0IgUEhZIGlzIGFsbW9zdCBpZGVudGljYWwgdG8gdGhlIFJaL0czUyBVU0IgUEhZLCB0
aGUKZGlmZmVyZW5jZSBiZWluZyAyIE9URyBibG9ja3Mgb24gUlovRzNMIGNvbXBhcmVkIHRvIDEg
b24gUlovRzNTLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9yZW5lc2FzLHVzYjItcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L3JlbmVzYXMsdXNiMi1waHkueWFtbAo+IGluZGV4IDk3NDBlNWIzMzVmOTMu
LmQ2YjlkMDhjZWVjNmQgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BoeS9yZW5lc2FzLHVzYjItcGh5LnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L3JlbmVzYXMsdXNiMi1waHkueWFtbAo+IEBAIC0xNiw2ICsx
Niw3IEBAIHByb3BlcnRpZXM6Cj4gICAgICAgICAgICAtIGVudW06Cj4gICAgICAgICAgICAgICAg
LSByZW5lc2FzLHVzYjItcGh5LXI4YTc3NDcwICAjIFJaL0cxQwo+ICAgICAgICAgICAgICAgIC0g
cmVuZXNhcyx1c2IyLXBoeS1yOWEwOGcwNDUgIyBSWi9HM1MKPiArICAgICAgICAgICAgICAtIHJl
bmVzYXMsdXNiMi1waHktcjlhMDhnMDQ2ICMgUlovRzNMCgpbU2V2ZXJpdHk6IEhpZ2hdCklzIHRo
ZSBjb3JlIFVTQjIgUEhZIGRyaXZlciBpbXBsZW1lbnRhdGlvbiBtaXNzaW5nIGZyb20gdGhpcyBz
ZXJpZXM/CgpUaGUgbmV3IGNvbXBhdGlibGUgc3RyaW5nIGlzIGRvY3VtZW50ZWQgd2l0aG91dCBh
IGZhbGxiYWNrLCBidXQgdGhlcmUgYXBwZWFycwp0byBiZSBubyBtYXRjaCBlbnRyeSBmb3IgaXQg
aW4gdGhlIGNvcmUgVVNCMiBQSFkgZHJpdmVyOgoKZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNh
ci1nZW4zLXVzYjIuYzpyY2FyX2dlbjNfcGh5X3VzYjJfbWF0Y2hfdGFibGUoKSB7Cgl7CgkJLmNv
bXBhdGlibGUgPSAicmVuZXNhcyx1c2IyLXBoeS1yOWEwOGcwNDUiLAoJCS5kYXRhID0gJnJ6ZzNz
X3VzYjJfcGh5X3ByaXYsCgl9LAoJLyogTUlTU0lORzogcmVuZXNhcyx1c2IyLXBoeS1yOWEwOGcw
NDYgKi8KCXsKCQkuY29tcGF0aWJsZSA9ICJyZW5lc2FzLHJ6ZzJsLXVzYjItcGh5IiwKCQkuZGF0
YSA9ICZyemcybF91c2IyX3BoeV9wcml2LAoJfSwKfQoKV2l0aG91dCB0aGlzIGVudHJ5LCB0aGUg
Y29yZSBkcml2ZXIgd2lsbCBub3QgYmluZCB0byB0aGUgUlovRzNMIGRldmljZS4KCltTZXZlcml0
eTogSGlnaF0KRG9lcyB0aGlzIHBsYXRmb3JtIGFsc28gY2F1c2UgcGVybWFuZW50IHByb2JlIGZh
aWx1cmVzIGluIHRoZSByZXNldCBkcml2ZXI/CgpCZWNhdXNlIHRoZSBEVCBiaW5kaW5nIHByb2hp
Yml0cyB0aGUgcmVuZXNhcyxzeXNjLXB3cnJkeSBwcm9wZXJ0eSBmb3IgdGhpcwpTb0MsIHRoZSBj
b2RlIGZhbGxzIGJhY2sgdG8gcmVxdWVzdGluZyBhbiB1bmRvY3VtZW50ZWQgcG93ZXIgc2VxdWVu
Y2VyOgoKZHJpdmVycy9yZXNldC9yZXNldC1yemcybC11c2JwaHktY3RybC5jOnJ6ZzJsX3VzYnBo
eV9jdHJsX3B3cnJkeV9wb3dlcnNlcV9pbml0KCkgewoJLi4uCglwcml2LT5wd3JzZXEgPSBkZXZt
X3B3cnNlcV9nZXQoZGV2LCAidXNiLXB3cnJkeSIpOwoJaWYgKElTX0VSUihwcml2LT5wd3JzZXEp
KSB7CgkJLyoKCQkgKiBUaGlzIHBsYXRmb3JtIHJlcXVpcmVzIGEgc2VxdWVuY2VyLiBJZiB3ZSBj
YW4ndCBnZXQgaXQsIHdlCgkJICogbXVzdCByZXR1cm4gdGhlIGVycm9yIChpbmNsdWRpbmcgLUVQ
Uk9CRV9ERUZFUiB0byB3YWl0IGZvcgoJCSAqIHRoZSBwcm92aWRlciB0byBhcHBlYXIpCgkJICov
CgkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBQVFJfRVJSKHByaXYtPnB3cnNlcSksCgkJCQkg
ICAgICJGYWlsZWQgdG8gZ2V0IHJlcXVpcmVkIHBvd2VyIHNlcXVlbmNlclxuIik7Cgl9CgkuLi4K
fQoKU2luY2UgdGhlcmUgaXMgbm8gcG93ZXIgc2VxdWVuY2VyIHByb3ZpZGVyIGluIHRoZSBrZXJu
ZWwgdHJlZSB0aGF0IHJlZ2lzdGVycwphIHVzYi1wd3JyZHkgdGFyZ2V0LCB0aGUgY29yZSBwd3Jz
ZXFfZ2V0KCkgd2lsbCByZXR1cm4gLUVQUk9CRV9ERUZFUi4gVGhpcwpyZXN1bHRzIGluIGFuIGlu
ZmluaXRlIHByb2JlIGRlZmVycmFsIGxvb3AgZm9yIHRoZSByZXNldCBkcml2ZXIsIHByZXZlbnRp
bmcKdGhlIFVTQiBQSFkgZnJvbSBiZWluZyBpbml0aWFsaXplZC4KCj4gICAgICAgICAgICAgICAg
LSByZW5lc2FzLHVzYjItcGh5LXI5YTA5ZzA1NyAjIFJaL1YySChQKQo+ICAKPiAgICAgICAgLSBp
dGVtczoKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0
Y2hzZXQvMjAyNjA4MDYxMDIyMzYuMTQ5MTU5LTEtYmlqdS5kYXMuanpAYnAucmVuZXNhcy5jb20/
cGFydD02CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
