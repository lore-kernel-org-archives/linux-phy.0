Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18327C98328
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 07:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkpKm1XtqAWFeLdhUurf22W+wj8fzaFyKTjqsD+v9ms=; b=QsD6YC0D11N8gz
	SHmmMvKL1noBaBaSn94F+MhpvUk5++FDGYvweTLZYMoWwHQDzqTTV8bGKA5THgS8LcJ2tCSLPEzOe
	jdvX+194PyNzzHtP04Ad+pnRlR4ERHGsvz6G4pgjxb7/g+maxO3IC+PwkfHYpzs0h9BcrbLFJ+Jwm
	NZ3oGHiseJrsrCa3ltyCk3hK8isfPlSwLBD2fMESqCJmSs8AVP21izuDW1NMvTWoL8ADiWHcPdS4l
	0vsQNuIAHOuS1aP5jgam2y7rZ3l2ENEiJqVjLO9XnNml7uAnvIvqWjHSncfyRh21i/K+nRKoxfnY0
	KItduGpD8PWB2YHpvAJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xANGV-0000000F8Sf-3IIx;
	Sat, 26 Sep 2026 07:56:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xANGT-0000000F8S3-3uxk;
	Sat, 26 Sep 2026 07:56:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B5476601E4;
	Sat, 26 Sep 2026 07:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 987901F000FF;
	Sat, 26 Sep 2026 07:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790409368;
	bh=W5Ve5aCU1EyBV0r6rgDy9orC+fjCn3d6sZyhy9CDc68=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=EhiaLJ3nFsoq3nc2vNaeQvVblpK3bFt6jiLyUMEyrNrbuCG741Ku24JsSmxLU5QTa
	 iFz+lnTKL+GPxm7OJkO5ZgxPsca1k5YYRfZIrFLvXM3guAH+yGxkrv0hjONQmGsO2e
	 9qhE7R/0eL2W1wvmDc7nMN26vLShPTrRhqwbDx4Te9+PUfkmQqATQFnqfeDgziNv0v
	 j+dCmgpN+hpGwDAH9z9D3C+7tXjROEHlfv8wgGJLTsc8KuK9VbvE9Jw0NnwURoCnVR
	 u9nyBA+4fLG/f6kIujQavFbhsdR0BI3MxWaAA52TmnEqvFr1f4o7WIPQ6ZZ23g3fjb
	 ws87FBothKG0A==
Date: Sat, 26 Sep 2026 09:55:50 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Zhang Yubing <yubing.zhang@rock-chips.com>, Frank Wang <frank.wang@rock-chips.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v15 2/6] phy: rockchip: usbdp: Drop -EPROBE_DEFER hack
Message-ID: <5ajj34ec2wuvlxw3o5zpfbgzea5wzeq44xqhdxcu3aln2zdn2e@extxpxbzoqgz>
References: <20260915-b4-rockchip-usbdp-cleanup-part3-v15-0-9ad90a456953@collabora.com>
 <20260915-b4-rockchip-usbdp-cleanup-part3-v15-2-9ad90a456953@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-b4-rockchip-usbdp-cleanup-part3-v15-2-9ad90a456953@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDU6MzI6NDlQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gVGhlIGhhY2sgdG8gcmV0dXJuIC1FUFJPQkVfREVGRVIgd2hlbiB0aGUgbGNw
bGwgbG9jayB0aW1lb3V0cyBpcyBubwo+IGxvbmdlciBuZWVkZWQuIFRoZSBkcml2ZXIgbm93IGRv
ZXMgYSByZXNldCBkdXJpbmcgaXRzIFBIWSBpbml0LCB3aGljaAo+IGF2b2lkcyB0aGUgcHJvYmxl
bS4KPiAKPiBTaW5jZSBya191ZHBoeV9zdGF0dXNfY2hlY2soKSBpcyBjYWxsZWQgYWZ0ZXIgdGhl
IHByb2JlLCBpdCBzaG91bGQgbm90Cj4gcmV0dXJuIC1FUFJPQkVfREVGRVIuCj4gCj4gVGVzdGVk
LWJ5OiBJZ29yIFBhdW5vdmljIDxyb3lhbG5ldDAyNkBnbWFpbC5jb20+ICMgT3JhbmdlIFBpIDUg
UGx1cwo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hl
bEBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFu
aXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPg
rr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
