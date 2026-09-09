Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39E70C79FAA
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 08:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wOPvrZeLc2it90mvxMM4Wy7kxcM+Sj0BaQAo49I8FqM=; b=eBE3byAMDA11di
	gOJV8/5CmPYdQ2E9PVvq5Ofe0fWIf7FyJ+qtOQ+0/FrR9ptOZxZKx6y+bVOrCqX7mWf53n+62P9ck
	aUIIIhryEEp+Hqh9E+LtptJpaB8ZJbP7143wRHY1C9qLTi47olsx2b5jFWpXDvNqXDR0xaAtB5NuW
	6fYC5WoHTfuspF+RBDvUrbPlcqTUCjKaKCQQ9D0xhVD9bH+goBHhJbFCTx1G6fZWow4sfLxrwx2L6
	OUzF2d0Hp6ic5pX/IsxHjcCptXCIWYu1EdZlFI8IdgBZ9JbmBRFJvxh6TKkoFKZq5Deva5kO3iiY6
	Pa5aYpca5wjiX26EENLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4DKT-0000000B3hY-3Lss;
	Wed, 09 Sep 2026 08:06:49 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4DKS-0000000B3gn-3elV;
	Wed, 09 Sep 2026 08:06:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4C592416FC;
	Wed,  9 Sep 2026 08:06:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C13751F00A3A;
	Wed,  9 Sep 2026 08:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788941208;
	bh=Sm+VRBme+F4AuNb+2Kn1vUGzPGQfC4nUbsqtHhdSZ/E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=aQtPW4G32f4EnPI9Vax3cgfcFE+MuZgnZC4DiQ4fx16mqMnDsJUFzr0acgxVCZ9Tg
	 kDYW/dh5hFmWpcwX49VXFahtF/7ob+nthDqJM2KzhswsVSROq2cJ9gJqhEySyobGgu
	 nEJNz+vrr0su31LpGOPw+jfrGj2m0jp+fVYbEteNWZpDxSYsU+XrskFhslBZ2G4TjL
	 TyChczVlZXeVT4V+kW+H/ZoC5NNjc+G5MyWwJnJXikluq6S03k59k/eZbh9VYfLK1x
	 wLt0aZ2cUsaKrM1YgH6uDyJse13E7ROAdyhc7G656AspLEJoojTEcp1fS/jewgOU1b
	 sLHfLq2ijPjdA==
Date: Wed, 9 Sep 2026 10:06:39 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Pengpeng Hou <pengpeng@iscas.ac.cn>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Pritam Manohar Sutar <pritam.sutar@samsung.com>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Johan Hovold <johan@kernel.org>, 
	=?utf-8?B?QW5kcsOp?= Draszik <andre.draszik@linaro.org>, Peter Griffin <peter.griffin@linaro.org>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: samsung: usbdrd: propagate GS101 PIPE3 lock failures
Message-ID: <nfz2nsasfgf5ob4zqrs7aywwct2lbcnri4ltel42iebwu27piw@zyb3u3rhaph2>
References: <20260623135349.42739-1-pengpeng@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260623135349.42739-1-pengpeng@iscas.ac.cn>
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

T24gVHVlLCBKdW4gMjMsIDIwMjYgYXQgMDk6NTM6NDlQTSArMDgwMCwgUGVuZ3BlbmcgSG91IHdy
b3RlOgo+IFRoZSBHUzEwMSBQSVBFMyBpbml0aWFsaXphdGlvbiBjaGVja3MgdGhlIFBNQSBQTEwg
bG9jayBhbmQgdGhlbiBjaGVja3MKPiB0aGUgQ0RSIGxvY2suIFRoZSBQTEwgaGVscGVyIHJldHVy
bnMgYW4gZXJyb3IsIGJ1dCB0aGUgR1MxMDEgUElQRTMgaW5pdAo+IHBhdGggZHJvcHBlZCB0aGF0
IHJlc3VsdC4gVGhlIENEUiBoZWxwZXIgb25seSBsb2dnZWQgYSB0aW1lb3V0LiBQSFkKPiBpbml0
aWFsaXphdGlvbiBjb3VsZCB0aGVyZWZvcmUgc3RpbGwgcmV0dXJuIHN1Y2Nlc3MgYWZ0ZXIgZWl0
aGVyIHRoZSBQTEwKPiBvciB0aGUgc2VsZWN0ZWQgcmVjZWl2ZSBsYW5lIGhhZCBub3QgbG9ja2Vk
Lgo+IAo+IE1ha2UgdGhlIGluLWZpbGUgU29DLXNwZWNpZmljIHBoeV9pbml0IGhvb2sgcmV0dXJu
IGFuIGludCBzbyBoZWxwZXJzCj4gd2l0aCByZWFsIGZhaWx1cmUgcmVzdWx0cyBjYW4gcHJvcGFn
YXRlIHRoZW0gdGhyb3VnaCB0aGUgZXhpc3RpbmcgUEhZCj4gaW5pdCBwYXRocy4gS2VlcCB0aGUg
cmVnaXN0ZXItb25seSBoZWxwZXJzIHJldHVybmluZyBzdWNjZXNzIGFuZCB1c2UgdGhlCj4gbmV3
IHJldHVybiBwYXRoIHRvIHJlcG9ydCB0aGUgR1MxMDEgQ0RSIHdhaXQgZmFpbHVyZS4gT3RoZXIg
U29DIGhlbHBlcgo+IHBhdGhzIGtlZXAgdGhlaXIgcHJldmlvdXMgc3VjY2VzcyBiZWhhdmlvci4K
PiAKPiBGaXhlczogMzIyNjdjMjliYzdkICgicGh5OiBleHlub3M1LXVzYmRyZDogc3VwcG9ydCBF
eHlub3MgVVNCRFJEIDMuMSBjb21ibyBwaHkgKEhTICYgU1MpIikKPiBTaWduZWQtb2ZmLWJ5OiBQ
ZW5ncGVuZyBIb3UgPHBlbmdwZW5nQGlzY2FzLmFjLmNuPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5u
YW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+Cgot
IE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K61
4K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
