Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0361ED61013
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jan 2026 12:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDf9mfHnE8GZM494nZopXj2eYB5+QuNp7RT6TOjgIbI=; b=Vfbdb+sd30TlW0
	55l57cFhxSJ+PiKzgZIox4EhlV8451bJJkzU9+yJyH/nLZ+ZqfyxLOCKRZ9S/Xuw+zmGE/+wX7LwD
	J2P2SKdyX9oc341xHYcCszi37o20K7TDf+O66p2YbsRAEQSTfGWbWFjCozaxkRJReo/YbisAnxdaw
	IlXcgDOy/RXbCFqReqEnQlOGmp8Z5hHUYF0UnqS9tZAyxGoFi7n1/aegtVPGle0Nwn7neb+ZGI47C
	JT3cCmlEMcfgCPX+jiXag8dOjdQIMGr10NjTyo19ICHuq1eLBQBi10yGqHfP7JYCUSa/5oQUXOS18
	8pjQBT3VGZ2mkVdOTjzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlRTw-000000007UJ-2KrO;
	Thu, 29 Jan 2026 12:50:44 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlRTu-000000007Tu-3Ctw;
	Thu, 29 Jan 2026 12:50:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Ri8FmvbEKjZW/onf1C/Nwis8086NQS8jtNxaTm37K7I=; b=YBsbgzetUI+pZ0B+dhC0HTSbIH
	FCQ4UA5XTl4KDjqgho0iNjJCUMplsRJGlH3R7CKYGddxbYYC1WTtpxSybVDmJj8wMEaU2kCgW0ae1
	Voe7H//VPd/i5NGIiieHcglCf62kUTn4TFZReeuePCTcRLTct+JNRvXczYtDxl5UWCAS9tfUGy+C5
	HoxcmvjDG+nW69BvFtx7bZ7GfMFy1B4rhw7NuosQWlxMQ136BHCjoPCcCCvczxKxOvHfOz+SWkSzb
	pjMLUDodHA4RZBUQtnLdXs5iDrN1/zS9tJNC+O/ULTcu5XlPvTW8jX7cm2nsxrZ+nSbcVYwI4OUPY
	bExHcVqA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:33910)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vlRTm-000000008Vz-1IP1;
	Thu, 29 Jan 2026 12:50:34 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vlRTk-000000007z5-2C1q;
	Thu, 29 Jan 2026 12:50:32 +0000
Date: Thu, 29 Jan 2026 12:50:32 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Vincent Guittot <vincent.guittot@linaro.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com,
	p.zabel@pengutronix.de, ghennadi.procopciuc@nxp.com,
	bogdan-gabriel.roman@nxp.com, Ionut.Vicovan@nxp.com,
	alexandru-catalin.ionita@nxp.com, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
	Frank.li@nxp.com
Subject: Re: [PATCH 1/4] dt-bindings: serdes: s32g: Add NXP serdes subsystem
Message-ID: <aXtXmN1V8wg57yuE@shell.armlinux.org.uk>
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
 <20260126092159.815968-2-vincent.guittot@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260126092159.815968-2-vincent.guittot@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_045042_807314_FEDB0592 
X-CRM114-Status: GOOD (  17.31  )
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

On Mon, Jan 26, 2026 at 10:21:56AM +0100, Vincent Guittot wrote:
> Describe the serdes subsystem available on the S32G platforms.
> 
> Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
> ---
>  .../bindings/phy/nxp,s32g-serdes.yaml         | 154 ++++++++++++++++++
>  1 file changed, 154 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml b/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
> new file mode 100644
> index 000000000000..fad34bee2a4f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
> @@ -0,0 +1,154 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/nxp,s32g-serdes.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP S32G2xxx/S32G3xxx SerDes PHY subsystem
> +
> +maintainers:
> +  - Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
> +
> +description: |
> +  The SerDes subsystem on S32G SoC Family includes two types of PHYs:
> +    - One PCIe PHY: Supports various PCIe operation modes
> +    - Two Ethernet Physical Coding Sublayer (XPCS) controllers
> +
> +  SerDes operation mode selects the enabled PHYs and speeds. Clock frequency
> +  must be adapted accordingly. Below table describes all possible operation
> +  modes.
> +
> +  Mode  PCIe	XPCS0		XPCS1		PHY clock	Description
> +                SGMII		SGMII		  (MHz)
> +  -------------------------------------------------------------------------
> +  0	Gen3	N/A		N/A		100		Single PCIe
> +  1	Gen2	1.25Gbps	N/A		100		PCIe/SGMII
> +  2	Gen2	N/A		1.25Gbps	100		PCIe/SGMII
> +  3	N/A	1.25Gbps	1.25Gbps	100,125		SGMII
> +  4	N/A	3.125/1.25Gbps	3.125/1.25Gbps 	125		SGMII
> +  5	Gen2	N/A	        3.125Gbps     	100		PCIe/SGMII

Shouldn't the mode be configured via phy_set_mode_ext()?

This identifies whether it is operating as PCIe or for networking and
in the case of networking, the PHY interface mode should be passed as
the submode.

Have a look at include/linux/phy/pcie.h to see the submodes that may
be appropriate to pass to phy_set_mode_ext() - but talk to the PHY
subsystem maintainers.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
