Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 818B0FA3741
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 20:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mYm0LX7ceJ46aZEIdZwdOc/e15HrAiAD3niI9cN99Bw=; b=a9jvtx2lvAlZK1
	faMQHtxw2MkNNoabF99pelH6JtmzQyd0trQBQcDkIZFNti+su8X+bOFsn7nVZjBZTL28XtAC12D4R
	t3ObESPle/oH/TqzS2drSqocbm8FbjBBgrocI1gq08ZdsUtA2Br4M3zNmbvhTWtbztNhQkzW6IpNa
	eSRRXygo9LPiiLF3Y9+00L3xHs/UWbF2Etfeumg69DCkavD3QOq1+nlunf4aKPZ72C/FX229/ATwq
	LSD6Dj6SQuBMEnGJHQXdgifg2691tNoLqhuvJu2KBSjq+E4JvB7mk5skmmVVTbrtTKKZ17uzoUV4J
	w4Lm+R1fv1gAqIc1dK1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opblV-00FKZc-U0; Mon, 31 Oct 2022 20:52:13 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opblT-00FKYs-8J
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 20:52:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667249530;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qWJyfhmQ6o9T03H9pL5B2g/JZubAjjutk2ZOVbBRNCw=;
	b=KLY8lwFIG3jnP5gTjLzJ+n0umy0825FQ9FWQJiU1l808DSefn4+aRyR17e9IjViPO1zQVq
	hCCbNUU/qzbwVTH1gYVhlJ201LX/W/nP3ZxW6zs2agUZ1wns3gora3u2ugt6zD7gLcDBJP
	6TVBMFoGBymEne2lh5PqqziCzwB1mg0=
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com
 [209.85.160.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-81-HYtys-oIN_iB9BtF7KDklg-1; Mon, 31 Oct 2022 16:52:06 -0400
X-MC-Unique: HYtys-oIN_iB9BtF7KDklg-1
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-13b7af40a31so5855944fac.1
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 13:52:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qWJyfhmQ6o9T03H9pL5B2g/JZubAjjutk2ZOVbBRNCw=;
        b=McoFfg1VNynjCCCSgpiUBdkU0liC1T4fUVe98ycMjaSNTa1kkzyh35O71XxaH3WOae
         wTNlHJhx8fjhQFDIdTjneRnx6X3Ul+AIw1r3d/XQfFYe812dNbrsODkLq9zUt/uBKygZ
         Im5XQbpGVgpOIscS590uGw0347dqELmedoG0WYYsGzGtMaFLN92NoSPv4n11ydP6ws98
         +pgabR92KnljMl1bizUy9Nnf7wUYn0iaGw+IKA1iHkQ1klrAAUVcVubdnk1dQQv7qT7Z
         TdriVhDMOPdUq9zlPcon74Ek+Jts9/eAmgpWRFEbZwejthUh7ALKFYBSdWnpcAp7oL2F
         /32w==
X-Gm-Message-State: ACrzQf0vRzL9HjyjSqwNIVjxhSqN8LjquZhqw7BQgun1mNy2N4hTTchM
	W5WOG2DBJRa+YZU9SwFALsTNn8MnLPr/OkyiiQ5464BkheXXK/C+6/fwVQivhhLnOSUxDel0gqo
	D9LcNkjJZas4haghloUdyislXpw==
X-Received: by 2002:a4a:9645:0:b0:476:a4e2:8cbc with SMTP id r5-20020a4a9645000000b00476a4e28cbcmr6332026ooi.74.1667249526157;
        Mon, 31 Oct 2022 13:52:06 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM7ywIcmmfWbra9uzy87gn8Co1UQ9UKror/SwnO/b46Kb0nMbJMNL+ohvKc3NHWq0v7gIWh+yg==
X-Received: by 2002:a4a:9645:0:b0:476:a4e2:8cbc with SMTP id r5-20020a4a9645000000b00476a4e28cbcmr6332015ooi.74.1667249525910;
        Mon, 31 Oct 2022 13:52:05 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::41])
        by smtp.gmail.com with ESMTPSA id f16-20020a9d5f10000000b006679a03a753sm3169250oti.11.2022.10.31.13.52.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 13:52:05 -0700 (PDT)
Date: Mon, 31 Oct 2022 15:52:03 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
	vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	konrad.dybcio@somainline.org, robh+dt@kernel.org,
	quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org
Subject: Re: [PATCH v2 14/15] scsi: ufs: ufs-qcom: Add support for finding HS
 gear on new UFS versions
Message-ID: <20221031205203.gxpghwdoyz4a5c4w@halaney-x13s>
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
 <20221031180217.32512-15-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20221031180217.32512-15-manivannan.sadhasivam@linaro.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_135211_396308_EFF39D2C 
X-CRM114-Status: GOOD (  32.71  )
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

On Mon, Oct 31, 2022 at 11:32:16PM +0530, Manivannan Sadhasivam wrote:
> Starting from UFS controller v4, Qcom supports dual gear mode (i.e., the
> controller/PHY can be configured to run in two gear speeds). But that
> requires an agreement between the UFS controller and the UFS device.
> This commit finds the max gear supported by both controller and device
> then decides which one to use.
> 
> UFS controller's max gear can be read from the REG_UFS_PARAM0 register and
> UFS device's max gear can be read from the "max-device-gear" devicetree
> property.
> 
> The UFS PHY also needs to be configured with the decided gear using the
> phy_set_mode_ext() API.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  drivers/ufs/host/ufs-qcom.c | 31 ++++++++++++++++++++++++++++---
>  drivers/ufs/host/ufs-qcom.h |  4 ++++
>  2 files changed, 32 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
> index c93d2d38b43e..ca60a5b0292b 100644
> --- a/drivers/ufs/host/ufs-qcom.c
> +++ b/drivers/ufs/host/ufs-qcom.c
> @@ -281,6 +281,9 @@ static int ufs_qcom_host_reset(struct ufs_hba *hba)
>  static u32 ufs_qcom_get_hs_gear(struct ufs_hba *hba, u32 hs_gear)
>  {
>  	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
> +	struct device *dev = hba->dev;
> +	u32 max_device_gear, max_hcd_gear, reg;
> +	int ret;
>  
>  	if (host->hw_ver.major == 0x1) {
>  		/*
> @@ -292,8 +295,29 @@ static u32 ufs_qcom_get_hs_gear(struct ufs_hba *hba, u32 hs_gear)
>  		 */
>  		if (hs_gear > UFS_HS_G2)
>  			return UFS_HS_G2;
> +	} else if (host->hw_ver.major > 0x3) {
> +		/*
> +		 * Starting from UFS controller v4, Qcom supports dual gear mode (i.e., the

Bikeshedding, but I think with this wording checking:

    host->hw_ver.major >= 0x4

is a little more readable, or at least for me when I read the comment I
had to jump back up to the else if statement.

Even without that change though

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>

> +		 * controller/PHY can be configured to run in two gear speeds). But that
> +		 * requires an agreement between the UFS controller and the device. Below
> +		 * code tries to find the max gear of both and decides which gear to use.
> +		 *
> +		 * First get the max gear supported by the UFS device if available.
> +		 * If the property is not defined in devicetree, then use the default gear.
> +		 */
> +		ret = of_property_read_u32(dev->of_node, "max-device-gear", &max_device_gear);
> +		if (ret)
> +			goto err_out;
> +
> +		/* Next get the max gear supported by the UFS controller */
> +		reg = ufshcd_readl(hba, REG_UFS_PARAM0);
> +		max_hcd_gear = UFS_QCOM_MAX_GEAR(reg);
> +
> +		/* Now return the minimum of both gears */
> +		return min(max_device_gear, max_hcd_gear);
>  	}
>  
> +err_out:
>  	/* Default is HS-G3 */
>  	return UFS_HS_G3;
>  }
> @@ -303,7 +327,7 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
>  	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
>  	struct phy *phy = host->generic_phy;
>  	int ret;
> -	bool is_rate_B = UFS_QCOM_LIMIT_HS_RATE == PA_HS_MODE_B;
> +	u32 hs_gear;
>  
>  	/* Reset UFS Host Controller and PHY */
>  	ret = ufs_qcom_host_reset(hba);
> @@ -311,8 +335,9 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
>  		dev_warn(hba->dev, "%s: host reset returned %d\n",
>  				  __func__, ret);
>  
> -	if (is_rate_B)
> -		phy_set_mode(phy, PHY_MODE_UFS_HS_B);
> +	/* UFS_HS_G2 is used here since that's the least gear supported by legacy Qcom platforms */
> +	hs_gear = ufs_qcom_get_hs_gear(hba, UFS_HS_G2);
> +	phy_set_mode_ext(phy, PHY_MODE_UFS_HS_B, hs_gear);
>  
>  	/* phy initialization - calibrate the phy */
>  	ret = phy_init(phy);
> diff --git a/drivers/ufs/host/ufs-qcom.h b/drivers/ufs/host/ufs-qcom.h
> index 7fe928b82753..751ded3e3531 100644
> --- a/drivers/ufs/host/ufs-qcom.h
> +++ b/drivers/ufs/host/ufs-qcom.h
> @@ -94,6 +94,10 @@ enum {
>  #define TMRLUT_HW_CGC_EN	BIT(6)
>  #define OCSC_HW_CGC_EN		BIT(7)
>  
> +/* bit definitions for REG_UFS_PARAM0 */
> +#define MAX_HS_GEAR_MASK	GENMASK(6, 4)
> +#define UFS_QCOM_MAX_GEAR(x)	FIELD_GET(MAX_HS_GEAR_MASK, (x))
> +
>  /* bit definition for UFS_UFS_TEST_BUS_CTRL_n */
>  #define TEST_BUS_SUB_SEL_MASK	GENMASK(4, 0)  /* All XXX_SEL fields are 5 bits wide */
>  
> -- 
> 2.25.1
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
