Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E61DDC79FAA
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 08:09:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wOPvrZeLc2it90mvxMM4Wy7kxcM+Sj0BaQAo49I8FqM=; b=V9tFIvCLtyZhVk
	jXpd+SfIhPAm1DRSddEhUHbgRMSo1ODMdok61VeUSHAJB+RDoIYA6ru/E7HfwY7gYGYltLwBB/VXl
	sGaHG3eEPs0hnXoeAbycGy/PouV/VysZol1BFIeAP6PeU05dS5N5T7DFrmodhcn/SiIZJ9TtbJpwA
	Y7WNByjiirMvO8gOt+OYOUhDojWuburY0sJI+OxBLWqbaxBTor+iYXqK+FKxXCCw1T90Rn+pHbIUl
	Q6cDp/mmlG+x+Xu6r1tbNg7IRWgcZExG2+xj/TgSM0M2p6nardARSxRmt+CSqiuwtnL16JDTs5hVI
	8ioHjzIbf4UyhVELWv1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4DNA-0000000B4Dz-2L1n;
	Wed, 09 Sep 2026 08:09:36 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4DN9-0000000B4DK-0ykG;
	Wed, 09 Sep 2026 08:09:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7AD9D601FD;
	Wed,  9 Sep 2026 08:09:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 950721F00A3A;
	Wed,  9 Sep 2026 08:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788941374;
	bh=Sm+VRBme+F4AuNb+2Kn1vUGzPGQfC4nUbsqtHhdSZ/E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=QhsnwWMJCrZct8Q2pdFFjenhpYM7e6e9TH976YqW3/MOEg74s0ZVEsG5yHxNY5Uqr
	 fgnU3An42MDdrqfIpp20LvljYyzaX92a81GuHhY32pMCR9j+2Cc3/EZwWElpXDBZXC
	 LHW7//sFoGziJMYR/tfrnRZHtYczuOG+c4qAHVD/aWdaFlHf50DaVTKdth3dNYHZsH
	 1nRlagNSRHCxRGK3pja+9McUw4n+p3NccxfYHcVoUmOciAw9zvi70ohaVZ849jn5XB
	 muM/kMDc7d9B7nFYzHZa9Mx/fPoDr3DgBqoyn5cY5rtCJBpW2afGhiScstwAht4yzN
	 n+dI15ddVTlrA==
Date: Wed, 9 Sep 2026 10:09:25 +0200
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
Message-ID: <jgkyhjlex746xmqgr6vwxihfkzjmtvhsvrzk5ovud7zrc2bqo5@xwdlrrmdrkx6>
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
