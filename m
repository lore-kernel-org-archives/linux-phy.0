Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 777E1C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 20 Oct 2022 09:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xCAJFurlFvJWtXxCU1t7DVohfmDpa60hJwzxSFNn7ms=; b=dbCd1iZbSvI+UP
	Rfq4kXvBzF+QT66YjHhYkOupnVmLZNUqFp1O5voNCV1OMNWfaSolUCkDAZR+kXhf8nWtezF9I+Nlz
	lluPPScenNk7ND4EZaBLmf9s6sLKUp5s4nyyxG9gbKqfjifNYP5s4E4p31H76nTUhEqta8oqYEADL
	nUSUdAIIfXYds0n39NmNsq5i9ywXdXOQn/QIrH8sMDEj4nItur+lrwDK4EF66mc4Yt1AzQ2Oh26eZ
	WNWrf4R0kbPH5ipoemCax8BYd0D0zimf3vlA+/5dlc9ao4EXGYDFV4V+2EUvlLOOFM4DQcBG1WBqV
	N6oDPPEDPAJ1z9DKJ96A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olRzI-00D3gA-68; Thu, 20 Oct 2022 09:37:16 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olRqd-00CxNp-E9
	for linux-phy@lists.infradead.org; Thu, 20 Oct 2022 09:28:21 +0000
Received: by mail-lf1-x129.google.com with SMTP id be13so16874133lfb.4
        for <linux-phy@lists.infradead.org>; Thu, 20 Oct 2022 02:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1Ewn4HhGslcazbRmLvsGRl3y97RhVhfkn6hwU61L66A=;
        b=TecGvojYZ9NKrDOGAKWWzGAaSNS6hxRavZ9+eDJH2Y8N0S6fQfbROXCAnrmUGULfQG
         i93HBAWQ68Tyh3pqiyE+vl3Y5kNqcRL62NsHcKhFQREF1WvcI6kX7aMefICtDvFTgflR
         CO19cxjQ/G8PNbzIPgtI92d4YxKtCN3iNfMk64RvROr7k2lkLJxCZP+SidyfM2Km2zyg
         MuGEnZgVkbBNxit7Tuk4I8tKP9uhf5C8SPmzyKEQcb7TT4WJmR3WzAIr3u4VFZUDcQC7
         fSGSGUcn4FUKA9Xqv84s6OXL8bpvA3jyF95Nq30Egt3xkP7g9oi9EoOw+wXHAj2GdgvQ
         7s1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1Ewn4HhGslcazbRmLvsGRl3y97RhVhfkn6hwU61L66A=;
        b=R9yJbP/Na6eAZbsxv3ohR83W2lnTto4xob/FUt3CiTF+Iaga8ndwdwvbPBarcWvdtF
         s4+5jK8ytl+dykg+vEegT3oRf1x4AAY7wfmh7TonioLHXMuhQKEy+VzKqaHkTJ8CWwHK
         497YELUmBVdySaJ60LTdF00BftR23C+qGmyJo6fJZ3Od+OZhFy+7z2dnl26VrSxiyZDR
         Dv1f/8mABVPKQF9U1BJHeRGs5qYG+f4rtDXMfXexRDjVSALwEg7LBUU9Hj5RcL3dnBAH
         E53u3rf7MhTYmzaIRaRBKILhtMDj3z87CtkidzhwAo9zUgH5uyaA+ofMQ/xjN5MaEUiT
         AQkw==
X-Gm-Message-State: ACrzQf0LgJxriLgtp1PCTQ8MjUTFJgG+qj0EGNt1rGsP/wtgk+w9qKK5
	rFfCdC204S7q8lrtD4dbg5WcIw==
X-Google-Smtp-Source: AMsMyM7bv9bGxciIiXjNDJB5vQAP1sSIqPeH3B8ClBGO1n1JwLDwakmvPLlFQ1Qb2gOXyRzYa1nIyg==
X-Received: by 2002:a05:6512:31cd:b0:4a2:69d3:d009 with SMTP id j13-20020a05651231cd00b004a269d3d009mr4132905lfe.68.1666258095352;
        Thu, 20 Oct 2022 02:28:15 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id s15-20020a19770f000000b0048b365176d9sm2644658lfc.286.2022.10.20.02.28.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Oct 2022 02:28:14 -0700 (PDT)
Message-ID: <7eb3fb9a-ce4a-eee0-b6bc-cee6aa6bf37b@linaro.org>
Date: Thu, 20 Oct 2022 12:28:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v2 13/15] phy: qcom-qmp-pcie: add support for pipediv2
 clock
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-14-johan+linaro@kernel.org>
 <325d6c7b-ca96-df73-a792-4d156a710267@linaro.org>
 <Y1EPZBinv0tyZVqW@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y1EPZBinv0tyZVqW@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_022819_543932_176F5D9F 
X-CRM114-Status: GOOD (  33.80  )
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

On 20/10/2022 12:05, Johan Hovold wrote:
> On Thu, Oct 20, 2022 at 11:31:35AM +0300, Dmitry Baryshkov wrote:
>> On 19/10/2022 14:35, Johan Hovold wrote:
>>> Some QMP PHYs have a second fixed-divider pipe clock that needs to be
>>> enabled along with the pipe clock.
>>>
>>> Add support for an optional "pipediv2" clock.
>>>
>>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>>> ---
>>>    drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 42 ++++++++++++++++++++----
>>>    1 file changed, 36 insertions(+), 6 deletions(-)
> 
>> I still think that the attached patch is somewhat simpler. Diffstat
>> supports that idea:
>>
>> $ diffstat /tmp/pipe.diff
>>    phy-qcom-qmp-pcie.c |   26 ++++++++++++++++----------
>>    1 file changed, 16 insertions(+), 10 deletions(-)
> 
> It's not just about LoC.
>   
>> Yes, I'm speaking this after having cleaned up several open-coded
>> versions of clk_bulk_foo from the drm/msm code. It typically starts with
>> the 'just another clock' story, and then suddenly they are all over the
>> code.
> 
> But you don't start using the bulk API when you have one clock. Two,
> maybe. Three, sure. It's a decision that needs to be done on a case-by
> case basis, and pipe clocks for the QMP block is different from general
> interface clocks (which are more likely to be extended). (And of course
> the clocks would need to be independent in the first place.)
> 
> Here's your example diff inline:
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 9c8e009033f1..a148b143dd90 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1378,8 +1378,10 @@ struct qmp_pcie {
>   	void __iomem *tx2;
>   	void __iomem *rx2;
>   
> -	struct clk *pipe_clk;
> +	struct clk_bulk_data *pipe_clks;
> +	int num_pipe_clks;
>   	struct clk_bulk_data *clks;
> +
>   	struct reset_control_bulk_data *resets;
>   	struct regulator_bulk_data *vregs;
>   
> @@ -1923,11 +1925,9 @@ static int qmp_pcie_power_on(struct phy *phy)
>   	qmp_pcie_init_registers(qmp, &cfg->tables);
>   	qmp_pcie_init_registers(qmp, mode_tables);
>   
> -	ret = clk_prepare_enable(qmp->pipe_clk);
> -	if (ret) {
> -		dev_err(qmp->dev, "pipe_clk enable failed err=%d\n", ret);
> +	ret = clk_bulk_prepare_enable(qmp->num_pipe_clks, qmp->pipe_clks);
> +	if (ret)
>   		return ret;
> -	}
>   
>   	/* Pull PHY out of reset state */
>   	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
> @@ -1950,7 +1950,7 @@ static int qmp_pcie_power_on(struct phy *phy)
>   	return 0;
>   
>   err_disable_pipe_clk:
> -	clk_disable_unprepare(qmp->pipe_clk);
> +	clk_bulk_disable_unprepare(qmp->num_pipe_clks, qmp->pipe_clks);
>   
>   	return ret;
>   }
> @@ -1960,7 +1960,7 @@ static int qmp_pcie_power_off(struct phy *phy)
>   	struct qmp_pcie *qmp = phy_get_drvdata(phy);
>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
>   
> -	clk_disable_unprepare(qmp->pipe_clk);
> +	clk_bulk_disable_unprepare(qmp->num_pipe_clks, qmp->pipe_clks);
>   
>   	/* PHY reset */
>   	qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
> 
> The above is pretty much identical, expect for using the bulk API
> instead of the very straight-forward pipe-clock helpers.
> 
> @@ -2154,6 +2154,7 @@ static int qmp_pcie_parse_dt_legacy(struct qmp_pcie *qmp, struct device_node *np
>   	struct platform_device *pdev = to_platform_device(qmp->dev);
>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
>   	struct device *dev = qmp->dev;
> +	struct clk *clk;
>   
>   	qmp->serdes = devm_platform_ioremap_resource(pdev, 0);
>   	if (IS_ERR(qmp->serdes))
> @@ -2206,12 +2207,17 @@ static int qmp_pcie_parse_dt_legacy(struct qmp_pcie *qmp, struct device_node *np
>   		}
>   	}
>   
> -	qmp->pipe_clk = devm_get_clk_from_child(dev, np, NULL);
> -	if (IS_ERR(qmp->pipe_clk)) {
> -		return dev_err_probe(dev, PTR_ERR(qmp->pipe_clk),
> +	clk = devm_get_clk_from_child(dev, np, NULL);
> +	if (IS_ERR(clk)) {
> +		return dev_err_probe(dev, PTR_ERR(clk),
>   				     "failed to get pipe clock\n");
>   	}
>   
> +	qmp->num_pipe_clks = 1;
> +	qmp->pipe_clks = devm_kcalloc(dev, qmp->num_pipe_clks,
> +				      sizeof(*qmp->pipe_clks), GFP_KERNEL);
> +	qmp->pipe_clks[0].clk = clk;
> 
> So here you're poking at bulk API internals and forgot to set the id
> string, which the implementation uses.

I didn't forget, I just skipped setting it. Hmm. I thought that it is 
used only for clk_bulk_get. But after checking, it seems it's also used 
for error messages. Mea culpa.

But it's not that I was poking into the internals. These items are in 
the public header.

> 
> For reasons like this, and the fact that will likely never have a third
> pipe clock, I'm reluctant to using the bulk API.

Let's resort to the maintainer opinion then.

> 
> +
>   	return 0;
>   }
>   
> Johan

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
