Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37BC7C77B73
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jun 2023 23:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IGX3+CNpwSuNbsLd2eA/1f1H/l2afBZlc+ubTnr+Z/4=; b=10Ds5VPKZTLyTJ
	1wRd2PQV2rpr33n6NjrpidgQfAQARQIYsHM6cA9YHL2G4Xd76TEs09/QVEdK68tgKLzwhA/ymnM7E
	kX+MVM+WNMysLUkhfaO1jmphRadfaNBcMdk2MwO15lE2w+NDLQZlqkyBo5d7Hz5bEqt+IBAZknO+A
	rtai1pLtEGVJlSwmnZrCICgBkLVJvONiBNkx7D8Awowf9FRpfNdDsQiaVDafwYmvr2jPzMEVacgMN
	2zJ/qc+Aop5nOS4Up6VEHgYNANXjfqVUcdNa+ROUzR0cBHQVmTY2lYJLHcKPcHCkqnYEhe4VUdbRX
	7OwjB8NzexGwWpCIui1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6JOq-00H7CE-2E;
	Mon, 05 Jun 2023 23:14:08 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6JOn-00H7B5-1S
	for linux-phy@lists.infradead.org;
	Mon, 05 Jun 2023 23:14:07 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f6148f9679so4721088e87.3
        for <linux-phy@lists.infradead.org>; Mon, 05 Jun 2023 16:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686006843; x=1688598843;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fglrneJgPq0OiD5qkA1ASIqwU5N6cXFR8XgLk734s/Y=;
        b=dM+ipUGm+Lgz/I+QA3j/+VPx5LJvJORb8MTX+ArxtZ97HRaYOI7dSqhyXVoY35ObSm
         WPJw2Ko+RzzQ4yG0nqC+XSEK1xigpkFISLibbHITEbAUsZncPlonvIXm/jRsAm1coNhl
         4IU2roEApaQglbCdN8zR83YbE/HTS/e1388x/FVRXwLxyGe8jn3WDPB0HxWTBfCYdTF8
         n3E8gy6vqtq//+nK1yIj99bufUBrnTVRRCbvt6rq0ipkOcZ908fpSzyWvhdQ9yRXFCid
         U94+d2jnrecx5H+9GGYv2jG0rTDMu3e46yIjGUK/41obx+pVkJBU5QnHC10nhRLi57Vn
         yk8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686006843; x=1688598843;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fglrneJgPq0OiD5qkA1ASIqwU5N6cXFR8XgLk734s/Y=;
        b=SAtdcdYZgOpyAC+D7zzXZc3NZ/TpFdnHqsuqGS7j8NAzvfY8Z6eJ1huOZm3Qb6owKM
         62Lm4DKwjbYHUtxjAVjYWX+wgzDCs6PDCqOG+W0T24vU7TPGE48lgK3geMI9M62X/qV9
         cTbetrZz8KQ56jSkOur7tbxLVlRHXUu7baJLWAI32vBYJDOp1lq8HqchBW9fU3dTr2xt
         W05MacTlwdhBsZsm0C0jUxwcXAd+0MVRY8utt3umj6Tjz+TohQSuI3ayk5SObP47cbG0
         vHQHvImKpgKWAQ5wEWuPdTpEqLlcUw8jd8k8TdqDrYXlxjV+tv1MwHag3C5gW3IJIKb4
         4U0A==
X-Gm-Message-State: AC+VfDy2M9EBOPeFsYxTHWQcmxP4158Q9wVovZQgj/3m4HsBK9oWZfmn
	6Zqqts28rLY/eW6J2KJAlllEYg==
X-Google-Smtp-Source: ACHHUZ5Te+XUX1/CKkj+bCw159WdkwIYU6uMDTC1Qrj6ErShwleY0+eVsaKW1xWpkjPz38GLL1Hijw==
X-Received: by 2002:a19:a40e:0:b0:4f1:4504:2679 with SMTP id q14-20020a19a40e000000b004f145042679mr200436lfc.41.1686006842678;
        Mon, 05 Jun 2023 16:14:02 -0700 (PDT)
Received: from [192.168.1.101] (abyj96.neoplus.adsl.tpnet.pl. [83.9.29.96])
        by smtp.gmail.com with ESMTPSA id t12-20020ac2548c000000b004eb4074f40fsm1282304lfk.241.2023.06.05.16.14.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jun 2023 16:14:02 -0700 (PDT)
Message-ID: <fe51f704-3d24-d184-0251-39dc64a25598@linaro.org>
Date: Tue, 6 Jun 2023 01:14:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v2 1/2] phy: qcom-snps-femto-v2: properly enable ref clock
Content-Language: en-US
To: Adrien Thierry <athierry@redhat.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Manu Gautam <mgautam@codeaurora.org>, Wesley Cheng <wcheng@codeaurora.org>,
 Philipp Zabel <pza@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20230605184455.34832-1-athierry@redhat.com>
 <20230605184455.34832-2-athierry@redhat.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230605184455.34832-2-athierry@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_161405_745359_389DE2F9 
X-CRM114-Status: GOOD (  31.16  )
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



On 5.06.2023 20:44, Adrien Thierry wrote:
> The driver is not enabling the ref clock, which thus gets disabled by
> the clk_disable_unused initcall. This leads to the dwc3 controller
> failing to initialize if probed after clk_disable_unused is called, for
> instance when the driver is built as a module.
> 
> To fix this, switch to the clk_bulk API to handle both cfg_ahb and ref
> clocks at the proper places.
> 
> Note that the cfg_ahb clock is currently not used by any device tree
> instantiation of the PHY. Work needs to be done separately to fix this.
> 
> Link: https://lore.kernel.org/linux-arm-msm/ZEqvy+khHeTkC2hf@fedora/
> Fixes: 51e8114f80d0 ("phy: qcom-snps: Add SNPS USB PHY driver for QCOM based SOCs")
> Signed-off-by: Adrien Thierry <athierry@redhat.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 67 ++++++++++++++-----
>  1 file changed, 49 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> index 6c237f3cc66d..ce1d2f8b568a 100644
> --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> @@ -110,11 +110,13 @@ struct phy_override_seq {
>  /**
>   * struct qcom_snps_hsphy - snps hs phy attributes
>   *
> + * @dev: device structure
> + *
>   * @phy: generic phy
>   * @base: iomapped memory space for snps hs phy
>   *
> - * @cfg_ahb_clk: AHB2PHY interface clock
> - * @ref_clk: phy reference clock
> + * @num_clks: number of clocks
> + * @clks: array of clocks
>   * @phy_reset: phy reset control
>   * @vregs: regulator supplies bulk data
>   * @phy_initialized: if PHY has been initialized correctly
> @@ -122,11 +124,13 @@ struct phy_override_seq {
>   * @update_seq_cfg: tuning parameters for phy init
>   */
>  struct qcom_snps_hsphy {
> +	struct device *dev;
> +
>  	struct phy *phy;
>  	void __iomem *base;
>  
> -	struct clk *cfg_ahb_clk;
> -	struct clk *ref_clk;
> +	int num_clks;
> +	struct clk_bulk_data *clks;
>  	struct reset_control *phy_reset;
>  	struct regulator_bulk_data vregs[SNPS_HS_NUM_VREGS];
>  
> @@ -135,6 +139,32 @@ struct qcom_snps_hsphy {
>  	struct phy_override_seq update_seq_cfg[NUM_HSPHY_TUNING_PARAMS];
>  };
>  
> +static int qcom_snps_hsphy_clk_init(struct qcom_snps_hsphy *hsphy)
> +{
> +	struct device *dev = hsphy->dev;
> +
> +	hsphy->num_clks = 2;
> +	hsphy->clks = devm_kcalloc(dev, hsphy->num_clks, sizeof(*hsphy->clks), GFP_KERNEL);
> +	if (!hsphy->clks)
> +		return -ENOMEM;
> +
> +	/*
> +	 * HACK: For cfg_ahb clock, use devm_clk_get_optional() because currently no device
> +	 * tree instantiation of the PHY is using the clock. This needs to be fixed in order
> +	 * for this code to be able to use devm_clk_bulk_get().
> +	 */
> +	hsphy->clks[0].id = "cfg_ahb";
> +	hsphy->clks[0].clk = devm_clk_get_optional(dev, "cfg_ahb");
Hm, maybe you could first check if we can get this clock
properly (!IS_ERR_OR_NULL) and then allocate the second
slot..

> +
> +	hsphy->clks[1].id = "ref";
> +	hsphy->clks[1].clk = devm_clk_get(dev, "ref");
> +	if (IS_ERR(hsphy->clks[1].clk))
> +		return dev_err_probe(dev, PTR_ERR(hsphy->clks[1].clk),
> +				     "failed to get ref clk\n");
> +
> +	return 0;
> +}
> +
>  static inline void qcom_snps_hsphy_write_mask(void __iomem *base, u32 offset,
>  						u32 mask, u32 val)
>  {
> @@ -165,7 +195,7 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
>  					   0, USB2_AUTO_RESUME);
>  	}
>  
> -	clk_disable_unprepare(hsphy->cfg_ahb_clk);
> +	clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
>  	return 0;
>  }
>  
> @@ -175,9 +205,9 @@ static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
>  
>  	dev_dbg(&hsphy->phy->dev, "Resume QCOM SNPS PHY, mode\n");
>  
> -	ret = clk_prepare_enable(hsphy->cfg_ahb_clk);
> +	ret = clk_bulk_prepare_enable(hsphy->num_clks, hsphy->clks);
Aren't you dereferencing NULL if the optional clock is absent?

Konrad
>  	if (ret) {
> -		dev_err(&hsphy->phy->dev, "failed to enable cfg ahb clock\n");
> +		dev_err(&hsphy->phy->dev, "failed to enable clocks\n");
>  		return ret;
>  	}
>  
> @@ -374,16 +404,16 @@ static int qcom_snps_hsphy_init(struct phy *phy)
>  	if (ret)
>  		return ret;
>  
> -	ret = clk_prepare_enable(hsphy->cfg_ahb_clk);
> +	ret = clk_bulk_prepare_enable(hsphy->num_clks, hsphy->clks);
>  	if (ret) {
> -		dev_err(&phy->dev, "failed to enable cfg ahb clock, %d\n", ret);
> +		dev_err(&phy->dev, "failed to enable clocks, %d\n", ret);
>  		goto poweroff_phy;
>  	}
>  
>  	ret = reset_control_assert(hsphy->phy_reset);
>  	if (ret) {
>  		dev_err(&phy->dev, "failed to assert phy_reset, %d\n", ret);
> -		goto disable_ahb_clk;
> +		goto disable_clks;
>  	}
>  
>  	usleep_range(100, 150);
> @@ -391,7 +421,7 @@ static int qcom_snps_hsphy_init(struct phy *phy)
>  	ret = reset_control_deassert(hsphy->phy_reset);
>  	if (ret) {
>  		dev_err(&phy->dev, "failed to de-assert phy_reset, %d\n", ret);
> -		goto disable_ahb_clk;
> +		goto disable_clks;
>  	}
>  
>  	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_CFG0,
> @@ -448,8 +478,8 @@ static int qcom_snps_hsphy_init(struct phy *phy)
>  
>  	return 0;
>  
> -disable_ahb_clk:
> -	clk_disable_unprepare(hsphy->cfg_ahb_clk);
> +disable_clks:
> +	clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
>  poweroff_phy:
>  	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
>  
> @@ -461,7 +491,7 @@ static int qcom_snps_hsphy_exit(struct phy *phy)
>  	struct qcom_snps_hsphy *hsphy = phy_get_drvdata(phy);
>  
>  	reset_control_assert(hsphy->phy_reset);
> -	clk_disable_unprepare(hsphy->cfg_ahb_clk);
> +	clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
>  	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
>  	hsphy->phy_initialized = false;
>  
> @@ -554,14 +584,15 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
>  	if (!hsphy)
>  		return -ENOMEM;
>  
> +	hsphy->dev = dev;
> +
>  	hsphy->base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(hsphy->base))
>  		return PTR_ERR(hsphy->base);
>  
> -	hsphy->ref_clk = devm_clk_get(dev, "ref");
> -	if (IS_ERR(hsphy->ref_clk))
> -		return dev_err_probe(dev, PTR_ERR(hsphy->ref_clk),
> -				     "failed to get ref clk\n");
> +	ret = qcom_snps_hsphy_clk_init(hsphy);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "failed to initialize clocks\n");
>  
>  	hsphy->phy_reset = devm_reset_control_get_exclusive(&pdev->dev, NULL);
>  	if (IS_ERR(hsphy->phy_reset)) {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
