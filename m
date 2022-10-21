Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 429BFC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 21 Oct 2022 11:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SO79RHIaqmaXfCSjnOSXeh0QLUoSo/j+ubWM2lFiUSI=; b=VcoyLTpISprnAV
	esP8KXWTNilbrXEJ6+J1lWuuM0vxZ9D2XEDwX5Q76DBluCqczEQLdtHzu4Qd3ErWWrbHfRsteKRqX
	LU6/K+CL7rM21bvCZFn34rAeN3aixBzrtBLhTZmVxX637Z3BGfvZEGgqI0YarnTvbcWD0DljAsROf
	gEP/ikkhJWCFBSxhVV57bJgYZMC7AbLmt0olUI1vLtF0cHPfBsN6xe6Tvi+creqCuOvLaeiwMWA7s
	kAxJR1U7edhcEMFBen9dedQmg+Z65aq4Pu6Fpqif1hiDZJ0/tgqpg0O72LoSPynpWcZSFtPpxG/Oq
	8/oXq7B3g8cdBJ65CYtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olq3D-007Kst-NP; Fri, 21 Oct 2022 11:18:55 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olq3A-007KrB-Vw
	for linux-phy@lists.infradead.org; Fri, 21 Oct 2022 11:18:54 +0000
Received: by mail-lj1-x236.google.com with SMTP id n23so442190ljc.3
        for <linux-phy@lists.infradead.org>; Fri, 21 Oct 2022 04:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wfd+0JzA8Iis6KL3aTCze9WTP9msz3vAzTenCMjoVDE=;
        b=nfZhPlxaSX8v5gKfm1w63BxH5X+z8KD8VcClmTrnYHXjSz/ol8wMzmP7WkxJYj2UcC
         YoZ9ofotfsvv6tVxLl8PfUu67LNcOC3ZFlkK5F8hD1W83BEcMb9eZ1cT2ggHmLA9n9dZ
         AQG/J3JPPywCD5v+wVYVCBuTaUaMBpDniotZi14XK1e9uaTgW6p8C8XcpTfx5ZAf+RMb
         rs1MJJ50fJPXRT0Lqsb7kEbmuYRGuIO6DXl+crweDd7wRw/eDPt0ugGpyTeJnvy9ZVEj
         K91phP+1nPwH8NAGQXhS2StrlgPaRUnWGIMl6MC6xMfjBbWhXajBUxq90ydohxPQVkKd
         XVXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wfd+0JzA8Iis6KL3aTCze9WTP9msz3vAzTenCMjoVDE=;
        b=MA6jyw2y1qbL3kR7CimD6IXN+zv4jmu/tj2y9pmcexOGJ3gsWe3V6/g813YQZNebfT
         iXm/ctdrliypztOtb8ISIXUkWCBfFr8dAZL2GwB121V7XOOsgl3WRF3FMoSAZ/Ab1eH3
         PNoUNwkR5XV/Pip85aitzTMpY6rSXSNe+B/GrrW5Lmog0G6vQ1wcxqvp1zEuFH8xnHad
         pHQ/XYaeTtU0y0g8Nex1szQF6ESVl7i/JLR4MluMRB3tZf+xTmiuN0kwGBob9p3ligyr
         ZW6f1HjdkIScsIfp7Pn7iRN5cx0hQu+n+OMUNE0PJRyouImdd+nNkJiVNM98H6GS1si2
         XZDQ==
X-Gm-Message-State: ACrzQf11EV5Zo4+/loTJECq86Ob5Y9Tq+LC1ib0YhpXL2aBKcSpKsdOr
	UCKMvyXMSfZsvD+5nxrIhq9Rqw==
X-Google-Smtp-Source: AMsMyM7oUD764hXlWEUxV6GF6H3mR6bmGNk5lm7ii77aPC6tmzatDUcVjgoO4B7NXptwDHJTlCTz0w==
X-Received: by 2002:a2e:9447:0:b0:261:e71e:e3d with SMTP id o7-20020a2e9447000000b00261e71e0e3dmr6562244ljh.227.1666351130954;
        Fri, 21 Oct 2022 04:18:50 -0700 (PDT)
Received: from [10.27.10.248] ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id o13-20020a05651205cd00b00494643db68fsm3134458lfo.81.2022.10.21.04.18.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Oct 2022 04:18:50 -0700 (PDT)
Message-ID: <932765e0-ecbc-8c9b-69c5-ce0bb0c8de68@linaro.org>
Date: Fri, 21 Oct 2022 14:18:49 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v3 08/15] phy: qcom-qmp-pcie: add register init helper
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221021110947.28103-1-johan+linaro@kernel.org>
 <20221021110947.28103-9-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221021110947.28103-9-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_041853_062927_7645FDFB 
X-CRM114-Status: GOOD (  19.24  )
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

On 21/10/2022 14:09, Johan Hovold wrote:
> Generalise the serdes initialisation helper so that it can be used to
> initialise all the PHY registers (e.g. serdes, tx, rx, pcs).
> 
> Note that this defers the ungating of the PIPE clock somewhat, which is
> fine as it isn't needed until starting the PHY.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 51 +++++++-----------------
>   1 file changed, 15 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index dd7e72424fc0..f57d10f20277 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1820,46 +1820,32 @@ static void qmp_pcie_configure(void __iomem *base,
>   	qmp_pcie_configure_lane(base, tbl, num, 0xff);
>   }
>   
> -static void qmp_pcie_serdes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tables)
> -{
> -	void __iomem *serdes = qmp->serdes;
> -
> -	if (!tables)
> -		return;
> -
> -	qmp_pcie_configure(serdes, tables->serdes, tables->serdes_num);
> -}
> -
> -static void qmp_pcie_lanes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tables)
> +static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
>   {
>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
> +	void __iomem *serdes = qmp->serdes;
>   	void __iomem *tx = qmp->tx;
>   	void __iomem *rx = qmp->rx;
>   	void __iomem *tx2 = qmp->tx2;
>   	void __iomem *rx2 = qmp->rx2;
> +	void __iomem *pcs = qmp->pcs;
> +	void __iomem *pcs_misc = qmp->pcs_misc;
>   
> -	if (!tables)
> +	if (!tbls)
>   		return;
>   
> -	qmp_pcie_configure_lane(tx, tables->tx, tables->tx_num, 1);
> -	qmp_pcie_configure_lane(rx, tables->rx, tables->rx_num, 1);
> +	qmp_pcie_configure(serdes, tbls->serdes, tbls->serdes_num);
> +
> +	qmp_pcie_configure_lane(tx, tbls->tx, tbls->tx_num, 1);
> +	qmp_pcie_configure_lane(rx, tbls->rx, tbls->rx_num, 1);
>   
>   	if (cfg->lanes >= 2) {
> -		qmp_pcie_configure_lane(tx2, tables->tx, tables->tx_num, 2);
> -		qmp_pcie_configure_lane(rx2, tables->rx, tables->rx_num, 2);
> +		qmp_pcie_configure_lane(tx2, tbls->tx, tbls->tx_num, 2);
> +		qmp_pcie_configure_lane(rx2, tbls->rx, tbls->rx_num, 2);
>   	}
> -}
> -
> -static void qmp_pcie_pcs_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tables)
> -{
> -	void __iomem *pcs = qmp->pcs;
> -	void __iomem *pcs_misc = qmp->pcs_misc;
> -
> -	if (!tables)
> -		return;
>   
> -	qmp_pcie_configure(pcs, tables->pcs, tables->pcs_num);
> -	qmp_pcie_configure(pcs_misc, tables->pcs_misc, tables->pcs_misc_num);
> +	qmp_pcie_configure(pcs, tbls->pcs, tbls->pcs_num);
> +	qmp_pcie_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);

As seem above, if nothing else, tables -> tbls rename generates 
unnecessary diff.
Other than that LGTM.

>   }
>   
>   static int qmp_pcie_init(struct phy *phy)
> @@ -1932,8 +1918,8 @@ static int qmp_pcie_power_on(struct phy *phy)
>   	else
>   		mode_tables = cfg->tables_ep;
>   
> -	qmp_pcie_serdes_init(qmp, &cfg->tables);
> -	qmp_pcie_serdes_init(qmp, mode_tables);
> +	qmp_pcie_init_registers(qmp, &cfg->tables);
> +	qmp_pcie_init_registers(qmp, mode_tables);
>   
>   	ret = clk_prepare_enable(qmp->pipe_clk);
>   	if (ret) {
> @@ -1941,13 +1927,6 @@ static int qmp_pcie_power_on(struct phy *phy)
>   		return ret;
>   	}
>   
> -	/* Tx, Rx, and PCS configurations */
> -	qmp_pcie_lanes_init(qmp, &cfg->tables);
> -	qmp_pcie_lanes_init(qmp, mode_tables);
> -
> -	qmp_pcie_pcs_init(qmp, &cfg->tables);
> -	qmp_pcie_pcs_init(qmp, mode_tables);
> -
>   	/* Pull PHY out of reset state */
>   	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
>   

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
