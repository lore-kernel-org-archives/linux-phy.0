Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EDFFC433F5
	for <linux-phy@archiver.kernel.org>; Mon,  9 May 2022 00:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FrrrvZ+4EtsH3Dd/Pry7oL+EGDOjOGqI4Ep3ohrkq5Q=; b=iXYOLn7MBCjw/t
	W6oKq2RI6UsqAdK2NE4/LG4tc4Ljjj3bo8qXKLbnUy/LMyEEeuMwnXxqulM/netb9uL+kmIk5GWgY
	MJyzaWIlKH2mwDNEhTnWzm3WIGT0BM/cr0R9k8edCMyNTdyC6n1eADnqEImPOhBAWF65ghQSXrO8B
	4UfHLGc1DNob4IzgkwRSHfkFkAyNqF5lIO+P6ezxSJqOJ+Vz7HcZdWYIbJBxRpoSR0N7kVdD6b95g
	BAyYnHi+1LD/t8QzKY1zCBW+5I1OqaKlWPzcSsMg3LfKc4Mb2NldVmstgRoLcbB3n8/X4OVdsat5M
	k9ZlrwGMp2CS3szbhe3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnrYj-00BsNI-Sh; Mon, 09 May 2022 00:47:33 +0000
Received: from phobos.denx.de ([85.214.62.61])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnrYZ-00BsLR-7H; Mon, 09 May 2022 00:47:24 +0000
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: marex@denx.de)
 by phobos.denx.de (Postfix) with ESMTPSA id 46CE38010E;
 Mon,  9 May 2022 02:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
 s=phobos-20191101; t=1652057238;
 bh=aaMwZW73eqBNyFeIlh3lkpzFj5DJZEzMGdRfT5LOgxM=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=CIYv5V+DJTtrCAyqlV7sAQE5iMHlS/9c1jlQP4UWEWQQaUvJy6rcYSgAmNQkPFYMo
 S30svEkAncqTboNmRIdXKS9cbdIl0dbc2MaeXMQ1lTwi6IiauuEADXAIQbyPja2EHA
 invoxsqeNI+FqodhbYvkBKMasv820uGu02VCvEIUU80EgBt6adAmu8LrOWkpwZkaM6
 HkYbTRzoMF1P8HumNrKsDxOCT4tBEVjqEO2HLWfPlpqFP73p2zXJYcnyGMtcgiwCG6
 NducV4vgoyRfx4286dSWIuUFzprLwpy2jbM+dOz1GB4a2kLNCF+TZtL4rhC4DvYj1a
 qAWtB4UolSDwA==
Message-ID: <1a9a412f-9b3d-022c-f90b-ee46e5beddd1@denx.de>
Date: Mon, 9 May 2022 02:47:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v0.5 6/9] phy: freescale: add Samsung HDMI PHY
Content-Language: en-US
To: Lucas Stach <l.stach@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Cc: Shawn Guo <shawnguo@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Alexander Stein <alexander.stein@ew.tq-group.com>,
 patchwork-lst@pengutronix.de, Sandor Yu <Sandor.yu@nxp.com>,
 linux-phy@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Robert Foss <robert.foss@linaro.org>, Andrzej Hajda
 <andrzej.hajda@intel.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20220506181034.2001548-1-l.stach@pengutronix.de>
 <20220506181034.2001548-7-l.stach@pengutronix.de>
From: Marek Vasut <marex@denx.de>
In-Reply-To: <20220506181034.2001548-7-l.stach@pengutronix.de>
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_174723_655903_BC0BCFF1 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

[...]

> +static int fsl_samsung_hdmi_phy_probe(struct platform_device *pdev)
> +{
> +	struct fsl_samsung_hdmi_phy *phy;
> +	int ret;
> +
> +	phy = devm_kzalloc(&pdev->dev, sizeof(*phy), GFP_KERNEL);
> +	if (!phy)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, phy);
> +	phy->dev = &pdev->dev;
> +
> +	phy->regs = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(phy->regs))
> +		return PTR_ERR(phy->regs);
> +
> +	phy->apbclk = devm_clk_get(phy->dev, "apb");
> +	if (IS_ERR(phy->apbclk))
> +		return dev_err_probe(phy->dev, PTR_ERR(phy->apbclk),
> +				     "failed to get apb clk\n");
> +
> +	phy->refclk = devm_clk_get(phy->dev, "ref");
> +	if (IS_ERR(phy->refclk))
> +		return dev_err_probe(phy->dev, PTR_ERR(phy->refclk),
> +				     "failed to get ref clk\n");
> +
> +	ret = clk_prepare_enable(phy->apbclk);
> +	if (ret) {
> +		dev_err(phy->dev, "failed to enable apbclk\n");
> +		return ret;
> +	}

dev_err_probe() here too ?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
