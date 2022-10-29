Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C0F5C38A02
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 21:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f46hCgcHClBNKoRdUF1gAdh7hkRdVeifKJi2WUbT+Cg=; b=ilF7ZHCihPs3IH
	LHE3OxIXDVgy2/cvlv1+q9Op14rB72fyITa47jbEcZ9qpADXL49jEz460TOL4ibF1bd68ybE20LUa
	DqNK+L2IopzHSDGA+W5G1Ws9NS7AyEbikfwS3X3jJ188vZ1jEUdh53DXbwfF1Rqe/sqRQ0OYFrwx8
	yGcgcKpRHWsLn+KmuyLuptOTGcQgxh+R66HonPXDgKsffUisYTddOjpiZqnv3+irDPAvUxJ9XoTQZ
	79aiynhMde1gv7uSRjwJa0PL9L6DNU8e+eY3XGRlNCNiDAyzRpQO1vxaS326tiyqhgF/y5ob9DkkK
	vYACl/KfPwlvAwA5izzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ootr5-009n0S-JF; Sat, 29 Oct 2022 21:59:03 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ootr2-009n07-WC
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 21:59:02 +0000
Received: by mail-lf1-x135.google.com with SMTP id p8so13631079lfu.11
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 14:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5E055D0LraQtXxVm7spy38VDfZkDycL7gLDgoeNA16o=;
        b=j+7ijpO0/3KSJT8VqP7+9KbWRoZ/P+8Pt6ftg3RYrDzOQG/OoUV3jZOVwlzUM/mUoE
         Omp1Y/opkSMuvoGniucEoYxxLubo8YorcLW3UC4oUz6VTsVEaHyQTMjT0ricldnbA0Kx
         Q7XY6n1TR3nT4arq0EucIOCEApbF8g2lZ47I33YD9Z18W0PYYdY6EQ0y+Ym6rw2rtccA
         w4RfDNWehGXZrzjOmFTrIzYZQT+uQGlanuCHvKts3N4YkiAR74fC9jSvI9aKI9pxPy6J
         iJogk19yBiCAPzTiF0eH5T+eZ9Ut5hcoKdi8Sh1LETftUSkJcmmB1zHQSfRpb1JuTPiz
         t6OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5E055D0LraQtXxVm7spy38VDfZkDycL7gLDgoeNA16o=;
        b=QAbueJb3VewSJ9mBwoejeScF2/ipCnykrXLtAadHBRbE+KSQZhlq6ijkEHIuv2tXnz
         GyH9TkhKe6nq4p/hCSB28jvqK8OQpXGy/ud6RecvmCoK2wQdq4ArfE5qbwm1zfkJsJvT
         P0o0NOwPB9eGYCdmqDflcy8K+74nUFEBDTBBAPeiaAgGTtpcMzyzNDHp63xg6m2s7wPJ
         AifXGIEYXuV2YzAk8sN4SSqn7pq5BB0yj2D2bblfhVsX2Nq9bU8gstz3tRHNVxYlP4SM
         Ic8tIEf6WpJXiITw5GzIBksRFm/UxfJmnJmfiOTDZtzeZLdK8YkLnppYthhD1KJ7adih
         B5Qg==
X-Gm-Message-State: ACrzQf3jrih5cvIsKV+1fy0klDLgf8kWKJEMZXMSAtNJB07QBdFoS1HN
	N0gnUGXdf0k8fEDScVlMlcphKA==
X-Google-Smtp-Source: AMsMyM4pm04TNdTofIp5vVw8Exv2fHuV0kBcqVC+ddmDOKxb5o54kJtyQCL/FSn1KaXk+T9gB25qYw==
X-Received: by 2002:a05:6512:48f:b0:4a4:7988:b737 with SMTP id v15-20020a056512048f00b004a47988b737mr2152049lfq.28.1667080739088;
        Sat, 29 Oct 2022 14:58:59 -0700 (PDT)
Received: from [10.27.10.248] ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id t8-20020a05651c204800b00277092c03e7sm437615ljo.33.2022.10.29.14.58.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Oct 2022 14:58:58 -0700 (PDT)
Message-ID: <01a01fb3-2520-58ce-6432-b278bb8118f5@linaro.org>
Date: Sun, 30 Oct 2022 00:58:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 10/15] scsi: ufs: ufs-qcom: Use bitfields where
 appropriate
Content-Language: en-GB
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@somainline.org, robh+dt@kernel.org, quic_cang@quicinc.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-scsi@vger.kernel.org
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
 <20221029141633.295650-11-manivannan.sadhasivam@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221029141633.295650-11-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_145901_092501_EB57EF58 
X-CRM114-Status: GOOD (  16.73  )
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

On 29/10/2022 17:16, Manivannan Sadhasivam wrote:
> Use bitfield macros where appropriate to simplify the driver.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>   drivers/ufs/host/ufs-qcom.h | 58 ++++++++++++++++---------------------
>   1 file changed, 25 insertions(+), 33 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> diff --git a/drivers/ufs/host/ufs-qcom.h b/drivers/ufs/host/ufs-qcom.h
> index 44466a395bb5..6cb0776456b3 100644
> --- a/drivers/ufs/host/ufs-qcom.h
> +++ b/drivers/ufs/host/ufs-qcom.h
> @@ -17,12 +17,9 @@
>   #define DEFAULT_CLK_RATE_HZ     1000000
>   #define BUS_VECTOR_NAME_LEN     32
>   
> -#define UFS_HW_VER_MAJOR_SHFT	(28)
> -#define UFS_HW_VER_MAJOR_MASK	(0x000F << UFS_HW_VER_MAJOR_SHFT)
> -#define UFS_HW_VER_MINOR_SHFT	(16)
> -#define UFS_HW_VER_MINOR_MASK	(0x0FFF << UFS_HW_VER_MINOR_SHFT)
> -#define UFS_HW_VER_STEP_SHFT	(0)
> -#define UFS_HW_VER_STEP_MASK	(0xFFFF << UFS_HW_VER_STEP_SHFT)
> +#define UFS_HW_VER_MAJOR_MASK	GENMASK(31, 28)
> +#define UFS_HW_VER_MINOR_MASK	GENMASK(27, 16)
> +#define UFS_HW_VER_STEP_MASK	GENMASK(15, 0)
>   
>   /* vendor specific pre-defined parameters */
>   #define SLOW 1
> @@ -76,24 +73,24 @@ enum {
>   #define UFS_CNTLR_3_x_x_VEN_REGS_OFFSET(x)	(0x400 + x)
>   
>   /* bit definitions for REG_UFS_CFG1 register */
> -#define QUNIPRO_SEL		0x1
> -#define UTP_DBG_RAMS_EN		0x20000
> +#define QUNIPRO_SEL		BIT(0)
> +#define UTP_DBG_RAMS_EN		BIT(17)
>   #define TEST_BUS_EN		BIT(18)
>   #define TEST_BUS_SEL		GENMASK(22, 19)
>   #define UFS_REG_TEST_BUS_EN	BIT(30)
>   
>   /* bit definitions for REG_UFS_CFG2 register */
> -#define UAWM_HW_CGC_EN		(1 << 0)
> -#define UARM_HW_CGC_EN		(1 << 1)
> -#define TXUC_HW_CGC_EN		(1 << 2)
> -#define RXUC_HW_CGC_EN		(1 << 3)
> -#define DFC_HW_CGC_EN		(1 << 4)
> -#define TRLUT_HW_CGC_EN		(1 << 5)
> -#define TMRLUT_HW_CGC_EN	(1 << 6)
> -#define OCSC_HW_CGC_EN		(1 << 7)
> +#define UAWM_HW_CGC_EN		BIT(0)
> +#define UARM_HW_CGC_EN		BIT(1)
> +#define TXUC_HW_CGC_EN		BIT(2)
> +#define RXUC_HW_CGC_EN		BIT(3)
> +#define DFC_HW_CGC_EN		BIT(4)
> +#define TRLUT_HW_CGC_EN		BIT(5)
> +#define TMRLUT_HW_CGC_EN	BIT(6)
> +#define OCSC_HW_CGC_EN		BIT(7)
>   
>   /* bit definition for UFS_UFS_TEST_BUS_CTRL_n */
> -#define TEST_BUS_SUB_SEL_MASK	0x1F  /* All XXX_SEL fields are 5 bits wide */
> +#define TEST_BUS_SUB_SEL_MASK	GENMASK(4, 0)  /* All XXX_SEL fields are 5 bits wide */
>   
>   #define REG_UFS_CFG2_CGC_EN_ALL (UAWM_HW_CGC_EN | UARM_HW_CGC_EN |\
>   				 TXUC_HW_CGC_EN | RXUC_HW_CGC_EN |\
> @@ -101,17 +98,12 @@ enum {
>   				 TMRLUT_HW_CGC_EN | OCSC_HW_CGC_EN)
>   
>   /* bit offset */
> -enum {
> -	OFFSET_UFS_PHY_SOFT_RESET           = 1,
> -	OFFSET_CLK_NS_REG                   = 10,
> -};
> +#define OFFSET_CLK_NS_REG		0xa
>   
>   /* bit masks */
> -enum {
> -	MASK_UFS_PHY_SOFT_RESET             = 0x2,
> -	MASK_TX_SYMBOL_CLK_1US_REG          = 0x3FF,
> -	MASK_CLK_NS_REG                     = 0xFFFC00,
> -};
> +#define MASK_UFS_PHY_SOFT_RESET		BIT(1)
> +#define MASK_TX_SYMBOL_CLK_1US_REG	GENMASK(9, 0)
> +#define MASK_CLK_NS_REG			GENMASK(23, 10)
>   
>   /* QCOM UFS debug print bit mask */
>   #define UFS_QCOM_DBG_PRINT_REGS_EN	BIT(0)
> @@ -135,15 +127,15 @@ ufs_qcom_get_controller_revision(struct ufs_hba *hba,
>   {
>   	u32 ver = ufshcd_readl(hba, REG_UFS_HW_VERSION);
>   
> -	*major = (ver & UFS_HW_VER_MAJOR_MASK) >> UFS_HW_VER_MAJOR_SHFT;
> -	*minor = (ver & UFS_HW_VER_MINOR_MASK) >> UFS_HW_VER_MINOR_SHFT;
> -	*step = (ver & UFS_HW_VER_STEP_MASK) >> UFS_HW_VER_STEP_SHFT;
> +	*major = FIELD_GET(UFS_HW_VER_MAJOR_MASK, ver);
> +	*minor = FIELD_GET(UFS_HW_VER_MINOR_MASK, ver);
> +	*step = FIELD_GET(UFS_HW_VER_STEP_MASK, ver);
>   };
>   
>   static inline void ufs_qcom_assert_reset(struct ufs_hba *hba)
>   {
> -	ufshcd_rmwl(hba, MASK_UFS_PHY_SOFT_RESET,
> -			1 << OFFSET_UFS_PHY_SOFT_RESET, REG_UFS_CFG1);
> +	ufshcd_rmwl(hba, MASK_UFS_PHY_SOFT_RESET, FIELD_PREP(MASK_UFS_PHY_SOFT_RESET, 1),

Nit: I'd just define the value too and use the defined name here.

> +		    REG_UFS_CFG1);
>   
>   	/*
>   	 * Make sure assertion of ufs phy reset is written to
> @@ -154,8 +146,8 @@ static inline void ufs_qcom_assert_reset(struct ufs_hba *hba)
>   
>   static inline void ufs_qcom_deassert_reset(struct ufs_hba *hba)
>   {
> -	ufshcd_rmwl(hba, MASK_UFS_PHY_SOFT_RESET,
> -			0 << OFFSET_UFS_PHY_SOFT_RESET, REG_UFS_CFG1);
> +	ufshcd_rmwl(hba, MASK_UFS_PHY_SOFT_RESET, FIELD_PREP(MASK_UFS_PHY_SOFT_RESET, 0),

Nit: FIELD_PREP is always 0.

> +		    REG_UFS_CFG1);
>   
>   	/*
>   	 * Make sure de-assertion of ufs phy reset is written to

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
