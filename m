Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76DD8CA5FDD
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 09:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FUBxrOK3Y08TylJY0U6uyr70Yp9Dp3kCAw3RpcB2LS0=; b=fMULvR5mrOXulg
	urF/mKbgKlFbODqdV4GjKGXVRRDB7A9LsGBaxbGKFXp/YvnnXNIhSsypO9w1FuctMDJzcB6fJFtdF
	CnZuwayWnoyRIECDYVydUhNGAn7anrewUp69gWI5mr8fXuLTuq8kJTcxXEFlomTB3MP385SISkZ9K
	yM28vYcOWQhXc8cFlWXNEhFtaTfp5tEqxYm/Jd1fIhTsU05x9kl5wRp7LxiQfvfsr/6x2upZ6iIAN
	w1XX31JBn9r9kahJmayotlBpb6UGOuyFhg940ZXGB3ouXvyrrDmqYYHYFKrKFGQR7+Ko01A0OLnZB
	Zp1rCPKmczPCtqU0WV3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCviz-0000000DEro-0kDv;
	Sat, 03 Oct 2026 09:08:09 +0000
Received: from mail-ej2-x0c.google.com ([2a00:1450:4864:34::c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCviw-0000000DErS-1XhI
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 09:08:08 +0000
Received: by mail-ej2-x0c.google.com with SMTP id a640c23a62f3a-c2e417a5a81so96408566b.3
        for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 02:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1791018484; x=1791623284; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=2g2VvdGotpSREZ6JBEKnuSUm+BHjQJ7dqfy+OdMa7ww=;
        b=hHNJqMPpUNM2es7NO92WLmdv16fTm2dtnDrc+MOeJE2tdGYJ2Dx0C0B2QRyMsg49Gb
         ipqW1ftejsPQzoOSYkvvXq8KDt/b3YSFiWYvsH//3oM7RCMSOAqziGdGt3dome2/Wyzp
         B0JxnpHNhjVhMLnvobYsz0BQ3FHODuAHWDWMSnovNv91iH+xu8YPBZskCbxMJO1FWM5e
         LHkrDTifZRn3LflzE8yV6RchbS0riuQfe7TBy8NXgQPke5V6hJuWovtZohVsnauSfso5
         7nbuQChp972jnzh/C17cVzKNx8p6VhwkkZPPCJUZhMlrUcFRSPtgbchBYUvzj+a2jlEl
         RnXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791018484; x=1791623284;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2g2VvdGotpSREZ6JBEKnuSUm+BHjQJ7dqfy+OdMa7ww=;
        b=eVEcAJkMkgr9ZQ2ysxSnEHRMBBbamOJgEd9J7Vs2LlYrG/zKKzOWxiHHr8iRyFhHsE
         1oTAgKs68n5+sVpcNDcnn+x2eJGH2CdGyMvwiCuQu7VCdxRCnzC5WODbP0dXee0ZSJ2T
         ivqlPUas0klH2HjC8liFs2z/dgpQdwlQhpIczv0XaDvNrZOLUTvPjTfoQEl6uJNZPuUI
         rSWZSlw6K4NYBhrmvwaZcodKwtS2X04tZcQb3ncMyQdX9GtxG+G5/7MPY05O12J3BSmH
         RImktIxxeCEDrdN4i310DzJOSF+cCTnrYc5mX+v+MTwF7OgzBpJk9jtTUwqOMnLSEV8m
         bDyg==
X-Gm-Message-State: AFq9FYLfPAAI5CbLo6xP2Is3F0QFgXmCN8yYFhzrSRdcajSfmlgmXC0G
	5nCgTCOSYeakNz6+RAcCZodrNjItf3B0Ft11JZ8uo3Clo0cSt7Cq4up7K2OFqFqx7lc=
X-Gm-Gg: AYBFou1RTf0RoWuMZShBXUdEnfwLejRtLtu/KCxXhFWyPNuQ2zktqvm5qfWxCEooJVr
	14ht4Ss7PoGEoW+NXsiil2K3pv96IdrJXlC5K2e7Hqnbjdg+yhEGWeVv2Z8Q4LIuDpcu6DBWCAQ
	tvRGkElwljMptUbU3miKdZ1z6Cjm9hAhYCm7kDiQjAmMS3uaMXxpVQFQlXQDlQPBtjmmwea3F+8
	ilmQntRXiO+CkaOMHV0+ADKeENrpGzLVWjNft++NjLg+pXxhTRTixa4fiPodxLJzJoIOy5wJtB8
	uKBPuo3AHPo1b/huwkSk4R0QnUgfddISYspWbfZfy3FeWWYl7HpqlolG3fxgg9yjcbJ1udF4wDY
	P0VTWa0rZxwHBigF/sXBsCh85x3y3KBxiiS2gu2i54ISmJ5uZlkD7D3hl07e7Z4Xym+8szkrsE1
	2OPsO5kAmtTRGFapnZNaum3iu39mvaZI6OQlKDMKK8TMSLCl9EElOFl6V4gl1qDXR2bM8/TNiIS
	MVFvcrHySQ=
X-Received: by 2002:a17:907:3f1b:b0:c29:f5d8:9c70 with SMTP id a640c23a62f3a-c2e4adfa160mr448166766b.31.1791018484339;
        Sat, 03 Oct 2026 02:08:04 -0700 (PDT)
Received: from [192.168.0.167] ([109.77.86.130])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2e71d58da4sm46210666b.7.2026.10.03.02.08.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2026 02:08:03 -0700 (PDT)
Message-ID: <022c47c3-54b1-43a4-9161-1d0acb13b736@linaro.org>
Date: Sat, 3 Oct 2026 10:08:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v18 04/11] phy: qcom-mipi-csi2: Parametrise the common
 status register offset
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, jeyaprakash.soundrapandian@oss.qualcomm.com,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
 <20261003-kaanapali-camss-v18-4-87ba4ebe0db1@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261003-kaanapali-camss-v18-4-87ba4ebe0db1@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_020807_210580_7DECB946 
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 03/10/2026 10:02, Hangxiang Ma wrote:
> The CSI2 PHY common status registers are not at a fixed offset from the
> common register block across SoCs: x1e80100 uses 0xb0 while other 3PH
> v2.4.0 parts differ.
> 
> Replace the hard-coded 0xb0 in CSIPHY_3PH_CMN_CSI_COMMON_STATUSn() with
> a per-SoC common_status_offset field in struct mipi_csi2phy_device_regs,
> initialising x1e80100 to 0xb0 so behaviour is unchanged. This is a
> no-functional-change preparation for describing other SoC offsets.
> 
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 16 +++++++++++-----
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  1 +
>   2 files changed, 12 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> index 966d79c98f9b..8cd331cfb4b3 100644
> --- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> @@ -19,7 +19,8 @@
>   #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_COMMON_PWRDN_B	BIT(0)
>   #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_SHOW_REV_ID	BIT(1)
>   #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL10_IRQ_CLEAR_CMD	BIT(0)
> -#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset, n)	((offset) + 0xb0 + 0x4 * (n))
> +#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset, common_status_offset, n) \
> +	((offset) + (common_status_offset) + 0x4 * (n))
>   
>   #define CSIPHY_2PH_LN_CSI_2PHASE_CTRL9n(n)		((0x200 * (n)) + 0x24)
>   
> @@ -176,19 +177,23 @@ static void phy_qcom_mipi_csi2_hw_version_read(struct mipi_csi2phy_device *csi2p
>   	       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->common_regs_offset, 6));
>   
>   	tmp = readl_relaxed(csi2phy->base +
> -			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 12));
> +			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
> +							      regs->common_status_offset, 12));
>   	csi2phy->hw_version = tmp;
>   
>   	tmp = readl_relaxed(csi2phy->base +
> -			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 13));
> +			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
> +							      regs->common_status_offset, 13));
>   	csi2phy->hw_version |= (tmp << 8) & 0xFF00;
>   
>   	tmp = readl_relaxed(csi2phy->base +
> -			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 14));
> +			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
> +							      regs->common_status_offset, 14));
>   	csi2phy->hw_version |= (tmp << 16) & 0xFF0000;
>   
>   	tmp = readl_relaxed(csi2phy->base +
> -			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 15));
> +			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
> +							      regs->common_status_offset, 15));
>   	csi2phy->hw_version |= (tmp << 24) & 0xFF000000;
>   
>   	dev_dbg_once(csi2phy->dev, "CSIPHY 3PH HW Version = 0x%08x\n", csi2phy->hw_version);
> @@ -375,6 +380,7 @@ const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
>   		.init_seq = lane_regs_x1e80100,
>   		.lane_array_size = ARRAY_SIZE(lane_regs_x1e80100),
>   		.common_regs_offset = 0x1000,
> +		.common_status_offset = 0xb0,
>   	},
>   	.supply_names = (const char **)x1e_supplies,
>   	.num_supplies = ARRAY_SIZE(x1e_supplies),
> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
> index 7e55ae007370..d6366f809e51 100644
> --- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
> @@ -51,6 +51,7 @@ struct mipi_csi2phy_device_regs {
>   	const struct mipi_csi2phy_lane_regs *init_seq;
>   	const int lane_array_size;
>   	const u32 common_regs_offset;
> +	const u32 common_status_offset;
>   };
>   
>   struct mipi_csi2_genpd {
> 

Aren't you using the CSIPHY driver in drivers/phy now ?

So if phy stuff has to change then that change needs to go into drivers/phy

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
