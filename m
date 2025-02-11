Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCBC5C0219B
	for <linux-phy@archiver.kernel.org>; Tue, 11 Feb 2025 09:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2YbihXC48FwxsHMuNxk0fe6tqIJnS5NCI8LP0D0b2oo=; b=pa2RFZEODBG8C+
	CA7X2t69fBdIS9n8ygD9TBFsWADP3bwgyiJWQ5TIuDtaaZ439yYdSse9yAZG3hW1d+rbnqfiwm2SK
	AZ3Zy+eATE68fD+P9uXwZqQeAlYVBLiI5DPMd3iMBzoduSsHFScxtPpK+Rr/HdV97KAaH6bEBHiIt
	ohues3Y6MAiGHq85ywSAdA6zq9HXQU+RLR2WHYLv+MxwN8bY/X3p87G1kXmRC/k2bNWkxYJfqX1AG
	7eIcuhedBx3q6m6xxkJYRv3FaC7KsoRihO4zGs1ymnucj1JFaMan27FB45iSDF7JnIbfhzbbcZCsS
	BHRwqVyuaYcKMQ2pgL3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thmxb-00000003FiY-2hJH;
	Tue, 11 Feb 2025 09:53:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thmxZ-00000003FhV-0M5f
	for linux-phy@lists.infradead.org;
	Tue, 11 Feb 2025 09:53:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1thmxL-0007an-OH; Tue, 11 Feb 2025 10:53:27 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1thmxK-000OXM-2X;
	Tue, 11 Feb 2025 10:53:26 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1thmxK-0002lT-2F;
	Tue, 11 Feb 2025 10:53:26 +0100
Message-ID: <6c38b6e028858662aa5d45f4a14b993860b73cc0.camel@pengutronix.de>
Subject: Re: [PATCH v2 1/2] phy: qcom: pcie: Determine has_nocsr_reset
 dynamically
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Wenbin Yao <quic_wenbyao@quicinc.com>, vkoul@kernel.org,
 kishon@kernel.org,  dmitry.baryshkov@linaro.org, abel.vesa@linaro.org,
 quic_qianyu@quicinc.com,  neil.armstrong@linaro.org,
 manivannan.sadhasivam@linaro.org,  quic_devipriy@quicinc.com,
 konrad.dybcio@oss.qualcomm.com,  linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org,  linux-kernel@vger.kernel.org
Date: Tue, 11 Feb 2025 10:53:26 +0100
In-Reply-To: <20250211094231.1813558-2-quic_wenbyao@quicinc.com>
References: <20250211094231.1813558-1-quic_wenbyao@quicinc.com>
	 <20250211094231.1813558-2-quic_wenbyao@quicinc.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250211_015341_121917_A80A2CED 
X-CRM114-Status: GOOD (  16.69  )
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

On Di, 2025-02-11 at 17:42 +0800, Wenbin Yao wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Decide the in-driver logic based on whether the nocsr reset is present
> and defer checking the appropriateness of that to dt-bindings to save
> on boilerplate.
> 
> Reset controller APIs are fine consuming a nullptr, so no additional
> checks are necessary there.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 18 +++++++-----------
>  1 file changed, 7 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 873f2f9844c6..ac42e4b01065 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -2793,8 +2793,6 @@ struct qmp_phy_cfg {
>  
>  	bool skip_start_delay;
>  
> -	bool has_nocsr_reset;
> -
>  	/* QMP PHY pipe clock interface rate */
>  	unsigned long pipe_clock_rate;
>  
> @@ -3685,7 +3683,6 @@ static const struct qmp_phy_cfg sm8550_qmp_gen4x2_pciephy_cfg = {
>  
>  	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>  	.phy_status		= PHYSTATUS_4_20,
> -	.has_nocsr_reset	= true,
>  
>  	/* 20MHz PHY AUX Clock */
>  	.aux_clock_rate		= 20000000,
> @@ -3718,7 +3715,6 @@ static const struct qmp_phy_cfg sm8650_qmp_gen4x2_pciephy_cfg = {
>  
>  	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>  	.phy_status		= PHYSTATUS_4_20,
> -	.has_nocsr_reset	= true,
>  
>  	/* 20MHz PHY AUX Clock */
>  	.aux_clock_rate		= 20000000,
> @@ -3836,7 +3832,6 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x2_pciephy_cfg = {
>  
>  	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>  	.phy_status		= PHYSTATUS_4_20,
> -	.has_nocsr_reset	= true,
>  };
>  
>  static const struct qmp_phy_cfg x1e80100_qmp_gen4x4_pciephy_cfg = {
> @@ -3870,7 +3865,6 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x4_pciephy_cfg = {
>  
>  	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>  	.phy_status		= PHYSTATUS_4_20,
> -	.has_nocsr_reset	= true,
>  };
>  
>  static const struct qmp_phy_cfg x1e80100_qmp_gen4x8_pciephy_cfg = {
> @@ -3902,7 +3896,6 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x8_pciephy_cfg = {
>  
>  	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>  	.phy_status		= PHYSTATUS_4_20,
> -	.has_nocsr_reset	= true,
>  };
>  
>  static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
> @@ -4203,11 +4196,14 @@ static int qmp_pcie_reset_init(struct qmp_pcie *qmp)
>  	if (ret)
>  		return dev_err_probe(dev, ret, "failed to get resets\n");
>  
> -	if (cfg->has_nocsr_reset) {
> -		qmp->nocsr_reset = devm_reset_control_get_exclusive(dev, "phy_nocsr");
> -		if (IS_ERR(qmp->nocsr_reset))
> +	qmp->nocsr_reset = devm_reset_control_get_exclusive(dev, "phy_nocsr");
> +	if (IS_ERR(qmp->nocsr_reset)) {
> +		if (PTR_ERR(qmp->nocsr_reset) == -ENOENT ||
> +		    PTR_ERR(qmp->nocsr_reset) == -EINVAL)

Why is -EINVAL ignored here?

Without this you could just use
devm_reset_control_get_optional_exclusive(), which already turns -
ENOENT into NULL. That seems to me the correct thing to do, as from
driver point-of-view, this reset control is optional.

> +			qmp->nocsr_reset = NULL;
> +		else
>  			return dev_err_probe(dev, PTR_ERR(qmp->nocsr_reset),
> -						"failed to get no-csr reset\n");
> +					     "failed to get no-csr reset\n");
>  	}
>  
>  	return 0;

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
