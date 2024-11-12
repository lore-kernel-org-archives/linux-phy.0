Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15043D42B80
	for <linux-phy@archiver.kernel.org>; Tue, 12 Nov 2024 13:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AmNkxvnP4GPwxfyspv1g61xS1UYLG7NyGcZi2h+uql0=; b=bo8xi9LJVPEY/y
	hdtuRnhhJEwPwTAzZ5uWdCMmzesVGKYnZe0U+bAI9S9bBzWuxGHUqMkfzrAenntlP5xu2n2xpbgq7
	FMjX+2QhdJbQl3XZCn1xpC6wbFXJFV27T46I06I/vmmaPQvTyi7qiDt94AWN93FMefuLZRAQCEWyB
	9B69olw8K5dnoz5KVDLiWfQh/zQNJTrqZ2ar6G1wR5cPnRAHQ30htULNH5NcB1TdS+O3NS3cVPdFw
	PfRwTsrPIRSplu1DG5JKp/kX1+WfCjCC1tSQwzDYS27YHPHj5ISyCnF9RDDmt6dU5c8SFxpXgxYQY
	C7Qpc9QWNBhJIYk8rQGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tArEH-00000003dnJ-3EMk;
	Tue, 12 Nov 2024 13:46:49 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tArBq-00000003d7p-3Hiz
	for linux-phy@lists.infradead.org;
	Tue, 12 Nov 2024 13:44:20 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-53a007743e7so6618656e87.1
        for <linux-phy@lists.infradead.org>; Tue, 12 Nov 2024 05:44:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731419055; x=1732023855; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iDZVjDz8WaHN7Uzdxa3K3Hi8mi6UCuBy7yMBk40iTWc=;
        b=o73BmPbqowqAxIYk26UEy+3Q3Eq4mLXZWU0csBx9VhDh9ZS3912W6VCMXIvmnIcBv3
         G5gIHJs9fQihpG6DleomS8iaTm9Idlw1u7rqzD2YLywyqstmqzXwxXDKjaRmT3co+pSH
         p87KWZI355tghti0zgAM6ZehKMAzKekHywW21hWs7XU5BXCd3OLxA67r+6HhaB96Wa8/
         qQriM0KonmG4uW8Tjox75gXw1FYfDm/gRxMv3TsaQ10VKt5ULg871e1kpCbhf+MKtUzF
         NyfUp2uedwY+50RoElwCIeHSo2d1CMBMce2bXdOgeudDX4++rhOvjapctoj7a7DocB24
         PH7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731419055; x=1732023855;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iDZVjDz8WaHN7Uzdxa3K3Hi8mi6UCuBy7yMBk40iTWc=;
        b=Fr2yRz2jc3clrotSDK4JiEbxRq/ElsY1tNyBzsdfmusDjf+Y/BHnvPz9MrvjVGAXpF
         3uYj7XFJMJJLABoWXPXE9AQlnJFf+6BKo83LLd9fGKbBxd0lIZTtqESN4bE9sUP9eafT
         Q2DP/cBgBMYdxBXX8nKE3AIyXpRWstIWCjwDkA68j5F48/Op0VzfeZ7KLBLZtuokAeNn
         7rm5JAeWFNuN0VDz+84sd5kQOWJVIjlPT0HeAbqxkzTXH6go3lJ602OBVcv2Ot89wMqa
         2olSgNSu7HazSv4TkT3QEI+UaxS/hIhomJeez7lExQMhSdwzJM/vzNGcdUxLJeksecey
         /a9A==
X-Forwarded-Encrypted: i=1; AJvYcCWC+hYwxdHpKz/awqAJDw4nn4eMuxhiYKCPKJPa1AAit8oJBOt52s9T236Lv/qu/0Vco/iBhU85m3c=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz40LygDowdFvBv/QhRWy6qHtKOasLP1xGRIGL3YZct1Q2C3vUs
	AUWptRjLfSD0EUz8tEDFu63cwuGc220MSjpmTGyBcxhD9+7EakaavlzsHQvGjsE=
X-Google-Smtp-Source: AGHT+IF4DigzAsf4mgiTBlNcElKCvgjRc9RJrMYFwqjztVN7WEdLH0Y1ZR0nSSYwsHZKJQCBBLdvJw==
X-Received: by 2002:a05:6512:3b9b:b0:539:fbd4:9c9a with SMTP id 2adb3069b0e04-53d8626c823mr8459877e87.35.1731419055072;
        Tue, 12 Nov 2024 05:44:15 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53d8267859csm1886887e87.45.2024.11.12.05.44.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2024 05:44:13 -0800 (PST)
Date: Tue, 12 Nov 2024 15:44:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, gregkh@linuxfoundation.org, 
	andersson@kernel.org, konradybcio@kernel.org, mantas@8devices.com, 
	quic_rohiagar@quicinc.com, johan+linaro@kernel.org, quic_kriskura@quicinc.com, 
	abel.vesa@linaro.org, quic_kbajaj@quicinc.com, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v1 2/6] phy: qcom-qusb2: add QUSB2 support for IPQ5424
Message-ID: <m2w5772mjsjaolawrfuhkmiq6iaagu746tqv5qtbrllvqpf75t@cykasimx4lff>
References: <20241112091355.2028018-1-quic_varada@quicinc.com>
 <20241112091355.2028018-3-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241112091355.2028018-3-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_054418_849208_7C89491D 
X-CRM114-Status: GOOD (  15.75  )
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

On Tue, Nov 12, 2024 at 02:43:51PM +0530, Varadarajan Narayanan wrote:
> Add the phy init sequence for the Super Speed ports found
> on IPQ5424.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qusb2.c | 28 +++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> index c52655a383ce..4513f0c81c50 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> @@ -151,6 +151,21 @@ static const struct qusb2_phy_init_tbl ipq6018_init_tbl[] = {
>  	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_AUTOPGM_CTL1, 0x9F),
>  };
>  
> +static const struct qusb2_phy_init_tbl ipq5424_init_tbl[] = {
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL, 0x14),
> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE1, 0x00),
> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE2, 0x53),
> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE4, 0xC3),
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_TUNE, 0x30),
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_USER_CTL1, 0x79),
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_USER_CTL2, 0x21),
> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE5, 0x00),
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_PWR_CTRL, 0x00),
> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TEST2, 0x14),
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_TEST, 0x80),
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_AUTOPGM_CTL1, 0x9F),

Lowercase hex numbers please. LGTM otherwise.

> +};
> +
>  static const unsigned int ipq6018_regs_layout[] = {
>  	[QUSB2PHY_PLL_STATUS]              = 0x38,
>  	[QUSB2PHY_PORT_TUNE1]              = 0x80,
> @@ -331,6 +346,16 @@ static const struct qusb2_phy_cfg ipq6018_phy_cfg = {
>  	.autoresume_en   = BIT(0),
>  };
>  
> +static const struct qusb2_phy_cfg ipq5424_phy_cfg = {
> +	.tbl            = ipq5424_init_tbl,
> +	.tbl_num        = ARRAY_SIZE(ipq5424_init_tbl),
> +	.regs           = ipq6018_regs_layout,
> +
> +	.disable_ctrl   = POWER_DOWN,
> +	.mask_core_ready = PLL_LOCKED,
> +	.autoresume_en   = BIT(0),
> +};
> +
>  static const struct qusb2_phy_cfg qusb2_v2_phy_cfg = {
>  	.tbl		= qusb2_v2_init_tbl,
>  	.tbl_num	= ARRAY_SIZE(qusb2_v2_init_tbl),
> @@ -905,6 +930,9 @@ static const struct phy_ops qusb2_phy_gen_ops = {
>  
>  static const struct of_device_id qusb2_phy_of_match_table[] = {
>  	{
> +		.compatible	= "qcom,ipq5424-qusb2-phy",
> +		.data		= &ipq5424_phy_cfg,
> +	}, {
>  		.compatible	= "qcom,ipq6018-qusb2-phy",
>  		.data		= &ipq6018_phy_cfg,
>  	}, {
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
