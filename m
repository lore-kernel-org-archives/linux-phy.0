Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8936BC4345F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Apr 2024 14:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cQXJglqixMnXw4915KMraBANK3gHPM05894piXCFUt0=; b=js1G4QmiPVwMfL
	Kx6wv2cr/kipqIDZB4hF5xQgiXjqyA08iiIh8zAwuTqgfDQPrChxVZF+5dkLN3738o9DcZOgbuG7X
	NwYiuL516+0I3iqqCFTZT34Hztf4rS0fw4yjOZd35KizPHMC57Cv8rCt82hsrkT2FixL5IO2INE+w
	We2apBeDNuPrbyb58ahk3Vjmw/AKKeJJ/HoMZHMfK6k5Bgm7fYnfRnr9qJ2aZ9gagAE3jl5cNqA5h
	AdbhmDLqPnn7V4QjsJTrMBMerHk0FY4lldXgImJZYRVGHDku/K327cLPr6U5u8IN+IsrcxisVdf5h
	v/88ppxdpvg9fi8aEyYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvIB2-000000004VI-0n6I;
	Fri, 12 Apr 2024 14:46:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvIAz-000000004SN-2PIv;
	Fri, 12 Apr 2024 14:46:50 +0000
Received: from i5e8616c3.versanet.de ([94.134.22.195] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rvIAu-00025n-Vl; Fri, 12 Apr 2024 16:46:45 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-phy@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Frank Wang <frank.wang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Kever Yang <kever.yang@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: (subset) [PATCH v5 00/10] RK3588 USBDP support
Date: Fri, 12 Apr 2024 16:46:43 +0200
Message-Id: <171293314494.1912962.2483494926339362221.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240408225109.128953-1-sebastian.reichel@collabora.com>
References: <20240408225109.128953-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_074649_635996_CDB3C3D1 
X-CRM114-Status: GOOD (  12.89  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, 9 Apr 2024 00:50:27 +0200, Sebastian Reichel wrote:
> This adds Rockchip RK3588 USBDP PHY support, which is used for two of the three
> USB3 controllers in the RK3588 (the third one uses a different PHY, which is
> already supported). The USBDP PHY offers USB3 dual-role and DisplayPort. The
> driver and bindings being upstreamed contains the DP parts, but only USB3 has
> been tested by me (upstream does not yet have a DRM DP bridge driver for this
> platform).
> 
> [...]

Applied, thanks!

[03/10] arm64: defconfig: enable Rockchip Samsung USBDP PHY
        commit: 7cdf7efefc02189cf9a228d4c5c4253d273e9b1a
[04/10] arm64: dts: rockchip: fix usb2phy nodename for rk3588
        commit: 4e07a95f7402de092cd71b2cb96c69f85c98f251
[05/10] arm64: dts: rockchip: reorder usb2phy properties for rk3588
        commit: abe68e0ca71dddce0e5419e35507cb464d61870d
[06/10] arm64: dts: rockchip: add USBDP phys on rk3588
        commit: e18e5e8188f2671abf63abe7db5f21555705130f
[07/10] arm64: dts: rockchip: add USB3 DRD controllers on rk3588
        commit: 33f393a2a990e16f56931ca708295f31d2b44415
[08/10] arm64: dts: rockchip: add USB3 to rk3588-evb1
        commit: b37146b5a555dd871cb0805446826ab2fc8d285a
[09/10] arm64: dts: rockchip: add upper USB3 port to rock-5a
        commit: af7ec140ddc1815bc462109792d95bcad05cfbc4
[10/10] arm64: dts: rockchip: add lower USB3 port to rock-5b
        commit: 494532921aacb496529d544fedfdb3a7b43dfef0

I've rearranged some things in the evb1 patch:
- vbus* before vcc*
- some newlines between properties and subnodes around
  the endpoints

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
