Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D192FA3741
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 20:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RaMfdp0T60AJLDkoYmJG+CyFcgWzGYh5iwABNd8vc04=; b=AHIENDhTkL3S6v
	ipSCN6lLEcuxGXp/i21olxmlUHWHl7n2Iqb2+awhJYHNeFlKVqBMOfavGrJYKOlN/GXNhCaWyN2WT
	3t5MxW5SmoImn/2SXReZ813l9/eaEW8RjmXeibyfR10/sN6COgpY+63dyl1CjnBxg4Ax4R0WJ6YVw
	lsr6Fg5TBUVS7t8eV3ZetDpenOaxZzmkw7MmBzrMYSRGOY7aB50NN9UZzlT4xzMaie35hnrxRP6GZ
	7NPdYa5xZ1ZiC1Woez5lHWPXNYJNQqGrxvM2nynv5S6Lm8c+rWRkIZED4RruYBCmxsamsBQNrhg3R
	t9PbWMS/Y34xpD5ncWFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opbRg-00FDme-LN; Mon, 31 Oct 2022 20:31:44 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opbRd-00FDeC-U0
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 20:31:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667248298;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=6iglFbtxmswy6Wel7/DoB7/VCgHF3PqnZ3i1JdiWSK0=;
	b=Kx/M5jPO7MonSgdDG0gvJcThxGKWS6TMDVYlj1mLQLpJddmj1REqCytGBz4gBBhoMem3ek
	9r4KXVhLC7riaQDY5OougA9e49KLjRaKpP2avE9Q6j97nMgUUe+QmKjpKyDEkHxkhDYkOD
	JeXdqO3q+qT+K+B5aJIJyN4TxB8HwDk=
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com
 [209.85.167.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-365-Vo5G_v9NOkmMbWWTO82SBQ-1; Mon, 31 Oct 2022 16:31:37 -0400
X-MC-Unique: Vo5G_v9NOkmMbWWTO82SBQ-1
Received: by mail-oi1-f198.google.com with SMTP id p204-20020aca42d5000000b00354da838ce9so4842613oia.4
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 13:31:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6iglFbtxmswy6Wel7/DoB7/VCgHF3PqnZ3i1JdiWSK0=;
        b=rxjMZmRTjUkEZZ0YLFD6LCX7vHGhZXAQLsOQOFe4GiQQ3xLX3EttZWZLMM99vOln0G
         2Dpo+ih5VqM1ijtVkW677xEBIPrxO/q5EwYKQo5x72KiChYnNRQhLQ50hQoeSsKAsxK8
         Npml1W0ST1qRwexwQ7KvRqhYvAhyt7oW9Aybe6Uhx0Njd4omee3EdsNH0ByhukbW9+I+
         cJXwWA0S+9p094B1WJZoVatGQhwc6yIv+lRyiOnOPQ6D0xCqpDv+ZYTQaHO4HcNQ3wxb
         Fx+jsNKf76bXKy4BEo0whkTY+wy1QLDW2pv4SWmjcjSEWoNkFRN+fMedrsudnBVpSUQA
         6a/w==
X-Gm-Message-State: ACrzQf3sqiFUEBXdWBzOfU8FA2pz4/YiqMuar683SxHdsCN8S8qv0GO3
	Vlc3qk7BTlnPQWfu3n2X9zz2L0z8SrVgFOonFrbiDmBYHUWWImPczv/yY8cA9QosGlRQNk9DAVI
	ASuyqMbaEMwgoxAya2v3RzI2BOw==
X-Received: by 2002:a05:6808:1693:b0:353:e980:30bf with SMTP id bb19-20020a056808169300b00353e98030bfmr7619328oib.206.1667248296672;
        Mon, 31 Oct 2022 13:31:36 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM6B6/z0lcd7D5OLl9WDtE+Mx0BJBDVllYVLYSG10XWz2v15lMdxxewtOH4kYWzU7mQ+tcnlRQ==
X-Received: by 2002:a05:6808:1693:b0:353:e980:30bf with SMTP id bb19-20020a056808169300b00353e98030bfmr7619312oib.206.1667248296393;
        Mon, 31 Oct 2022 13:31:36 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::41])
        by smtp.gmail.com with ESMTPSA id x13-20020a056830114d00b0066c34486aa7sm3113890otq.73.2022.10.31.13.31.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 13:31:35 -0700 (PDT)
Date: Mon, 31 Oct 2022 15:31:33 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
	vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	konrad.dybcio@somainline.org, robh+dt@kernel.org,
	quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org
Subject: Re: [PATCH v2 13/15] scsi: ufs: ufs-qcom: Factor out the logic
 finding the HS Gear
Message-ID: <20221031203133.vmqqig7wlryrgiwv@halaney-x13s>
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
 <20221031180217.32512-14-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20221031180217.32512-14-manivannan.sadhasivam@linaro.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_133142_069853_B2A8C158 
X-CRM114-Status: GOOD (  24.84  )
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

On Mon, Oct 31, 2022 at 11:32:15PM +0530, Manivannan Sadhasivam wrote:
> In the preparation of adding support for new gears, let's move the
> logic that finds the gear for each platform to a new function. This helps
> with code readability and also allows the logic to be used in other places
> of the driver in future.
> 
> While at it, let's make it clear that this driver only supports symmetric
> gear setting (hs_tx_gear == hs_rx_gear).
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>

> ---
>  drivers/ufs/host/ufs-qcom.c | 36 +++++++++++++++++++++++-------------
>  1 file changed, 23 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
> index 38e2ed749d75..c93d2d38b43e 100644
> --- a/drivers/ufs/host/ufs-qcom.c
> +++ b/drivers/ufs/host/ufs-qcom.c
> @@ -278,6 +278,26 @@ static int ufs_qcom_host_reset(struct ufs_hba *hba)
>  	return 0;
>  }
>  
> +static u32 ufs_qcom_get_hs_gear(struct ufs_hba *hba, u32 hs_gear)
> +{
> +	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
> +
> +	if (host->hw_ver.major == 0x1) {
> +		/*
> +		 * HS-G3 operations may not reliably work on legacy QCOM
> +		 * UFS host controller hardware even though capability
> +		 * exchange during link startup phase may end up
> +		 * negotiating maximum supported gear as G3.
> +		 * Hence downgrade the maximum supported gear to HS-G2.
> +		 */
> +		if (hs_gear > UFS_HS_G2)
> +			return UFS_HS_G2;
> +	}
> +
> +	/* Default is HS-G3 */
> +	return UFS_HS_G3;
> +}
> +
>  static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
>  {
>  	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
> @@ -692,19 +712,9 @@ static int ufs_qcom_pwr_change_notify(struct ufs_hba *hba,
>  		ufshcd_init_pwr_dev_param(&ufs_qcom_cap);
>  		ufs_qcom_cap.hs_rate = UFS_QCOM_LIMIT_HS_RATE;
>  
> -		if (host->hw_ver.major == 0x1) {
> -			/*
> -			 * HS-G3 operations may not reliably work on legacy QCOM
> -			 * UFS host controller hardware even though capability
> -			 * exchange during link startup phase may end up
> -			 * negotiating maximum supported gear as G3.
> -			 * Hence downgrade the maximum supported gear to HS-G2.
> -			 */
> -			if (ufs_qcom_cap.hs_tx_gear > UFS_HS_G2)
> -				ufs_qcom_cap.hs_tx_gear = UFS_HS_G2;
> -			if (ufs_qcom_cap.hs_rx_gear > UFS_HS_G2)
> -				ufs_qcom_cap.hs_rx_gear = UFS_HS_G2;
> -		}
> +		/* This driver only supports symmetic gear setting i.e., hs_tx_gear == hs_rx_gear */
> +		ufs_qcom_cap.hs_tx_gear = ufs_qcom_cap.hs_rx_gear = ufs_qcom_get_hs_gear(hba,
> +									ufs_qcom_cap.hs_tx_gear);
>  
>  		ret = ufshcd_get_pwr_dev_param(&ufs_qcom_cap,
>  					       dev_max_params,
> -- 
> 2.25.1
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
