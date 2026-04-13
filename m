Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0708EBFD14
	for <linux-phy@archiver.kernel.org>; Mon, 13 Apr 2026 08:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+JOqv9z/3bzG8ohK8BjdC+iv0//FBTcpXeIP6tePGes=; b=zQ7IPGsliar5ab
	TRCWuk/nhZyHbUDNBDPL9W5psTF3QGnZb+NF22XCY1cd6dA/QavMzJuzGhfieft4vlWQSWqF/SRcL
	XZgtxD42IEmlGTlQbMNSJ6oTzUyadd18pZDkswVhEMQGYY+feeQN2wpzF26qNIKp3AMM34Uz8UCX9
	b1R7AnPZfJwMatKdZetqXbOlR8VfXInigj+a7ish9XmfRDPK7HwtW7DsHy5EfuS3u14GSts4+7/1C
	c7Bt8Q1lF8+aD3H2Qp5/F+pyd/+8MJccbMMF+ZNf4JtmAqOzL1JCBzlPK3HrMrt9WcmmbFFDl4YlL
	IMClF6gqjv0T6U8xaYcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCNl-0000000FEmd-17Uy;
	Mon, 13 Apr 2026 08:10:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCNj-0000000FEmS-2Mns
	for linux-phy@bombadil.infradead.org;
	Mon, 13 Apr 2026 08:10:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=05gdZHrfBZ8gTD8JnSOhaPmIgqmPLlQaccNKQ/PS1BE=; b=c3zK7osz82PnfH/tJe9yn0VvBx
	x0fWFoo6D5VwE2qcSGfBKXFxpNRbjaJSVeXb+5twT6o+RTK3Y91u7cJzBA7Th8f0VQ0YVzrZo1nUx
	TTPeDma0+JH8vF8Z33na7eyfNItiU6BmbDQTpxhfWAQ2qH5vuH1DoiQ/852nsdSObeAEwphOYsii9
	jII6bbMqMPz4O1jlj7uC5QuRyay/ddFmMgbnu4Gh7qpdkRn6RDr9k5+5KobgUMmKlrt6CJaBwF0Vx
	MMmsLuF5MshmvKKpZCnDP9CdxePioVFc9cJ11po4UVaKt0EJtSOsLC2CTBwCmOvKOHNnnb39hky1l
	DZSy1TSw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCNg-0000000GMUY-1i1h
	for linux-phy@lists.infradead.org;
	Mon, 13 Apr 2026 08:10:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wCCNM-00032k-QK; Mon, 13 Apr 2026 10:10:32 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wCCNL-0058dy-2z;
	Mon, 13 Apr 2026 10:10:31 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wCCNL-000000004UV-3YPU;
	Mon, 13 Apr 2026 10:10:31 +0200
Message-ID: <2675a315153c83c14d1581e019fdddb611139da7.camel@pengutronix.de>
Subject: Re: [PATCH v3 3/5] phy: qcom: qmp-pcie: Support multiple nocsr
 resets
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson	 <andersson@kernel.org>, Konrad
 Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon, 13 Apr 2026 10:10:31 +0200
In-Reply-To: <20260412-glymur_gen5x8_phy_0413-v3-3-affcebc16b8b@oss.qualcomm.com>
References: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
	 <20260412-glymur_gen5x8_phy_0413-v3-3-affcebc16b8b@oss.qualcomm.com>
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_091052_714197_93D95272 
X-CRM114-Status: GOOD (  15.93  )
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

On So, 2026-04-12 at 23:25 -0700, Qiang Yu wrote:
> Refactor nocsr reset handling to support multiple nocsr resets required
> for PHY configurations with bifurcated operation modes.
> 
> The Glymur SoC's 3rd PCIe instance supports 8-lane mode using two PHYs
> in bifurcation, where each PHY requires its own nocsr reset to be
> controlled simultaneously. The current implementation only supports a
> single nocsr reset per PHY configuration.
> 
> Add num_nocsr and nocsr_list fields to struct qmp_phy_cfg to represent the
> number and names of a group of nocsr reset names. Initialize these fields
> for all PHYs that have nocsr resets, allowing the driver to correctly
> acquire multiple nocsr resets during probe and control them as an array
> by using reset_control_bulk APIs.
> 
> The refactoring maintains backward compatibility for existing single
> nocsr reset configurations while enabling support for multi-PHY
> scenarios like Glymur's 8-lane bifurcation mode.
> 
> Additionally, introduces x1e80100_qmp_gen3x2_pciephy_cfg as a separate
> configuration from sm8550_qmp_gen3x2_pciephy_cfg since the x1e80100 Gen3x2
> PHY requires nocsr reset support while the sm8550 Gen3x2 PHY does not.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 87 ++++++++++++++++++++++++++++----
>  1 file changed, 77 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 424c935e27a8766e1e26762bd3d7df527c1520e3..51db9eea41255bad0034bbcfbfdc36894c2bc95f 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
[...]
> @@ -4998,14 +5054,25 @@ static int qmp_pcie_reset_init(struct qmp_pcie *qmp)
>  	for (i = 0; i < cfg->num_resets; i++)
>  		qmp->resets[i].id = cfg->reset_list[i];
>  
> -	ret = devm_reset_control_bulk_get_exclusive(dev, cfg->num_resets, qmp->resets);
> +	ret = devm_reset_control_bulk_get_exclusive(dev, cfg->num_resets,
> +						    qmp->resets);

Unrelated and unnecessary change.

>  	if (ret)
>  		return dev_err_probe(dev, ret, "failed to get resets\n");
>  
> -	qmp->nocsr_reset = devm_reset_control_get_optional_exclusive(dev, "phy_nocsr");
> -	if (IS_ERR(qmp->nocsr_reset))
> -		return dev_err_probe(dev, PTR_ERR(qmp->nocsr_reset),
> -							"failed to get no-csr reset\n");
> +	if (!cfg->num_nocsr_resets)
> +		return 0;
> +	qmp->nocsr_reset = devm_kcalloc(dev, cfg->num_nocsr_resets,
> +				   sizeof(*qmp->nocsr_reset), GFP_KERNEL);
> +	if (!qmp->nocsr_reset)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < cfg->num_nocsr_resets; i++)
> +		qmp->nocsr_reset[i].id = cfg->nocsr_reset_list[i];
> +
> +	ret = devm_reset_control_bulk_get_exclusive(dev, cfg->num_nocsr_resets,
> +						    qmp->nocsr_reset);

Should this be devm_reset_control_bulk_get_optional_exclusive()?

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
