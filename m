Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1B3BC6FD1F
	for <linux-phy@archiver.kernel.org>; Tue,  2 Apr 2024 17:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8JUuKNwqMuVyKX99zexOMZdLdiFtfyNWg/0DZa6G1s=; b=OneLi0izaxhwdt
	kL/Byrj3L0Z2+cMe9Z+IE2+8xHlIrADqiY+32Vz3/MLjhgvQRISO94TcI5lpl3ew815O0bVxMM+ne
	kCOuFEBhlc6Dwme1XNmknxQaqiiWAAyK/Tedg3DHquAu2wwZC4cj94k/gJuGdE7BfT+ZkCcl/2MSP
	QKUk2SsJr7UKA4T4pn2eUOnsfMeRTOI42jy6BRUt5jtzoH6Bfdrh1n4oIzMSVkBDXQO7H/xEVzMxu
	xpRJdDGZKz7TLOgcwntSkbRRA2vGnOelftDF/CrXsGaCJam6dbbCbkP4TsmChQ/OeXZV1TvJYycaw
	A5LCDQtb8GIlDGVeOAFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrhpI-0000000CBdB-1ose;
	Tue, 02 Apr 2024 17:21:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrhpF-0000000CBbz-0fiq;
	Tue, 02 Apr 2024 17:21:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2570A6102C;
	Tue,  2 Apr 2024 17:21:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 879E7C433F1;
	Tue,  2 Apr 2024 17:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712078491;
	bh=DnpOibWeEhhYJWAo5GJdkNBTBKaVlT4nCoBWBnjQiTg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kkR1LxWPiOyeNYU2wTg7krNhTXupOzH+yuLhG3Iv+H/QqOzbVHpk1rcdPtc/M1lRU
	 tqr3GNmoceWktBQ8jqNGbwAy41Qtqbq10Li5hNplEEYfnXR0WlE6zkC18TmVn2XU+g
	 SQLPNRsEPBV4N1gbp3O5uHPw2AyRVxQzusInycQmfyq0xWc4zDlSbpise0OugxksUJ
	 HKvEnkkDyWpMQnBsUZmqp8dJCP3h9/OqsrbU9MxaPuHlZaQWW7mHsXs48GvN54zWeE
	 p1NX0/yOEiYW/Fv57vWyBta9YswZqIDjwrkyK7wfEKMZBxHChHIZPu/G2Wj7YC1b5q
	 slvAW9kE4DQSw==
Date: Tue, 2 Apr 2024 12:21:28 -0500
From: Rob Herring <robh@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	frank.li@nxp.com, conor+dt@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de, imx@lists.linux.dev
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: phy-imx8-pcie: Add binding for
 i.MX8Q HSIO SerDes PHY
Message-ID: <20240402172128.GA250151-robh@kernel.org>
References: <1712036704-21064-1-git-send-email-hongxing.zhu@nxp.com>
 <1712036704-21064-2-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1712036704-21064-2-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_102133_307579_7F1774D0 
X-CRM114-Status: GOOD (  18.72  )
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

On Tue, Apr 02, 2024 at 01:45:02PM +0800, Richard Zhu wrote:
> Add binding for controller ID and HSIO configuration setting of the
> i.MX8Q HSIO SerDes PHY.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> ---
>  include/dt-bindings/phy/phy-imx8-pcie.h | 29 +++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/include/dt-bindings/phy/phy-imx8-pcie.h b/include/dt-bindings/phy/phy-imx8-pcie.h
> index 8bbe2d6538d8..3292c8be3354 100644
> --- a/include/dt-bindings/phy/phy-imx8-pcie.h
> +++ b/include/dt-bindings/phy/phy-imx8-pcie.h
> @@ -11,4 +11,33 @@
>  #define IMX8_PCIE_REFCLK_PAD_INPUT	1
>  #define IMX8_PCIE_REFCLK_PAD_OUTPUT	2
>  
> +/*
> + * i.MX8QM HSIO subsystem has three lane PHYs and three controllers:
> + * PCIEA(2 lanes capapble PCIe controller), PCIEB (only support one

capable

> + * lane) and SATA.
> + *
> + * In the different use cases. PCIEA can be binded to PHY lane0, lane1

s/binded/bound/

And throughout your patches.

> + * or Lane0 and lane1. PCIEB can be binded to lane1 or lane2 PHY. SATA
> + * can only be binded to last lane2 PHY.
> + *
> + * Define i.MX8Q HSIO controller ID here to specify the controller
> + * binded to the PHY.
> + * Meanwhile, i.MX8QXP HSIO subsystem has one lane PHY and PCIEB(only
> + * support one lane) controller.
> + */
> +#define IMX8Q_HSIO_PCIEA_ID	0
> +#define IMX8Q_HSIO_PCIEB_ID	1
> +#define IMX8Q_HSIO_SATA_ID	2

Please use the standard phy mode defines.

> +
> +/*
> + * On i.MX8QM, PCIEA is mandatory required if the HSIO is enabled.
> + * Define configurations beside PCIEA is enabled.
> + *
> + * On i.MX8QXP, HSIO module only has PCIEB and one lane PHY.
> + * The "IMX8Q_HSIO_CFG_PCIEB" can be used on i.MX8QXP platforms.
> + */
> +#define IMX8Q_HSIO_CFG_SATA		1
> +#define IMX8Q_HSIO_CFG_PCIEB		2
> +#define IMX8Q_HSIO_CFG_PCIEBSATA	3

This seems somewhat redundant both as the 3rd define is just an OR of 
the first 2 and all 3 overlap with the prior defines.

Seems like with standard PHY modes, the only additional information you 
might need is PCIEB vs. PCIEA.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
