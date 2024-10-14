Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E502D16256
	for <linux-phy@archiver.kernel.org>; Mon, 14 Oct 2024 12:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N1OoZkzbI6MWxcP2vU1oHskv5wVMV7ZsRvjFqkaI0dc=; b=BOEhKcp2qyUVNG
	Ce716pcLCRC1RQAJ3zC+shvbN28evLDtsR9HWVFBzZrLenu/hQ9bGtD2z9gC4O0ZU5vM3EUnnRdSW
	IZgRdoc2LrBNQT2421Diw4m+Co3iwQ21i+o3OlYRhYX51tTPXd7nngo0jp9pLZ9HdqeGemsHU/+sc
	NFpKN61zJBqllnIiuceP+ZgwtZslxAeMBiFooS0unfSTZuvbL3/0SjTI3VgZ1xdY27DUbJ+fptnuz
	2KHmUPH4RbvDSjJ7rd8+GbLhVFUa1HNKtvks+WEI1CKkeo/6gE30SK5d4ZbTf6VOsPnrv9EIxZJDI
	4AAz/Bj2d7uTjEP5RaaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0KFu-000000055p4-1FKD;
	Mon, 14 Oct 2024 12:32:58 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Ipr-00000004odl-1Ryf
	for linux-phy@lists.infradead.org;
	Mon, 14 Oct 2024 11:02:01 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-539e59dadebso2346236e87.0
        for <linux-phy@lists.infradead.org>; Mon, 14 Oct 2024 04:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728903717; x=1729508517; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VKpzCOMXDiogLxX30wOP2UvN2nyiYIuu5MpkOOY7CK8=;
        b=dsX/VkpkP5YBF3i/VXAy/4sMHVcgSwc/IeDSDUwC7Z5nf26rCKmpaFd+MVWa+swj9k
         MzNXgT+pJGpRlwKbqil4sQXbWnes20bZJdoHmR0PpA6fmwzJfUidoUR46zznnnA7YseV
         v/duoaP6CH6rStxxjNwbRCohJa8MgXLasrATpVDXnv/nB3V/eKL7R6oxvjeNOnzoOGw5
         0/p/8+VpJvNMir1SlfWsm5y+raVZrK0Tnu4YYuBYtiDaKjgx+StSpGDyQlq3nhM8hAUn
         2YhqYmsttXa4vqbmxD3MJ5O2pbQuxfiBV+leKFHT+PsW7fG1N/QZOAkHyUr6mcw/b0kp
         ud9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728903717; x=1729508517;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VKpzCOMXDiogLxX30wOP2UvN2nyiYIuu5MpkOOY7CK8=;
        b=oWnl3p2xYg44ZS4w88j5g4H3NKxJfeHDPJ9Xv4nyqS8SzK0QFYoMKlEr1Ripm+4/El
         AZ9vEWcB/g9QvbETGAL0qYsvq0n95fzYQOdi2KdI0Bzdn8MUx5mJyWkqNwFkydT2cKf4
         gEzT+vxAoIc7DC05ah3nZ3iRXwAW2qPWh0O/U4YUhDcTAZFsk17IirBTageR/jBkTw2f
         dy7pQPkbkfB0chl9xtHp3xYjzw6386atIJBooTjHiseYaJftnIz5eiMxvVqjpI9eFoWf
         bVUMfmCtCPMNCu5hYzn3xO/0/6Wv0kEoDr7F36n+2YQPHqQDWluUcaG9al8hZzibTH+n
         Fcug==
X-Forwarded-Encrypted: i=1; AJvYcCXvDFqgrRc4/shPrl7lF534b0zohys+MUmcF52/z4zDHp1xUScrsfMi463UxgKPBFl83gEm1EA4G2o=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxx514dsDxRqautUQZiRel2VQ63ZEHrc0wRYkxTev8ChumB18Ij
	SMsmGRuE01O13gkmKo+iyZlax52AedEA0NPqm6ih6hs00jGIHu+Ggh5tIxlUcno=
X-Google-Smtp-Source: AGHT+IGQSb0K8lAOmKTKazlWY9udy/M828sx4SUbiGbOle9pMo3c21JNq4Lq6GrYVpjPk+GdedJWEQ==
X-Received: by 2002:a05:6512:1295:b0:533:46cc:a71e with SMTP id 2adb3069b0e04-539da5954b8mr5060410e87.54.1728903716948;
        Mon, 14 Oct 2024 04:01:56 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539ee16a07asm620043e87.45.2024.10.14.04.01.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 04:01:55 -0700 (PDT)
Date: Mon, 14 Oct 2024 14:01:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <quic_bjorande@quicinc.com>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Konrad Dybcio <konradybcio@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	quic_ppratap@quicinc.com, quic_jackp@quicinc.com
Subject: Re: [PATCH 4/5] phy: qcom-qusb2: Add support for QCS615
Message-ID: <zvrvhcemcozy7swsvrwcngm4k3qa4czkbfsq2s33hndu46regx@o7xk2g6wqpdf>
References: <20241014084432.3310114-1-quic_kriskura@quicinc.com>
 <20241014084432.3310114-5-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241014084432.3310114-5-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_040159_550786_F80550CD 
X-CRM114-Status: GOOD (  16.47  )
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

On Mon, Oct 14, 2024 at 02:14:31PM +0530, Krishna Kurapati wrote:
> Add init sequence and phy configuration for QCS615.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qusb2.c | 29 +++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> index c52655a383ce..227041e096bc 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> @@ -151,6 +151,19 @@ static const struct qusb2_phy_init_tbl ipq6018_init_tbl[] = {
>  	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_AUTOPGM_CTL1, 0x9F),
>  };
>  
> +static const struct qusb2_phy_init_tbl qcs615_init_tbl[] = {
> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE1, 0xC8),
> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE2, 0xB3),

Lowcase hex numbers.

> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE3, 0x83),
> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE4, 0xC0),
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_TUNE, 0x30),
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_USER_CTL1, 0x79),
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_USER_CTL2, 0x21),
> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TEST2, 0x14),
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_AUTOPGM_CTL1, 0x9F),
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_PWR_CTRL, 0x00),
> +};
> +
>  static const unsigned int ipq6018_regs_layout[] = {
>  	[QUSB2PHY_PLL_STATUS]              = 0x38,
>  	[QUSB2PHY_PORT_TUNE1]              = 0x80,
> @@ -331,6 +344,19 @@ static const struct qusb2_phy_cfg ipq6018_phy_cfg = {
>  	.autoresume_en   = BIT(0),
>  };
>  
> +static const struct qusb2_phy_cfg qcs615_phy_cfg = {
> +	.tbl            = qcs615_init_tbl,
> +	.tbl_num        = ARRAY_SIZE(qcs615_init_tbl),
> +	.regs           = ipq6018_regs_layout,
> +
> +	.has_pll_override = false,
> +	.se_clk_scheme_default = false,

Drop false values, please

> +	.disable_ctrl   = (CLAMP_N_EN | FREEZIO_N | POWER_DOWN),
> +	.mask_core_ready = PLL_LOCKED,
> +	/* autoresume not used */
> +	.autoresume_en   = BIT(0),
> +};
> +
>  static const struct qusb2_phy_cfg qusb2_v2_phy_cfg = {
>  	.tbl		= qusb2_v2_init_tbl,
>  	.tbl_num	= ARRAY_SIZE(qusb2_v2_init_tbl),
> @@ -922,6 +948,9 @@ static const struct of_device_id qusb2_phy_of_match_table[] = {
>  	}, {
>  		.compatible	= "qcom,msm8998-qusb2-phy",
>  		.data		= &msm8998_phy_cfg,
> +	}, {
> +		.compatible	= "qcom,qcs615-qusb2-phy",
> +		.data		= &qcs615_phy_cfg,
>  	}, {
>  		.compatible	= "qcom,qcm2290-qusb2-phy",
>  		.data		= &sm6115_phy_cfg,
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
