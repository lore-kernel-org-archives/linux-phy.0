Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1D7ACD4F21
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 21:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NOnBA2cAcmP07J8AxvnGA3pNsYtKrEoxQN5nd8gTUv8=; b=jFdO4aoSwM7Rm4
	M+9SEVTYM6L09VWT0lQsHPD0+fUm2d7Dsclu72nRZhYe7hIC9VrH5qdEOfhnIta504o2ej4OdB51E
	YwhTT2x8FH+CcxKNs0mMao3BYsSSkaXi4blV5OtqXCP6ZMbr12lSrnJqHiD5CxQy/jT3zN6orIq87
	J4ger+iWjXzhoeJLUU2JBQz0DIzraix22Qo+wwvSZOuTlPheMIdb5mPai2W1S+uczNPjrjnIz/G6H
	jJLu6FN2hnVaKU04GsDPkqnZoEEHXcGP/bz8FViPOcsHeeDdK6sTGXlg4I6ALTGyJugi3/C1qjbyo
	yJBxUXZSEL+D/nE37Lpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNH5s-00000003p4B-0yKM;
	Wed, 13 May 2026 21:26:16 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNH5q-00000003p3u-3BSu
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 21:26:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8DDFD60132;
	Wed, 13 May 2026 21:26:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDC78C19425;
	Wed, 13 May 2026 21:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778707572;
	bh=bmYj1YGcMnB/j6Cy+xoz/tmJisQJxRzvUT5Ma/2Nd+I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=d3D+3ZgnCFWA//N/UpFGjiBMmfna7YMSAm3pDfOJ0yvpNikr5qDKzttLO0tR3r6Oy
	 no2DgFmSqUnhxpupHzwYobVOXSaVQZn79zs7cWVxN/BiM8eczsmtRqJ16pxioEdz4g
	 G+s5M5+cewpKqWzq6RpYUVVCoIEcoInbo++0ykPuxRU99CXIOkyjLub/w55Uag0ppz
	 7LlasUrwTfkM4RoRwm5cXZjjIJfxbDwAXQwJDyqoNCunXM1eOatXhk2S+xc5w0MDAA
	 gzAaVHBPvE/zwbMu1TOsEC+cOoHu81A42SnZNVkU80O0gr3ifW/HGYIoG6Phapj/tt
	 tpi+NLeNO+j3g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/5] phy: phy-can-transceiver: use
 device_get_match_data()
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org
In-Reply-To: <20260512130552.272476-3-andriy.shevchenko@linux.intel.com>
References: <20260512130552.272476-3-andriy.shevchenko@linux.intel.com>
Date: Wed, 13 May 2026 21:26:11 +0000
Message-Id: <20260513212611.EDC78C19425@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBlcnJvciBjaGVj
ayBmb3IgYGRldmljZV9nZXRfbWF0Y2hfZGF0YShkZXYpYCBpcyBpbnZlcnRlZCwgY2F1c2luZyB0
aGUgZHJpdmVyIHByb2JlIHRvIGZhaWwgb24gc3VjY2VzcyBhbmQgdHJpZ2dlcmluZyBhIE5VTEwg
cG9pbnRlciBkZXJlZmVyZW5jZSBvbiBmYWlsdXJlLgotLQoKY29tbWl0IGY5OTE1ZDlkNzQ5ODk2
ODJiMmI3ZTIwZDY3MTI5ZTBkZDRhYmRhYjkKQXV0aG9yOiBBbmR5IFNoZXZjaGVua28gPGFuZHJp
eS5zaGV2Y2hlbmtvQGxpbnV4LmludGVsLmNvbT4KCnBoeTogcGh5LWNhbi10cmFuc2NlaXZlcjog
dXNlIGRldmljZV9nZXRfbWF0Y2hfZGF0YSgpCgpUaGlzIGNvbW1pdCB0cmFuc2l0aW9ucyB0aGUg
ZHJpdmVyIHRvIHVzZSB0aGUgZ2VuZXJpYyBmaXJtd2FyZSBub2RlIGludGVyZmFjZQpmb3IgcmV0
cmlldmluZyBkZXZpY2UgbWF0Y2ggZGF0YSBpbnN0ZWFkIG9mIHRoZSBPRi1zcGVjaWZpYyBvbmUu
IEl0IGFsc28gZHJvcHMKdGhlIHVubmVlZGVkIGRldmljZSBub2RlIGFyZ3VtZW50IGZyb20gZGV2
bV9waHlfY3JlYXRlKCkuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9waHktY2FuLXRyYW5z
Y2VpdmVyLmMgYi9kcml2ZXJzL3BoeS9waHktY2FuLXRyYW5zY2VpdmVyLmMKPiBpbmRleCAxODA4
ZjkwM2MwNTcwLi41Y2ZkMDk3MzUyMDQ4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3BoeS1j
YW4tdHJhbnNjZWl2ZXIuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3BoeS1jYW4tdHJhbnNjZWl2ZXIu
YwpbIC4uLiBdCj4gQEAgLTE1Miw3ICsxNTIsNiBAQCBzdGF0aWMgaW50IGNhbl90cmFuc2NlaXZl
cl9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCXN0cnVjdCBjYW5f
dHJhbnNjZWl2ZXJfcGh5ICpjYW5fdHJhbnNjZWl2ZXJfcGh5Owo+ICAJc3RydWN0IGNhbl90cmFu
c2NlaXZlcl9wcml2ICpwcml2Owo+ICAJY29uc3Qgc3RydWN0IGNhbl90cmFuc2NlaXZlcl9kYXRh
ICpkcnZkYXRhOwo+IC0JY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCAqbWF0Y2g7Cj4gIAlzdHJ1
Y3QgcGh5ICpwaHk7Cj4gIAlzdHJ1Y3QgZ3Bpb19kZXNjICpzaWxlbnRfZ3BpbzsKPiAgCXN0cnVj
dCBncGlvX2Rlc2MgKnN0YW5kYnlfZ3BpbzsKPiBAQCAtMTYxLDExICsxNjAsMTAgQEAgc3RhdGlj
IGludCBjYW5fdHJhbnNjZWl2ZXJfcGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCj4gIAl1MzIgbWF4X2JpdHJhdGUgPSAwOwo+ICAJaW50IGVyciwgaSwgbnVtX2NoID0gMTsK
PiAgCj4gLQltYXRjaCA9IG9mX21hdGNoX25vZGUoY2FuX3RyYW5zY2VpdmVyX3BoeV9pZHMsIHBk
ZXYtPmRldi5vZl9ub2RlKTsKPiAtCWlmICghbWF0Y2ggfHwgIW1hdGNoLT5kYXRhKQo+ICsJZHJ2
ZGF0YSA9IGRldmljZV9nZXRfbWF0Y2hfZGF0YShkZXYpOwo+ICsJaWYgKGRydmRhdGEpCj4gIAkJ
cmV0dXJuIC1FTk9ERVY7CgpEb2VzIHRoaXMgaW52ZXJ0IHRoZSBlcnJvciBjaGVjaz8gCgpXaGVu
IGRldmljZV9nZXRfbWF0Y2hfZGF0YSgpIHN1Y2Nlc3NmdWxseSByZXR1cm5zIHZhbGlkIG1hdGNo
IGRhdGEsIGl0IGxvb2tzCmxpa2UgdGhpcyBjb25kaXRpb24gd2lsbCBldmFsdWF0ZSB0byB0cnVl
IGFuZCBlcnJvbmVvdXNseSBhYm9ydCB0aGUgcHJvYmUgd2l0aAotRU5PREVWLgoKPiAgCj4gLQlk
cnZkYXRhID0gbWF0Y2gtPmRhdGE7Cj4gIAlpZiAoZHJ2ZGF0YS0+ZmxhZ3MgJiBDQU5fVFJBTlND
RUlWRVJfRFVBTF9DSCkKPiAgCQludW1fY2ggPSAyOwoKQ29udmVyc2VseSwgaWYgZGV2aWNlX2dl
dF9tYXRjaF9kYXRhKCkgZmFpbHMgYW5kIHJldHVybnMgTlVMTCwgd29uJ3QgdGhlIApwcm9iZSBj
b250aW51ZSBhbmQgY2F1c2UgYSBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2Ugd2hlbiBldmFsdWF0
aW5nIApkcnZkYXRhLT5mbGFncyBoZXJlPwoKWyAuLi4gXQoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDUxMjEzMDU1Mi4yNzI0NzYt
MS1hbmRyaXkuc2hldmNoZW5rb0BsaW51eC5pbnRlbC5jb20/cGFydD0yCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
