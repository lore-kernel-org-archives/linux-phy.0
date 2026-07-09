Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01BFEC43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 19:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eWEvV82Z2QQFh/Cf8AiQkbglhi0e86tBoC9QhCGWUdo=; b=dPclQM+H2QyOuF
	IdDOsJy63gAJikuxNZk41e1J+KnwgiLNqlvObxvbUtT/ns/krkztcjr81u4OBkbae4K9wwOZAyts+
	M1PiNHkr3tuXwrRM1rKbLBxdV9F/8EXmXJe+Ob5fIDdZYZI5SK0K1qFON9oToMTgnbZM+FTx76lkZ
	vLLcZw1fCiliDer7qgrK5/ZxjLjEeFLXW7l/4jf7LB/JNxLhHSXPOgE0DQdyXoOMAW59+z9X4F+ss
	c0fSPflMMjBoZqRUUHAWZSV9nsowk1LcEvh4GfolHCFpJosJwJxlKBVrXQ9nypuC1HznBpCajhWOx
	wFcoq1wo/r0VfS+CcWxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuQX-00000003Sz7-2YEN;
	Thu, 09 Jul 2026 19:28:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuQV-00000003Sye-2yQT
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 19:28:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2BB516137D;
	Thu,  9 Jul 2026 19:28:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 732D81F000E9;
	Thu,  9 Jul 2026 19:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783625330;
	bh=AyRm2Y+fsJPxLFyLWRneERsXWeNx9Utf9F280OE8EKo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mzsWUZK5AHpkw9nH+pj2z3G2KgUmTFCF6aD9gogTiaas3iIT9HFBnaYcQGhgpBZRa
	 6AcjHawPBaC++iK7+EWe5ThfFlsIwU0jjjmefwH/shLu4wy7lGDaTEejWR5w8UzxtZ
	 Dsx53gvfFeUE8HPU612eb7nVldjGk/MXghR38S+atubdJf4zoDPx0vzoAFpg311B0y
	 Hx8Ig0DcBr16Cl7akztMhT3JR2f1ZJdkU4y+Dp4QepWaSB6Hcn/hk4f8tjpP+xvP60
	 BfPLsLbs/8joQMTQJdeWweWutGw7+6NcnY7Y27EYsOFBXhW9HzExHS2J3yAKYjDk3q
	 uLzkLAmwu0iPw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 23/36] phy: rockchip: usbdp: Clear USB status on PHY
 exit
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-23-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
 <20260709-rockchip-usbdp-cleanup-v11-23-a149ac60f76c@collabora.com>
Date: Thu, 09 Jul 2026 19:28:49 +0000
Message-Id: <20260709192850.732D81F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIENsZWFyaW5nIHRoZSBg
VURQSFlfTU9ERV9VU0JgIGZsYWcgZnJvbSBgdWRwaHktPnN0YXR1c2Agb24gdGhlIGVhcmx5IGV4
aXQgcGF0aCBjYW4gbGVhdmUgdGhlIGhhcmR3YXJlIHBvd2VyZWQgb24gYW5kIGxlYWsgY2xvY2sg
cmVmZXJlbmNlcyBpZiB0aGUgb3ZlcmFsbCBQSFkgc3RhdHVzIGRyb3BzIHRvIGBVRFBIWV9NT0RF
X05PTkVgLgotLQoKLS0tIFBhdGNoIFsyM106IFtQQVRDSCB2MTEgMjMvMzZdIHBoeTogcm9ja2No
aXA6IHVzYmRwOiBDbGVhciBVU0Igc3RhdHVzIG9uIFBIWSBleGl0IC0tLQpjb21taXQgNzkwNmZh
MzdmNmExMjU1NDIxZmRhNGNhYTgxNWVmYmU4NzhjYTQwZApBdXRob3I6IFNlYmFzdGlhbiBSZWlj
aGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgoKcGh5OiByb2NrY2hpcDogdXNi
ZHA6IENsZWFyIFVTQiBzdGF0dXMgb24gUEhZIGV4aXQKClRoaXMgY29tbWl0IGVuc3VyZXMgdGhl
IFVTQiBzdGF0dXMgZmxhZyBpcyBjbGVhcmVkIHdoZW4gdGhlIFVTQjMgUEhZIGlzCmV4aXRlZCB3
aGlsZSB0aGUgc3lzdGVtIGlzIGluIERQLW9ubHkgbW9kZSB0byBoYW5kbGUgdW5ib3VuZCBjb250
cm9sbGVycy4KCkxpbms6IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9tZXNzYWdlLzIwMjYwNjI1LXJv
Y2tjaGlwLXVzYmRwLWNsZWFudXAtdjctMjQtMzhlYjNjZjY1NGZkJTQwY29sbGFib3JhLmNvbQoK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMg
Yi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IC0tLSBhL2RyaXZl
cnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gKysrIGIvZHJpdmVycy9waHkv
cm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBAQCAtMTI3Myw4ICsxMjczLDEwIEBAIHN0
YXRpYyBpbnQgcmtfdWRwaHlfdXNiM19waHlfZXhpdChzdHJ1Y3QgcGh5ICpwaHkpCj4gIAlndWFy
ZChtdXRleCkoJnVkcGh5LT5tdXRleCk7Cj4gIAo+ICAJLyogRFAgb25seSBvciBoaWdoLXNwZWVk
ICovCj4gLQlpZiAoISh1ZHBoeS0+bW9kZSAmIFVEUEhZX01PREVfVVNCKSB8fCB1ZHBoeS0+aHMp
Cj4gKwlpZiAoISh1ZHBoeS0+bW9kZSAmIFVEUEhZX01PREVfVVNCKSB8fCB1ZHBoeS0+aHMpIHsK
PiArCQl1ZHBoeS0+c3RhdHVzICY9IH5VRFBIWV9NT0RFX1VTQjsKPiAgCQlyZXR1cm4gMDsKPiAr
CX0KCltTZXZlcml0eTogSGlnaF0KV2lsbCB0aGlzIGVhcmx5IHJldHVybiBsZWFrIGNsb2NrIHJl
ZmVyZW5jZXMgaWYgdGhlIG92ZXJhbGwgUEhZIHN0YXR1cyBkcm9wcwp0byAwIChVRFBIWV9NT0RF
X05PTkUpPwoKSWYgdGhlIFVTQjMgUEhZIHdhcyBwcmV2aW91c2x5IGluaXRpYWxpemVkIChlbmFi
bGluZyBjbG9ja3MgdmlhCnJrX3VkcGh5X3NldHVwKSBhbmQgdGhlIG1vZGUgc3dpdGNoZXMgdG8g
RFAtb25seSwgdWRwaHktPnN0YXR1cyBnZXRzCmNsZWFyZWQgaGVyZS4KClJldHVybmluZyBpbW1l
ZGlhdGVseSBza2lwcyBya191ZHBoeV9wb3dlcl9vZmYoKSBhbmQgaXRzIGludGVybmFsIGNoZWNr
CnRoYXQgY2FsbHMgcmtfdWRwaHlfZGlzYWJsZSgpIHdoZW4gdGhlIHN0YXR1cyByZWFjaGVzIDAu
CgpDb3VsZCB0aGlzIGxlYXZlIHRoZSBoYXJkd2FyZSBwb3dlcmVkIG9uIGFuZCBsZWFrIHRoZSBj
bG9jayByZWZlcmVuY2VzCm9idGFpbmVkIGR1cmluZyBpbml0aWFsaXphdGlvbj8KCi0tIApTYXNo
aWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDkt
cm9ja2NoaXAtdXNiZHAtY2xlYW51cC12MTEtMC1hMTQ5YWM2MGY3NmNAY29sbGFib3JhLmNvbT9w
YXJ0PTIzCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
