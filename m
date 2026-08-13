Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2C7EC5CFEB
	for <linux-phy@archiver.kernel.org>; Thu, 13 Aug 2026 13:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Db/V402Nei/oEgn+ou47zzzpIpHoi9vUGVih9i1SqxY=; b=rED6a7JsQMei25
	s96PWBg5F/wUbWly4I/u8M6K5zS2rcd2dMifF5iQ9N+HVme0lC2Wkdmumbb25lUcGxXCxTMozQ789
	+JB1NztgiF2qvyHI+76niNODkWS8TVeGQlfuJI4LuwmFWPz6d6cM4qM8WLv7jc5g6tgMlCA5kvPFk
	Y/oXjH6Gw7mW+miJMw73eCRHDzd2o/dl7ov03yFrnttggHZ3lqT3CgpExOIZjJb78PfrRPe2eZy3e
	utO/93Y1J9VIUIHgjEwtDDGWpZ4wEU+Ll9X63SOFIFWWYGb71I7n3jnNx8i+x1gesBGtPWcWPuCW6
	uTXkury4j/lb5Na1RZtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuVOK-00000000jWB-0nkt;
	Thu, 13 Aug 2026 13:22:40 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuVOI-00000000jVg-1QAY
	for linux-phy@lists.infradead.org;
	Thu, 13 Aug 2026 13:22:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 55E26600AD;
	Thu, 13 Aug 2026 13:22:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB1B81F000E9;
	Thu, 13 Aug 2026 13:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786627357;
	bh=/eS5IE93h1RF9KAkrqwZ8t3bdYVzHbWDhiw/iJFxM0E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=V/wzr7b2rdnaBPl7qHs4kePlgfwCECwV/b5hox0sw/izEHmCr0N+6huAr8t30HrJP
	 E7nRELTDUCHsZGaGswF+VTvVZ9Rs3RnEbpzDEUblOqrnzIeJVoiVVXGqMngxWvC3Cy
	 IYxGBHUexSVOvNI4LE/6/5DGpCfAOcp+cI379KeQNq9/ulBaCWwgn7SO6K+QremLwm
	 DXzCOMSXCYr/kkXqqftafzhURFoM3bNhYheLjNF2duPA1xUGKtvlzUUH4QRZWIFV64
	 1DV+xVb6WL6/g0m1C/L6Xui3lfJ0WEvrKDsTbSr3bFzvUXlflShWC9VshKBv2M1WW/
	 hd1LMV+xsI20Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] phy: allwinner: sun4i-usb: disable the PHY2 PMU
 clock after SIDDQ setup
To: raoxu <raoxu@uniontech.com>
Cc: neil.armstrong@linaro.org, linux-sunxi@lists.linux.dev, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <CE85F490F5646A2C+20260813130542.2425068-1-raoxu@uniontech.com>
References: <CE85F490F5646A2C+20260813130542.2425068-1-raoxu@uniontech.com>
Date: Thu, 13 Aug 2026 13:22:36 +0000
Message-Id: <20260813132236.AB1B81F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBFeGNsdXNpdmUgcmVzZXQgYHBoeTItPnJlc2V0YCBpcyBmb3JjZWZ1bGx5IGFzc2Vy
dGVkIG9uIGV4aXQsIGJyZWFraW5nIG90aGVyIGNvbmN1cnJlbnRseSBhY3RpdmUgUEhZcyB0aGF0
IHJlbHkgb24gdGhlIHNoYXJlZCBQSFkyIGhhcmR3YXJlLgotIFtNZWRpdW1dIEluY29ycmVjdCB0
ZWFyZG93biBvcmRlciBmb3IgYHBoeTJgIGluIGBzdW40aV91c2JfcGh5X2V4aXQoKWAgZGlzYWJs
ZXMgdGhlIGNsb2NrIGJlZm9yZSBhc3NlcnRpbmcgdGhlIHJlc2V0LgotLQoKLS0tIFBhdGNoIFsx
XTogW1BBVENIIHYyXSBwaHk6IGFsbHdpbm5lcjogc3VuNGktdXNiOiBkaXNhYmxlIHRoZSBQSFky
IFBNVSBjbG9jayBhZnRlciBTSUREUSBzZXR1cCAtLS0KY29tbWl0IGMzYjEwZTY4NjRhYWRkZTUz
ZDEwYjdlMGIyYTVmY2I3ZDBkNzZlMDgKQXV0aG9yOiBYdSBSYW8gPHJhb3h1QHVuaW9udGVjaC5j
b20+ClN1YmplY3Q6IHBoeTogYWxsd2lubmVyOiBzdW40aS11c2I6IGRpc2FibGUgdGhlIFBIWTIg
UE1VIGNsb2NrIGFmdGVyIFNJRERRIHNldHVwCgpUaGlzIHBhdGNoIGZpeGVzIGEgY2xvY2sgZW5h
YmxlIGxlYWsgaW4gc3VuNGlfdXNiX3BoeV9pbml0KCkgYnkgcHJvcGVybHkKZGlzYWJsaW5nIFBI
WTIncyBjbGsyIGluc3RlYWQgb2YgdGhlIGN1cnJlbnRseSBpbml0aWFsaXplZCBQSFkncyBjbGsy
LiBJdApjb3JyZWN0cyBhbiB1bm1hdGNoZWQgY2xrX3ByZXBhcmVfZW5hYmxlKCkgZm9yIHRoZSBh
dXhpbGlhcnkgUE1VIGFjY2Vzcy4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2FsbHdpbm5l
ci9waHktc3VuNGktdXNiLmMgYi9kcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRpLXVzYi5j
Cj4gaW5kZXggZTJmYmY4Y2NmOTllMS4uODM5ODU2YzA5ZTMwNSAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRpLXVzYi5jCj4gKysrIGIvZHJpdmVycy9waHkvYWxs
d2lubmVyL3BoeS1zdW40aS11c2IuYwo+IEBAIC0zMTgsNyArMzE4LDcgQEAgc3RhdGljIGludCBz
dW40aV91c2JfcGh5X2luaXQoc3RydWN0IHBoeSAqX3BoeSkKPiAgCQkJd3JpdGVsKHZhbCwgcGh5
Mi0+cG11ICsgUkVHX0hDSV9QSFlfQ1RMKTsKPiAgCQl9Cj4gIAo+IC0JCWNsa19kaXNhYmxlX3Vu
cHJlcGFyZShwaHktPmNsazIpOwo+ICsJCWNsa19kaXNhYmxlX3VucHJlcGFyZShwaHkyLT5jbGsy
KTsKPiAgCX0KPiAgCj4gIAlpZiAocGh5LT5wbXUgJiYgZGF0YS0+Y2ZnLT5oY2lfcGh5X2N0bF9j
bGVhcikgewoKW1NldmVyaXR5OiBNZWRpdW1dClRoaXMgaXNuJ3QgYSBidWcgaW50cm9kdWNlZCBi
eSB0aGlzIHBhdGNoLCBidXQgbG9va2luZyBhdCBob3cgUEhZMiBpcyB0b3JuCmRvd24gbGF0ZXIg
aW4gc3VuNGlfdXNiX3BoeV9leGl0KCk6Cgpkcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRp
LXVzYi5jOnN1bjRpX3VzYl9waHlfZXhpdCgpIHsKCWlmIChkYXRhLT5jZmctPm5lZWRzX3BoeTJf
c2lkZHEgJiYgcGh5LT5pbmRleCAhPSAyKSB7CgkJc3RydWN0IHN1bjRpX3VzYl9waHkgKnBoeTIg
PSAmZGF0YS0+cGh5c1syXTsKCgkJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHBoeTItPmNsayk7CgkJ
cmVzZXRfY29udHJvbF9hc3NlcnQocGh5Mi0+cmVzZXQpOwoJfQpbIC4uLiBdCn0KCklzIHRoZSBj
bG9jayBhbmQgcmVzZXQgdGVhcmRvd24gb3JkZXIgY29ycmVjdCBoZXJlPwoKVGhlIHRlYXJkb3du
IG9yZGVyIGRpc2FibGVzIHRoZSBjbG9jayBiZWZvcmUgYXNzZXJ0aW5nIHRoZSByZXNldCwgd2hp
Y2gKcmV2ZXJzZXMgdGhlIGluaXRpYWxpemF0aW9uIG9yZGVyLgoKQXNzZXJ0aW5nIGEgaGFyZHdh
cmUgcmVzZXQgd2l0aG91dCB0aGUgSVAgYmxvY2sncyBjbG9jayBydW5uaW5nIGNhbiBzb21ldGlt
ZXMKZmFpbCB0byBwcm9wYWdhdGUgdGhlIHJlc2V0IHN0YXRlIG9yIGNhdXNlIGEgYnVzIGxvY2t1
cC4KCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhbHNvIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBi
dXQgZG9lcyBhc3NlcnRpbmcgdGhpcyBzaGFyZWQKcGh5Mi0+cmVzZXQgbGluZSBvbiBleGl0IGJy
ZWFrIG90aGVyIGNvbmN1cnJlbnRseSBhY3RpdmUgUEhZcyB0aGF0IHJlbHkgb24KUEhZMj8KCkJl
Y2F1c2UgcGh5LT5yZXNldCBpcyByZXF1ZXN0ZWQgaW4gc3VuNGlfdXNiX3BoeV9wcm9iZSgpIGFz
IGFuIGV4Y2x1c2l2ZQpyZXNldDoKCmRyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNi
LmM6c3VuNGlfdXNiX3BoeV9wcm9iZSgpIHsKWyAuLi4gXQoJCXNucHJpbnRmKG5hbWUsIHNpemVv
ZihuYW1lKSwgInVzYiVkX3Jlc2V0IiwgaSk7CgkJcGh5LT5yZXNldCA9IGRldm1fcmVzZXRfY29u
dHJvbF9nZXQoZGV2LCBuYW1lKTsKWyAuLi4gXQp9CgpUaGUgcmVzZXQgZnJhbWV3b3JrIHdvbid0
IHJlZmNvdW50IGl0LCBzbyB1bmNvbmRpdGlvbmFsbHkgY2FsbGluZwpyZXNldF9jb250cm9sX2Fz
c2VydChwaHkyLT5yZXNldCkgd2lsbCBmb3JjZSB0aGUgaGFyZHdhcmUgbGluZSBpbnRvIHJlc2V0
CmltbWVkaWF0ZWx5LgoKVGhpcyBjb3VsZCB0ZWFyIGRvd24gdGhlIHNoYXJlZCBoYXJkd2FyZSBy
ZXNvdXJjZSByZWdhcmRsZXNzIG9mIG90aGVyIGFjdGl2ZQpQSFlzIHVzaW5nIGl0LgoKLS0gClNh
c2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC9DRTg1RjQ5
MEY1NjQ2QTJDKzIwMjYwODEzMTMwNTQyLjI0MjUwNjgtMS1yYW94dUB1bmlvbnRlY2guY29tP3Bh
cnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
