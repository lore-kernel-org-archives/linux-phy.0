Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5674C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 19 Dec 2022 07:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vjgZom5IqG4XVeMCeJ+WTYlCQEE4EhJ7X41AvK1wfu0=; b=LMDFED5Vsx5jGn
	7j9wvizuhXT81gM14oNwLgsCNFIO85CA6D3i1AdYFDBeIgk3rgBNQQSRl+lkXv9r8fq/3mJ8WpWix
	5gWSvWDq9V3CKbZxUie9vu5WphFMoulOzkw93OC6ss2OTDT4sPDLAw+9QY9xyGCHULGXjf2lePPMn
	aGK2cypNfurXwKY9SywtEz/Gri2geC8B7IiYaNP3SYnEnROKSdd86nvrNB3HpnKN+lSMgMndxVFVr
	TqX2Zaso2NXBsuVLCgpsPBhyUFSGZIi3qeDQahjm02pEd8o1tewSOnxjSRQQqN9EYLvQF5ICz58Sv
	pbNG+L8bun1+EXRk32Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7Ai9-009yKb-HA; Mon, 19 Dec 2022 07:37:21 +0000
Received: from phobos.denx.de ([85.214.62.61])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7AhC-009xdS-K8; Mon, 19 Dec 2022 07:36:24 +0000
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 500E984D70;
	Mon, 19 Dec 2022 08:36:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1671435381;
	bh=Voeiz7V8OcQZJcxdSJRCFvpWv4YiQpVgYELZEftdCQ0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DHKKgkZPBX7pGz14kASI7flYNmgKOEQPiF2gBYirqQjSc1xUFQbrW6Sr5GzrT5lw4
	 fUuvphceSZl4H39r0tyY7x6Sbi4TXRtnZc0keD7PUyLWNsDnSsZLuLHrALXo+1wy2I
	 FQqCbATTkdS3lzLn8Q7RuN6/sGH8pNzCo2s4owIcH2DT+/45PDCRO7B2zJS3rWfVDb
	 n1OByfkskDQoMWBJxegeIk3300MCn1QaG1tE27EYylJ7zOM0gBxDO13fI48eTsd21W
	 cEZh7mjbP2cRJiSa1JuhXCoqbAAJekczXMcoCobpCUNU4FTrZL8SBYx0oPiQWai7ii
	 9+3Cgc25w/SuQ==
Message-ID: <c677ece5-1f84-7f37-ea80-12f19fa6e222@denx.de>
Date: Mon, 19 Dec 2022 08:36:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] phy: freescale: imx8m-pcie: Add one missing error return
Content-Language: en-US
To: Richard Zhu <hongxing.zhu@nxp.com>, vkoul@kernel.org,
 alexander.stein@ew.tq-group.com, lorenzo.pieralisi@arm.com
Cc: linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, linux-imx@nxp.com
References: <1671433941-2037-1-git-send-email-hongxing.zhu@nxp.com>
From: Marek Vasut <marex@denx.de>
In-Reply-To: <1671433941-2037-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221218_233622_899144_833F5361 
X-CRM114-Status: GOOD (  15.80  )
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

On 12/19/22 08:12, Richard Zhu wrote:
> There should be one error return when fail to fetch the perst reset.
> Add the missing error return.
> 
> Fixes: dce9edff16ee ("phy: freescale: imx8m-pcie: Add i.MX8MP PCIe PHY support")
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>

Reviewed-by: Marek Vasut <marex@denx.de>

> ---
>   drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> index 7585e8080b77..afc63552ecaf 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> @@ -255,7 +255,7 @@ static int imx8_pcie_phy_probe(struct platform_device *pdev)
>   		imx8_phy->perst =
>   			devm_reset_control_get_exclusive(dev, "perst");
>   		if (IS_ERR(imx8_phy->perst))
> -			dev_err_probe(dev, PTR_ERR(imx8_phy->perst),
> +			return dev_err_probe(dev, PTR_ERR(imx8_phy->perst),
>   				      "Failed to get PCIE PHY PERST control\n");
>   	}

Thanks !

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
