Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAB9FC3ABDE
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 13:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gs/gJYLhI/wz68ZFPJIgSbxDKFEKY/N99GRQJYILCek=; b=hU/JrxcpUz8Yru
	UZ8NOUpZFTbaqWMw/33hiXzcZRit1cmQZ/zyI2IIzjMy1NbH6yNqqsheFa7/9IjS2tBFxt9zIgmES
	TGM0Om6TuAtzC9YxVo2dtvlqUMwRuClTAKfe8XgYB+uj05TeACk1DHMwN+rsslVjmzRVDk4yxXsWI
	jpXi9S2T+clUR+kcarUI+gYhtLwBccf5iVMoz7PkSpvcTRQWI2UyhyaRYgQQs5l0TZdq2FZCdOJI3
	9fd6NBjwUtmU0wxpvBAaI0yrpsHpgGaGpcYQ6h8LM93wJqgtiWtpXOHoWgHmRB1YzdRe3KryHDmwS
	JYM4DoDy5bc+WYJe01JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFCZN-0000000FJp6-1dYL;
	Wed, 14 May 2025 13:54:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFBp9-0000000F9z9-2s0S
	for linux-phy@lists.infradead.org;
	Wed, 14 May 2025 13:07:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uFBos-0005kf-Gu; Wed, 14 May 2025 15:06:46 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uFBop-002iQl-34;
	Wed, 14 May 2025 15:06:44 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uFBoq-000Bls-10;
	Wed, 14 May 2025 15:06:44 +0200
Message-ID: <0197d176fa7a6498bdc138dca6ba881648a7e30d.camel@pengutronix.de>
Subject: Re: [PATCH v2 4/4] phy: spacemit: add USB3 support for K1 PCIe/USB3
 combo PHY
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Ze Huang <huangze@whut.edu.cn>, Vinod Koul <vkoul@kernel.org>, Kishon
 Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
 <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Date: Wed, 14 May 2025 15:06:44 +0200
In-Reply-To: <20250418-b4-k1-usb3-phy-v2-v2-4-b69e02da84eb@whut.edu.cn>
References: <20250418-b4-k1-usb3-phy-v2-v2-0-b69e02da84eb@whut.edu.cn>
	 <20250418-b4-k1-usb3-phy-v2-v2-4-b69e02da84eb@whut.edu.cn>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_060703_718966_CBC574DB 
X-CRM114-Status: GOOD (  14.95  )
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

On Fr, 2025-04-18 at 21:19 +0800, Ze Huang wrote:
> Add support for USB 3.0 mode on the K1 PCIe/USB3 combo PHY. Currently,
> only USB mode is supported; PCIe support is not included in this change.
> 
> Signed-off-by: Ze Huang <huangze@whut.edu.cn>
> ---
>  drivers/phy/spacemit/Kconfig          |   8 ++
>  drivers/phy/spacemit/Makefile         |   1 +
>  drivers/phy/spacemit/phy-k1-combphy.c | 251 ++++++++++++++++++++++++++++++++++
>  3 files changed, 260 insertions(+)
> 
[...]
> diff --git a/drivers/phy/spacemit/phy-k1-combphy.c b/drivers/phy/spacemit/phy-k1-combphy.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..a291b7a78fae2f4072b74c1d2cc65847ed821bec
> --- /dev/null
> +++ b/drivers/phy/spacemit/phy-k1-combphy.c
> @@ -0,0 +1,251 @@
[...]
> +static int spacemit_combphy_probe(struct platform_device *pdev)
> +{
> +	struct spacemit_combphy_priv *priv;
> +	struct phy_provider *phy_provider;
> +	struct device *dev = &pdev->dev;
> +
> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	priv->phy_ctrl = devm_platform_ioremap_resource_byname(pdev, "ctrl");
> +	if (IS_ERR(priv->phy_ctrl))
> +		return PTR_ERR(priv->phy_ctrl);
> +
> +	priv->phy_sel = devm_platform_ioremap_resource_byname(pdev, "sel");
> +	if (IS_ERR(priv->phy_sel))
> +		return PTR_ERR(priv->phy_sel);
> +
> +	priv->lfps_threshold = COMBPHY_USB_LFPS_THRES_DEFAULT;
> +	device_property_read_u8(&pdev->dev, "spacemit,lfps-threshold", &priv->lfps_threshold);
> +
> +	priv->rx_always_on = device_property_read_bool(&pdev->dev, "spacemit,rx-always-on");
> +	priv->type = PHY_NONE;
> +	priv->dev = dev;
> +
> +	priv->phy_rst = devm_reset_control_get(dev, NULL);

Please use devm_reset_control_get_exclusive() directly.

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
