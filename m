Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D408EC79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 15:25:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/X/Q+BlzWMpTLK7YhqXyS9g4B6vieMx7+Ady5ARQQX0=; b=ugivNjU0SiRA6m
	VXT0VP1Oo+FBbugS3umyixw/flH4u5l5f+xyMC85+0trUtysEQbmEnzQlrpNsEv7EGzr7cbpYwXt1
	SaQfVg3FHKjkSz8RdF9nvn+bNcWyDXFAuZ+42SFH2V++s9an70AcURJYIlF+qze6IEcXqOQAVAxXx
	Not01gf/nwwDy6RC0CBjz7kmCAxEtpJnQqe7DOs4tMA36jq5Joaee8FyZArbIJ9nLuxIIfc3mLM+n
	3O59QUeqF6Tj+gmVOeA6wgQYbKds4CuCTTthO331yXc4Gs0fEKKzdxl0AlVL/ezKZwVnJsD/dkGNK
	XOwYZA2xt9/sBv/RtLTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4KBB-0000000C9CG-1tQJ;
	Wed, 09 Sep 2026 15:25:41 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4KB9-0000000C9Bs-3vjk
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 15:25:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id AFE7343597;
	Wed,  9 Sep 2026 15:25:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 477421F00A3D;
	Wed,  9 Sep 2026 15:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788967539;
	bh=wnze7liL7UZjKL8aefoKfSZ0VJpUOmK3dB8PWR1mEXM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XKPDF+hicwPmBvPH8pLAKsXynn8YSyRQk0ItGj5Vd5qcM673nNGrlJi3Wu9by8U2S
	 qp6bBuiV6zpDnocK9tfabpRqamnR3t+Pks3X5kx2yMG2z/Q5CEMTTWXVJ1SNaWqnmW
	 itSX07Phq63jxCemlizYTi/ZV10BrVGbifJEls+c4ezuh4hfvg52SUd6vlABf441BP
	 bTKBlEupTz6tV3EENaxPOXFhyP6aiCD/bGSjiJB1fXG8tmN8W8jVuQcwwaFHjI2pvF
	 dYvju1iDM6vwqico8Ry82m3cLFer3u13gRzEiyZtApX/3IWhqujaenk3B5UjLmtHV/
	 Bu7CLASX4jKqA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: qmp-combo: check qmp_combo_com_init() in
 the typec callbacks
To: "Oleg Keri" <okerixx@gmail.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260909151443.10276-3-okerixx@gmail.com>
References: <20260909151443.10276-1-okerixx@gmail.com>
 <20260909151443.10276-3-okerixx@gmail.com>
Date: Wed, 09 Sep 2026 15:25:37 +0000
Message-Id: <20260909152539.477421F00A3D@smtp.kernel.org>
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
IFtIaWdoXSBVbmNsb2NrZWQgcmVnaXN0ZXIgYWNjZXNzIGNhdXNpbmcgYSBrZXJuZWwgcGFuaWMg
ZHVyaW5nIFBIWSB0ZWFyZG93biBhZnRlciBhIFR5cGUtQyBzd2l0Y2ggZmFpbHVyZS4KLS0KCmNv
bW1pdCBjYjA1NGUzZDc3Yzc0NGU1NzNiZmE3OGUwMmNiNWUzMDdmNjBlZmE2CkF1dGhvcjogT2xl
ZyBLZXJpIDxva2VyaXh4QGdtYWlsLmNvbT4KCnBoeTogcWNvbTogcW1wLWNvbWJvOiBjaGVjayBx
bXBfY29tYm9fY29tX2luaXQoKSBpbiB0aGUgdHlwZWMgY2FsbGJhY2tzCgpUaGlzIGNvbW1pdCB1
cGRhdGVzIHRoZSBUeXBlLUMgY2FsbGJhY2tzIGluIHRoZSBRdWFsY29tbSBRTVAgY29tYm8gUEhZ
CmRyaXZlciB0byBwcm9wYWdhdGUgZXJyb3JzIGZyb20gcW1wX2NvbWJvX2NvbV9pbml0KCkuIElu
c3RlYWQgb2YgaWdub3JpbmcKYSBicmluZ3VwIGZhaWx1cmUsIGl0IGJhaWxzIG91dCBlYXJseSB0
byBhdm9pZCB3cml0aW5nIHRvIFBIWSByZWdpc3RlcnMKd2l0aG91dCBhIGNsb2NrIHJ1bm5pbmcu
Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8u
YyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jCj4gLS0tIGEvZHJp
dmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMKPiArKysgYi9kcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYwoKWyAuLi4gXQoKPiBAQCAtNDc5MSwxNSAr
NDc5MiwxOSBAQCBzdGF0aWMgaW50IHFtcF9jb21ib190eXBlY19zd2l0Y2hfc2V0KHN0cnVjdCB0
eXBlY19zd2l0Y2hfZGV2ICpzdywKPiAgCQkJcW1wX2NvbWJvX3VzYl9wb3dlcl9vZmYocW1wLT51
c2JfcGh5KTsKPiAgCQlxbXBfY29tYm9fY29tX2V4aXQocW1wLCB0cnVlKTsKPiAgCj4gLQkJcW1w
X2NvbWJvX2NvbV9pbml0KHFtcCwgdHJ1ZSk7Cj4gKwkJcmV0ID0gcW1wX2NvbWJvX2NvbV9pbml0
KHFtcCwgdHJ1ZSk7Cj4gKwkJaWYgKHJldCkKPiArCQkJZ290byBvdXQ7CgpbU2V2ZXJpdHk6IEhp
Z2hdClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBkb2VzIHRoaXMgZWFybHkgYmFp
bG91dCBwYXRoIGxlYXZlIHRoZQpsb2dpY2FsIHN0YXRlIG91dCBvZiBzeW5jIHdpdGggdGhlIGhh
cmR3YXJlPyAKCklmIHFtcF9jb21ib19jb21faW5pdCgpIGZhaWxzLCB0aGUgaGFyZHdhcmUgcmVt
YWlucyB1bmNsb2NrZWQsIGJ1dCB0aGUKZ2VuZXJpYyBQSFkgZnJhbWV3b3JrIGFwcGVhcnMgdW5h
d2FyZSBvZiB0aGlzIGZhaWx1cmUuCgo+ICsKPiAgCQlpZiAocW1wLT51c2JfaW5pdF9jb3VudCkK
PiAgCQkJcW1wX2NvbWJvX3VzYl9wb3dlcl9vbihxbXAtPnVzYl9waHkpOwoKWyAuLi4gXQoKPiBA
QCAtNDg2Myw3ICs0ODY5LDkgQEAgc3RhdGljIGludCBxbXBfY29tYm9fdHlwZWNfbXV4X3NldChz
dHJ1Y3QgdHlwZWNfbXV4X2RldiAqbXV4LCBzdHJ1Y3QgdHlwZWNfbXV4X3MKPiAgCQlxbXBfY29t
Ym9fY29tX2V4aXQocW1wLCB0cnVlKTsKPiAgCj4gIAkJLyogTm93IGV2ZXJ5dGhpbmcncyBwb3dl
cmVkIGRvd24sIHBvd2VyIHVwIHRoZSByaWdodCBQSFlzICovCj4gLQkJcW1wX2NvbWJvX2NvbV9p
bml0KHFtcCwgdHJ1ZSk7Cj4gKwkJcmV0ID0gcW1wX2NvbWJvX2NvbV9pbml0KHFtcCwgdHJ1ZSk7
Cj4gKwkJaWYgKHJldCkKPiArCQkJcmV0dXJuIHJldDsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBp
cyBhbHNvIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgZG9lcyB0aGlzIGVhcmx5IGV4aXQgc2lt
aWxhcmx5IGxlYXZlCnRoZSBQSFkgcG93ZXJlZCBkb3duIHdoaWxlIHNvZnR3YXJlIGNvdW50ZXJz
IGluZGljYXRlIGl0IGlzIHN0aWxsIGFjdGl2ZT8KCklmIGEgY29uc3VtZXIgbGF0ZXIgdGVhcnMg
ZG93biB0aGUgUEhZIGJ5IGNhbGxpbmcgcGh5X2V4aXQoKSwgdGhlIHRlYXJkb3duCnBhdGggd2ls
bCBjYWxsIHFtcF9jb21ib191c2JfcG93ZXJfb2ZmKCkuIFNpbmNlIHRoZSBjbG9ja3Mgd2VyZSBs
ZWZ0IGRpc2FibGVkCmR1cmluZyB0aGUgZWFybHkgcmV0dXJuIGhlcmUsIHFtcF9jb21ib191c2Jf
cG93ZXJfb2ZmKCkgd2lsbCBwZXJmb3JtIGFuCnVuY29uZGl0aW9uYWwgcmVnaXN0ZXIgYWNjZXNz
IHdpdGhvdXQgY2xvY2tzOgoKcW1wX2NvbWJvX3VzYl9wb3dlcl9vZmYoKSB7CiAgICAgICAgLi4u
CiAgICAgICAgcXBoeV9zZXRiaXRzKHFtcC0+cGNzLCBjZmctPnJlZ3NbUVBIWV9TV19SRVNFVF0s
IFNXX1JFU0VUKTsKICAgICAgICAuLi4KfQoKQ291bGQgdGhpcyB0cmlnZ2VyIGEgU3luY2hyb25v
dXMgRXh0ZXJuYWwgQWJvcnQgKFNFQSkga2VybmVsIHBhbmljIG9uClF1YWxjb21tIHBsYXRmb3Jt
cywgc2luY2UgdGhlIGVhcmx5IGV4aXQgc3RyYXRlZ3kgbGVhdmVzIHRoZSBQSFkgZnJhbWV3b3Jr
CnRoaW5raW5nIHRoZSBQSFkgaXMgc3RpbGwgYWN0aXZlPwoKPiAgCj4gIAkJaWYgKG5ld19tb2Rl
ID09IFFNUFBIWV9NT0RFX0RQX09OTFkpIHsKPiAgCQkJaWYgKHFtcC0+dXNiX2luaXRfY291bnQp
CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0
LzIwMjYwOTA5MTUxNDQzLjEwMjc2LTEtb2tlcml4eEBnbWFpbC5jb20/cGFydD0yCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
