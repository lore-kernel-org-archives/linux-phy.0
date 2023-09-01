Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A67CCA0FEC
	for <linux-phy@archiver.kernel.org>; Fri,  1 Sep 2023 17:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nkZQibbyuMSxvK5pNybc3qi0UtRlhTOvC6U2utM3TGk=; b=V0yOIuXOXnUmd+
	RAy1Y8Du9E0AQJAzb3c1mamO8zbw2v+nEtz0VmmJOnqzMt2QmZBEcFfFeff5veJ1O6EsKcEksFbX9
	NeSYqqzCnOy413JwMCSJo5FyuGh0TvvNAMtl+u+K8Gw8Z0AjJHi5Hahz0BL1huw4xZ7sorp7B48xq
	dlwz5GXEyevukWzWqnnwAgGEyuWpZ1AuDcGYsR96V6q7wGSDraGJQ4kcFMWKVt5z59n19aKJTp3KJ
	QZZdoreXPpRDrnfeEJ4nhesVYYcZctA6V2VXcJfec4NDbPUsj/ssCLdPahURhCdHPyo8Ykselz5Nz
	uVq7LjrXbThZRtXLojlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qc7yU-000ElM-0l;
	Fri, 01 Sep 2023 17:30:26 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qc7yQ-000Ekh-20
	for linux-phy@lists.infradead.org;
	Fri, 01 Sep 2023 17:30:24 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-31aeef88a55so1839994f8f.2
        for <linux-phy@lists.infradead.org>; Fri, 01 Sep 2023 10:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693589417; x=1694194217; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ElHKg+pX3fEdOOZS1kWbQ4ja8S276wFxRNF1asSPqwQ=;
        b=hVHgPISl9mcj6qP4O3IbYpzi5L1xMBgfTAZgXcXWywS1sEtPKqmKO5Cw2nPl3hy+Rk
         r9Np6GpCaVMsFcieuLPPSXRi5QEjlbPQTQVfj29HzQl4PW9bZk2PEXfDdNNPQbNlwmsv
         DBDRplyGQa5q2vtKuUUbPUcoh6EXPOKQ8ZNU9NYWN/NmfTf7qX4Ug32Vkt4jGdi1axWU
         F84RFfVSSZglOVmJQ4STEHKvokeK9As+LIV+lh5FT82a8TuhTD+9mgICpGRTfcA0LbHw
         f0ubw3NMhllRh1OGYcC+shRc1wwHiEcib2MD0toc8op4HSUt01ioZQnB+IRvZcIxVEZL
         Ri1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693589417; x=1694194217;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ElHKg+pX3fEdOOZS1kWbQ4ja8S276wFxRNF1asSPqwQ=;
        b=GuEnDObjt0mJU4IXPDx/lBRAuh0+997Hl54h1V0PbEQEwUl47yAzh8XEgNc7dCVxBN
         5E5v/XdqSAmd/G62IbNBoUCHX6JHcS01Cd2++8L+EwzcJM8MrjY4HIVooM4MQD+osVKk
         b/FHay70rdvQouCpVfWyO7vdLImiOKGBU6z3bu0Y0nqxIMSvi0STHYZInGcPXvKJND1q
         7e6UIW/MoMg96Yin9ORTlOYDlJgoeUbGx4zE8INaHkL0GBPLbyatgrcaQvmH/4XDUzXS
         VjjbgQErDJmU6QCcIU+9Wp0Sh2N2hXYvT+cdyfViziW/fqAGhy28N8ISvR3cDqFtOVcj
         tp4A==
X-Gm-Message-State: AOJu0YynD3e1lztj7ZkbTSFtNDVJ7Xh5+ktNsl8PO2IjuM9cC/AHNry7
	AyNKe7PI9u5wW86cQVLuaYA9fA==
X-Google-Smtp-Source: AGHT+IF8OpU763whLIgLndYDsjQedtPeUvT/LnG8ROSIeLXPbR7jiGEGsm3HGrHRuDrOCdJY5kV5YQ==
X-Received: by 2002:adf:d227:0:b0:314:124f:12be with SMTP id k7-20020adfd227000000b00314124f12bemr2459722wrh.3.1693589417436;
        Fri, 01 Sep 2023 10:30:17 -0700 (PDT)
Received: from linaro.org ([84.232.191.193])
        by smtp.gmail.com with ESMTPSA id k11-20020a5d6d4b000000b0031ad2663ed0sm5803411wri.66.2023.09.01.10.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Sep 2023 10:30:16 -0700 (PDT)
Date: Fri, 1 Sep 2023 20:30:15 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] phy: qcom-qmp-combo: Square out 8550
 POWER_STATE_CONFIG1
Message-ID: <ZPIfpyghcS3kS7Fb@linaro.org>
References: <20230829-topic-8550_usbphy-v1-0-599ddbfa094a@linaro.org>
 <20230829-topic-8550_usbphy-v1-1-599ddbfa094a@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230829-topic-8550_usbphy-v1-1-599ddbfa094a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230901_103022_661877_C1148F06 
X-CRM114-Status: GOOD (  17.58  )
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

On 23-08-29 22:59:04, Konrad Dybcio wrote:
> There are two instances of the POWER_STATE_CONFIG1 register: one in
> the PCS space and another one in PCS_USB.
> 
> The downstream init sequence pokes the latter one while we've been poking
> the former one (and misnamed it as the latter one, impostor!). Fix that
> up to avoid UB.
> 
> Fixes: 49742e9edab3 ("phy: qcom-qmp-combo: Add support for SM8550")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c      | 2 +-
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h | 3 ++-
>  2 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index cbb28afce135..843099d314bf 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -859,10 +859,10 @@ static const struct qmp_phy_init_tbl sm8550_usb3_pcs_tbl[] = {
>  	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_PCS_TX_RX_CONFIG, 0x0c),
>  	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_EQ_CONFIG1, 0x4b),
>  	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_EQ_CONFIG5, 0x10),
> -	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1, 0x68),
>  };
>  
>  static const struct qmp_phy_init_tbl sm8550_usb3_pcs_usb_tbl[] = {
> +	QMP_PHY_INIT_CFG(QPHY_USB_Q6_PCS_USB3_POWER_STATE_CONFIG1, 0x68),
>  	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
>  	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
>  	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L, 0x40),
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
> index 9510e63ba9d8..b9060c242fd2 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
> @@ -12,7 +12,7 @@
>  #define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG3		0xcc
>  #define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG6		0xd8
>  #define QPHY_USB_V6_PCS_REFGEN_REQ_CONFIG1		0xdc
> -#define QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1	0x90
> +#define QPHY_USB_V6_PCS_POWER_STATE_CONFIG1		0x90
>  #define QPHY_USB_V6_PCS_RX_SIGDET_LVL			0x188
>  #define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_L		0x190
>  #define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_H		0x194
> @@ -23,6 +23,7 @@
>  #define QPHY_USB_V6_PCS_EQ_CONFIG1			0x1dc
>  #define QPHY_USB_V6_PCS_EQ_CONFIG5			0x1ec
>  
> +#define QPHY_USB_Q6_PCS_USB3_POWER_STATE_CONFIG1	0x00
>  #define QPHY_USB_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x18
>  #define QPHY_USB_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x3c
>  #define QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x40
> 
> -- 
> 2.42.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
