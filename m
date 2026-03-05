Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 332D7F30955
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 12:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MB1fW81fBTvj8E+19hvqr97noi05GGVcPDipg5uDPgw=; b=gcAD9wAt+D73UZ
	Me1vTWovvP2eUvTL4bODgXjWPSNUzBEWFEsHkj8XRW/gDrDU5ZeKlwWDpxt/hwUQphgdkZguD8oBQ
	cXcEOznIj5O0I7C5J8L2hVo8f7nhjG302kQiaoC7bMaUqzAetK37OeV8IpETb+b9z3+PbB+qcEdOu
	xSoClxGH9k0yzCMYdmCd1weaP9gHZsRtQMhm2r5jWROorUOvU8TqfJTiiKCp9+9Yzn9vowS3ng1Tt
	EZeax7WnBkIHQzb5h76vtACW6cWDoxsKtS+0hAJa5b2CWKs3BqbLNGOFO4YOh6RLF8CFOqdZOyULe
	WYtY0ze78DIbcb2hB0Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy83W-00000001nWM-3O3j;
	Thu, 05 Mar 2026 12:43:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy83U-00000001nVC-3REs
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 12:43:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AD6E442ABD
	for <linux-phy@lists.infradead.org>; Thu,  5 Mar 2026 12:43:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E2BDC2BCC7
	for <linux-phy@lists.infradead.org>; Thu,  5 Mar 2026 12:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772714631;
	bh=+1Soi4u0zOToM+4cvb9M54dFFqUFlTLNETgvWAKHxCU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Qb0jG97edmb3U2qfJOZ8W4namHJQLjHdyLa/yO8Shzxok1cow1oGiOPDZPwW1C2aX
	 qfpAXVF5aCFXZLxPSzvgKeKSxO9o5XsLWHV8Z2J8C79wGhUQOpuNdTpOU9Dzdkkz3p
	 TWGjcAKnefLsljHAnEj5fjLLXkP0UfERnPvGWuc0ZQekEOQjNXH5K1HWRbh9ma16qv
	 6TkLXMUEkXlMirlttkcaQYFOEfMZ+oBljrNq1F3YIMePzlnhhwMurIVZGke7gCj1z9
	 cdj00Q5OZUBdizfbKPYLlLKP8RyJI5QMF03gjMx1z3TalYyUwSwiQn9mCL6ZfAo7SC
	 0i9QiFLq3vXMw==
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-793fdbb8d3aso98541697b3.3
        for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 04:43:51 -0800 (PST)
X-Gm-Message-State: AOJu0Yw30oKmpoNVofsRM4+cXgaxTY3WyF1OHWw8/g0oJmDjFWyA1j6I
	+z5CQP7RFOdz4i8ZzF7ARK8viSmnKxOua4usRkRP53ylvLpxz1HeDcQfjwp7FBYWksHOHedXJLZ
	j7/cuX6Q44yZta/VbotilvekfMUAv0iU=
X-Received: by 2002:a05:690e:448d:b0:64c:ac70:9420 with SMTP id
 956f58d0204a3-64cf9bdb391mr3524893d50.76.1772714630723; Thu, 05 Mar 2026
 04:43:50 -0800 (PST)
MIME-Version: 1.0
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com> <20260304175735.2660419-19-vladimir.oltean@nxp.com>
In-Reply-To: <20260304175735.2660419-19-vladimir.oltean@nxp.com>
From: Linus Walleij <linusw@kernel.org>
Date: Thu, 5 Mar 2026 13:43:38 +0100
X-Gmail-Original-Message-ID: <CAD++jLnCtu20rXcg7sMVLBi24EohscJoz0kN46XJaKPJt00O2w@mail.gmail.com>
X-Gm-Features: AaiRm53Fhg5bHrVPoZ7KkxLKre-rHWPjFXtzmvz74i7G3hPs_-fZQdYeAKMF5Bw
Message-ID: <CAD++jLnCtu20rXcg7sMVLBi24EohscJoz0kN46XJaKPJt00O2w@mail.gmail.com>
Subject: Re: [PATCH phy-next 18/22] pinctrl: tegra-xusb: include PHY provider header
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-can@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-ide@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org, 
	netdev@vger.kernel.org, spacemit@lists.linux.dev, 
	UNGLinuxDriver@microchip.com, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_044352_885680_4C02168F 
X-CRM114-Status: GOOD (  11.86  )
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

T24gV2VkLCBNYXIgNCwgMjAyNiBhdCA3OjAw4oCvUE0gVmxhZGltaXIgT2x0ZWFuIDx2bGFkaW1p
ci5vbHRlYW5AbnhwLmNvbT4gd3JvdGU6Cgo+IFRoZSB0ZWdyYS14dXNiIHBpbmN0cmwgZHJpdmVy
IGlzIGFsc28gYSBQSFkgcHJvdmlkZXIgKGNhbGxzCj4gZGV2bV9waHlfY3JlYXRlKCkgZm9yIFBD
SWUgYW5kIFNBVEEpLiBIb3dldmVyLCBhY2NvcmRpbmcgdG8gVmlub2QgS291bCwKPiBoYXZpbmcg
UEhZIHByb3ZpZGVyIGRyaXZlcnMgb3V0c2lkZSBvZiBkcml2ZXJzL3BoeS8gaXMgZGlzY291cmFn
ZWQsCj4gYWx0aG91Z2ggaXQgd291bGQgYmUgZGlmZmljdWx0IGZvciBtZSB0byBhZGRyZXNzIGEg
cHJvcGVyIG1vdmVtZW50IGhlcmUuCj4KPiBJbmNsdWRlIHRoZSBwcml2YXRlIHByb3ZpZGVyIEFQ
SSBoZWFkZXIgZnJvbSBkcml2ZXJzL3BoeS8sIGJ1dCBsZWF2ZSBhCj4gRklYTUUgaW4gcGxhY2Uu
IEl0IHdpbGwgaGF2ZSB0byBiZSBtb3ZlZCwgZXZlbnR1YWxseS4KPgo+IFNpZ25lZC1vZmYtYnk6
IFZsYWRpbWlyIE9sdGVhbiA8dmxhZGltaXIub2x0ZWFuQG54cC5jb20+CgpGYWlyIGVub3VnaCwg
aXMgdGhpcyBhIHJlZ3Jlc3Npb24gc28gSSBzaG91bGQgbWVyZ2UgaXQgZm9yIGZpeGVzCm9yIGp1
c3QgYSBub251cmdlbnQgZml4IHRoYXQgSSBjYW4gYXBwbHkgZm9yIG5leHQ/CgpMb25nIHRlcm0g
YSBjdXN0b20gZGV2aWNlIGNhbiBiZSBjcmVhdGVkIGZyb20gdGhlIHBpbgpjb250cm9sIGRyaXZl
ciBzbyB0aGF0IHRoZSBMaW51eCBkZXZpY2UgbW9kZWwgY2FuIGJlCnVzZWQgdG8gbW92ZSB0aGUg
ZHJpdmVyIG92ZXIgdG8gcGh5LgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
