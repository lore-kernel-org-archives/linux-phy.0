Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C02CC4708D
	for <linux-phy@archiver.kernel.org>; Sat, 17 Dec 2022 19:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RMRraBH1tqD1wCprryxiGanxzWNAf/E9gx+XXolqP4o=; b=F65akKitSWEXOg
	Xd3RX1yRISTHeG/OjHB7tn4Odwv8sbuaEyER5RyNJwyJ8vv0wgFEO2cAXro/pxe5dcJuooty4SqiL
	H/jEeViAFpUuFC1/dMbZ/Alaf1Y3zKqpUV3JF+w5O5yNOlU7ythxDJuREaWXllRfgP1CSmAskyzTn
	9dPkUlEEwZjdD2xz6urcVXrxamZbpPdxWclqhwODnpTRuopEMXlT210I7n5W7eF9uMP0WhDYSSIni
	lGokfRkX2OG3m+gYBZcdWL0BRQh4FC3HWKfkOEo0CfnnI5LDrmifAcIkMfAFpywXhlgoYwQ+0Ejq/
	XoQwL6stagvHCId4hSxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6d97-00CNpK-BY; Sat, 17 Dec 2022 19:46:57 +0000
Received: from phobos.denx.de ([2a01:238:438b:c500:173d:9f52:ddab:ee01])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6d8u-00CNH6-3E; Sat, 17 Dec 2022 19:46:47 +0000
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 5E7AD85237;
	Sat, 17 Dec 2022 20:46:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1671306393;
	bh=mx0kQyWotAfcs5S7Beuc2iw0C+M4q+8c4LB5R6a+j0s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hYQN5auMc3/MoiYggnmoLVJNSVlZIsxDVSJutAxh1v0NMEGqG7/NlYrA6T5P2pp2l
	 q0VX0hQvXSdJsOiR0DayhpIQhMxZtGou9hI2kuPFmZ/qf9pk9xiKSDAaDM8n7jqO95
	 mKHSyBTTu/3N9v6Vm51iW0KyN1s6NTBlQjr665fkstxVWwgElv/9Y5b8/Lv8ewbbIN
	 zwLy/H287WStOWEbxQ9pzBuyRnso4xhoPhTkHM0qPN10wiw330Ft2PQAU/FgvvDhUH
	 nX7aWkPvlNzVI5/eC1XXVivmqkQNhmGD8vsUipW3Za8frOHLjSo3gU8I+Nk1LpM+O2
	 V52PBqad9viGg==
Message-ID: <c21996f3-0f1d-8b77-95fb-ab98f3a28913@denx.de>
Date: Sat, 17 Dec 2022 20:46:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [RESEND v12 4/4] phy: freescale: imx8m-pcie: Add i.MX8MP PCIe PHY
 support
To: Richard Zhu <hongxing.zhu@nxp.com>, vkoul@kernel.org,
 a.fatoum@pengutronix.de, p.zabel@pengutronix.de, l.stach@pengutronix.de,
 bhelgaas@google.com, lorenzo.pieralisi@arm.com, robh@kernel.org,
 shawnguo@kernel.org, alexander.stein@ew.tq-group.com,
 richard.leitner@linux.dev
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
References: <1665625622-20551-1-git-send-email-hongxing.zhu@nxp.com>
 <1665625622-20551-5-git-send-email-hongxing.zhu@nxp.com>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <1665625622-20551-5-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221217_114644_472263_EB1C4B99 
X-CRM114-Status: UNSURE (   9.97  )
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

On 10/13/22 03:47, Richard Zhu wrote:

Hi,

[...]

> @@ -238,6 +251,14 @@ static int imx8_pcie_phy_probe(struct platform_device *pdev)
>   		return PTR_ERR(imx8_phy->reset);
>   	}
>   
> +	if (imx8_phy->drvdata->variant == IMX8MP) {
> +		imx8_phy->perst =
> +			devm_reset_control_get_exclusive(dev, "perst");
> +		if (IS_ERR(imx8_phy->perst))
> +			dev_err_probe(dev, PTR_ERR(imx8_phy->perst),

I just notice this , are we missing return here ?

That is ... return dev_err_probe(...) ?

> +				      "Failed to get PCIE PHY PERST control\n");
> +	}

[...]

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
