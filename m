Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F319C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 16 Mar 2022 15:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHcI+E76ZOm5S539uhI+zLSt0OsePCeURtjhqmSzmLE=; b=Vf54X3DSayrmB6
	xeII55OhRpqiFl58kyYDdH9DfbLrutBrxa/TUcwGfWCuEkNWe6ZjFVtWFfeH3AdKlR/JxwPGtDDTH
	eCMnCG8xEsW2183J/8cIYsG+PSTA1yGdhY9HnPtiSmu10nXgFRTSGXJvYHJhbt0TibrufFnZfjnOQ
	hNAo6QgPG1zEFRutl1GqLBl/mu+mcZ/mZA3Nzewn9C7JPxhkjuTgwCxzkJ4OfD8m9smTlRI1fLhax
	IQQy8jcla3Kuvy5NpxpnhQlwx+rt8f/XyNTw/6nY4LF2jzD8W9Gz42F+Az40tZ+SXDD9Xpgrq5BIv
	6tG26mQBw2rV4GaVnhsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUVe4-00DaKn-G4; Wed, 16 Mar 2022 15:33:04 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUVch-00DZgC-Av
 for linux-phy@lists.infradead.org; Wed, 16 Mar 2022 15:31:40 +0000
Received: by mail-qk1-x734.google.com with SMTP id s16so2153737qks.4
 for <linux-phy@lists.infradead.org>; Wed, 16 Mar 2022 08:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fvUEMkANfvf1LokJRMq/1veBU2UqMcQQnQtywgAigRI=;
 b=d80bWadomzISLDXuQxFymTYBDQhXnZ/mtf4OPE9nlrZvuhycUpl2BR/lqMnLjFexkA
 cz93kqCvObc57xjq3czpcd98F7WCOFLuTgy89Jlu6YiZaWR2qG0Ofnh/IIB5sGS8QDPH
 s555AxxndZayMBMuqYX5BZcSh8qXJgPIWcuQZRYjU8hFtQWRxN0tFuvz9gBlyKOYnsNj
 5LlQJ43C8qjEsJsEDf9UsdLk4X4pPb0gdjfO2INSV/eYPE5WvVjZ2V5sknTYvu+WAiyJ
 mcmAI/v9qLw+9b2EW07rneccOuXY1qFjZ2eolCpce3CmVpz0L3ggkcNBfYKzX82tzc5t
 C77w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fvUEMkANfvf1LokJRMq/1veBU2UqMcQQnQtywgAigRI=;
 b=bV1H+1dFPTj1PtTGYezdnrAnSeAAOQ1ER9oJL71Ta4s1iYCefIdt16JfDYHXh9TRxu
 A0gjxVhKdLGTcWVzJRzakA3/2DqVnpIxC7wWpxMzQyxWJt95W2bmMzvt5AzL5f3bzPrN
 JUiSJR4xRzrAgYP+RWh1hmg8MqOqnDQtNHjePpmtUcusp5rw16QEmV289lmvnvB1685x
 rdGHUlVRP1jpPkEB06XUEEwLnwpReNO/+l3GZFJS9A8fzxjrRNkFCQE/81UO1m5LqXYL
 HAu88Aaq4Se7BJROfTSqv+Ie77/2AikvAFvt5m09gbKmbVFU23s8x5fBm2mZCYQsUphV
 pYjQ==
X-Gm-Message-State: AOAM532Qe9oRTasbBZXRO8zxYP5e0p3OjwRdFqFii4qliOz+8JE9M4yj
 VQIWYMrqUFuhOQkFgnOwDK0=
X-Google-Smtp-Source: ABdhPJzL0GnhUQijBfqEnzCXk3OMwUE1pADaOHXgKMBoVfqrxenHsrvZfR3aDWQ5vPE7LyP/+hd7bw==
X-Received: by 2002:a05:620a:2808:b0:67d:730d:d4e4 with SMTP id
 f8-20020a05620a280800b0067d730dd4e4mr244493qkp.431.1647444697108; 
 Wed, 16 Mar 2022 08:31:37 -0700 (PDT)
Received: from shaak (modemcable055.92-163-184.mc.videotron.ca.
 [184.163.92.55]) by smtp.gmail.com with ESMTPSA id
 k10-20020a05622a03ca00b002e0684cf81fsm1475321qtx.73.2022.03.16.08.31.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Mar 2022 08:31:36 -0700 (PDT)
Date: Wed, 16 Mar 2022 11:31:34 -0400
From: Liam Beguin <liambeguin@gmail.com>
To: Miaoqian Lin <linmq006@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Roger Quadros <rogerq@ti.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: ti: omap-usb2: Fix error handling in
 omap_usb2_enable_clocks
Message-ID: <YjIC1hWuVN3qkdqx@shaak>
References: <20220316024155.23464-1-linmq006@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220316024155.23464-1-linmq006@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220316_083139_417547_A61F6C46 
X-CRM114-Status: GOOD (  16.76  )
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

On Wed, Mar 16, 2022 at 02:41:53AM +0000, Miaoqian Lin wrote:
> The corresponding API for clk_prepare_enable is clk_disable_unprepare,
> other than clk_disable_unprepare.
> 
> Fix this by changing clk_disable to clk_disable_unprepare.

There seems to be a typo in the first sentence of the commit message.
Maybe something like this would do:

	The corresponding API for clk_prepare_enable is clk_disable_unprepare.
	Make sure that the clock is unprepared on exit by changing clk_disable
	to clk_disable_unprepare.

> 
> Fixes: ed31ee7cf1fe ("phy: ti: usb2: Fix logic on -EPROBE_DEFER")
> Signed-off-by: Miaoqian Lin <linmq006@gmail.com>

Other than that,

Reviewed-by: Liam Beguin <liambeguin@gmail.com>

> ---
>  drivers/phy/ti/phy-omap-usb2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/ti/phy-omap-usb2.c b/drivers/phy/ti/phy-omap-usb2.c
> index 3a505fe5715a..31a775877f6e 100644
> --- a/drivers/phy/ti/phy-omap-usb2.c
> +++ b/drivers/phy/ti/phy-omap-usb2.c
> @@ -215,7 +215,7 @@ static int omap_usb2_enable_clocks(struct omap_usb *phy)
>  	return 0;
>  
>  err1:
> -	clk_disable(phy->wkupclk);
> +	clk_disable_unprepare(phy->wkupclk);
>  
>  err0:
>  	return ret;
> -- 
> 2.17.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
