Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A67CCD343F
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 21:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4DF2lNP4i8gcfylFYqk4tGJbZHN3UpIm6xjNYWprjvM=; b=vT489LMRD+Tym7
	lMzVp6Js+knIg13asr+xUeL9JUodTRbRfUFy5W77M5cyccnoTQuKP5Ue+wNgsm8qKMm28o69FHftG
	Eofh2uTeBbiN5iSsq1578l/sLNanHNtT9B3vieQlV3DuHlvHoK4n/gdoLxQHnfMNtdYcR0JUrsELu
	wTvftNps3wq24KxdUrF87zZBRzxxePI0YZCMq4gD2nKqOH+hW58oathK3aGDnEKni02TiZcHxLSIO
	b8JS0jFNEGrZwQwEvzgv8bTGnheBsIWiw4xZfE9ag9/K25at0HfT+GLX97fv3maCczfyHbIu5xuRV
	lTLWwrUokDRHmukPjUnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMul4-00000000V8P-3rjh;
	Tue, 12 May 2026 21:35:18 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMul2-00000000V7V-0BVK
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 21:35:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DF8304180E;
	Tue, 12 May 2026 21:35:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 852EEC2BCB0;
	Tue, 12 May 2026 21:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778621713;
	bh=rS4vUvcBhHcZdSBTGKKrkI0hpruiSHW5t3c3fslIe5A=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=BMxy/kRH9ZdHP/4/+finXG7U3zYgaWmCOeVGM3q9VQGDgjOoGu7DRxSr+MPiSXmjL
	 PwxgsFwNzM0W43Tp8z80aPkiSmQ9qWO/jJc0zjm5LGbi/3Wnoylm8J/NJqBerfsxta
	 R0U9e69L7CrcHGY8MSAR77agJTY5lVJ256QyVSoZKBjF1YFZq6jMtWCu7NqtTE+yVy
	 9VbjaGdXXiefe4PaFAUUNlrXN7A6kIh5sSbX8ireKCgM2xYeDbwoHZaeXP4QfSH9nI
	 3s849i+X43nv8RiejaAd5rQtdVNNXVDhyhoBdFSytUROatcDzeOm+eIRbIOcQXdt6+
	 c9cydgBsD6ecA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/3] phy: zynqmp: fix L0_TM_DISABLE_SCRAMBLE_ENCODER
 mask
To: "Radhey Shyam Pandey" <radhey.shyam.pandey@amd.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260511163135.2924642-2-radhey.shyam.pandey@amd.com>
References: <20260511163135.2924642-2-radhey.shyam.pandey@amd.com>
Date: Tue, 12 May 2026 21:35:13 +0000
Message-Id: <20260512213513.852EEC2BCB0@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_143516_106102_00D29260 
X-CRM114-Status: GOOD (  12.03  )
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
Reply-To: sashiko@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFVuaGFuZGxlZCBFcnJv
ciBQYXRoIGluIGB4cHNndHJfcGh5X2luaXQoKWAgbWFza3MgY2xvY2sgaW5pdGlhbGl6YXRpb24g
ZmFpbHVyZXMuCi0tCgpjb21taXQgZjM4ZjdjODQ3OTcwMzI5MGEwZjE4MTUzYjlhOTIwN2Y0MTUw
MDU2NgpBdXRob3I6IE5hdmEga2lzaG9yZSBNYW5uZSA8bmF2YS5raXNob3JlLm1hbm5lQGFtZC5j
b20+CgpwaHk6IHp5bnFtcDogZml4IEwwX1RNX0RJU0FCTEVfU0NSQU1CTEVfRU5DT0RFUiBtYXNr
CgpUaGUgTDBfVFhfRElHXzYxIHJlZ2lzdGVyIGJpdCAyIGlzIGEgcmVzZXJ2ZWQgcmVhZC1vbmx5
IGZpZWxkLgpUaGUgcHJldmlvdXMgbWFzayB2YWx1ZSAweDBmIGluY29ycmVjdGx5IGluY2x1ZGVk
IGJpdCAyLCBjYXVzaW5nCnVuaW50ZW5kZWQgd3JpdGVzIHRvIGEgcmVzZXJ2ZWQgYml0IG9uIGV2
ZXJ5IHNjcmFtYmxlciBieXBhc3MKb3BlcmF0aW9uLgoKQ29ycmVjdCB0aGUgbWFzayB0byAoQklU
KDMpIHwgR0VOTUFTSygxLCAwKSkgdG8gY292ZXIgb25seSB0aGUKdmFsaWQgc2NyYW1ibGUgYnlw
YXNzIGNvbnRyb2wgYml0cy4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3hpbGlueC9waHkt
enlucW1wLmMgYi9kcml2ZXJzL3BoeS94aWxpbngvcGh5LXp5bnFtcC5jCj4gaW5kZXggZmU2YjQ5
MjVkMTY2Mi4uYzAzN2Q3YzEzZDQ4NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS94aWxpbngv
cGh5LXp5bnFtcC5jCj4gKysrIGIvZHJpdmVycy9waHkveGlsaW54L3BoeS16eW5xbXAuYwo+IEBA
IC01Myw3ICs1Myw3IEBACj4gICNkZWZpbmUgTDBfVE1fRElHXzYJCQkweDEwNmMKPiAgI2RlZmlu
ZSBMMF9UTV9ESVNfREVTQ1JBTUJMRV9ERUNPREVSCTB4MGYKPiAgI2RlZmluZSBMMF9UWF9ESUdf
NjEJCQkweDAwZjQKPiAtI2RlZmluZSBMMF9UTV9ESVNBQkxFX1NDUkFNQkxFX0VOQ09ERVIJMHgw
Zgo+ICsjZGVmaW5lIEwwX1RNX0RJU0FCTEVfU0NSQU1CTEVfRU5DT0RFUgkoQklUKDMpIHwgR0VO
TUFTSygxLCAwKSkKPiAgCj4gIC8qIFBMTCBUZXN0IE1vZGUgcmVnaXN0ZXIgcGFyYW1ldGVycyAq
Lwo+ICAjZGVmaW5lIEwwX1RNX1BMTF9ESUdfMzcJCTB4MjA5NAoKVGhpcyBpc24ndCBhIGJ1ZyBp
bnRyb2R1Y2VkIGJ5IHRoaXMgcGF0Y2gsIGJ1dCB0aGVyZSBpcyBhIHByZS1leGlzdGluZwppc3N1
ZSBpbiB4cHNndHJfcGh5X2luaXQoKS4KCklmIGNsa19wcmVwYXJlX2VuYWJsZSgpIGZhaWxzLCB0
aGUgZXJyb3IgcGF0aCBhcHBlYXJzIHRvIG1hc2sgdGhlIGZhaWx1cmU6Cgpkcml2ZXJzL3BoeS94
aWxpbngvcGh5LXp5bnFtcC5jOnhwc2d0cl9waHlfaW5pdCgpIHsKCWludCByZXQgPSAwOwoKCW11
dGV4X2xvY2soJmd0cl9kZXYtPmd0cl9tdXRleCk7CgoJLyogQ29uZmlndXJlIGFuZCBlbmFibGUg
dGhlIGNsb2NrIHdoZW4gcGVyaXBoZXJhbCBwaHlfaW5pdCBjYWxsICovCglpZiAoY2xrX3ByZXBh
cmVfZW5hYmxlKGd0cl9kZXYtPmNsa1tndHJfcGh5LT5yZWZjbGtdKSkKCQlnb3RvIG91dDsKLi4u
Cm91dDoKCW11dGV4X3VubG9jaygmZ3RyX2Rldi0+Z3RyX211dGV4KTsKCXJldHVybiByZXQ7Cn0K
ClNpbmNlIHJldCBpcyBpbml0aWFsaXplZCB0byAwLCB3aWxsIHRoaXMgcmV0dXJuIDAgaW5zdGVh
ZCBvZiB0aGUgYWN0dWFsIGVycm9yCmNvZGUgZnJvbSBjbGtfcHJlcGFyZV9lbmFibGUoKT8KCklm
IHRoZSBmdW5jdGlvbiBmYWxzZWx5IHJlcG9ydHMgc3VjY2VzcywgdGhlIFBIWSBmcmFtZXdvcmsg
d2lsbCBjb25zaWRlciB0aGUKZGV2aWNlIGluaXRpYWxpemVkLgoKRHVyaW5nIHRlYXJkb3duLCBj
b3VsZCB4cHNndHJfcGh5X2V4aXQoKSB1bmNvbmRpdGlvbmFsbHkgY2FsbApjbGtfZGlzYWJsZV91
bnByZXBhcmUoKSBvbiBhIGNsb2NrIHRoYXQgd2FzIG5ldmVyIGVuYWJsZWQsIGNhdXNpbmcgYSBj
bG9jawpyZWZlcmVuY2UgY291bnQgdW5kZXJmbG93IGFuZCBhIGtlcm5lbCBXQVJOX09OPwoKRnVy
dGhlcm1vcmUsIHdvdWxkIGFsbG93aW5nIHRoZSB1cHBlciBsYXllciB0byBhY2Nlc3MgUEhZIHJl
Z2lzdGVycyB3aXRob3V0IGEKcnVubmluZyBjbG9jayByaXNrIGhhbmdpbmcgdGhlIEFYSSBidXMg
b24gWnlucU1QLCBwb3RlbnRpYWxseSBsZWFkaW5nIHRvIGFuCmFzeW5jaHJvbm91cyBleHRlcm5h
bCBhYm9ydCAoc3lzdGVtIHBhbmljKT8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczov
L3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA1MTExNjMxMzUuMjkyNDY0Mi0xLXJhZGhleS5z
aHlhbS5wYW5kZXlAYW1kLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
