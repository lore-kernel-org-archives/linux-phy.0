Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A097DC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 13:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ta422+M3+TNyBmxaC9qBFjueDKoJrc+xbqmXCyfUMas=; b=38W7I8Lzwoa2ZI
	sU9vuwqyRPaeY4qRUCvQUBx2US9Mh69WqlWR2uKhkzkde7+69N4dMiHx7FVJ0P81jANSUrdSK8J23
	sduunDEWfABoYgSf2OCM5wIT6MJQijUt8a0oTF9JeRF1ZgzTcJ5m1iCkyd8GaipBsRJvnFX5vsAaS
	pv6+UygjvGOo8Gq9+PQD2b9tsXO8AKeQuDK8+3rDNTfP1Ana2xZhU0kqec3cM52+BswY3SxAFU6lv
	kto+vQkvYQsOfjJ/oSnglU+MrDFdBlmm9UQ3HQPZ6gN7z3deeOjpbdNTARuDCqfUf7bblwYQjobxO
	ZRfjH7yMeUceGbkflzyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8rq-00247T-1W; Wed, 19 Oct 2022 13:12:18 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8rg-0023yJ-Bg
	for linux-phy@lists.infradead.org; Wed, 19 Oct 2022 13:12:10 +0000
Received: by mail-lf1-x12e.google.com with SMTP id g7so22945809lfv.5
        for <linux-phy@lists.infradead.org>; Wed, 19 Oct 2022 06:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rqDvk7+exoNL3wVC4+UCNH0Gcht0+8dPb7k0aCCIA4U=;
        b=l2wqik9MZ7MgeaQq4PYtPyC/ESK8vjtBxpP3yMZwEc2/jwyY2UQpAsKSvnrAe3wT1c
         ajPfNOuKHkroxGyXUbIPSULj5Nj+ZJky1/fvRxnt/k29EykkAxrq7XkQ0J5W+2eE1Oab
         1hv6lY0g2Vb4kkEyI6G1xleX61MJIyVqgtG2ZVZ5gEFol3tKGsT0BPaNcP9hAK6Wa07w
         7S+n5WQIt0xXKNDkj8L+Owp5SlS5DDvSGbMr9nN+9S/9DoG4EbUr7c9m+EVbRovMwvmr
         l9zN3vSidTNMAf60dnHj5FJkdoy/kYQGlWktoNkgGY+u955mnz1W+jFjc0Mo9i6RnOEv
         QlNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rqDvk7+exoNL3wVC4+UCNH0Gcht0+8dPb7k0aCCIA4U=;
        b=3Tko7d508lCPpyPNqvFO2hJM8zPODa0uQpEJrLmimJ/CMv+VXVRcgmY9aBdkcmLNFd
         W56aOf+ndXUsNtsBCasP61WgQNoi/Ve8DjhBvudDXrHEtwWWzmVZOWR2nR78EnpkGTev
         jykugbkW5TP/SuhzEoVSV/odW6RtgXiSMUQ/Z8B37Tna45JAwma4Xfp+IgmCn+0rNMh0
         eu6jqn2p0MAh5ImCyp6QVSmfbncrr6wNE+FBpBjOoFO2YF8US5KGFTAEXr5l2Mq/px6q
         jN4pM7yj9fy1zgOVfsmOwTiDt3VQFKO1j/AvwpPr3lhmeG6bHpXdIpYSVTjO0lm/K9TD
         S5Kg==
X-Gm-Message-State: ACrzQf1S7ufpIzYNwYifsxm9Zs4jIK0tCY+bv8AdXAW1lzKZPDb6B1rN
	0FUWu4Wa0J8tsApCt9T27uUKVA==
X-Google-Smtp-Source: AMsMyM5tGKH8k0FM95AqUc7ouKnl7Osrbk4TyjvB28KHNdYabY8SPKqjwcZD/vcUv8DowyQeSBW4vA==
X-Received: by 2002:a05:6512:3053:b0:4a2:6b9c:a853 with SMTP id b19-20020a056512305300b004a26b9ca853mr2700368lfb.666.1666185123437;
        Wed, 19 Oct 2022 06:12:03 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id k14-20020ac2456e000000b004948378080csm2274704lfm.290.2022.10.19.06.12.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 06:12:03 -0700 (PDT)
Message-ID: <0f1fff20-772f-c4d1-f803-f1824ef23780@linaro.org>
Date: Wed, 19 Oct 2022 16:12:02 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v2 08/15] phy: qcom-qmp-pcie: add register init helper
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-9-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221019113552.22353-9-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_061208_517863_784DBCF3 
X-CRM114-Status: GOOD (  21.01  )
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

On 19/10/2022 14:35, Johan Hovold wrote:
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

Nit: could we please keep it as `tables'?

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
