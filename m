Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B27CC433F5
	for <linux-phy@archiver.kernel.org>; Sat, 20 Nov 2021 17:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2RMGQB6f8apbmJlfXMvHqB+7uy5K72e+VMUHFEGNXkY=; b=g74GiLfBH5Sjez
	Fct01LpZeH4ufkBuxWdBtEe02whhyZwtjTfAW1iMyGFRNHQmMQxfnOFfQxEXqiEHjw48kEm80aYfA
	x4I00BBXbIssPIAJ3gpV//Z9CVfFpMSmP6Ec6iiAFI3WeaigVpm/EyvD4xG+KrgjwsmPMsv7pm9JQ
	CgVGUBMCk+IACj8qvy7zBNsr7pFJmc9PLt2EQuiiE4sMC4jdP1ipwzVen2LWdcJpFUJLyr65V/wdu
	RiOH0pm9fUISKj32ws+wvWXXlHT9DiByzD0mrUMuqrWKjLtxLvvs+opbSgNNQjucK1L+DPXom4uRI
	m/a8WdW1kfjv30g44/fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1moU3W-00ClPY-0c; Sat, 20 Nov 2021 17:21:38 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1moU3T-00ClOj-3M
 for linux-phy@lists.infradead.org; Sat, 20 Nov 2021 17:21:36 +0000
Received: by mail-qt1-x830.google.com with SMTP id p19so12464227qtw.12
 for <linux-phy@lists.infradead.org>; Sat, 20 Nov 2021 09:21:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=dklIDAaghO+Tz5i61I0cD9/R2sWzOsTEWpON7OMe1m4=;
 b=br9DkPnIyHAyRmonsI+Km5I5t/s+Ovax9wxzpaIrf6dQbfOlnAGIThFdJhIxk7ZqBp
 RiQ2UxgYCKllPQUy21fOOXRQkzouS3pS/mu31K8JRzGyrYRZPpxT5Ct+xplAJUjeJhE3
 9xIICkyFxI9+7sc6G7Q1iz/I+EtKpVyB5HJkIXWcuEC4ogLgbFWWZwwI6ch3ezkuX51c
 STC1gz3Ld7jEyWEAOx8VrKzrsGzjfMbGH5D9XnRZ8wFqeD4cHaER+lfktpdr5vNSxCIK
 hJid5TEkIG38AQZ1FgiE2RBSTQwUBbdcc2z1YCwTZUGEGCDbmPkV9Y/egjbEFn6rwy7C
 pLVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dklIDAaghO+Tz5i61I0cD9/R2sWzOsTEWpON7OMe1m4=;
 b=kjF6TlFdxvRw+j/lEwWhy09pXltKS5by2pPOIsjvS5y5d5ahy5Dn7ffUC7EpuqLqp+
 b+ZBLhqeHyxSlTiRGBHpKxIPtzjNjWcyEIhTYZA22slYt24FSi/nMJ6aGm2OSDHaJAvd
 3pAgt1EpJseQFX+HIaJ46ifrZNCkOotDTTR4JLGVb5Kcb80RH+vp19ggRrVnPOJCWPp+
 zno7T6n03hlLy6pKNywBaWALOvOm9FQcD7/fAgXhcDhPWkb/PVfHv4HDWMZdYrUzybKC
 yrMbu+9meZRYx3KoboUQTFGh77wH8LGDprErnQ3OBC4K0nM3hJTIs2uQc3lFIA1DDA1f
 sndQ==
X-Gm-Message-State: AOAM533w4NLXA43CKWIlP8jz3tOC9tfmVsqY74brsF/ILU2RX8HJggBs
 uowUGHZkFUhWOcXGLN1UVUYkQ+JMyoM=
X-Google-Smtp-Source: ABdhPJxJRFi7S0uXkEiMXynRu9sDoUGTl0cFMMQXlgHb5pIbh0cr/SkW/qq7VClaKTtrfsrokggULQ==
X-Received: by 2002:a05:622a:1450:: with SMTP id
 v16mr16291638qtx.367.1637428893609; 
 Sat, 20 Nov 2021 09:21:33 -0800 (PST)
Received: from shaak (198-48-202-89.cpe.pppoe.ca. [198.48.202.89])
 by smtp.gmail.com with ESMTPSA id y73sm1639416qkb.113.2021.11.20.09.21.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Nov 2021 09:21:33 -0800 (PST)
Date: Sat, 20 Nov 2021 12:21:31 -0500
From: Liam Beguin <liambeguin@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>, Liam Beguin <lvb@xiphos.com>,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] phy: ti: omap-usb2: Fix the kernel-doc style
Message-ID: <YZkum7CrX/51TpMx@shaak>
References: <20211120061531.410771-1-vkoul@kernel.org>
 <20211120061531.410771-2-vkoul@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211120061531.410771-2-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211120_092135_180514_B0C25524 
X-CRM114-Status: GOOD (  18.72  )
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

On Sat, Nov 20, 2021 at 11:45:31AM +0530, Vinod Koul wrote:
> The documentation uses incorrect style, so fix that.
> 
> drivers/phy/ti/phy-omap-usb2.c:102: warning: Function parameter or member 'comparator' not described in 'omap_usb2_set_comparator'
> 
> While at it, use a single line for function description
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
> Changes in v2: use () for function names
> 
>  drivers/phy/ti/phy-omap-usb2.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/ti/phy-omap-usb2.c b/drivers/phy/ti/phy-omap-usb2.c
> index ebceb1520ce8..3a505fe5715a 100644
> --- a/drivers/phy/ti/phy-omap-usb2.c
> +++ b/drivers/phy/ti/phy-omap-usb2.c
> @@ -89,9 +89,9 @@ static inline void omap_usb_writel(void __iomem *addr, unsigned int offset,
>  }
>  
>  /**
> - * omap_usb2_set_comparator - links the comparator present in the system with
> - *	this phy
> - * @comparator - the companion phy(comparator) for this phy
> + * omap_usb2_set_comparator() - links the comparator present in the system with this phy

My apologies for the noise, I just noticed your v2.

Reviewed-by: Liam Beguin <liambeguin@gmail.com>

> + *
> + * @comparator:  the companion phy(comparator) for this phy
>   *
>   * The phy companion driver should call this API passing the phy_companion
>   * filled with set_vbus and start_srp to be used by usb phy.
> -- 
> 2.31.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
