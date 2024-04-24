Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA160C19F4E
	for <linux-phy@archiver.kernel.org>; Wed, 24 Apr 2024 21:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PCfUDIpncOP45fsNjJ/jKZcC1RZDLAxz2GCZe04SwKo=; b=EfdGF7ngZ0EnBo
	acEzQjEH7GzW7qdFpNlYLAzd0OnvTfR2P8dU0g2rHhhwbyrX13AYvj3P6FsQ1sWF9P4s4KTEdu4sw
	vv2bDjImMxCxj+mgyhkFmKzcePjxqwn0TPsXSaTh6+OwZLAscY1hnuLnUB+K/Kg8VzPZx8yimVxvL
	dOYTta4OdGGFMWTVXH7X4HMPx5xGPfpPIz9MIaiL5XiXk4fxh0OVajsxw9389Kk4Att8+TX3dsViw
	w6Dv+sHNGMilC0NdzxhOvLpTzESC7a7L1AVBVAMKAznr3rXIr5HcBHEzV3O3CF7KMBMQdLitC4gUB
	uv3Rvks0V8bBcx9tWBrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzkcj-000000069v4-2XMh;
	Wed, 24 Apr 2024 21:57:53 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzkcd-000000069ti-2yqo;
	Wed, 24 Apr 2024 21:57:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0CCEECE1676;
	Wed, 24 Apr 2024 21:57:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5F14C113CD;
	Wed, 24 Apr 2024 21:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713995865;
	bh=iA5er1v7o8xOSguwB/KZCt1Mz1Z6XF4dQ/9cOa/ZGMQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DL63qqX8i3ZFMOMJJPIpHSxyDW1eb6aZJpUvgCNNmt8eNfVsVS81/OuLlUjyI4rMz
	 9Wx0J/3echd9pxR7MK3eb5xC7bCD0NGOi08FHVGUltq6B60RhHJXH1sGhyY0aiKRSO
	 NyWpyFtgiWce7GevhcZG5o3lBAalBegjBcYCidJkKdYxZyi6C0LSQYOL4J/Uz4sGML
	 jIazZv1mr8a71FzC/7Xc+1qwbTaqas5Tgxgd8btL8w68axLhcpsOWKKNSeuv5gWC4W
	 MxExK7THeqKisCIgF6/A+O3P2htwE7z/pABFcU+ywLjIvZWMoMtXjMsPhnoKHDzXl2
	 3iEh/FDYwbgJQ==
Date: Wed, 24 Apr 2024 16:57:42 -0500
From: Rob Herring <robh@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: conor@kernel.org, vkoul@kernel.org, kishon@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, frank.li@nxp.com,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, kernel@pengutronix.de,
	imx@lists.linux.dev
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: phy-imx8-pcie: Add header file
 for i.MX8Q HSIO SerDes PHY
Message-ID: <20240424215742.GB460126-robh@kernel.org>
References: <1713939683-15328-1-git-send-email-hongxing.zhu@nxp.com>
 <1713939683-15328-2-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1713939683-15328-2-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_145748_137914_33E8391A 
X-CRM114-Status: GOOD (  21.15  )
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

On Wed, Apr 24, 2024 at 02:21:21PM +0800, Richard Zhu wrote:
> Add lane index and HSIO configuration definitions of the i.MX8Q HSIO
> SerDes PHY into header file.

This belongs in the binding patch. It is part of the binding.

> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> ---
>  include/dt-bindings/phy/phy-imx8-pcie.h | 62 +++++++++++++++++++++++++
>  1 file changed, 62 insertions(+)
> 
> diff --git a/include/dt-bindings/phy/phy-imx8-pcie.h b/include/dt-bindings/phy/phy-imx8-pcie.h
> index 8bbe2d6538d8..60447b95a952 100644
> --- a/include/dt-bindings/phy/phy-imx8-pcie.h
> +++ b/include/dt-bindings/phy/phy-imx8-pcie.h
> @@ -11,4 +11,66 @@
>  #define IMX8_PCIE_REFCLK_PAD_INPUT	1
>  #define IMX8_PCIE_REFCLK_PAD_OUTPUT	2
>  
> +/*
> + * i.MX8QM HSIO subsystem has three lane PHYs and three controllers:
> + * PCIEA(2 lanes capable PCIe controller), PCIEB (only support one
> + * lane) and SATA.
> + *
> + * Meanwhile, i.MX8QXP HSIO subsystem has one lane PHY and PCIEB(only
> + * support one lane) controller.
> + *
> + * In the different use cases. PCIEA can be bound to PHY lane0, lane1
> + * or Lane0 and lane1. PCIEB can be bound to lane1 or lane2 PHY. SATA
> + * can only be bound to last lane2 PHY.
> + *
> + * +-------------------------------+------------------+
> + * | i.MX8QM                       | i.MX8QXP         |
> + * |-------------------------------|------------------|
> + * |       | PCIEA | PCIEB | SATA  |       | PCIEB    |
> + * |-------------------------------|-------|----------|
> + * | LAN 0 | X     |       |       | LAN 0 | *        |

LAN? Local Area Network? Just use 'Lane'.

Don't need this column                 ^^^^^^^

> + * |-------------------------------|-------|----------|
> + * | LAN 1 | X     | *     |       |       |          |
> + * |-------------------------------|-------|----------|
> + * | LAN 2 |       | *     | *     |       |          |
> + * +-------------------------------+------------------+
> + * NOTE:
> + * *: Choose one only.
> + * X: Choose any of these.
> + *
> + * Define i.MX8Q HSIO PHY lane index here to specify the lane mask.
> + */
> +#define IMX8Q_HSIO_LANE0	0x1
> +#define IMX8Q_HSIO_LANE1	0x2
> +#define IMX8Q_HSIO_LANE2	0x4

Thinking about this some more, in most cases of the phy binding where 
individual lanes can be assigned, each lane is a phys entry.

PCIEA:
phys = <&hsio_phy 0 PHY_MODE_PCIE>;
or:
phys = <&hsio_phy 0 PHY_MODE_PCIE>, <&hsio_phy 1 PHY_MODE_PCIE>;

PCIEB:
phys = <&hsio_phy 1 PHY_MODE_PCIE>;
or:
phys = <&hsio_phy 2 PHY_MODE_PCIE>;

SATA:
phys = <&hsio_phy 2 PHY_MODE_SATA>;

> +
> +/*
> + * Regarding the design of i.MX8QM HSIO subsystem, HSIO module can be
> + * confiured as following three use cases.
> + *
> + * Define different configurations refer to the use cases, since it is
> + * mandatory required in the initialization.
> + *
> + * On i.MX8QXP, HSIO module only has PCIEB and one lane PHY.
> + * Define "IMX8Q_HSIO_CFG_PCIEB" for i.MX8QXP platforms.
> + *
> + * +----------------------------------------------------+----------+
> + * |                               | i.MX8QM            | i.MX8QXP |
> + * |-------------------------------|--------------------|----------|
> + * |                               | LAN0 | LAN1 | LAN2 | LAN0     |

s/LAN/Lane/

> + * |-------------------------------|------|------|------|----------|
> + * | IMX8Q_HSIO_CFG_PCIEAX2SATA    | PCIEA| PCIEA| SATA |          |
> + * |-------------------------------|------|------|------|----------|
> + * | IMX8Q_HSIO_CFG_PCIEAX2PCIEB   | PCIEA| PCIEA| PCIEB|          |
> + * |-------------------------------|------|------|------|----------|
> + * | IMX8Q_HSIO_CFG_PCIEAPCIEBSATA | PCIEA| PCIEB| SATA |          |
> + * |-------------------------------|------|------|------|----------|
> + * | IMX8Q_HSIO_CFG_PCIEB          | -    | -    | -    | PCIEB    |
> + * +----------------------------------------------------+----------+
> + */
> +#define IMX8Q_HSIO_CFG_PCIEAX2SATA	0x1
> +#define IMX8Q_HSIO_CFG_PCIEAX2PCIEB	0x2
> +#define IMX8Q_HSIO_CFG_PCIEAPCIEBSATA	(IMX8Q_HSIO_CFG_PCIEAX2SATA | IMX8Q_HSIO_CFG_PCIEAX2PCIEB)
> +#define IMX8Q_HSIO_CFG_PCIEB		IMX8Q_HSIO_CFG_PCIEAX2PCIEB

Again, I don't see why you need all this. You now have mode and lanes, 
and per SoC data in the driver, so you should be able to figure out what 
you need from this.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
