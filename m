Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF276C43217
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 12:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EU/NqM7Iv7qS3Eg2foPPbDj0CbgNFH29zRe6eq2CKlU=; b=iKuY9+dGIjpzLM
	mGtnFuIMt7EqO9gHAz5xjqnyxkQlTudFO5jqtebssXTJxn2nfoHWF/mQCgGCuuSIeqlz2ygndDyaK
	3LQilUi55/v5AmAvxVctKiKIWiV8vcHtJoRuIyvnleONuJDtWMowgBMWrQFotdelDVVNaEEcGqtzX
	sTBR62RKtzMHbthyH0xOTuonghJwQO3yFx/+W2A9UEtL6POnuFYwZC9jzgEnKJ8mkPu2P+RRrHv/5
	0zHEm0VPNTI+duNUoSGLCateCtnOs7KUtuXzjcWmtcDRILCCZYe7kt9x2eLtJuOiPVbUKw2Q5DZ3z
	AJe1Q1w3gsXZ16sLPZew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orHxa-006Tku-Da; Sat, 05 Nov 2022 12:07:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orHxX-006TkP-Dc
	for linux-phy@lists.infradead.org; Sat, 05 Nov 2022 12:07:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 17DED60B31;
	Sat,  5 Nov 2022 12:07:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8294BC433C1;
	Sat,  5 Nov 2022 12:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667650052;
	bh=jHShzstBoSzrCbHHwKVDsQtLuaZrAOHYTh8Dz2LR5DQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A0cMQYqohB0acF8cNuwu6lmYUXYiCD/iI6JGQB2wcWJr9yVvs/NP2QIHcnGI+cgo1
	 rxI5XjfPmNO0Jov1zpe/KRok+pn0U6zSmrX1+fY6Q2QBl5RiUSoCh4NlDAOIX7P1Zk
	 ++65hZbW0fF7Z8m6LrPX+gUPyyaReBy20b68PVnKZndmnha7ZEDqx4oCxj8Efc82U6
	 yT1Y0vhqCJ8FLTNrZsmsjDThhB+xkH6dPqpEv9UOPJFAV4U+lOKXOHQBUjT0AMnXDp
	 KyNtt9kmdOUh+Abx9mUkQex4lFRVacLODkQqLVrDFpK7uV1i7l1QYD8CJ0GgZsZxbn
	 hOkV2snR/5VHw==
Date: Sat, 5 Nov 2022 17:37:27 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 08/16] phy: qcom-qmp-pcie: use shorter tables
 identifier
Message-ID: <Y2ZR/83gZuyDO8ZE@matsya>
References: <20221028133603.18470-1-johan+linaro@kernel.org>
 <20221028133603.18470-9-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221028133603.18470-9-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_050735_551265_FA9D8142 
X-CRM114-Status: GOOD (  19.56  )
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

On 28-10-22, 15:35, Johan Hovold wrote:
> In preparation for adding a new helper function that initialises all the
> registers in one place, use a shorter name for the configuration-tables
> pointer so that it becomes easier to see which table is being processed.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 26 ++++++++++++------------
>  1 file changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index dd7e72424fc0..791ed7ef0eab 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1820,17 +1820,17 @@ static void qmp_pcie_configure(void __iomem *base,
>  	qmp_pcie_configure_lane(base, tbl, num, 0xff);
>  }
>  
> -static void qmp_pcie_serdes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tables)
> +static void qmp_pcie_serdes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
>  {
>  	void __iomem *serdes = qmp->serdes;
>  
> -	if (!tables)
> +	if (!tbls)

I am not sure saving 2 chars really helps either with readability or
helps with shorter name, but for now am not going to nit pick this...

>  		return;
>  
> -	qmp_pcie_configure(serdes, tables->serdes, tables->serdes_num);
> +	qmp_pcie_configure(serdes, tbls->serdes, tbls->serdes_num);
>  }
>  
> -static void qmp_pcie_lanes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tables)
> +static void qmp_pcie_lanes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
>  {
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
>  	void __iomem *tx = qmp->tx;
> @@ -1838,28 +1838,28 @@ static void qmp_pcie_lanes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_t
>  	void __iomem *tx2 = qmp->tx2;
>  	void __iomem *rx2 = qmp->rx2;
>  
> -	if (!tables)
> +	if (!tbls)
>  		return;
>  
> -	qmp_pcie_configure_lane(tx, tables->tx, tables->tx_num, 1);
> -	qmp_pcie_configure_lane(rx, tables->rx, tables->rx_num, 1);
> +	qmp_pcie_configure_lane(tx, tbls->tx, tbls->tx_num, 1);
> +	qmp_pcie_configure_lane(rx, tbls->rx, tbls->rx_num, 1);
>  
>  	if (cfg->lanes >= 2) {
> -		qmp_pcie_configure_lane(tx2, tables->tx, tables->tx_num, 2);
> -		qmp_pcie_configure_lane(rx2, tables->rx, tables->rx_num, 2);
> +		qmp_pcie_configure_lane(tx2, tbls->tx, tbls->tx_num, 2);
> +		qmp_pcie_configure_lane(rx2, tbls->rx, tbls->rx_num, 2);
>  	}
>  }
>  
> -static void qmp_pcie_pcs_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tables)
> +static void qmp_pcie_pcs_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
>  {
>  	void __iomem *pcs = qmp->pcs;
>  	void __iomem *pcs_misc = qmp->pcs_misc;
>  
> -	if (!tables)
> +	if (!tbls)
>  		return;
>  
> -	qmp_pcie_configure(pcs, tables->pcs, tables->pcs_num);
> -	qmp_pcie_configure(pcs_misc, tables->pcs_misc, tables->pcs_misc_num);
> +	qmp_pcie_configure(pcs, tbls->pcs, tbls->pcs_num);
> +	qmp_pcie_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
>  }
>  
>  static int qmp_pcie_init(struct phy *phy)
> -- 
> 2.37.3

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
