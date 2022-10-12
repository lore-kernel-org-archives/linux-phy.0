Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15C9DC4332F
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 21:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XYZ8yJIre1v7BIg8+ULAbDTrjnJ9f+K5HJdCNGmAeK0=; b=qCyJvvs0+H/7JX
	rQWfjEJ0c0ZJMB6IOURIqhMgn1n2JCWf3kpfnDdQtvS5bzuv02HIkhSCFTxhCgdaQQ86ALGb4t9fV
	ocJedHEiSZeqF5Dgc8Txxbua+b/sxGZcBfmD7VurgSeVFVptyJSLdzSvQ3VwddZoAjWW5Rj6LSlLd
	2A2qgW11x4c+ktZhhDPrOOAXmC0lLjg8gB86jakCQC7ZLgkGZJez92bnEVL9f1P54DNRG+zn66f9J
	yYbwz3cX98DOaL/cQV52OK12xLHhBjE58ijIRmLdlsq9aoL6sQ212QKd4X4Dxe24cqASiI9PiBYFr
	iBuitRFqYag+55RKQckw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oij9E-009NGO-Fc; Wed, 12 Oct 2022 21:20:16 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oij9A-009NFa-TR
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 21:20:14 +0000
Received: by mail-lf1-x133.google.com with SMTP id m19so26223026lfq.9
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 14:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v4OEYFKZSF+UApl54L519UI2DEdgEqGAeljbcrdT1Pc=;
        b=l0HYEjDTWOkZf9llPVHPgyUCQQ/dQWmQA2e57ofODuv3VfOmJumHZSPoe8MErxdEc8
         3KwRg9UNOJ2FyERYJ97hzCAofqFfU4S+sfRyfS5KICsuVN+/McwUAnTDcSMigSXyEWNZ
         V1Pe8uNgn2OEIb4Yves0AZw0ZK5Zh1Z4BR6dBnZhFgViMkUHFs4SeWUGLvReEgfluuX0
         EFsV+it1REMAO9b6tCxS/BSTa1o7d203qQIjKFOya6IfNqZegx9UdJptCmzsw9tzLAK8
         LbztlioKwrJnsTYneW+Wlfp9PZ/bCn4eBtexLbTenEgkcA6m4AyyfveVQFiExHpDzL+A
         1xoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v4OEYFKZSF+UApl54L519UI2DEdgEqGAeljbcrdT1Pc=;
        b=4stqdgaKLMzgeao/5CETbj03LbF4CVGGzeaPtkIkRENt8lTniz0aXI+9vWRcJnVRL/
         RC51j/I9b+92uLjasNS+kOCEdvgfTkZCymCfjtXe0p/9l95vtfo7NVoBaiKrYThqbH1c
         ToYh+1f2u5NkhnmcnajfJGFZg+pqVCjr/99jMgG2xR3st3Ji+kpWx8dn2rrdbFXEDdN2
         pn5BZvmc+A5l6yTLDAAu48wsc8GVPvJXHD0Lib6PyniGVrqzsKGANl66vU5NsVktKAna
         y5fxKFE0QdTosjpCLfzxyg8TL0o7GI6tlKWmZcE9/7ta3DQurD18gXqYUJicgnDRwy8u
         E8ng==
X-Gm-Message-State: ACrzQf37Jrq/T4hTGq/OJg7j7pe3GUQxcGsl2jEX3LL2q1zMSVuAczgf
	3NqJ09p/EtXRjsgViBXruTtebA==
X-Google-Smtp-Source: AMsMyM75LcYxGennfHDMY9K72xPdr7rtGuhwig4ZI2ErGLFdx1ZzBJK1DLqXU3WuixHX7HQnLloq2w==
X-Received: by 2002:ac2:4e04:0:b0:4a2:b966:37ec with SMTP id e4-20020ac24e04000000b004a2b96637ecmr10347841lfr.319.1665609611086;
        Wed, 12 Oct 2022 14:20:11 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id m19-20020a056512359300b00490b5f09973sm111680lfr.92.2022.10.12.14.20.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 14:20:10 -0700 (PDT)
Message-ID: <81632b90-bc8a-7f3b-d2c9-153b4cea16ed@linaro.org>
Date: Thu, 13 Oct 2022 00:20:10 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 16/20] phy: qcom-qmp-pcie: drop start-ctrl abstraction
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
 <20221012085002.24099-16-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221012085002.24099-16-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_142012_987634_D812C301 
X-CRM114-Status: GOOD (  20.49  )
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

On 12/10/2022 11:49, Johan Hovold wrote:
> All PCIe PHYs need to start and stop the SerDes and PCS so drop the
> start-ctrl abstraction which is no longer needed since the QMP driver
> split.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 18 +++---------------
>   1 file changed, 3 insertions(+), 15 deletions(-)

I think it should be possible to also drop the pwrdn_ctrl by replacing 
it with something like no_refclk_drv_dsbl. However I'd like to 
understand why this is not required for SDX55. Is this the peculiarity 
of that platform? Or is it a specifics of the EP mode?
Many, Vinod, do you know the answer by chance?

Nevertheless, for this patch:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index d3e7e673114f..5534a4ad0243 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1355,7 +1355,6 @@ struct qmp_phy_cfg {
>   	/* array of registers with different offsets */
>   	const unsigned int *regs;
>   
> -	unsigned int start_ctrl;
>   	unsigned int pwrdn_ctrl;
>   	/* bit offset of PHYSTATUS in QPHY_PCS_STATUS register */
>   	unsigned int phy_status;
> @@ -1491,7 +1490,6 @@ static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
>   	.num_vregs		= 0,
>   	.regs			= pciephy_regs_layout,
>   
> -	.start_ctrl		= SERDES_START | PCS_START,
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>   	.phy_status		= PHYSTATUS,
>   };
> @@ -1517,7 +1515,6 @@ static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
>   	.num_vregs		= 0,
>   	.regs			= ipq_pciephy_gen3_regs_layout,
>   
> -	.start_ctrl		= SERDES_START | PCS_START,
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>   	.phy_status		= PHYSTATUS,
>   
> @@ -1547,7 +1544,6 @@ static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
>   	.num_vregs		= 0,
>   	.regs			= ipq_pciephy_gen3_regs_layout,
>   
> -	.start_ctrl		= SERDES_START | PCS_START,
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>   	.phy_status		= PHYSTATUS,
>   };
> @@ -1575,7 +1571,6 @@ static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
>   	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
>   	.regs			= sdm845_qmp_pciephy_regs_layout,
>   
> -	.start_ctrl		= PCS_START | SERDES_START,
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>   	.phy_status		= PHYSTATUS,
>   };
> @@ -1601,7 +1596,6 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
>   	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
>   	.regs			= sdm845_qhp_pciephy_regs_layout,
>   
> -	.start_ctrl		= PCS_START | SERDES_START,
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>   	.phy_status		= PHYSTATUS,
>   };
> @@ -1639,7 +1633,6 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
>   	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
>   	.regs			= sm8250_pcie_regs_layout,
>   
> -	.start_ctrl		= PCS_START | SERDES_START,
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>   	.phy_status		= PHYSTATUS,
>   };
> @@ -1677,7 +1670,6 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
>   	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
>   	.regs			= sm8250_pcie_regs_layout,
>   
> -	.start_ctrl		= PCS_START | SERDES_START,
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>   	.phy_status		= PHYSTATUS,
>   };
> @@ -1703,7 +1695,6 @@ static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
>   	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
>   	.regs			= pciephy_regs_layout,
>   
> -	.start_ctrl             = SERDES_START | PCS_START,
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>   	.phy_status		= PHYSTATUS,
>   
> @@ -1733,7 +1724,6 @@ static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
>   	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
>   	.regs			= sm8250_pcie_regs_layout,
>   
> -	.start_ctrl		= PCS_START | SERDES_START,
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>   	.phy_status		= PHYSTATUS,
>   };
> @@ -1761,7 +1751,6 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
>   	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
>   	.regs			= sm8250_pcie_regs_layout,
>   
> -	.start_ctrl		= PCS_START | SERDES_START,
>   	.pwrdn_ctrl		= SW_PWRDN,
>   	.phy_status		= PHYSTATUS_4_20,
>   };
> @@ -1789,7 +1778,6 @@ static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
>   	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
>   	.regs			= sm8250_pcie_regs_layout,
>   
> -	.start_ctrl             = SERDES_START | PCS_START,
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>   	.phy_status		= PHYSTATUS,
>   };
> @@ -1832,7 +1820,6 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
>   	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
>   	.regs			= sm8250_pcie_regs_layout,
>   
> -	.start_ctrl             = SERDES_START | PCS_START,
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>   	.phy_status		= PHYSTATUS_4_20,
>   };
> @@ -1997,7 +1984,7 @@ static int qmp_pcie_power_on(struct phy *phy)
>   	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
>   
>   	/* start SerDes and Phy-Coding-Sublayer */
> -	qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
> +	qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START);
>   
>   	if (!cfg->skip_start_delay)
>   		usleep_range(1000, 1200);
> @@ -2030,7 +2017,8 @@ static int qmp_pcie_power_off(struct phy *phy)
>   	qphy_setbits(qphy->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
>   
>   	/* stop SerDes and Phy-Coding-Sublayer */
> -	qphy_clrbits(qphy->pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
> +	qphy_clrbits(qphy->pcs, cfg->regs[QPHY_START_CTRL],
> +			SERDES_START | PCS_START);
>   
>   	/* Put PHY into POWER DOWN state: active low */
>   	qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
