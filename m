Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3A5BC79F85
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 08:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=So9F03r2gug1kpIo1DfnzYXqO7m31+IskivK/S3vh0c=; b=TAyS1JhI0O0Ij7
	oDU/kKSvJebTgvEPgxvuDZqCRiiwOv1u5SQNMZvUsi5fkbVZwBDsOy411VO/2/EnAK31dBlDltlos
	8v2KfYdtNGqyV9cLh/FyZqEmUIJK0italenXTPe1FJhz2lU9hLEYkhiDYNpApEjR+FcO8CGguu4bJ
	ZsuVBe7UGURS4xdWELv/gJG6DI0HdpYx3uqLJ4dYzPQ3BvphkdW6O/rJS/WqSUx6SzGV1wbsBXVEX
	hy2dN9DHrhEAX2S466WoX0kIkk0JcdEm9HhtGJGmfn7MZjdvBBJNSRQq4x0AHHfleGFpHjO8kD6mV
	DwJUbNeaFEkjz7QQPpvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2PdM-00000001Sbo-2X4B;
	Fri, 04 Sep 2026 08:50:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2PdL-00000001SbS-1KNm
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 08:50:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4CFC760211;
	Fri,  4 Sep 2026 08:50:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4D891F00A3D;
	Fri,  4 Sep 2026 08:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788511850;
	bh=G5FqBXDJXT7vUrew4805eIfRm+GAomkrjD4wVH/jEfo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JVo1M/Ssid5Qt/R7vh+9vTdgyCzfkaKMTrL1w6DAorOtP9HQP7PPukYCECiLamRTy
	 D9WAjHmDW5dr448j/9uzSqnFKcYxyOIuTZwWree+xAGF0jSqgE6V9F+UI9nMI252sQ
	 Np2y6ftcShtypsQLkgwRFn7RM67ciImDYTWLS4nmmG13afCO9MF+MpHm6oXcM2ZiNl
	 LfoK5s0X21BxcgAnWWw6y+0fCqeUvW5gziAxIxl+ncx6joCfH7zySpzFLTzOcj8UBL
	 NK/QCUaswvW+FZQoavJWws7w1wvT6riWmK1SnzFYGuQX0OssT6O+7BVQBSy1vPMqwf
	 4UbHPIf7sQFuw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/4] phy: core: Add phy bulk data helper functions
To: "Inochi Amaoto" <inochiama@gmail.com>
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260904083709.425893-4-inochiama@gmail.com>
References: <20260904083709.425893-1-inochiama@gmail.com>
 <20260904083709.425893-4-inochiama@gmail.com>
Date: Fri, 04 Sep 2026 08:50:48 +0000
Message-Id: <20260904085049.A4D891F00A3D@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIG9mX3BoeV9idWxrX2dl
dF9hbGwoKSByZXR1cm5zIGVhcmx5IHdpdGhvdXQgaW5pdGlhbGl6aW5nIHRoZSBgcGh5c2AgcG9p
bnRlciwgbGVhZGluZyB0byB1bmluaXRpYWxpemVkIHBvaW50ZXIgZGVyZWZlcmVuY2UKLSBbTWVk
aXVtXSBJbmNvbnNpc3RlbnQgZXJyb3IgY29kZSAoLUVPUE5PVFNVUFAgaW5zdGVhZCBvZiAtRU5P
U1lTKSByZXR1cm5lZCBmb3IgZGlzYWJsZWQgR2VuZXJpYyBQSFkgc3Vic3lzdGVtCi0tCgpjb21t
aXQgYjk1ZDE5NjUwYjg1YmU3ODgzNWM3NzllYmZkNDVjNzI5MDEwNDkzYQpBdXRob3I6IElub2No
aSBBbWFvdG8gPGlub2NoaWFtYUBnbWFpbC5jb20+CgpwaHk6IGNvcmU6IEFkZCBwaHkgYnVsayBk
YXRhIGhlbHBlciBmdW5jdGlvbnMKCkFkZCBzZXZlcmFsIGhlbHBlciBmdW5jdGlvbnMgdGhhdCBh
bGxvdyBkcml2ZXJzIHRvIGdldCBzZXZlcmFsIHBoeQpjb25zdW1lcnMgaW4gb25lIG9wZXJhdGlv
bi4gSWYgYW55IG9mIHRoZSBwaHkgY2Fubm90IGJlIGFjcXVpcmVkIHRoZW4KYW55IHBoeXMgdGhh
dCB3ZXJlIGdvdCB3aWxsIGJlIHB1dCBiZWZvcmUgcmV0dXJuaW5nIHRvIHRoZSBjYWxsZXIuCgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9waHktY29yZS5jIGIvZHJpdmVycy9waHkvcGh5LWNv
cmUuYwo+IC0tLSBhL2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMKPiArKysgYi9kcml2ZXJzL3BoeS9w
aHktY29yZS5jClsgLi4uIF0KPiAraW50IG9mX3BoeV9idWxrX2dldF9hbGwoc3RydWN0IGRldmlj
ZV9ub2RlICpucCwgc3RydWN0IHBoeV9idWxrX2RhdGEgKipwaHlzKQo+ICt7Cj4gKwlzdHJ1Y3Qg
cGh5X2J1bGtfZGF0YSAqcGh5X2J1bGs7Cj4gKwlpbnQgbnVtX3BoeXM7Cj4gKwlpbnQgcmV0Owo+
ICsKPiArCW51bV9waHlzID0gb2ZfcGh5X2dldF9jb3VudChucCk7Cj4gKwlpZiAobnVtX3BoeXMg
PD0gMCkKPiArCQlyZXR1cm4gbnVtX3BoeXM7CgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyBj
b2RlIHJldHVybiB3aXRob3V0IGluaXRpYWxpemluZyB0aGUgcGh5cyBwb2ludGVyPwoKSWYgYSBk
cml2ZXIgY2FsbHMgb2ZfcGh5X2J1bGtfZ2V0X2FsbCgpIHdpdGggYW4gdW5pbml0aWFsaXplZCBw
b2ludGVyCmFuZCB0aGUgZGV2aWNlIG5vZGUgc3BlY2lmaWVzIDAgcGh5cywgaXQgd2lsbCByZXR1
cm4gMCAoc3VjY2VzcykKd2l0aG91dCBpbml0aWFsaXppbmcgKnBoeXMuIElmIHRoZSBkcml2ZXIg
bGF0ZXIgY2FsbHMKb2ZfcGh5X2J1bGtfcHV0X2FsbCgpLCBpdCBjb3VsZCBwYXNzIHRoZSB1bmlu
aXRpYWxpemVkIHBvaW50ZXIgdG8Ka2ZyZWUoKS4KCj4gKwo+ICsJcGh5X2J1bGsgPSBrbWFsbG9j
X29ianMoKnBoeV9idWxrLCBudW1fcGh5cyk7Cj4gKwlpZiAoIXBoeV9idWxrKQo+ICsJCXJldHVy
biAtRU5PTUVNOwo+ICsKPiArCXJldCA9IG9mX3BoeV9idWxrX2dldF9ieV9pbmRleChucCwgbnVt
X3BoeXMsIHBoeV9idWxrKTsKPiArCWlmIChyZXQpIHsKPiArCQlrZnJlZShwaHlfYnVsayk7Cj4g
KwkJcmV0dXJuIHJldDsKCltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIGNvZGUgYWxzbyBsZWF2
ZSBwaHlzIHVuaW5pdGlhbGl6ZWQgb24gdGhpcyBlcnJvciBwYXRoPwoKRXZlbiB0aG91Z2ggY2Fs
bGVycyB0eXBpY2FsbHkgZG8gbm90IGNhbGwgcHV0IG9uIGVycm9yLCBpZiB0aGV5IGRvLAppdCB3
b3VsZCBhbHNvIGxlYWQgdG8gYW4gdW5pbml0aWFsaXplZCBwb2ludGVyIGRlcmVmZXJlbmNlLgoK
PiArCX0KWyAuLi4gXQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3BoeS9waHkuaCBiL2lu
Y2x1ZGUvbGludXgvcGh5L3BoeS5oCj4gLS0tIGEvaW5jbHVkZS9saW51eC9waHkvcGh5LmgKPiAr
KysgYi9pbmNsdWRlL2xpbnV4L3BoeS9waHkuaApbIC4uLiBdCj4gK3N0YXRpYyBpbmxpbmUgaW50
IHBoeV9idWxrX2dldChzdHJ1Y3QgZGV2aWNlICpkZXYsIHVuc2lnbmVkIGludCBudW1fcGh5cywK
PiArCQkJICAgICAgIHN0cnVjdCBwaHlfYnVsa19kYXRhICpwaHlzKQo+ICt7Cj4gKwlyZXR1cm4g
LUVPUE5PVFNVUFA7Cj4gK30KCltTZXZlcml0eTogTWVkaXVtXQpEb2VzIHRoaXMgY29kZSByZXR1
cm4gLUVPUE5PVFNVUFAgaW5zdGVhZCBvZiAtRU5PU1lTIHdoZW4gdGhlIHBoeQpzdWJzeXN0ZW0g
aXMgZGlzYWJsZWQ/CgpUaGUgZXN0YWJsaXNoZWQgY29udmVudGlvbiBpbiBpbmNsdWRlL2xpbnV4
L3BoeS9waHkuaCBpcyB0byBjb25zaXN0ZW50bHkKcmV0dXJuIC1FTk9TWVMgZm9yIGRpc2FibGVk
IHN0dWJzLiBEcml2ZXJzIGNoZWNraW5nIGZvciAtRU5PU1lTIHRvCmdyYWNlZnVsbHkgaGFuZGxl
IGEgZGlzYWJsZWQgcGh5IHN1YnN5c3RlbSBtaWdodCBmYWlsIHRvIHByb2JlIG9yIGJlaGF2ZQpp
bmNvcnJlY3RseSB3aGVuIHJlY2VpdmluZyAtRU9QTk9UU1VQUC4KClsgLi4uIF0KPiArc3RhdGlj
IGlubGluZSBpbnQgcGh5X2J1bGtfY2hlY2tfZGlzYWJsZWQodW5zaWduZWQgaW50IG51bV9waHlz
LAo+ICsJCQkJCSAgc3RydWN0IHBoeV9idWxrX2RhdGEgKnBoeXMpCj4gK3sKPiArCWlmICghcGh5
cykKPiArCQlyZXR1cm4gMDsKPiArCj4gKwlmb3IgKHVuc2lnbmVkIGludCBpID0gMDsgaSA8IG51
bV9waHlzOyBpKyspCj4gKwkJaWYgKHBoeXNbaV0ucGh5KQo+ICsJCQlyZXR1cm4gLUVPUE5PVFNV
UFA7CgpbU2V2ZXJpdHk6IE1lZGl1bV0KRG9lcyB0aGlzIGhlbHBlciBpbmNvcnJlY3RseSByZXR1
cm4gLUVPUE5PVFNVUFAsIHByb3BhZ2F0aW5nIHRoZSB3cm9uZyBlcnJvcgpjb2RlIHRvIGJ1bGsg
aW5pdGlhbGl6YXRpb24gb3BlcmF0aW9ucz8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRw
czovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MDQwODM3MDkuNDI1ODkzLTEtaW5vY2hp
YW1hQGdtYWlsLmNvbT9wYXJ0PTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
