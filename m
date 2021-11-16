Return-Path: <SRS0=azk1=QD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 088B1C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 16:43:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C7D5061391
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 16:43:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C7D5061391
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=07U59pCNFd6scoYMBUIOCre4CjnQ7RolUSvfBnmkxSY=; b=jfNoBdjp6yXGAc
	IhdRZDyXYd3j+M8E10r9ZgiI/XrHIaFaepxEXLLfXrgfvOmsbTu8Nz2ku+5EPZzKwQqqTFlaWTkwm
	8ms9MpeZ+LCfsKKUC7UIexagZkQ07fGZq5zRkGyORi85TntNkNgTRq9Jj3KGU7QZGk/9528+W2V5S
	SBCvFmZeSFvAU/nsaiaNbwBrUxI6cPVVg8m5dDMDWfZmsAEUp3g+uxZQKVJdMflcIGiRJyZgSg712
	v3ItuEfHpiCWKLkNIi3M9WJiGilX8aCOKet+vh0TD9i5vnDn79FoV+0GnvIG9iQnihJl07nPg9JFj
	3+jrsN68tFRK2E3cEL+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mn1Y7-002Okk-CV; Tue, 16 Nov 2021 16:43:11 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mn1Y4-002Ojg-H9
 for linux-phy@lists.infradead.org; Tue, 16 Nov 2021 16:43:10 +0000
Received: by mail-qv1-xf33.google.com with SMTP id a24so14191154qvb.5
 for <linux-phy@lists.infradead.org>; Tue, 16 Nov 2021 08:43:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=OBIcYw/n23OIMpLRX1RLZiL+IY8T96dnmnSnvlhsflc=;
 b=TtFCINNE69WzBO0cqgKxZHBKmIiAxvzSwJk5NoyKhCQXH705c/RZ6+6xrJtJifBLBr
 YsoWmaeKiQ4qHX6EBJLe7Rg+kwmYPUFn51JY8J7HM4fL35k1qR7lCrYJHJAzyvGDMMs2
 5qTD+23czcmaL0jyyrpQbj57BrJcozvOnBUTRx1P6kNT0c62xiFCJRaVMpudnR2dnl2o
 FVyPCt8kFVM8MlZdZgTCYNslXa6QV2kDbNAP/0G85oBtOtfEeVzmqmJzRTG3BIHO74r7
 hgKYzsCCqkkkViIRAQP8iEWyhT3u1ryREdsRvrucdXnkjwL+DXVNPgUtIPwD1+zymT+j
 /R4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=OBIcYw/n23OIMpLRX1RLZiL+IY8T96dnmnSnvlhsflc=;
 b=H7RzlmOCw+0vINGAqiQkfDuKY0osrw908FIQOuANKnMecfZEu2eNSlMGZpWMoZNOV1
 SuvvOcW0VHrf9F+G+YzPdwza67UnWVDi90rdRLORF/XaJN1GBgFDYeJt5PIro08CTy32
 1UWH8Pb7IjbOjHkysn4MrU4+ZlSesJKeJeWkb0DgX1l0FuVi/+UNLLrEWHY/dfJ5dO72
 f1JKj//m3X+yjItVI8MxgFY7xInSN1V0mktnR9lwjwMFNXOI5vjcfAjLS7O3Bc/5+cHI
 IaCmXdc6iVlwKuJYG7qwtngqCzrxtYXHLzQXlY0OsipGLXUJsBMqhV0r/1qGZQQKV3Fa
 fM7Q==
X-Gm-Message-State: AOAM533UASG30Xo/3zUykoU+PulsHejuzV4zMowpvmdTb683A27ShmKM
 ckncxt5xnB0jOOrccWiwRRhmBK04JC8=
X-Google-Smtp-Source: ABdhPJxFwaTkqqf3jm0Z7Z04/7P7173dQIuvHfqSj4tlnmr1yAikdUMYKd9CGj5pxL+lutqFIgMBFg==
X-Received: by 2002:ad4:446f:: with SMTP id s15mr46781867qvt.1.1637080987588; 
 Tue, 16 Nov 2021 08:43:07 -0800 (PST)
Received: from shaak (198-48-202-89.cpe.pppoe.ca. [198.48.202.89])
 by smtp.gmail.com with ESMTPSA id 16sm7146497qty.2.2021.11.16.08.43.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Nov 2021 08:43:07 -0800 (PST)
Date: Tue, 16 Nov 2021 11:43:05 -0500
From: Liam Beguin <liambeguin@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>, Liam Beguin <lvb@xiphos.com>,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/6] phy: ti: omap-usb2: Fix the kernel-doc style
Message-ID: <YZPfmXPAnsK8TH0m@shaak>
References: <20211116103951.34482-1-vkoul@kernel.org>
 <20211116103951.34482-5-vkoul@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211116103951.34482-5-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_084308_636358_B2C68B42 
X-CRM114-Status: GOOD (  18.42  )
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

Hi Vinod,

On Tue, Nov 16, 2021 at 04:09:50PM +0530, Vinod Koul wrote:
> The documentation uses incorrect style, so fix that.
> 
> drivers/phy/ti/phy-omap-usb2.c:102: warning: Function parameter or member 'comparator' not described in 'omap_usb2_set_comparator'
> 
> While at it, use a single line for function description
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>

Minor nit below.

Reviewed-by: Liam Beguin <liambeguin@gmail.com>

> ---
>  drivers/phy/ti/phy-omap-usb2.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/ti/phy-omap-usb2.c b/drivers/phy/ti/phy-omap-usb2.c
> index ebceb1520ce8..2102b7f73ffa 100644
> --- a/drivers/phy/ti/phy-omap-usb2.c
> +++ b/drivers/phy/ti/phy-omap-usb2.c
> @@ -89,9 +89,9 @@ static inline void omap_usb_writel(void __iomem *addr, unsigned int offset,
>  }
>  
>  /**
> - * omap_usb2_set_comparator - links the comparator present in the system with
> - *	this phy
> - * @comparator - the companion phy(comparator) for this phy
> + * omap_usb2_set_comparator - links the comparator present in the system with this phy
> + *
> + * @comparator:  the companion phy(comparator) for this phy

There's an extra space after the colon here.

Cheers,
Liam

>   *
>   * The phy companion driver should call this API passing the phy_companion
>   * filled with set_vbus and start_srp to be used by usb phy.
> -- 
> 2.31.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
