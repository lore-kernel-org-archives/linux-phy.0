Return-Path: <SRS0=qRVw=ND=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA11AC4338F
	for <linux-phy@archiver.kernel.org>; Thu, 12 Aug 2021 00:23:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 68CBE6105A
	for <linux-phy@archiver.kernel.org>; Thu, 12 Aug 2021 00:23:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 68CBE6105A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dwb5fZ7lszatSzgLru7Qr82WHYSP55l7GZr3c0SVTus=; b=cDcXrFgDn+zplVyTLWO0u1eXAB
	PkxGh6oym1RKtThcF9S0OhP4qP7uC9/4sIbsCsrRWR4zX8NMDIUcjf/Lalx7LEHpotgsM9NoPAv+x
	SGYBN1oYvI5zPfaiFJM/pehhSCas2erLIMt50F/575jADYvmlSYtej/EwNtjhOj0Y36LC3WuIcRtT
	2u/N0fuopWGqfYccpDBmnRv0NHlGhqP4S+csZ4NXKURpyYhkPuReiN1oMBmjXAy04FouZLaUqDTl9
	vGAiCLLkgjHy+zvh/oQkgrWMgeZ0K1TmswH91vn9UOjrl/cTOq8lOyF2nATWSgw8iZE5SBCLzayOW
	+/iSSPKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDyVq-008MnQ-Mz; Thu, 12 Aug 2021 00:23:58 +0000
Received: from so254-9.mailgun.net ([198.61.254.9])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDyVk-008Mmi-FD
 for linux-phy@lists.infradead.org; Thu, 12 Aug 2021 00:23:57 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1628727833; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=S5P1m+2rHcJaZXtc+bwHwQAAyB1CBhwMZ3Rpzh2V//I=;
 b=Yt8kHUf65bKHv0tw8j8r3hMqRilUO3EtnYOct28DddBbHqG5cWnsKd9jNMTxmE58dYhxI6j3
 RU/JdiiqkypsHHcXWzVLmkE02p0yH66o/J7nLTM1tJmWUgnSrhzFcdusXH3OHMdl92HSLKNN
 pveProKBysfmp03bSZ/9+5gM8xc=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyIzOTQzOCIsICJsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-east-1.postgun.com with SMTP id
 61146a1191487ad520868012 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 12 Aug 2021 00:23:45
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 48AADC433D3; Thu, 12 Aug 2021 00:23:44 +0000 (UTC)
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: sbillaka)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 20B53C433F1;
 Thu, 12 Aug 2021 00:23:43 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 12 Aug 2021 05:53:43 +0530
From: sbillaka@codeaurora.org
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, Rob Clark
 <robdclark@gmail.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kalyan_t@codeaurora.org,
 abhinavk@codeaurora.org
Subject: Re: [PATCH 2/2] phy: qcom: Introduce new eDP PHY driver
In-Reply-To: <YRH0WFvWmemHIHqc@builder.lan>
References: <20210511041930.592483-1-bjorn.andersson@linaro.org>
 <20210511041930.592483-2-bjorn.andersson@linaro.org>
 <7708925ad4d973b4e5f291cdcbdbe406@codeaurora.org>
 <YRH0WFvWmemHIHqc@builder.lan>
Message-ID: <04267264ac7904733552d6ca02a6797b@codeaurora.org>
X-Sender: sbillaka@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210811_172353_724826_EC16E9AA 
X-CRM114-Status: GOOD (  30.12  )
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

On 2021-08-10 09:06, Bjorn Andersson wrote:
> On Mon 09 Aug 22:15 CDT 2021, sbillaka@codeaurora.org wrote:
>> On 2021-05-11 09:49, Bjorn Andersson wrote:
>> > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c
> [..]
>> > +#define DP_PHY_AUX_CFG0				0x0020
>> > +#define DP_PHY_AUX_CFG1				0x0024
>> > +#define DP_PHY_AUX_CFG2				0x0028
>> > +#define DP_PHY_AUX_CFG3				0x002c
>> > +#define DP_PHY_AUX_CFG4				0x0030
>> > +#define DP_PHY_AUX_CFG5				0x0034
>> > +#define DP_PHY_AUX_CFG6				0x0038
>> > +#define DP_PHY_AUX_CFG7				0x003c
>> > +#define DP_PHY_AUX_CFG8				0x0040
>> > +#define DP_PHY_AUX_CFG9				0x0044
>> 
>> The DP_PHY_AUX_CFG0 offset for sc8180x eDP phy is 0x0024.
>> Some of the eDP PHY offset addresses are shifted by 4 address 
>> locations,
>> compared to the DP QMP PHY offset addresses for sc8180x.
>> The DP_PHY_AUX_CFG* offsets for this eDP phy driver are as below:
>> 
>> #define DP_PHY_AUX_CFG0                         0x0024
>> #define DP_PHY_AUX_CFG1                         0x0028
>> #define DP_PHY_AUX_CFG2                         0x002c
>> #define DP_PHY_AUX_CFG3                         0x0030
>> #define DP_PHY_AUX_CFG4                         0x0034
>> #define DP_PHY_AUX_CFG5                         0x0038
>> #define DP_PHY_AUX_CFG6                         0x003c
>> #define DP_PHY_AUX_CFG7                         0x0040
>> #define DP_PHY_AUX_CFG8                         0x0044
>> #define DP_PHY_AUX_CFG9                         0x0048
>> 
> 
> I noticed this as well. During development I just used the numbers
> directly in the code and I must have screwed up as I replaced them with
> defined - and somehow missed this in the testing before posting.
> 
> Sorry about that.
> 
> [..]
>> > +static int qcom_edp_phy_init(struct phy *phy)
>> > +{
>> > +	struct qcom_edp *edp = phy_get_drvdata(phy);
>> > +	int ret;
>> > +
>> > +	ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
>> > +	if (ret)
>> > +		return ret;
>> > +
>> > +	ret = clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
>> > +	if (ret)
>> > +		goto out_disable_supplies;
>> 
>> I think the number of clk and regulator resources can vary based on
>> platform.
>> 
> 
> If that's the case we should replace the ARRAY_SIZE() with an integer.
> But I prefer to wait with that until the number actually is variable.
> 
> [..]
>> > +static int qcom_edp_phy_probe(struct platform_device *pdev)
>> > +{
>> > +	struct phy_provider *phy_provider;
>> > +	struct device *dev = &pdev->dev;
>> > +	struct qcom_edp *edp;
>> > +	int ret;
>> > +
>> > +	edp = devm_kzalloc(dev, sizeof(*edp), GFP_KERNEL);
>> > +	if (!edp)
>> > +		return -ENOMEM;
>> > +
>> > +	edp->dev = dev;
>> > +
>> > +	edp->edp = devm_platform_ioremap_resource(pdev, 0);
>> > +	if (IS_ERR(edp->edp))
>> > +		return PTR_ERR(edp->edp);
>> > +
>> > +	edp->tx0 = devm_platform_ioremap_resource(pdev, 1);
>> > +	if (IS_ERR(edp->tx0))
>> > +		return PTR_ERR(edp->tx0);
>> > +
>> > +	edp->tx1 = devm_platform_ioremap_resource(pdev, 2);
>> > +	if (IS_ERR(edp->tx1))
>> > +		return PTR_ERR(edp->tx1);
>> > +
>> > +	edp->pll = devm_platform_ioremap_resource(pdev, 3);
>> > +	if (IS_ERR(edp->pll))
>> > +		return PTR_ERR(edp->pll);
>> > +
>> > +	edp->clks[0].id = "aux";
>> > +	edp->clks[1].id = "cfg_ahb";
>> > +	ret = devm_clk_bulk_get(dev, ARRAY_SIZE(edp->clks), edp->clks);
>> > +	if (ret)
>> > +		return ret;
>> > +
>> > +	edp->supplies[0].supply = "vdda-phy";
>> > +	edp->supplies[1].supply = "vdda-pll";
>> > +	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(edp->supplies),
>> > edp->supplies);
>> > +	if (ret)
>> > +		return ret;
>> 
>> I believe, the combination of the number of regulator and clk 
>> resources may
>> vary based on the platform.
>> I think we should not fail probe if all these resources are not 
>> present in
>> the device tree file.
>> I think, these resources can be optional. We can get these resources 
>> if they
>> are present in the device tree file and enable them as required.
>> 
> 
> It's quite helpful to the DTS writer to actually encode in the driver
> which resources the driver expects and provide useful error messages
> when these expectations aren't met - so I think in line with most other
> drivers this should be decided based on the compatible.
> 
> What clocks and regulators do you have on sc7280?

We have only one clock (edp refclk) and one regulator (phy-0p9) for 
sc7280.

> 
> 
> Thanks for the feedback, I see that I have a few more pieces of 
> feedback
> from others that I need to incorporate. I'll make sure to do that and
> repost this patch shortly.

Okay. Thank you.

> 
> Regards,
> Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
