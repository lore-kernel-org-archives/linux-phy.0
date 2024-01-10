Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC757C4707B
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jan 2024 15:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iOBtAlLavIt2D/fSgpGmd5nT33KkGHs+1bZAqBfN3zs=; b=Ihly4wdUEiRiTj
	ejwVeFUKCU1AvOKa5LFUbk4/VWMSNMZQf3gddjE4DQXrzWfK8zpr1N/uT5jWuIWZchDGBPWzG6obw
	umon8XNZL77xl5qM6f3GMXsimK8EWkI+4UO7/Iv5nYovfQ0MV9cSy1Ie/d3Z3gjs/Fecg8y3N7uNV
	kMCOUTiUwoUIrwufkCFp+00bMrZVEt+eBW6sIDhmxR9ZB8qlQuCyFv/hrM4iG/d79TNwe+AChwbqo
	JcGJQUctQbyFWm2oKASiIwL1eiF+4n8FRGqpsiO2mKZg+Bg/CRTe/Nt4zyJNm+frklGseBeDMBA3c
	jpqMiGGh8P9a/jKQiz9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNaCx-00CVOA-1B;
	Wed, 10 Jan 2024 15:09:31 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNaCu-00CVMt-1n
	for linux-phy@lists.infradead.org;
	Wed, 10 Jan 2024 15:09:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1704899367;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Mq706KDaGt2V1Uel/sJuJJ5gE5lse5yNFkzf99F2BJ0=;
	b=OCyASeFBjPx5p99BJco1vNGi2r9hUEhlHkQGM2MsMM6F//lDfmadLQGvjNcBCn8DO1tBat
	fpY4FbNWJFaDmOiFbClcGJRlyplyWYRw3Qw58P9UsQV/kqf7T79lRC/J3m9v0nhNmo+w0A
	jCmpK28Uk4AJOPOHJUVipd4S4OD7mzM=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-625-aWG5--nWPSqeha24iJouyg-1; Wed, 10 Jan 2024 10:09:25 -0500
X-MC-Unique: aWG5--nWPSqeha24iJouyg-1
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6800a9361a8so82697486d6.2
        for <linux-phy@lists.infradead.org>; Wed, 10 Jan 2024 07:09:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704899365; x=1705504165;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mq706KDaGt2V1Uel/sJuJJ5gE5lse5yNFkzf99F2BJ0=;
        b=cRJlJWZC+OCqlAzFDY89HyTovsWjDGd0yWmKaDS7FbQz8aaMtC0/le5FKSLfCPp3Ap
         3cEzKUbNwEdqY0A0D1JJEAtBW4YsFK1J0xym9EmQzfzbCxL2iHVd5fi2tjLVudxCCD0Z
         EOmwPXA2cEhNdGnjctZ66XkJLCAuS26KFh0ujaMxu6ng/0Ne3ngac116kTQQR8OaVaKf
         FrigrVEhGemyeLGLV0d9pb5h64U8ib4mIBXmcMKtPq0KaCU9rb7uHNFu3oVxxQnpp+pJ
         O/SAyiquqG/YYrfJPzxY+k8B27Ac6hga6Z49rIkEd6EgQmruHXkVYlqm/dwJLyXiP7FB
         M6cQ==
X-Gm-Message-State: AOJu0Yw8IE6vUfRmfUhrV/YU5c6n0zqPnDINBFJqT3tPdF1ADjGVoT5+
	xBIpznzFWDYfWBqPAIDjfsQ/9Xz4MAU0tNeYePVfQEVqtd/geO/yeMCMlVSEc03Y2WXUnJVA+DH
	UQtgy0Nsv80Xt6QCMrJZWXKwt/F/I6jjfdA==
X-Received: by 2002:a0c:e804:0:b0:681:2616:8f1b with SMTP id y4-20020a0ce804000000b0068126168f1bmr617739qvn.45.1704899365462;
        Wed, 10 Jan 2024 07:09:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IETusl4LxwTwP7t75njAJ3TdSC005RHckQQ1CjWAyLn9fPH+LRXHu43ePhtofkmoN4+INrPLA==
X-Received: by 2002:a0c:e804:0:b0:681:2616:8f1b with SMTP id y4-20020a0ce804000000b0068126168f1bmr617727qvn.45.1704899365148;
        Wed, 10 Jan 2024 07:09:25 -0800 (PST)
Received: from fedora ([2600:1700:1ff0:d0e0::47])
        by smtp.gmail.com with ESMTPSA id k11-20020a056214102b00b00680c25f5f06sm1761060qvr.86.2024.01.10.07.09.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jan 2024 07:09:24 -0800 (PST)
Date: Wed, 10 Jan 2024 09:09:22 -0600
From: Andrew Halaney <ahalaney@redhat.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH 8/8] phy: qcom: sgmii-eth: move PCS registers to separate
 header
Message-ID: <6yakf2j5haeu75pborlui4z5xq7loybfyxcy3d3n4wvrhei3zt@edwdbcbqhokc>
References: <20240109-phy-qmp-merge-common-v1-0-572899a14318@linaro.org>
 <20240109-phy-qmp-merge-common-v1-8-572899a14318@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20240109-phy-qmp-merge-common-v1-8-572899a14318@linaro.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_070928_686525_2F295D8C 
X-CRM114-Status: GOOD (  20.60  )
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

On Tue, Jan 09, 2024 at 05:04:06AM +0200, Dmitry Baryshkov wrote:
> Follow the example of the rest of the QMP PHY drivers and move SGMII PCS
> registers to a separate header file.
> 
> Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Probably not necessary to test, but I took this for a spin without any
noticeable regression to networking with stmmac (which afaik is the only
user of this driver so far).

Tested-by: Andrew Halaney <ahalaney@redhat.com> # sa8775p-ride

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-sgmii.h | 20 +++++++++
>  drivers/phy/qualcomm/phy-qcom-sgmii-eth.c     | 64 +++++++++++----------------
>  2 files changed, 47 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-sgmii.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-sgmii.h
> new file mode 100644
> index 000000000000..4d8c962f5e0f
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-sgmii.h
> @@ -0,0 +1,20 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2023, Linaro Limited
> + */
> +
> +#ifndef QCOM_PHY_QMP_PCS_SGMII_H_
> +#define QCOM_PHY_QMP_PCS_SGMII_H_
> +
> +#define QPHY_PCS_PHY_START				0x000
> +#define QPHY_PCS_POWER_DOWN_CONTROL			0x004
> +#define QPHY_PCS_SW_RESET				0x008
> +#define QPHY_PCS_LINE_RESET_TIME			0x00c
> +#define QPHY_PCS_TX_LARGE_AMP_DRV_LVL			0x020
> +#define QPHY_PCS_TX_SMALL_AMP_DRV_LVL			0x028
> +#define QPHY_PCS_PCS_READY_STATUS			0x094
> +#define QPHY_PCS_TX_MID_TERM_CTRL1			0x0d8
> +#define QPHY_PCS_TX_MID_TERM_CTRL2			0x0dc
> +#define QPHY_PCS_SGMII_MISC_CTRL8			0x118
> +
> +#endif
> diff --git a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
> index 233f9b70c673..5b1c82459c12 100644
> --- a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
> +++ b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
> @@ -11,6 +11,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/regmap.h>
>  
> +#include "phy-qcom-qmp-pcs-sgmii.h"
>  #include "phy-qcom-qmp-qserdes-com-v5.h"
>  #include "phy-qcom-qmp-qserdes-txrx-v5.h"
>  
> @@ -19,17 +20,6 @@
>  #define QSERDES_TX					0x400
>  #define QSERDES_PCS					0xc00
>  
> -#define QSERDES_PCS_PHY_START				(QSERDES_PCS + 0x0)
> -#define QSERDES_PCS_POWER_DOWN_CONTROL			(QSERDES_PCS + 0x4)
> -#define QSERDES_PCS_SW_RESET				(QSERDES_PCS + 0x8)
> -#define QSERDES_PCS_LINE_RESET_TIME			(QSERDES_PCS + 0xc)
> -#define QSERDES_PCS_TX_LARGE_AMP_DRV_LVL		(QSERDES_PCS + 0x20)
> -#define QSERDES_PCS_TX_SMALL_AMP_DRV_LVL		(QSERDES_PCS + 0x28)
> -#define QSERDES_PCS_TX_MID_TERM_CTRL1			(QSERDES_PCS + 0xd8)
> -#define QSERDES_PCS_TX_MID_TERM_CTRL2			(QSERDES_PCS + 0xdc)
> -#define QSERDES_PCS_SGMII_MISC_CTRL8			(QSERDES_PCS + 0x118)
> -#define QSERDES_PCS_PCS_READY_STATUS			(QSERDES_PCS + 0x94)
> -
>  #define QSERDES_COM_C_READY				BIT(0)
>  #define QSERDES_PCS_READY				BIT(0)
>  #define QSERDES_PCS_SGMIIPHY_READY			BIT(7)
> @@ -43,8 +33,8 @@ struct qcom_dwmac_sgmii_phy_data {
>  
>  static void qcom_dwmac_sgmii_phy_init_1g(struct regmap *regmap)
>  {
> -	regmap_write(regmap, QSERDES_PCS_SW_RESET, 0x01);
> -	regmap_write(regmap, QSERDES_PCS_POWER_DOWN_CONTROL, 0x01);
> +	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_SW_RESET, 0x01);
> +	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_POWER_DOWN_CONTROL, 0x01);
>  
>  	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_PLL_IVCO, 0x0F);
>  	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_CP_CTRL_MODE0, 0x06);
> @@ -118,21 +108,21 @@ static void qcom_dwmac_sgmii_phy_init_1g(struct regmap *regmap)
>  	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_10_HIGH4, 0xB7);
>  	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_DCC_CTRL1, 0x0C);
>  
> -	regmap_write(regmap, QSERDES_PCS_LINE_RESET_TIME, 0x0C);
> -	regmap_write(regmap, QSERDES_PCS_TX_LARGE_AMP_DRV_LVL, 0x1F);
> -	regmap_write(regmap, QSERDES_PCS_TX_SMALL_AMP_DRV_LVL, 0x03);
> -	regmap_write(regmap, QSERDES_PCS_TX_MID_TERM_CTRL1, 0x83);
> -	regmap_write(regmap, QSERDES_PCS_TX_MID_TERM_CTRL2, 0x08);
> -	regmap_write(regmap, QSERDES_PCS_SGMII_MISC_CTRL8, 0x0C);
> -	regmap_write(regmap, QSERDES_PCS_SW_RESET, 0x00);
> +	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_LINE_RESET_TIME, 0x0C);
> +	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_TX_LARGE_AMP_DRV_LVL, 0x1F);
> +	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_TX_SMALL_AMP_DRV_LVL, 0x03);
> +	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_TX_MID_TERM_CTRL1, 0x83);
> +	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_TX_MID_TERM_CTRL2, 0x08);
> +	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_SGMII_MISC_CTRL8, 0x0C);
> +	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_SW_RESET, 0x00);
>  
> -	regmap_write(regmap, QSERDES_PCS_PHY_START, 0x01);
> +	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_PHY_START, 0x01);
>  }
>  
>  static void qcom_dwmac_sgmii_phy_init_2p5g(struct regmap *regmap)
>  {
> -	regmap_write(regmap, QSERDES_PCS_SW_RESET, 0x01);
> -	regmap_write(regmap, QSERDES_PCS_POWER_DOWN_CONTROL, 0x01);
> +	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_SW_RESET, 0x01);
> +	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_POWER_DOWN_CONTROL, 0x01);
>  
>  	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_PLL_IVCO, 0x0F);
>  	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_CP_CTRL_MODE0, 0x06);
> @@ -206,15 +196,15 @@ static void qcom_dwmac_sgmii_phy_init_2p5g(struct regmap *regmap)
>  	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_10_HIGH4, 0xB7);
>  	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_DCC_CTRL1, 0x0C);
>  
> -	regmap_write(regmap, QSERDES_PCS_LINE_RESET_TIME, 0x0C);
> -	regmap_write(regmap, QSERDES_PCS_TX_LARGE_AMP_DRV_LVL, 0x1F);
> -	regmap_write(regmap, QSERDES_PCS_TX_SMALL_AMP_DRV_LVL, 0x03);
> -	regmap_write(regmap, QSERDES_PCS_TX_MID_TERM_CTRL1, 0x83);
> -	regmap_write(regmap, QSERDES_PCS_TX_MID_TERM_CTRL2, 0x08);
> -	regmap_write(regmap, QSERDES_PCS_SGMII_MISC_CTRL8, 0x8C);
> -	regmap_write(regmap, QSERDES_PCS_SW_RESET, 0x00);
> +	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_LINE_RESET_TIME, 0x0C);
> +	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_TX_LARGE_AMP_DRV_LVL, 0x1F);
> +	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_TX_SMALL_AMP_DRV_LVL, 0x03);
> +	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_TX_MID_TERM_CTRL1, 0x83);
> +	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_TX_MID_TERM_CTRL2, 0x08);
> +	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_SGMII_MISC_CTRL8, 0x8C);
> +	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_SW_RESET, 0x00);
>  
> -	regmap_write(regmap, QSERDES_PCS_PHY_START, 0x01);
> +	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_PHY_START, 0x01);
>  }
>  
>  static inline int
> @@ -251,14 +241,14 @@ static int qcom_dwmac_sgmii_phy_calibrate(struct phy *phy)
>  	}
>  
>  	if (qcom_dwmac_sgmii_phy_poll_status(data->regmap,
> -					     QSERDES_PCS_PCS_READY_STATUS,
> +					     QSERDES_PCS + QPHY_PCS_PCS_READY_STATUS,
>  					     QSERDES_PCS_READY)) {
>  		dev_err(dev, "PCS_READY timed-out");
>  		return -ETIMEDOUT;
>  	}
>  
>  	if (qcom_dwmac_sgmii_phy_poll_status(data->regmap,
> -					     QSERDES_PCS_PCS_READY_STATUS,
> +					     QSERDES_PCS + QPHY_PCS_PCS_READY_STATUS,
>  					     QSERDES_PCS_SGMIIPHY_READY)) {
>  		dev_err(dev, "SGMIIPHY_READY timed-out");
>  		return -ETIMEDOUT;
> @@ -285,11 +275,11 @@ static int qcom_dwmac_sgmii_phy_power_off(struct phy *phy)
>  {
>  	struct qcom_dwmac_sgmii_phy_data *data = phy_get_drvdata(phy);
>  
> -	regmap_write(data->regmap, QSERDES_PCS_TX_MID_TERM_CTRL2, 0x08);
> -	regmap_write(data->regmap, QSERDES_PCS_SW_RESET, 0x01);
> +	regmap_write(data->regmap, QSERDES_PCS + QPHY_PCS_TX_MID_TERM_CTRL2, 0x08);
> +	regmap_write(data->regmap, QSERDES_PCS + QPHY_PCS_SW_RESET, 0x01);
>  	udelay(100);
> -	regmap_write(data->regmap, QSERDES_PCS_SW_RESET, 0x00);
> -	regmap_write(data->regmap, QSERDES_PCS_PHY_START, 0x01);
> +	regmap_write(data->regmap, QSERDES_PCS + QPHY_PCS_SW_RESET, 0x00);
> +	regmap_write(data->regmap, QSERDES_PCS + QPHY_PCS_PHY_START, 0x01);
>  
>  	clk_disable_unprepare(data->refclk);
>  
> 
> -- 
> 2.39.2
> 
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
