Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7AF8C4167B
	for <linux-phy@archiver.kernel.org>; Mon,  4 Dec 2023 07:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pM/j4wlo4MDH0pFEZjW5/JYilvDQOouAD7ImVrg4aKI=; b=fvCdMBNtKeIYiz
	+TxbBqOs90jZ/PXuNfMyFuuy3WSa3g+bieUIOCh/6mGi35mVLYf4UCB5lpMFk9/eKlGj0H240Wepz
	GxU/OQrYPZQaQFiHyY5iseEyRqQz5/N8zUywrQcgVY6E//LHhYV7Pyb+TdcIl48JN8oVTdfma/L5o
	A1dJfGT8tQnpnmgcwzNv2fC3Vcb+g8vNUOLhcYjGvLAKzZHQ5rkGSUkrNxeaPB1ar109nK9vJoHAu
	CXxLHdhuLJPlUWTi1Tt2K/xrFQ1xjk3uiU3e8Gvi1jp3Yfco6QapTkXINDEUnYH3cxLhE+Hm8oiux
	uVjXVeCsBBy1MIv+szmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rA3Lo-0039Jr-11;
	Mon, 04 Dec 2023 07:26:44 +0000
Received: from fd01.gateway.ufhost.com ([61.152.239.71])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rA3Li-0039Hl-0c
	for linux-phy@lists.infradead.org;
	Mon, 04 Dec 2023 07:26:42 +0000
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 595A08471;
	Mon,  4 Dec 2023 15:26:06 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 4 Dec
 2023 15:26:06 +0800
Received: from [192.168.125.88] (183.27.97.199) by EXMBX171.cuchost.com
 (172.16.6.91) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 4 Dec
 2023 15:26:05 +0800
Message-ID: <26cd5320-e520-4614-9628-df1a1f47b34a@starfivetech.com>
Date: Mon, 4 Dec 2023 15:22:54 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] phy: starfive: Add mipi dphy tx support
Content-Language: en-US
To: Philipp Zabel <p.zabel@pengutronix.de>, <devicetree@vger.kernel.org>,
	<linux-phy@lists.infradead.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<minda.chen@starfivetech.com>, <changhuang.liang@starfivetech.com>,
	<rogerq@kernel.org>, <geert+renesas@glider.be>,
	<keith.zhao@starfivetech.com>, <linux-kernel@vger.kernel.org>
References: <20231117130421.79261-1-shengyang.chen@starfivetech.com>
 <20231117130421.79261-3-shengyang.chen@starfivetech.com>
 <939b96b8727054729207211f25ff91ccf8328e28.camel@pengutronix.de>
From: Shengyang Chen <shengyang.chen@starfivetech.com>
In-Reply-To: <939b96b8727054729207211f25ff91ccf8328e28.camel@pengutronix.de>
X-Originating-IP: [183.27.97.199]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231203_232638_533384_F2FF6647 
X-CRM114-Status: GOOD (  18.25  )
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

Hi Philipp,

Thanks for review and comment.

On 2023/11/27 21:17, Philipp Zabel wrote:
> On Fr, 2023-11-17 at 21:04 +0800, Shengyang Chen wrote:
>> Add mipi dphy tx support for the StarFive JH7110 SoC.
>> It is used to transfer DSI data.
>> 
>> Signed-off-by: Shengyang Chen <shengyang.chen@starfivetech.com>
>> ---
> [...]
>> diff --git a/drivers/phy/starfive/phy-jh7110-dphy-tx.c b/drivers/phy/starfive/phy-jh7110-dphy-tx.c
>> new file mode 100644
>> index 000000000000..69aa172563e4
>> --- /dev/null
>> +++ b/drivers/phy/starfive/phy-jh7110-dphy-tx.c
>> @@ -0,0 +1,542 @@
> [...]
>> +static int stf_dphy_probe(struct platform_device *pdev)
>> +{
> [...]
>> +	dphy->topsys = devm_platform_ioremap_resource(pdev, 0);
>> +	if (IS_ERR(dphy->topsys)) {
>> +		ret = PTR_ERR(dphy->topsys);
>> +		return ret;
> 
> This could be shortened to:
> 
> 		return PTR_ERR(dphy->topsys);
> 

ok, will shortened to "return PTR_ERR(dphy->topsys);" 

>> +	}
>> +
>> +	pm_runtime_enable(&pdev->dev);
>> +
>> +	dphy->mipitx_0p9 = devm_regulator_get(&pdev->dev, "mipi_0p9");
>> +	if (IS_ERR(dphy->mipitx_0p9)) {
>> +		ret = PTR_ERR(dphy->mipitx_0p9);
>> +		return ret;
> 
> Same as above.
> 

ok, will fix it.

>> +	}
>> +
>> +	dphy->txesc_clk = devm_clk_get(&pdev->dev, "dphy_txesc");
>> +	if (IS_ERR(dphy->txesc_clk)) {
>> +		ret = PTR_ERR(dphy->txesc_clk);
>> +		dev_err(&pdev->dev, "txesc_clk get error\n");
>> +		return ret;
> 
> Consider using dev_err_probe():
> 
> 		return dev_err_probe(&pdev->dev, PTR_ERR(dphy->txesc_clk),
> 				     "txesc_clk get error\n");
> 
> And the same for the error paths below.
> 

ok, it will be tried and verified. It will be used if no problem.

>> +	}
>> +
>> +	dphy->sys_rst = reset_control_get_exclusive(&pdev->dev, "dphy_sys");
> 
> Why not devm_reset_control_get_exclusive()?
> 

ok, it will be tried and verified. It will be used if no problem.

>> +	if (IS_ERR(dphy->sys_rst)) {
>> +		ret = PTR_ERR(dphy->sys_rst);
>> +		dev_err(&pdev->dev, "sys_rst get error\n");
>> +		return ret;
>> +	}
>> +
>> +	dphy->txbytehs_rst = reset_control_get_exclusive(&pdev->dev, "dsi_txbytehs");
> 
> Same as above.
> 

ok, I'll follow up on this.

>> +	if (IS_ERR(dphy->txbytehs_rst)) {
>> +		dev_err(&pdev->dev, "Failed to get txbytehs_rst\n");
>> +		return PTR_ERR(dphy->txbytehs_rst);
>> +	}
>> +
>> +	dphy->phy = devm_phy_create(&pdev->dev, NULL, &stf_dphy_ops);
>> +	if (IS_ERR(dphy->phy)) {
>> +		ret = PTR_ERR(dphy->phy);
>> +		dev_err(&pdev->dev, "Failed to create phy\n");
>> +		return ret;
>> +	}
>> +	phy_set_drvdata(dphy->phy, dphy);
>> +
>> +	phy_provider = devm_of_phy_provider_register(&pdev->dev, of_phy_simple_xlate);
>> +	if (IS_ERR(phy_provider)) {
>> +		ret = PTR_ERR(phy_provider);
>> +		dev_err(&pdev->dev, "Failed to create phy\n");
>> +		return ret;
>> +	}
>> +
>> +	return PTR_ERR_OR_ZERO(phy_provider);
> 
> This can not be reached in the error case, so just:
> 
> 	return 0;
> 
> should suffice.
> 

ok, will fix it.

> 
> regards
> Philipp

thanks a lot.

Best Regards,
Shengyang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
