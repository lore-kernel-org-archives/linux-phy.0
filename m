Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1047C44500
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 08:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yj72gB8hv/jJz72RHxPxL/SGc6L9yZvy22vTolKsULs=; b=0ZpCxHJLKc/s92
	5xAoRSdPfiMXWwNNcrbwQxAvXR+zjxZU4Pp1j7AD1Gp4SoHqluWDWhqmi/39cdgLz4WsXkW+SLb4H
	ap6z7aJpQ2ebLJ87E4veRFyIbEm9MWOzoCmsmFP2+nN7Ks1B6ABefhIjiHU9nBSXtgOHRcjYjcQUl
	Z5KbVY2Rn+KzbmlkzvCRZcyjacYHd0SiTL1kI2rLFA9i5FnP42pYsnvvpoI528xpjw2qWmSVuTgBm
	6T49L+6FJ91k9SZDfSRth0dRx43aQN2Krfr1N2AGc8ItFLgCTX7ud5dsVWOux0b+PLO+kqW/6CaGd
	Le9Tff8pB6nHTTTYzxdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh1Tg-0000000EWmL-2JgV;
	Tue, 07 Jul 2026 08:48:28 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh1Tf-0000000EWkO-1600
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 08:48:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CA67743602;
	Tue,  7 Jul 2026 08:48:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B80C1F000E9;
	Tue,  7 Jul 2026 08:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783414104;
	bh=PoJKGc+y6dDibK0JlIToaIEw3zKHpC1gLELfD0OcBtw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=X1bAmb3scXqCibRcBmE3kZID3Esrk3EI2FhI9fl9W3Sn7Qu3yMk2LomZG57p5D58V
	 wwzvezcFuhoBZGhDyfOlv1Cp3rkXo9fd42bqyO00sWEARjUTxHoigD/qWvJg5twRee
	 rKMOTmgAxaXvE/nIRLDYphK4sSkNBDfDMeLgYZ0wQv+5yUEXIbyY+kUz7xHw9/sIi1
	 RL14+X1U4Xlj/J13iUP+i4wSIkrzdYvnVTv3W7KB95LEUqG7cKOGhcNRLC5du+gt0V
	 2bOOGi+SlKCxMUym0NN4nbbtbWZp51PjaRtDQMdPeHwvTmoe2kfxg0DJa1Ug1F41aV
	 qjixucryoeShA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 04/11] spmi: Remove unneeded goto in
 spmi_device_add() error path
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260707083730.33977-5-angelogioacchino.delregno@collabora.com>
References: <20260707083730.33977-1-angelogioacchino.delregno@collabora.com>
 <20260707083730.33977-5-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 08:48:23 +0000
Message-Id: <20260707084824.6B80C1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBJZiBgaWRhX2FsbG9jKClgIGZhaWxzIGluIGBzcG1pX2NvbnRyb2xsZXJfYWxsb2Mo
KWAsIHRoZSBlcnJvciBwYXRoIGluY29ycmVjdGx5IGZyZWVzIElEIDAuCi0tCgotLS0gUGF0Y2gg
WzRdOiBbUEFUQ0ggdjEwIDA0LzExXSBzcG1pOiBSZW1vdmUgdW5uZWVkZWQgZ290byBpbiBzcG1p
X2RldmljZV9hZGQoKSBlcnJvciBwYXRoIC0tLQpjb21taXQgNDZjMjBkNDQyOWUxNWVhM2U5MDdm
NjA2OGRkZWRkN2VkOWM5NDBmOApBdXRob3I6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxh
bmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+CgpzcG1pOiBSZW1vdmUgdW5u
ZWVkZWQgZ290byBpbiBzcG1pX2RldmljZV9hZGQoKSBlcnJvciBwYXRoCgpUaGlzIGNvbW1pdCBz
aW1wbGlmaWVzIHRoZSBlcnJvciBoYW5kbGluZyBpbiBzcG1pX2RldmljZV9hZGQoKSBieSByZW1v
dmluZyBhbgp1bm5lY2Vzc2FyeSBnb3RvIHN0YXRlbWVudCBhbmQgcmV0dXJuaW5nIGRpcmVjdGx5
IG9uIGZhaWx1cmUuIEl0IGFsc28gZXhwbGljaXRseQpyZXR1cm5zIDAgb24gc3VjY2VzcyB0byBp
bXByb3ZlIGNvZGUgcmVhZGFiaWxpdHkuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NwbWkvc3Bt
aS5jIGIvZHJpdmVycy9zcG1pL3NwbWkuYwo+IGluZGV4IGZhMzMyMzUyMWYxYTIuLmNhZTg5ZGQ5
MTVkNGEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zcG1pL3NwbWkuYwo+ICsrKyBiL2RyaXZlcnMv
c3BtaS9zcG1pLmMKClsgLi4uIF0KCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlz
dGluZyBpc3N1ZSwgYnV0IGRvZXMgdGhlIHNwbWlfY29udHJvbGxlcl9hbGxvYygpIGVycm9yIHBh
dGgKaW5jb3JyZWN0bHkgZnJlZSBJRCAwIGlmIGlkYV9hbGxvYygpIGZhaWxzPwoKTG9va2luZyBh
dCBzcG1pX2NvbnRyb2xsZXJfYWxsb2MoKToKCgljdHJsID0ga3phbGxvY19mbGV4KCpjdHJsLCBw
cml2LCBzaXplKTsKCS8qIGN0cmwtPm5yIGlzIGltcGxpY2l0bHkgMCAqLwoKCS8qIC4uLiAqLwoK
CWlkID0gaWRhX2FsbG9jKCZjdHJsX2lkYSwgR0ZQX0tFUk5FTCk7CglpZiAoaWQgPCAwKSB7CgkJ
ZGV2X2VycihwYXJlbnQsCgkJCSJ1bmFibGUgdG8gYWxsb2NhdGUgU1BNSSBjb250cm9sbGVyIGlk
ZW50aWZpZXIuXG4iKTsKCQlzcG1pX2NvbnRyb2xsZXJfcHV0KGN0cmwpOwoJCXJldHVybiBFUlJf
UFRSKGlkKTsKCX0KCklmIGlkYV9hbGxvYygpIHJldHVybnMgYW4gZXJyb3IgY29kZSwgc3BtaV9j
b250cm9sbGVyX3B1dChjdHJsKSBpcyBjYWxsZWQKd2hpbGUgY3RybC0+bnIgaXMgc3RpbGwgMC4g
VGhpcyBkcm9wcyB0aGUgcmVmZXJlbmNlIGFuZCB0cmlnZ2VycyB0aGUgcmVsZWFzZQpmdW5jdGlv
bjoKCmRyaXZlcnMvc3BtaS9zcG1pLmM6c3BtaV9jdHJsX3JlbGVhc2UoKSB7CglzdHJ1Y3Qgc3Bt
aV9jb250cm9sbGVyICpjdHJsID0gdG9fc3BtaV9jb250cm9sbGVyKGRldik7CgoJaWRhX2ZyZWUo
JmN0cmxfaWRhLCBjdHJsLT5ucik7CglrZnJlZShjdHJsKTsKfQoKQ291bGQgdGhpcyBjYXVzZSBp
ZGFfZnJlZSgpIHRvIHVuY29uZGl0aW9uYWxseSBmcmVlIElEIDAsIHBvdGVudGlhbGx5CmNvcnJ1
cHRpbmcgdGhlIGdsb2JhbCBJREEgc3RhdGUgaWYgYW5vdGhlciBTUE1JIGNvbnRyb2xsZXIgaXMg
YWN0aXZlbHkgdXNpbmcKdGhhdCBpZGVudGlmaWVyPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3
IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcwNzA4MzczMC4zMzk3Ny0xLWFu
Z2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT9wYXJ0PTQKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
