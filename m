Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91C86ECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 20:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F3xLrthMx0wvz0hZlg6xXbTiiMBQ0po3VJWSSjWK2AI=; b=SYcUB8LDkkzMG8
	oZJPApnCrVe3EIikM/jQd3vZrunDQFsu3TSxUXumA0Qe7NflQffgyQmVOFzZnrZwodK6dDnFTnIFK
	IEF2zxSiAj1PKYOJPkFwRsIG+rPKY6NsUV4h/ROyNuSJu0fRf2BUZBfYfqtTbjLvxVgECHhkjGSQt
	ajM5sdbSmasi4huuHYLFRm3m/HwTh/p8hMdp74tUKmXsXaBOICyGo94wAuWbZx6L4A99pkgDB0tn6
	k+GLpUCJpsSB2C4wuHpEhmRpWLERbRpWfdfOYAv7EkHezQslSI3QB2pcaWGZpuH0Dc3XfOMzsV015
	L8yZ7Unr6TtYUuKCNviA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opaz8-00Eor3-QU; Mon, 31 Oct 2022 20:02:14 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opaz6-00EnDd-1g
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 20:02:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667246523;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=GyQzSTgHMXAqR4GW328JWqSw6Ba5Dp1IwqrsJPnSvqw=;
	b=i/AJT4+L371VD6dOAFYD1PsOKsme0bvsXN+6JKiiXoeFUxX2UJJGZ+0sT57J+Lvlce2ggt
	oMcJIDEUstuKIb8hCQVzJb2gmVm97jb7AsH5mhTp5uKQrZ1NlPXLVjrIHRVnHsEhd8uJfT
	ul+9c2fSBLYg7U4w9mwD7gcl75rzdoU=
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com
 [209.85.160.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-522-JJ6LuRdUPR25uRyVEKIUtA-1; Mon, 31 Oct 2022 16:02:02 -0400
X-MC-Unique: JJ6LuRdUPR25uRyVEKIUtA-1
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-13bc77c87f6so5790531fac.19
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 13:02:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GyQzSTgHMXAqR4GW328JWqSw6Ba5Dp1IwqrsJPnSvqw=;
        b=kBhLF6s7ogw7j51qlV/6C8u2uBczqhQ5RAv74F1HLU9Es79y7klnipn4nsNA5Vf/Zy
         OAucB9RFXom9nRLYDhwnrb7Fk458fFuHvQGoS7gSm/G/NR0NF+0FNLVVDyTQbSQrgCT5
         Q3pQVh7vKGVxW84rQhMzNnxOndlqHlpiyAav+uJMbycjQ58/W5/SIkTdZ+6ibPD5YHNH
         W8Kdd/c24wB4BSl1B351AzV5BBprVHMgSkos0wUNlpjhyEQLBEtnAMg+M2bD5DjnZXb0
         ldFAynFFuRn/wl9N+4jDbiP6oHpImZyCkvV2Ezvjvulz0xo4xdmBoYLIHO9uDHPKUmwb
         TYUw==
X-Gm-Message-State: ACrzQf3ih763SO1ojBKOP7q+vrU8+yV59E0B+GfMPabHKVQjCsdni8Dq
	IiMXNSx21vxpirD8EJdCfkpOYO+u5tyGQsv3gHJmh8v/g24hIgAQl0uCQ+tlz3wFZV2/nl3KXlV
	wlWxuoTu6N0eDNkPmBsH9Ocx62A==
X-Received: by 2002:a05:6870:51a:b0:130:ae8d:daaf with SMTP id j26-20020a056870051a00b00130ae8ddaafmr17100860oao.103.1667246521929;
        Mon, 31 Oct 2022 13:02:01 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM4COwYawDiGVOrrxMUqz/QkdUPpj62cIx+cSPHKLQLGQk5fYVCCWkgMetIObtdOgQWrNI5yJQ==
X-Received: by 2002:a05:6870:51a:b0:130:ae8d:daaf with SMTP id j26-20020a056870051a00b00130ae8ddaafmr17100841oao.103.1667246521646;
        Mon, 31 Oct 2022 13:02:01 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::41])
        by smtp.gmail.com with ESMTPSA id o37-20020a05687096a500b00131c3d4d38fsm3497667oaq.39.2022.10.31.13.02.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 13:02:01 -0700 (PDT)
Date: Mon, 31 Oct 2022 15:01:58 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
	vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	konrad.dybcio@somainline.org, robh+dt@kernel.org,
	quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org
Subject: Re: [PATCH v2 09/15] scsi: ufs: ufs-qcom: Remove un-necessary
 WARN_ON()
Message-ID: <20221031200158.ph6f4ucbjhzw5knt@halaney-x13s>
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
 <20221031180217.32512-10-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20221031180217.32512-10-manivannan.sadhasivam@linaro.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_130212_242277_52A09982 
X-CRM114-Status: GOOD (  17.44  )
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

On Mon, Oct 31, 2022 at 11:32:11PM +0530, Manivannan Sadhasivam wrote:
> In the reset assert and deassert callbacks, the supplied "id" is not used
> at all and only the hba reset is performed all the time. So there is no
> reason to use a WARN_ON on the "id".
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>

> ---
>  drivers/ufs/host/ufs-qcom.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
> index 7cd996ac180b..8bb0f4415f1a 100644
> --- a/drivers/ufs/host/ufs-qcom.c
> +++ b/drivers/ufs/host/ufs-qcom.c
> @@ -895,8 +895,6 @@ ufs_qcom_reset_assert(struct reset_controller_dev *rcdev, unsigned long id)
>  {
>  	struct ufs_qcom_host *host = rcdev_to_ufs_host(rcdev);
>  
> -	/* Currently this code only knows about a single reset. */
> -	WARN_ON(id);
>  	ufs_qcom_assert_reset(host->hba);
>  	/* provide 1ms delay to let the reset pulse propagate. */
>  	usleep_range(1000, 1100);
> @@ -908,8 +906,6 @@ ufs_qcom_reset_deassert(struct reset_controller_dev *rcdev, unsigned long id)
>  {
>  	struct ufs_qcom_host *host = rcdev_to_ufs_host(rcdev);
>  
> -	/* Currently this code only knows about a single reset. */
> -	WARN_ON(id);
>  	ufs_qcom_deassert_reset(host->hba);
>  
>  	/*
> -- 
> 2.25.1
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
