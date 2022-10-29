Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08174C433FE
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 21:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=adEDv+qkg7NF5rUKUqP3IIGGdxhkHiWGbepYASbSoag=; b=aVcdgnadkgemF8
	NC0otjfEVhEaV+PtU11N2IHIt0JkVV0QsaVYmMo8OAaluvgaE8elUHjO58TLgQmKcfDrHpg3xr+0q
	SBTc1jkD7vH6r+ehmkzvL6h4L8yziH54V/6PjgxN0+Zcf8uCXLFdLAhwCSxiFaEc+MXzPh2kVntj3
	CVUG77684gv5GxgGP+IXoVO6Kbo0rouPJnO4dOAB4vyEoQORJZNKyhuJMbLRKSOFZFv61QhR5So2b
	Ml8zNvEiWTndj9ltXItrPJJXkWJa2/L5Tw3soXCG1NKaZAU68VkLFikJhG3pmX/O9Sr3NDdATNzG7
	PIOSl/Vk34nMvva8x5vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ootgq-009gpO-Eg; Sat, 29 Oct 2022 21:48:28 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ootgn-009glE-8n
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 21:48:26 +0000
Received: by mail-lj1-x22f.google.com with SMTP id x21so11095411ljg.10
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 14:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=60gE0VpcoGAPlbRv1xoX9SZPevsEIxkl5Hy3ZJtcGLM=;
        b=MAtfuTHl4dtfu3T77+nZgTnE7t3bSENdQJryoXbdhhVaonf/mbK8WoPIj9pmr8Q4CD
         DO3kqyYsY6EctI6xxXhuNIhg/xkTyttwKO2HNgUh/JU1ScMHfG5o4tXClupgc97uCNP1
         vaagYkVuaQdqrhKFtMOFYQT4a2cZO0bG9RfbvNHuyW0wCpCWJSti7mZD6GNjt6wHCs0D
         RoPR+z2BqTFaCEEY3lmUeiLB0vj8rGB8eudbVH5kcsiibKCfOHCtX9cOih+TXIR1QmHk
         uGUqK913/lIQd/WYTN0fqEOtF8WpkhrzAN6UHoUYbp6rMaQGpHzkrohhMKNxd4tvQ+To
         1xjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=60gE0VpcoGAPlbRv1xoX9SZPevsEIxkl5Hy3ZJtcGLM=;
        b=aCyJ/SMfI0UwZSUxGSQ6mR08Hw6M5PBcLbrhlPDZmgyaSb8+QLzGylERrrpJKcfL01
         q2eGlRwlcnVD5d/ibaxBz7MjtBsedj9gE3fvZPwO1OEApm70fa290Is3pi4hNj5nGp02
         qmDhnoZL8y2EwDciM6SwYnwNDcQ6vcc9JmB1K9OCRMbZxPmFFxT14W3El1XuH12+IPvm
         pvx80RUEK3T1WSCvizJ+5RWwEtSsNCD5045fwaxRsWP2tF+A1GB2LqGnT3hs68PNYxd6
         BpiqkZiRLgNF6SXV4LmYnH40OGm6ErZHt96ybGuyr4t6UeGNqQTNUn+E1tz4y+v+aG/V
         qSjQ==
X-Gm-Message-State: ACrzQf2V5xWqDFsa7d4FEg6mq8kGIAkQbazswi7aHOU9B5pRWeNMv/fg
	YSwoMHDNk+TvqW9mj2hxM9dhwoXct8zzzQ==
X-Google-Smtp-Source: AMsMyM6yzSiQ96HOcDj/ORv3kfBljuuQYibHSlOCiCEiivXOHwWoN/gIdjwW9GvlC69HZGmF5O+thg==
X-Received: by 2002:a2e:8397:0:b0:277:35fa:84d6 with SMTP id x23-20020a2e8397000000b0027735fa84d6mr2126944ljg.429.1667080103304;
        Sat, 29 Oct 2022 14:48:23 -0700 (PDT)
Received: from [10.27.10.248] ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id h4-20020ac24da4000000b004a45ed1ae21sm443956lfe.224.2022.10.29.14.48.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Oct 2022 14:48:22 -0700 (PDT)
Message-ID: <cf8dcf53-f131-68f4-c6aa-d41e02ac6d5c@linaro.org>
Date: Sun, 30 Oct 2022 00:48:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 14/15] scsi: ufs: ufs-qcom: Add support for finding HS
 gear on new UFS versions
Content-Language: en-GB
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@somainline.org, robh+dt@kernel.org, quic_cang@quicinc.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-scsi@vger.kernel.org
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
 <20221029141633.295650-15-manivannan.sadhasivam@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221029141633.295650-15-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_144825_382667_B4ED51FA 
X-CRM114-Status: GOOD (  30.81  )
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
> Starting from UFS controller v4, Qcom supports dual gear mode (i.e., the
> controller/PHY can be configured to run in two gear speeds). But that
> requires an agreement between the UFS controller and the UFS device.
> This commit finds the max gear supported by both controller and device
> then decides which one to use.
> 
> UFS controller's max gear can be read from the REG_UFS_PARAM0 register and
> UFS device's max gear can be read from the "max-gear" devicetree property.
> 
> The UFS PHY also needs to be configured with the decided gear using the
> phy_set_mode_ext() API.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>   drivers/ufs/host/ufs-qcom.c | 35 ++++++++++++++++++++++++++++++++---
>   drivers/ufs/host/ufs-qcom.h |  4 ++++
>   2 files changed, 36 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
> index f952cc76919f..268463e92d67 100644
> --- a/drivers/ufs/host/ufs-qcom.c
> +++ b/drivers/ufs/host/ufs-qcom.c
> @@ -281,6 +281,9 @@ static int ufs_qcom_host_reset(struct ufs_hba *hba)
>   static u32 ufs_qcom_get_hs_gear(struct ufs_hba *hba, u32 hs_gear)
>   {
>   	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
> +	struct device *dev = hba->dev;
> +	u32 max_gear, hcd_max_gear, reg;
> +	int ret;
>   
>   	if (host->hw_ver.major == 0x1) {
>   		/*
> @@ -292,8 +295,33 @@ static u32 ufs_qcom_get_hs_gear(struct ufs_hba *hba, u32 hs_gear)
>   		 */
>   		if (hs_gear > UFS_HS_G2)
>   			return UFS_HS_G2;
> +	} else if (host->hw_ver.major > 0x3) {
> +		/*
> +		 * Starting from UFS controller v4, Qcom supports dual gear mode (i.e., the
> +		 * controller/PHY can be configured to run in two gear speeds). But that
> +		 * requires an agreement between the UFS controller and the device. Below
> +		 * code tries to find the max gear of both and decides which gear to use.
> +		 *
> +		 * First get the max gear supported by the UFS device if available.
> +		 * If the property is not defined in devicetree, then use the default gear.
> +		 */
> +		ret = of_property_read_u32(dev->of_node, "max-gear", &max_gear);
> +		if (ret)
> +			goto err_out;

Can we detect the UFS device's max gear somehow? If not, the 'max-gear' 
property name doesn't sound good. Maybe calling it 'device-gear' would 
be better.

> +
> +		/* Next get the max gear supported by the UFS controller */
> +		reg = ufshcd_readl(hba, REG_UFS_PARAM0);
> +		hcd_max_gear = UFS_QCOM_MAX_GEAR(reg);
> +
> +		/*
> +		 * Now compare both the gears. If the max gear supported by the UFS device
> +		 * is compatible with UFS controller, then use the UFS device's max gear
> +		 * speed. Otherwise, use the UFS controller supported max gear speed.
> +		 */
> +		return (max_gear <= hcd_max_gear) ? max_gear : hcd_max_gear;

return max(max_gear, hcd_max_gear); ?

>   	}
>   
> +err_out:
>   	/* Default is HS-G3 */
>   	return UFS_HS_G3;
>   }
> @@ -303,7 +331,7 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
>   	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
>   	struct phy *phy = host->generic_phy;
>   	int ret;
> -	bool is_rate_B = UFS_QCOM_LIMIT_HS_RATE == PA_HS_MODE_B;
> +	u32 hs_gear;
>   
>   	/* Reset UFS Host Controller and PHY */
>   	ret = ufs_qcom_host_reset(hba);
> @@ -311,8 +339,9 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
>   		dev_warn(hba->dev, "%s: host reset returned %d\n",
>   				  __func__, ret);
>   
> -	if (is_rate_B)
> -		phy_set_mode(phy, PHY_MODE_UFS_HS_B);
> +	/* UFS_HS_G2 is used here since that's the least gear supported by legacy Qcom platforms */
> +	hs_gear = ufs_qcom_get_hs_gear(hba, UFS_HS_G2);
> +	phy_set_mode_ext(phy, PHY_MODE_UFS_HS_B, hs_gear);
>   
>   	/* phy initialization - calibrate the phy */
>   	ret = phy_init(phy);
> diff --git a/drivers/ufs/host/ufs-qcom.h b/drivers/ufs/host/ufs-qcom.h
> index 214ea50acab9..c93bc52ea848 100644
> --- a/drivers/ufs/host/ufs-qcom.h
> +++ b/drivers/ufs/host/ufs-qcom.h
> @@ -89,6 +89,10 @@ enum {
>   #define TMRLUT_HW_CGC_EN	BIT(6)
>   #define OCSC_HW_CGC_EN		BIT(7)
>   
> +/* bit definitions for REG_UFS_PARAM0 */
> +#define MAX_HS_GEAR_MASK	GENMASK(6, 4)
> +#define UFS_QCOM_MAX_GEAR(x)	FIELD_GET(MAX_HS_GEAR_MASK, (x))
> +
>   /* bit definition for UFS_UFS_TEST_BUS_CTRL_n */
>   #define TEST_BUS_SUB_SEL_MASK	GENMASK(4, 0)  /* All XXX_SEL fields are 5 bits wide */
>   

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
