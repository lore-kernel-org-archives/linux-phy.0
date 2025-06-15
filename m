Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80402C61CE8
	for <linux-phy@archiver.kernel.org>; Sun, 15 Jun 2025 16:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5hemobecy9vgYqzI2n/ynIo1Vl6jVj8xEsjtFLtc8Xo=; b=C9seUGXkNAQmn1
	Zanp+Zg7nIa2v0khBZyzatUupsgLPGmy4490dVb3u4jDRrVey2TOKmi0Fz3euGvXKN1/nSZUsiKF7
	COttQaVJijXlbwPc5JpVdtr5l/8TJTKR/jL8fJCBBCTVIFz+ffpA0kftUiR3WV5r55KZIhydXYtup
	ZWv2Y24sAA1FdGqPrUYHntd/eT1kClGv93TFRH8i2GPUT0/o3SWFgcooLqcBoWR6n/pJA71/4q5jw
	NQcVqpLPF9GhehmeyVRrmyfNuwkImC9HvM/lM16Cn2FOcokRBwcQMUpHhFmLrOfSLwRBMv3WTPJPH
	Iq7PLeWxBqW1fVvG9c2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQqfA-00000002gRT-14Pu;
	Sun, 15 Jun 2025 16:56:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQqar-00000002fqT-4Aa8;
	Sun, 15 Jun 2025 16:52:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1C02A5C43FA;
	Sun, 15 Jun 2025 16:50:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4FE8AC4CEE3;
	Sun, 15 Jun 2025 16:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750006348;
	bh=6dx0ILj5WkvRoRHu2oDu87MNsa+P9Y+3Mn7PSQB54sA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=JeFgtW+vDFB/ZZFYAx5DvgBl0GSqCk9ehFkrQJEAB6KuzIgSLU+DNZqS2/e9czBhY
	 +vrcx7thVoW21LkNAJrZQEq+4tpquq3xyoDpKgq0s0Evw+Wulby2o30A6l3mNaexQF
	 OWNDSruG5I+fATP13e/N2MZKUVoyrqhCSWT6vGoDRSjROsLgdfqhsz12crajlbbLmO
	 2GNESTgQYW8IT1pWyq6b9xNAd32LA39Kxea6Bjc04UedolPI8hMgYZZhO0Zeyn69dO
	 GqKHoTQ3l4syKRJtc4zl7w164eLT9JLQ3G05JLqZSlO/RGx6PjHE+zje/vmdS+TYD+
	 FJB52x1SS381g==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Igor Belwon <igor.belwon@mentallysanemainliners.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250515-usb-resends-may-15-v3-0-ad33a85b6cee@mentallysanemainliners.org>
References: <20250515-usb-resends-may-15-v3-0-ad33a85b6cee@mentallysanemainliners.org>
Subject: Re: [PATCH v3 0/2] USB PHY support for Exynos990 SoCs
Message-Id: <175000634396.1180927.14227423710203816797.b4-ty@kernel.org>
Date: Sun, 15 Jun 2025 22:22:23 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250615_095230_075220_CB202591 
X-CRM114-Status: GOOD (  10.77  )
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


On Thu, 15 May 2025 16:43:00 +0200, Igor Belwon wrote:
> This patchset adds support for the USB 2.0 PHY of the Exynos990 SoC.
> This SoC has a combo PHY that supports highspeed, superspeed USB and
> DisplayPort, however due to my inability to test the superspeed part of
> the combo phy (device always enumerated as high-speed, even on the
> vendor kernels/bootloaders) only the highspeed part is brought up.
> 
> These changes have been tested and confirmed working (with the USB_ETH
> gadget and telnet/ssh in a ramdisk) on a device from the hubble family
> (x1s) and also a device from the canvas family (c1s).
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: samsung,usb3-drd-phy: Add exynos990 compatible
      commit: 9f77d234c1f41e78a99f124bf6fee59dc2e3d46f
[2/2] phy: exynos5-usbdrd: Add support for the Exynos990 usbdrd phy
      commit: 385a766bed48c5bcf620061f24e864dafeca671a

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
