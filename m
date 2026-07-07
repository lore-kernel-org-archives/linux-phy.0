Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D2CFC43602
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 08:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jGehK0J2VszlEK5CW5b6EyPGH4bHgoEJkVUNabY6Bgg=; b=X9Yc35yDcIBOp8
	xWKuFsMQZ+xOcsw4KJRHqTL1JbCZ+gTeml0f+MTa4Kr70dr9yFCCVJZOq3ue31lEuKMMf3TFUeQY1
	yhBfwLYRVXVZF2zo5+Af694Dsu3bxdKIxRZM727Pcu/TczKc505g/l7lu/6SJTvnHXTc094tnmBvO
	TyMMbJpNg68os+7nGPbXFHqiMg8jxPmd0EgyCnlHpC7yO2y0tIDuB/TUFiC7ir/3mWmgcoqkgiHz4
	SJ6Kzxn0W+AQjExTfjDNYHPQA33VPVHfv2rRvxuBw0Y/0p6ojl/0B2rLGpber3uyEDU6KFnYkKGy/
	0YlwJx2YA0GRT6DYty9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh1U6-0000000EX5D-3PpV;
	Tue, 07 Jul 2026 08:48:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh1U5-0000000EX3P-0g35
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 08:48:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7CF40618A6;
	Tue,  7 Jul 2026 08:48:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAD221F00A3A;
	Tue,  7 Jul 2026 08:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783414131;
	bh=dRcqX/IBUDkqMojt0I9BJbvcNQtRCr5jNcHMlK9ouIo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RrrTLJUklFvciwQlyXkGeN+G6IV/3fz5DQqx0tyNYYNLBsj/udrTcxGRjHvv05ypZ
	 byR5/996iAYkBB4oS7J3P91gwizRl+UpvgAA0WcptaDvGxdyQAW4T6Upfo8qgaCioi
	 F+THlH5mDk4u7YO2lBwvMlDRhLZIIStSR2ZHMN4D8T7ydU0UMijrIxuukk1A0+AIdh
	 c5MmK2esL+0srvgyRU6t2fRRhE8iaiLJ46o2O1CDdy/TZaRAyVGPf6FBMZNipOY98V
	 ssDLA653v8Fkqth24tWmjj21eCU5irqlzXaubD0yPn/aPZnwlXCAj38I6QkbbkwIhO
	 dqe1Na+Un8Gbw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 05/11] spmi: Implement
 spmi_subdevice_alloc_and_add() and devm variant
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260707083730.33977-6-angelogioacchino.delregno@collabora.com>
References: <20260707083730.33977-1-angelogioacchino.delregno@collabora.com>
 <20260707083730.33977-6-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 08:48:50 +0000
Message-Id: <20260707084850.DAD221F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHNwbWlfc3ViZGV2aWNl
X2FsbG9jX2FuZF9hZGQoKSBmdXNlcyBhbGxvY2F0aW9uIGFuZCByZWdpc3RyYXRpb24sIHByZXZl
bnRpbmcgaW5pdGlhbGl6YXRpb24gb2YgZGV2aWNlIHByb3BlcnRpZXMgKGUuZy4sIG9mX25vZGUs
IGZ3bm9kZSkgYmVmb3JlIGRldmljZSBkaXNjb3ZlcnkuCi0tCgotLS0gUGF0Y2ggWzVdOiBbUEFU
Q0ggdjEwIDA1LzExXSBzcG1pOiBJbXBsZW1lbnQgc3BtaV9zdWJkZXZpY2VfYWxsb2NfYW5kX2Fk
ZCgpIGFuZCBkZXZtIHZhcmlhbnQgLS0tCmNvbW1pdCBjODkzZmRmOTI4NDc5ZWI1MWZkZTIzM2Uy
N2VlYTA0ZmEwOTZjYzI0CkF1dGhvcjogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFuZ2Vs
b2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KCnNwbWk6IEltcGxlbWVudCBzcG1p
X3N1YmRldmljZV9hbGxvY19hbmRfYWRkKCkgYW5kIGRldm0gdmFyaWFudAoKVGhpcyBjb21taXQg
aW50cm9kdWNlcyBuZXcgZnVuY3Rpb25zIHRvIGFsbG9jYXRlIGFuZCByZWdpc3RlciBzdWItZGV2
aWNlcwpmb3IgU1BNSSBkZXZpY2VzLCBhbG9uZyB3aXRoIHRoZWlyIGRldm1fKiBlcXVpdmFsZW50
cy4gVGhlIGV4cG9ydHMgYXJlCnBsYWNlZCB1bmRlciB0aGUgIlNQTUkiIG5hbWVzcGFjZS4KCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3BtaS9zcG1pLmMgYi9kcml2ZXJzL3NwbWkvc3BtaS5jCj4g
aW5kZXggY2FlODlkZDkxNWQ0YS4uY2QwNDdhYmEzOGFiMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L3NwbWkvc3BtaS5jCj4gKysrIGIvZHJpdmVycy9zcG1pL3NwbWkuYwpbIC4uLiBdCj4gQEAgLTQz
MSw2ICs0NTcsNTggQEAgc3RydWN0IHNwbWlfZGV2aWNlICpzcG1pX2RldmljZV9hbGxvYyhzdHJ1
Y3Qgc3BtaV9jb250cm9sbGVyICpjdHJsKQo+ICB9Cj4gIEVYUE9SVF9TWU1CT0xfR1BMKHNwbWlf
ZGV2aWNlX2FsbG9jKTsKPiAgCj4gKy8qKgo+ICsgKiBzcG1pX3N1YmRldmljZV9hbGxvY19hbmRf
YWRkKCk6IEFsbG9jYXRlIGFuZCBhZGQgYSBuZXcgU1BNSSBzdWItZGV2aWNlCj4gKyAqIEBzcGFy
ZW50OglTUE1JIHBhcmVudCBkZXZpY2Ugd2l0aCBwcmV2aW91c2x5IHJlZ2lzdGVyZWQgU1BNSSBj
b250cm9sbGVyCj4gKyAqCj4gKyAqIFJldHVybnM6Cj4gKyAqIFBvaW50ZXIgdG8gbmV3bHkgYWxs
b2NhdGVkIFNQTUkgc3ViLWRldmljZSBmb3Igc3VjY2VzcyBvciBlcnJvciBwb2ludGVyLgo+ICsg
Ki8KPiArc3RydWN0IHNwbWlfc3ViZGV2aWNlICpzcG1pX3N1YmRldmljZV9hbGxvY19hbmRfYWRk
KHN0cnVjdCBzcG1pX2RldmljZSAqc3BhcmVudCkKPiArewo+ICsJc3RydWN0IHNwbWlfc3ViZGV2
aWNlICpzdWJfc2RldjsKPiArCXN0cnVjdCBzcG1pX2RldmljZSAqc2RldjsKPiArCWludCByZXQ7
ClsgLi4uIF0KPiArCXJldCA9IGRldl9zZXRfbmFtZSgmc2Rldi0+ZGV2LCAiJXUtJTAyeC4ldS5h
dXRvIiwKPiArCQkJICAgc2Rldi0+Y3RybC0+bnIsIHNkZXYtPnVzaWQsIHN1Yl9zZGV2LT5kZXZp
ZCk7Cj4gKwlpZiAocmV0KQo+ICsJCWdvdG8gZXJyX3B1dF9kZXY7Cj4gKwo+ICsJcmV0ID0gZGV2
aWNlX2FkZCgmc2Rldi0+ZGV2KTsKCltTZXZlcml0eTogSGlnaF0KQnkgY29tYmluaW5nIGFsbG9j
YXRpb24gYW5kIHJlZ2lzdHJhdGlvbiBpbnRvIGEgc2luZ2xlIGZ1bmN0aW9uLCBkb2Vzbid0IHRo
aXMKcHJldmVudCB0aGUgY2FsbGVyIGZyb20gaW5pdGlhbGl6aW5nIGRldmljZSBwcm9wZXJ0aWVz
IGxpa2Ugb2Zfbm9kZSBvciBmd25vZGUKYmVmb3JlIHRoZSBkZXZpY2UgaXMgZGlzY292ZXJlZD8K
CklmIGRldmljZV9hZGQoKSBpcyBjYWxsZWQgaW1tZWRpYXRlbHksIHRoZSBpbml0aWFsIEtPQkpf
QUREIHVldmVudCB3aWxsIGJlCmVtaXR0ZWQgd2l0aG91dCBhIE1PREFMSUFTLCB3aGljaCBjYW4g
YnJlYWsgbW9kdWxlIGF1dG9sb2FkaW5nLiBGdXJ0aGVybW9yZSwKZndfZGV2bGluayBtaWdodCBm
YWlsIHRvIGNvcnJlY3RseSBlc3RhYmxpc2ggZGV2aWNlIGxpbmtzLCBhbmQKc3BtaV9kZXZpY2Vf
bWF0Y2goKSBpcyBsaWtlbHkgdG8gdW5jb25kaXRpb25hbGx5IGZhaWwgdG8gZmluZCBhIG1hdGNo
aW5nIGRyaXZlcgpkdXJpbmcgdGhlIGluaXRpYWwgYnVzX3Byb2JlX2RldmljZSgpIHNpbmNlIG9m
X25vZGUgaXMgTlVMTC4KCldvdWxkIGl0IGJlIGJldHRlciB0byBzcGxpdCB0aGlzIGludG8gc2Vw
YXJhdGUgYWxsb2MgYW5kIGFkZCBvcGVyYXRpb25zIHNvIHRoZQpjYWxsZXIgY2FuIHNhZmVseSBj
b25maWd1cmUgdGhlIGRldmljZSBwcm9wZXJ0aWVzIGJlZm9yZSBhZGRpbmcgaXQgdG8gdGhlIHN5
c3RlbT8KCj4gKwlpZiAocmV0KSB7Cj4gKwkJZGV2X2Vycigmc2Rldi0+ZGV2LCAiQ2FuJ3QgYWRk
IGRldmljZSwgc3RhdHVzICVwZVxuIiwgRVJSX1BUUihyZXQpKTsKPiArCQlnb3RvIGVycl9wdXRf
ZGV2Owo+ICsJfQo+ICsKPiArCXJldHVybiBzdWJfc2RldjsKPiArCj4gK2Vycl9wdXRfZGV2Ogo+
ICsJcHV0X2RldmljZSgmc2Rldi0+ZGV2KTsKPiArCXJldHVybiBFUlJfUFRSKHJldCk7Cj4gK30K
PiArRVhQT1JUX1NZTUJPTF9OU19HUEwoc3BtaV9zdWJkZXZpY2VfYWxsb2NfYW5kX2FkZCwgIlNQ
TUkiKTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0
Y2hzZXQvMjAyNjA3MDcwODM3MzAuMzM5NzctMS1hbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNv
bGxhYm9yYS5jb20/cGFydD01CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
