Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F8A4C4332F
	for <linux-phy@archiver.kernel.org>; Tue,  1 Nov 2022 15:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8xXgFiKBZGSARlnSGHIcWmanZL0sDum7g3Og++SaGg4=; b=f10209i+nN1klT
	rg3VAsDEOanA/hyGwnCtz2ir/dk71gOlwUn2lqL+4VGTPV8ZkSwWwE25hDY1Wc9zxRKzZ1zhj8lSn
	/Tmk8eTsJj9Ge4MfjnEGmoVFlVQQORClsDwclYEtte13Jv/3cO1zPjHHce7B6Uh00eTOaQEzUP/NA
	Iz42D8OJVGd/Wc29N+AmSx8kfy8cz1f9ReKJjxAz8iwqpaSwRO2fKWPRO0jIEhJYGbkEcMxSXjj/M
	5H2HIAwvF5OY8doy/jLgU+9DqL2sGKw9I7Awv7HMPoHclEDNaMx6dMw0jh4FUVYalNM9mcl8jQIVx
	vwvO61voKjNDxBoZGNYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opswZ-005lGy-27; Tue, 01 Nov 2022 15:12:47 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opswR-005lDA-Em
	for linux-phy@lists.infradead.org; Tue, 01 Nov 2022 15:12:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667315558;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=WhCfbrC+tKlaqwlNl94RimQiIKrtWvzi9RGBXnP5PaA=;
	b=i2Sqz2pyCUKmYYZV76++4Gj0YRSoInD+4WSDzF4LGw9iPfTvWaONweB6Hj14UIPcGS7rhh
	dNUrMK4Lnp7bRptbnE6Imf1APNdtFI4GHt5YX6YjxlNKW/fAj568r5fKap+q2xvWci647L
	EqQ2DsBwKaSFFNvz9Zu+6mqHcwM/IJc=
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com
 [209.85.167.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-590-PG3TKeS6P0qu0NrzpTulHA-1; Tue, 01 Nov 2022 11:12:37 -0400
X-MC-Unique: PG3TKeS6P0qu0NrzpTulHA-1
Received: by mail-oi1-f199.google.com with SMTP id r31-20020a056808211f00b003558144f5ceso6295091oiw.21
        for <linux-phy@lists.infradead.org>; Tue, 01 Nov 2022 08:12:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WhCfbrC+tKlaqwlNl94RimQiIKrtWvzi9RGBXnP5PaA=;
        b=Y7A8MPyorIBBXLB2XhPx/aPPYcEh5lbmOYF7VWq+j9VTokxo2Fzk89AuAG0F4MP6qY
         0Q8UhbGEXZSP4iRYSTtmsOgeQIsn+uC64MbNHVt923hnho8XEcXOowTLD5Y1d2+4DDku
         9oog4AWlwKgKDadIFm5xSlRfW93wnf10UntJkaUaGnMB+m6Lt+C8DupAtILn7yPDH6zd
         SGP3GeR3mW6TYiCjfXF7YzUkOdjkLZdXY+G2M5xuqlOEXQkf0oizLNFvJtJkt9ZKNP/G
         Fe4mIWHch5zavH1n8V9XgEAk+YCu2vSKlKhhhUXyUE+lMdYsC45AHqOoQow4SrVSakLA
         zvBw==
X-Gm-Message-State: ACrzQf3a3QsgJW1g2NBivKNk6mUytFu31TZCn3CRloiMKbxgeuSrWx80
	/Mjhm+5Pk+um4GYFw2ZlDvcg27ho0GlKrConqdvFpCUFC8roMjPA2j5SlordYYzE2ma7IAow5V7
	feBGATR7RGtqNKof56dTExiF2nw==
X-Received: by 2002:a05:6830:2693:b0:661:e5be:54d with SMTP id l19-20020a056830269300b00661e5be054dmr10137059otu.365.1667315556270;
        Tue, 01 Nov 2022 08:12:36 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM793XlwTZxCVNxIGpeJvkdANMVrjJrL3o5j79HVnLEDlz/VJyPLPzK5QdqyGPayhDWk8QyQxQ==
X-Received: by 2002:a05:6830:2693:b0:661:e5be:54d with SMTP id l19-20020a056830269300b00661e5be054dmr10137047otu.365.1667315556035;
        Tue, 01 Nov 2022 08:12:36 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::41])
        by smtp.gmail.com with ESMTPSA id w67-20020acadf46000000b0035770fc6ca9sm3437879oig.16.2022.11.01.08.12.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Nov 2022 08:12:35 -0700 (PDT)
Date: Tue, 1 Nov 2022 10:12:33 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
	vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	konrad.dybcio@somainline.org, robh+dt@kernel.org,
	quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org
Subject: Re: [PATCH v2 12/15] scsi: ufs: ufs-qcom: Fix the Qcom register name
 for offset 0xD0
Message-ID: <20221101151233.gsmmdbz7htkzpbps@halaney-x13s>
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
 <20221031180217.32512-13-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20221031180217.32512-13-manivannan.sadhasivam@linaro.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_081239_606413_238E455E 
X-CRM114-Status: GOOD (  17.39  )
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

On Mon, Oct 31, 2022 at 11:32:14PM +0530, Manivannan Sadhasivam wrote:
> On newer UFS revisions, the register at offset 0xD0 is called,
> REG_UFS_PARAM0. Since the existing register, RETRY_TIMER_REG is not used
> anywhere, it is safe to use the new name.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>

> ---
>  drivers/ufs/host/ufs-qcom.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/ufs/host/ufs-qcom.h b/drivers/ufs/host/ufs-qcom.h
> index 9d96ac71b27f..7fe928b82753 100644
> --- a/drivers/ufs/host/ufs-qcom.h
> +++ b/drivers/ufs/host/ufs-qcom.h
> @@ -33,7 +33,8 @@ enum {
>  	REG_UFS_TX_SYMBOL_CLK_NS_US         = 0xC4,
>  	REG_UFS_LOCAL_PORT_ID_REG           = 0xC8,
>  	REG_UFS_PA_ERR_CODE                 = 0xCC,
> -	REG_UFS_RETRY_TIMER_REG             = 0xD0,
> +	/* On older UFS revisions, this register is called "RETRY_TIMER_REG" */
> +	REG_UFS_PARAM0                      = 0xD0,
>  	REG_UFS_PA_LINK_STARTUP_TIMER       = 0xD8,
>  	REG_UFS_CFG1                        = 0xDC,
>  	REG_UFS_CFG2                        = 0xE0,
> -- 
> 2.25.1
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
