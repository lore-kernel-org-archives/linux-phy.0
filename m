Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8CC6CA0FFF
	for <linux-phy@archiver.kernel.org>; Thu, 28 Aug 2025 17:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t84i/I6Z3W7F/1rnIBVBBX2ee4aLPPnJU8K4y8BUgKg=; b=gXP/DIlhQHfACy
	aPkOLTEAt484iXzsZITrIT3rUN2QjVJE2fPoMKxqSPzBbKo/3MFCaIAJzpkOTSX3gJeslHvW7Ovf1
	reDJdZtm6jYd8gZaAA+DsKOQQhWhg4v2fwB5ZSbe6Kn1K0ktf41oJEs97Zx5yVk6ti6n/KN0+Smkf
	tS73QTjmc0VwY1KMcZf0bt65SC06LNK2lkr4MVWc9NzDfumC5cH8rKBkrl1u2fx5rsYaDpUMLgiXK
	jqR8ehUUcSEo5gmI2SSmvDxejk1ZcwbLta+z5NHvpva5X5dCbzz+tqoihCn8HfXsD1rUx4PIJ+rvt
	gGG7F0H4wyVSFV/oiO5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urgO1-00000002SvI-1rni;
	Thu, 28 Aug 2025 17:26:09 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urcJe-00000001fXu-079v
	for linux-phy@lists.infradead.org;
	Thu, 28 Aug 2025 13:05:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6C0EA45037;
	Thu, 28 Aug 2025 13:05:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E62EDC4CEEB;
	Thu, 28 Aug 2025 13:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756386321;
	bh=BedeSX6voxwyyiBkw/RxXqgNPm+x0uuYoTCufQq9ggg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=igaE5j1l6RWotK5a9EajP17I9IsRNbqwKA9XvkfQgq0q/PavboD+UJFrIgrb1Gv0Q
	 As4EmCqHCKhV6hQG85S+HGA/lnfO6Y4R6EZ5NiGhJtzSF41G1eqGCLNBmGA9/5kiAl
	 wi1vYQooMJRxl0PQRYMjzvXwR69om/x92gYCGRM29rOJkHBGxGpzOZhi3hDzMDsBWg
	 BATQZqKITtTHOMBY6AZiHcCdPTp2P0E1nF0nUWLXxGxKQz0Cq8vdfsFadZi3vKQapx
	 mNbvtDPfNa1eJZNJufw6mzevxPcAyO1N5Qp7bJGgUxyX3W8Gh7xRnGbmSzLoAMH9Z6
	 3jThBmSmixN5g==
Date: Thu, 28 Aug 2025 15:05:15 +0200
From: Niklas Cassel <cassel@kernel.org>
To: luyulin@eswincomputing.com
Cc: Rob Herring <robh@kernel.org>, dlemoal@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-ide@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	vkoul@kernel.org, kishon@kernel.org, linux-phy@lists.infradead.org,
	ningyu@eswincomputing.com, zhengyu@eswincomputing.com,
	linmin@eswincomputing.com, huangyifeng@eswincomputing.com,
	fenglin@eswincomputing.com, lianghujun@eswincomputing.com
Subject: Re: Re: [PATCH v2 1/3] dt-bindings: ata: eswin: Document for EIC7700
 SoC ahci
Message-ID: <aLBUC116MdJqDGIJ@flawful.org>
References: <20250819134722.220-1-luyulin@eswincomputing.com>
 <20250819135413.386-1-luyulin@eswincomputing.com>
 <CAL_JsqKFotNLZZXwiy7S6K8qXLdGRAnsa-1zvZRDQBE39Gf5kg@mail.gmail.com>
 <692e11ca.843.198f0337528.Coremail.luyulin@eswincomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <692e11ca.843.198f0337528.Coremail.luyulin@eswincomputing.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_060522_110102_65FB5E2C 
X-CRM114-Status: GOOD (  13.69  )
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

On Thu, Aug 28, 2025 at 06:22:40PM +0800, luyulin@eswincomputing.com wrote:
> 
> Do you mean that ports-implemented should be removed from the dts,
> and the corresponding register should be configured by the firmware
> (which is U-Boot on the HiFive Premier P550 board)? Is this understanding correct?
> If so, when the driver is removed, a reset will be triggered,
> causing the configuration of this register to be lost,
> which will result in an error when insmod the driver again.

My 50 cents,

if the ports implemented register gets reset from the reset_control_reset()
in ahci_platform_assert_rsts(), then it seems like having ports-implemented
in device tree is acceptable.

There are a bunch of device trees that have this already:
arch/arm/boot/dts/qcom/qcom-apq8064.dtsi:                       ports-implemented = <0x1>;
arch/arm/boot/dts/qcom/qcom-ipq8064-v1.0.dtsi:                  ports-implemented = <0x1>;
arch/arm/boot/dts/qcom/qcom-ipq8064-v2.0.dtsi:  ports-implemented = <0x1>;
arch/arm/boot/dts/samsung/exynos5250.dtsi:                      ports-implemented = <0x1>;
arch/arm/boot/dts/socionext/uniphier-pro4.dtsi:                 ports-implemented = <1>;
arch/arm/boot/dts/socionext/uniphier-pro4.dtsi:                 ports-implemented = <1>;
arch/arm/boot/dts/socionext/uniphier-pxs2.dtsi:                 ports-implemented = <1>;
arch/arm/boot/dts/st/stih407-family.dtsi:                       ports-implemented = <0x1>;
arch/arm/boot/dts/st/stih407-family.dtsi:                       ports-implemented = <0x1>;
arch/arm/boot/dts/ti/omap/dra7-l4.dtsi:                         ports-implemented = <0x1>;
arch/arm/boot/dts/ti/omap/omap5-l4.dtsi:                                ports-implemented = <0x1>;
arch/arm64/boot/dts/mediatek/mt7622.dtsi:               ports-implemented = <0x1>;
arch/arm64/boot/dts/rockchip/rk3568.dtsi:               ports-implemented = <0x1>;
arch/arm64/boot/dts/rockchip/rk356x-base.dtsi:          ports-implemented = <0x1>;
arch/arm64/boot/dts/rockchip/rk356x-base.dtsi:          ports-implemented = <0x1>;
arch/arm64/boot/dts/rockchip/rk3576.dtsi:                       ports-implemented = <0x1>;
arch/arm64/boot/dts/rockchip/rk3576.dtsi:                       ports-implemented = <0x1>;
arch/arm64/boot/dts/rockchip/rk3588-base.dtsi:          ports-implemented = <0x1>;
arch/arm64/boot/dts/rockchip/rk3588-base.dtsi:          ports-implemented = <0x1>;
arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi:         ports-implemented = <0x1>;
arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi:                       ports-implemented = <1>;
arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi:                       ports-implemented = <1>;


Sure, if the ports implemented register was sticky (kept its value after a
reset), then I think Rob's suggestion would make sense.



Kind regards,
Niklas

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
