Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AAB0C02198
	for <linux-phy@archiver.kernel.org>; Wed, 12 Feb 2025 11:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aCuCsrfzl7da5gHycvX0d1wM6+VEMKmiQaB/6nST96g=; b=ktscBouDSSVQBk
	JMPbXkm4zu0P9mCkdy96Zx9C4A1l8AAOxPXpSZs0F27CDhPUl2/bK7h7Rz93icRzvkIxFGvDT9bzK
	b1eyHs93V9iu3hPHw0TQp6hSCBfkM2Ut6T7RPU32Nv0x/Uv9oaW3tCHB1jNqWGpVFBJ7InmITS0IZ
	0EINJaLCkXG3qKgKvA7nUytzWjv8DTzthxp4nkwdxrO3U280ehgfSNWE8tO3JTe1lw6HKR+3NVZVD
	xCSYSD6bVW7K1a2SAh1hbG7oWeUXuTXQcWrfIxqNlPmUWqCI8tt3ex8Pr5ZjFMeKIxdOqBgJ+cpIg
	BhlLJ7WpuEsXWSQEcc6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiAdA-0000000779V-2ZkH;
	Wed, 12 Feb 2025 11:10:12 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiAZJ-000000076bO-1kym
	for linux-phy@lists.infradead.org;
	Wed, 12 Feb 2025 11:06:14 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-545064389d3so4216937e87.0
        for <linux-phy@lists.infradead.org>; Wed, 12 Feb 2025 03:06:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739358371; x=1739963171; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FbuIJxgxOM6b3FAvs3lxmIETNGAVSRJQpWG3dxdlGlo=;
        b=wmVSsEupExan11pBluSTdlPbONoeIor4YSe/UlZEvkZ10iSmi79fu4fIncfV1NU6Fp
         xTOQOWOUW45E4GrG2vJYWTmW5+9mirYPu3QaTIXHmugeB5+q6B3fOWzGHL/UMcQZwMLB
         qAONZZ2skBymuIzjLFToGvRxTcVkRyBXZW9L11glb2ErwzOk+FTs2eqvrrmJDx8/gDLU
         hBVMB7Y+IgcfIBs3otzGsvfzUS7qoiP1dvOD9SdHbbbz/kMCCWVTWdn9gmPBJnRoZ6ES
         5HwTPvNNnRkHpXfuFcAwNDTnwkhzOMsMh7CQEhzcgO0Y/zRFQ6L8wey+dzd/avZuBqHf
         wLMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739358371; x=1739963171;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FbuIJxgxOM6b3FAvs3lxmIETNGAVSRJQpWG3dxdlGlo=;
        b=pUbP1Kq30Je/bem+SNWeQKeL29Fdy1PlaJGGPbQQzGMlQEyq8INeF/AfYvAN+xAKGP
         2ewaucw1DXIQJENAsLYXz2ihaC0oKo1WhjM5BDobvZ/XRWa91zjpOJyLZ/KWHufDxYue
         d/H4GlHjUIL3dde6sQqfTofrUNaKweiIuVV7XkRyfLPAddIiNkb+jmGKNepPUtA6nIyP
         pqYX4kKuchaMG3vEgHVCRFkbG1ckhIufvocsqK5Waul2HfM5yIAlBd11+DX52LhOGIuZ
         WPg5PPOYAE8PJzMaNlB9wJKih3j7fyYgnF3Lap8PC9bGvW/C6qZos5Dw1IXYiLCT1EgA
         AoFA==
X-Forwarded-Encrypted: i=1; AJvYcCVdSIOd1BMwpo8xebNF19e3Kvq75a+xx/6xHTmR3qhhUHEcdf4g1SxnjhnkXAAj3EzZi78Z5Ynk0ss=@lists.infradead.org
X-Gm-Message-State: AOJu0YzmdDDY3H1lbCF94on1jwzMPfBb5X5gF0Ye+7kqmlt3tNpkqu/6
	K4SVRE6X18w7uh+Kb5IKUD7ABxMW0LiuV14Y9QMSVjRxbQ8Bhj+ORgVGkdziDWw=
X-Gm-Gg: ASbGncuHYjmcadxrrqpWn0BQNUuubeR76dj6i28wnlAocI+oucxNhXSnr/oVoOsbMX3
	RKV+Q+yTAQCtByzJiwdhsu/VTv+l/cw8qd/sKencAFEt0j2JDuu5RMgoCmYpTuoLoUyJmZTF3mD
	CbKuBoHQ976U9mG6kOpn3qocl4yTKyeaCOCVk1+4X/tPXNfpYsajyMl+kyIrjwDLEiEDJv51y4n
	qJRMUByYCknlq89uOc5oCUX7tbIWxHfcJkCg6clTy+C1tzfGWtU32HpEJAD1fuUkaCX3ONUHWZi
	NZzwU0z+qeuXuUAlXw5rfqvUtO/cnquS94HDBWbJ3DcuN+gXJZ6RNR03Bhz+LfQVitv8YJA=
X-Google-Smtp-Source: AGHT+IFTcKdx4nA23pokOx2URIwXHiFnzKqLGUwaYVxKBpnpui9vFh4KPIxyijE789GxUxpT3RNyNw==
X-Received: by 2002:a05:6512:31ce:b0:545:a2a:589 with SMTP id 2adb3069b0e04-5451816d735mr762866e87.52.1739358371362;
        Wed, 12 Feb 2025 03:06:11 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5450f6a7246sm721156e87.121.2025.02.12.03.06.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 03:06:09 -0800 (PST)
Date: Wed, 12 Feb 2025 13:06:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: "Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, p.zabel@pengutronix.de, 
	abel.vesa@linaro.org, quic_qianyu@quicinc.com, neil.armstrong@linaro.org, 
	manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com, konrad.dybcio@oss.qualcomm.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
Message-ID: <ycunwk7pz4h2vvtztbo27ae64u2g6prsndks4uxtnyh75yvcka@4r6haszju6sw>
References: <20250211094231.1813558-1-quic_wenbyao@quicinc.com>
 <20250211094231.1813558-3-quic_wenbyao@quicinc.com>
 <7deghiadmomrz7w7vq3v7nkzq2kabq4xbhkouswjrexif7pip3@tvjlpvuulxvp>
 <791fa29e-a2b5-d5f6-3cbc-0f499b463262@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <791fa29e-a2b5-d5f6-3cbc-0f499b463262@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_030613_484602_6FF23DCA 
X-CRM114-Status: GOOD (  36.50  )
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

On Wed, Feb 12, 2025 at 04:31:21PM +0800, Wenbin Yao (Consultant) wrote:
> On 2/12/2025 8:13 AM, Dmitry Baryshkov wrote:
> > On Tue, Feb 11, 2025 at 05:42:31PM +0800, Wenbin Yao wrote:
> > > From: Qiang Yu <quic_qianyu@quicinc.com>
> > > 
> > > Some QCOM PCIe PHYs support no_csr reset. Unlike BCR reset which resets the
> > > whole PHY (hardware and register), no_csr reset only resets PHY hardware
> > > but retains register values, which means PHY setting can be skipped during
> > > PHY init if PCIe link is enabled in booltloader and only no_csr is toggled
> > > after that.
> > > 
> > > Hence, determine whether the PHY has been enabled in bootloader by
> > > verifying QPHY_START_CTRL register. If it's programmed and no_csr reset is
> > > available, skip BCR reset and PHY register setting to establish the PCIe
> > > link with bootloader - programmed PHY settings.
> > > 
> > > Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> > > Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
> > > ---
> > >   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 91 +++++++++++++++---------
> > >   1 file changed, 58 insertions(+), 33 deletions(-)
> > > 
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > > index ac42e4b01065..7f0802d09812 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > > @@ -2805,6 +2805,7 @@ struct qmp_pcie {
> > >   	const struct qmp_phy_cfg *cfg;
> > >   	bool tcsr_4ln_config;
> > > +	bool phy_initialized;
> > >   	void __iomem *serdes;
> > >   	void __iomem *pcs;
> > > @@ -3976,6 +3977,7 @@ static int qmp_pcie_init(struct phy *phy)
> > >   {
> > >   	struct qmp_pcie *qmp = phy_get_drvdata(phy);
> > >   	const struct qmp_phy_cfg *cfg = qmp->cfg;
> > > +	void __iomem *pcs = qmp->pcs;
> > >   	int ret;
> > >   	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
> > > @@ -3984,10 +3986,17 @@ static int qmp_pcie_init(struct phy *phy)
> > >   		return ret;
> > >   	}
> > > -	ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
> > > -	if (ret) {
> > > -		dev_err(qmp->dev, "reset assert failed\n");
> > > -		goto err_disable_regulators;
> > > +	qmp->phy_initialized = !!(readl(pcs + cfg->regs[QPHY_START_CTRL]));
> > > +	/*
> > > +	 * Toggle BCR reset for phy that doesn't support no_csr
> > > +	 * reset or has not been initialized
> > > +	 */
> > > +	if (!qmp->nocsr_reset || !qmp->phy_initialized) {
> > Instead of having phy_initialized please add another boolean field,
> > qmp->skip_init = !!qmp->nocsr_reset && !!phy_initialized;
> > Use qmp->skip_init through the code.
> 
> In qmp_pcie_power_off and qmp_pcie_exit, we only check qmp->nocsr_reset. It
> 
> seems unnecessary to combine qmp->nocsr_reset with phy_initialized.

The PHY is going to be initialized after qmp_pcie_init() completes, but
you are not updating phy_initialized. On the other hand skip_init still
does what it is supposed to do: tells the driver to skip (re-)init of
the registers.

> 
> > 
> > > +		ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
> > > +		if (ret) {
> > > +			dev_err(qmp->dev, "reset assert failed\n");
> > > +			goto err_disable_regulators;
> > > +		}
> > >   	}
> > >   	ret = reset_control_assert(qmp->nocsr_reset);
> > > @@ -3998,10 +4007,12 @@ static int qmp_pcie_init(struct phy *phy)
> > >   	usleep_range(200, 300);
> > > -	ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
> > > -	if (ret) {
> > > -		dev_err(qmp->dev, "reset deassert failed\n");
> > > -		goto err_assert_reset;
> > > +	if (!qmp->nocsr_reset || !qmp->phy_initialized) {
> > > +		ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
> > > +		if (ret) {
> > > +			dev_err(qmp->dev, "reset deassert failed\n");
> > > +			goto err_assert_reset;
> > > +		}
> > >   	}
> > >   	ret = clk_bulk_prepare_enable(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
> > > @@ -4011,7 +4022,8 @@ static int qmp_pcie_init(struct phy *phy)
> > >   	return 0;
> > >   err_assert_reset:
> > > -	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
> > > +	if (!qmp->nocsr_reset || !qmp->phy_initialized)
> > > +		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
> > >   err_disable_regulators:
> > >   	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
> > > @@ -4023,7 +4035,10 @@ static int qmp_pcie_exit(struct phy *phy)
> > >   	struct qmp_pcie *qmp = phy_get_drvdata(phy);
> > >   	const struct qmp_phy_cfg *cfg = qmp->cfg;
> > > -	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
> > > +	if (!qmp->nocsr_reset)
> > > +		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
> > > +	else
> > > +		reset_control_assert(qmp->nocsr_reset);
> > >   	clk_bulk_disable_unprepare(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
> > > @@ -4042,16 +4057,22 @@ static int qmp_pcie_power_on(struct phy *phy)
> > >   	unsigned int mask, val;
> > >   	int ret;
> > > -	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> > > -			cfg->pwrdn_ctrl);
> > > +	/*
> > > +	 * Write CSR register for phy that doesn't support no_csr
> > what is CSR register?
> The registers of PHY.
> > 
> > > +	 * reset or has not been initialized
> > > +	 */
> > > +	if (!qmp->nocsr_reset || !qmp->phy_initialized) {
> > > +		qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> > > +				cfg->pwrdn_ctrl);
> > > -	if (qmp->mode == PHY_MODE_PCIE_RC)
> > > -		mode_tbls = cfg->tbls_rc;
> > > -	else
> > > -		mode_tbls = cfg->tbls_ep;
> > > +		if (qmp->mode == PHY_MODE_PCIE_RC)
> > > +			mode_tbls = cfg->tbls_rc;
> > > +		else
> > > +			mode_tbls = cfg->tbls_ep;
> > > -	qmp_pcie_init_registers(qmp, &cfg->tbls);
> > > -	qmp_pcie_init_registers(qmp, mode_tbls);
> > > +		qmp_pcie_init_registers(qmp, &cfg->tbls);
> > > +		qmp_pcie_init_registers(qmp, mode_tbls);
> > > +	}
> > >   	ret = clk_bulk_prepare_enable(qmp->num_pipe_clks, qmp->pipe_clks);
> > >   	if (ret)
> > > @@ -4063,15 +4084,16 @@ static int qmp_pcie_power_on(struct phy *phy)
> > >   		goto err_disable_pipe_clk;
> > >   	}
> > > -	/* Pull PHY out of reset state */
> > > -	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
> > > +	if (!qmp->nocsr_reset || !qmp->phy_initialized) {
> > > +		/* Pull PHY out of reset state */
> > > +		qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
> > > -	/* start SerDes and Phy-Coding-Sublayer */
> > > -	qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START);
> > > -
> > > -	if (!cfg->skip_start_delay)
> > > -		usleep_range(1000, 1200);
> > > +		/* start SerDes and Phy-Coding-Sublayer */
> > > +		qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START);
> > > +		if (!cfg->skip_start_delay)
> > > +			usleep_range(1000, 1200);
> > > +	}
> > >   	status = pcs + cfg->regs[QPHY_PCS_STATUS];
> > >   	mask = cfg->phy_status;
> > >   	ret = readl_poll_timeout(status, val, !(val & mask), 200,
> > > @@ -4096,16 +4118,19 @@ static int qmp_pcie_power_off(struct phy *phy)
> > >   	clk_bulk_disable_unprepare(qmp->num_pipe_clks, qmp->pipe_clks);
> > > -	/* PHY reset */
> > > -	qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
> > > -	/* stop SerDes and Phy-Coding-Sublayer */
> > > -	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_START_CTRL],
> > > -			SERDES_START | PCS_START);
> > > +	if (!qmp->nocsr_reset) {
> > Why this one doesn't check for the qmp->phy_initialized?
> 
> If a PHY supports no_csr reset but isn't enabled in the bootloader, we
> 
> still need to program the phy settings only once so that we can reuse them
> 
> during the D3cold -> D0 cycle. Therefore, we don't check
> 
> qmp->phy_initialized here.

Please add a comment. In future please make sure that your answer
doesn't contain unnecessary empty lines. It makes it harder to read your
response.

> 
> > 
> > > +		/* PHY reset */
> > > +		qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
> > > -	/* Put PHY into POWER DOWN state: active low */
> > > -	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> > > -			cfg->pwrdn_ctrl);
> > > +		/* stop SerDes and Phy-Coding-Sublayer */
> > > +		qphy_clrbits(qmp->pcs, cfg->regs[QPHY_START_CTRL],
> > > +				SERDES_START | PCS_START);
> > > +
> > > +		/* Put PHY into POWER DOWN state: active low */
> > > +		qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> > > +				cfg->pwrdn_ctrl);
> > > +	}
> > >   	return 0;
> > >   }
> > > -- 
> > > 2.34.1
> > > 
> -- 
> With best wishes
> Wenbin

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
