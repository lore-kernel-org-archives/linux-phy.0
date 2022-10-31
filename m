Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D46C1ECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 20:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jdj7G0E0fcFyBONJvAUYT5ndGxD2pjbtOYdl4xo7Z7Q=; b=Zo/qomcF67tslh
	A8dAKvijyTGgYgdUSYGAPuBtOOevuE3hkRmCfAPYPyGEQN9BUttgM/KO/UdytGmd5YjiJ3fANX2YP
	BcGxp+IEImuGfJW1COghreIQvO7xJRlpX/3x45DjICVgdE/HFlcTf0V6TX526j3aTrPDogrUq39wr
	Bi6mA6DDs4YyIdhyW6dBd0QhgHp5NPa24Rv8ah2dd0UB0wvralrkT/z/xzHRU3hHN4d+36OVMcOEp
	4D6NZUKAABt+A0sQXE6v33fk/Br/Miexi7mC9YgQSmg5rY+HvSRcjjmR1hZB+GurT5kLY3361Y3yR
	jixIxV38ELD/WsYWY4iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opb2g-00F3w0-AC; Mon, 31 Oct 2022 20:05:54 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opb2d-00F3qg-Ha
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 20:05:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667246750;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=H3ZU5SpqvPjaqpTfjZ04SSbHmjl8vKSTt7kMWQY1QWg=;
	b=fw4XimW99fPl8V0FXs9iKHij0GmxpW2zsawtXJriBQgam65219KaUtoY20yxEPx6FvPRq3
	ji7Fej053m0fW1h7GZlu007IA+09jYxC5AuPHDD4PAz5uCbZdzor49Xc+7BBkIPW3KPmzE
	LLgWnrKLnDwDUtnesh5n3Mg9/Hb/zo0=
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com
 [209.85.210.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-304-kQskXQ9OPlydib1yJ5FQcQ-1; Mon, 31 Oct 2022 16:05:47 -0400
X-MC-Unique: kQskXQ9OPlydib1yJ5FQcQ-1
Received: by mail-ot1-f69.google.com with SMTP id f40-20020a9d03ab000000b0066c527e2f29so1955296otf.16
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 13:05:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H3ZU5SpqvPjaqpTfjZ04SSbHmjl8vKSTt7kMWQY1QWg=;
        b=M93Bxr4LKodVcP1rO3P19YKpcyAX1HPGPiort/npfcS1xVzH636v83jifLYHiUyBcQ
         5VkgpA5rvGxrlkEdBhhyn8wC9jWx8/xTO5bX2IjuiYRqmVap1DmQAywCZB30G4SCORTg
         ///rwxHJX4v3IA2JDjsJkeYCNQgQfvJ8iZCVCJ0auCVkTLr3rJXtmaij9rY/8Z4oDUPY
         DupoYyISOqp4BcANta+m0HcYjKfb2FskjABsRzOyorc9Oog2MHhElQPzTJ8AAbsBxLJd
         a4C7LGIDZ2xPejbZnTOQr1+CK8Q2OhOgI4xNwx3p0ZIBYpZzYpd+iUgSgEnw3IXdy1Z2
         bZQA==
X-Gm-Message-State: ACrzQf32y20LTgJETJjKxIFAqKgTeoINRNPVZWAo0cHRCDblg2bNc98R
	Y+MbDD1bR1xlt8hXtH9hetkbOJii8uuhh4JAE4yhUnwDmPYYjXlNhLAHdoJDICIOSmJn6oJ/E7A
	WsVDGoKfXq1drhVEv0ySsdERUMg==
X-Received: by 2002:a05:6830:6401:b0:661:c74e:6b03 with SMTP id cj1-20020a056830640100b00661c74e6b03mr7158949otb.291.1667246746795;
        Mon, 31 Oct 2022 13:05:46 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM4UUO37SZvA4qjX9uf7dmQCxxsJtcyXRaXYuTlx2k2AoBUUULV+m0zUJOEaCdymKZ+gqdzveQ==
X-Received: by 2002:a05:6830:6401:b0:661:c74e:6b03 with SMTP id cj1-20020a056830640100b00661c74e6b03mr7158939otb.291.1667246746589;
        Mon, 31 Oct 2022 13:05:46 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::41])
        by smtp.gmail.com with ESMTPSA id y1-20020a056830108100b00660fe564e12sm3092167oto.58.2022.10.31.13.05.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 13:05:46 -0700 (PDT)
Date: Mon, 31 Oct 2022 15:05:43 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
	vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	konrad.dybcio@somainline.org, robh+dt@kernel.org,
	quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org
Subject: Re: [PATCH v2 11/15] scsi: ufs: ufs-qcom: Use dev_err_probe() for
 printing probe error
Message-ID: <20221031200543.7j3pw4idrawxge2h@halaney-x13s>
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
 <20221031180217.32512-12-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20221031180217.32512-12-manivannan.sadhasivam@linaro.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_130551_674041_D396280D 
X-CRM114-Status: GOOD (  15.61  )
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

On Mon, Oct 31, 2022 at 11:32:13PM +0530, Manivannan Sadhasivam wrote:
> Make use of dev_err_probe() for printing the probe error.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>

> ---
>  drivers/ufs/host/ufs-qcom.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
> index 8bb0f4415f1a..38e2ed749d75 100644
> --- a/drivers/ufs/host/ufs-qcom.c
> +++ b/drivers/ufs/host/ufs-qcom.c
> @@ -1441,9 +1441,9 @@ static int ufs_qcom_probe(struct platform_device *pdev)
>  	/* Perform generic probe */
>  	err = ufshcd_pltfrm_init(pdev, &ufs_hba_qcom_vops);
>  	if (err)
> -		dev_err(dev, "ufshcd_pltfrm_init() failed %d\n", err);
> +		return dev_err_probe(dev, err, "ufshcd_pltfrm_init() failed\n");
>  
> -	return err;
> +	return 0;
>  }
>  
>  /**
> -- 
> 2.25.1
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
