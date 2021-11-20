Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5344DC433F5
	for <linux-phy@archiver.kernel.org>; Sat, 20 Nov 2021 17:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KDiwXV5TlYSKHJXtcXuGW5XgPza+sfzHazgJdGetHII=; b=EQtFEp0bB+Bcl+
	ckN/DYi/sqj/Gg5ZUjl9+x0x+EJnSOu6acSmqLShu6LJqnAJ9SVwEnGLgIU+l1f8R6hTvqvmyaWsC
	cG+HwZxy9UR/LCWH62J87bSGv8zF3gpWOB+8ZIBz6m9t82ExNTomVxvfvsj5CxoLPcuz8zNjz4Jin
	xZeFAj/AsCQQPEXVsrXaPT3oJP9boyx3vvnzmEh1UvcS3egAG8ZCNzYzlAuALXV/w/E+Qtjs8CABw
	CO4x7z11onsi/YjCsf8Qrc5STlanf1L3IlBrX2TorykYviq3IECce4Y/npBcklfw6Pmrqo8VlB92e
	7b84mOma7Z5aC+Co2tKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1moTsf-00CkpL-I4; Sat, 20 Nov 2021 17:10:25 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1moTsc-00Ckox-R1
 for linux-phy@lists.infradead.org; Sat, 20 Nov 2021 17:10:24 +0000
Received: by mail-qt1-x836.google.com with SMTP id v22so12453720qtx.8
 for <linux-phy@lists.infradead.org>; Sat, 20 Nov 2021 09:10:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=VnCwGlmPlhsgWQpMrlEyz6X5l8iowoAG+7+85zNSQa0=;
 b=bjVIfRv16oqa3RY0VQFnugJ2LPvWU6g4JkQbJrUzhVioYnrZpS/hVp+RKtc2+QnycH
 yTC2IxdOr//4m5gf+n0jUO2/JvMg1BqFAIFqIncELNiGobvbawjc76E6pEM8GIm3d1zL
 +vpmG19/3fWJAYN9nyMKSHxnc2Xhsg8DisCZWyOaNLTcrCbcK6wJe9rq/WmJybF2AqyZ
 nqwVlrI+fWGfMPFMYc9SPFSB5Ad0N9nQNxZR1lc4Hu6y4PHtSBIN/2cy8ISXWPg7hebL
 nVH4eG3/+QvAO4Lb7eEPS5H8p92kltlKh58piBwzIXnBacDAmm2xIgwW86xlU9OJNw2/
 f62w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VnCwGlmPlhsgWQpMrlEyz6X5l8iowoAG+7+85zNSQa0=;
 b=XFd0Ttq1GQTEuYhiZZQBe5A3TUUffIRqnDgcOtX04G3x/K5nhrfGEgAyqumbGXvsXV
 F5ely9ueTbjcjxsv6wMTo2qiimrjVjnzlVymoTBL5R0TWCuLHF+cIKZYb4Vc7k93dsa4
 O7bCJ4/yOFu8bt3fZAm8IqJ5on+cDwqKdGD79/A/GAVfo3mVKzqdknkdwOTXTFPY7orp
 nLeA0RxrYwxAfQV/4VIlGmDLtu88N5fxhJ6YW/HoqK7IznvKBSMzhSdzqA0CJAatuCCh
 EvBobl1YYt39ca11uJtjh8CHLPOZuqrcQGGICA6uqLyo4hV1y4l64ttNxSaRHFYUzLP6
 4fKQ==
X-Gm-Message-State: AOAM530cS5ILbYaCK2AmTkDIDW3optTosMyyBvQZ6SFW8VvWo35/bfPM
 q9YMTtM0ARuXLq+aAsqJkDJYIivNKdg=
X-Google-Smtp-Source: ABdhPJxmLJ9cPxPyROhuAhoZzpXUEVfmcf7jI4hdEn3zqmi+b3YNIv9iAAXNtNUxeuA4jVeCZmdaKA==
X-Received: by 2002:a05:622a:1014:: with SMTP id
 d20mr16892890qte.399.1637428221068; 
 Sat, 20 Nov 2021 09:10:21 -0800 (PST)
Received: from shaak (198-48-202-89.cpe.pppoe.ca. [198.48.202.89])
 by smtp.gmail.com with ESMTPSA id h68sm1650389qkf.126.2021.11.20.09.10.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Nov 2021 09:10:20 -0800 (PST)
Date: Sat, 20 Nov 2021 12:10:18 -0500
From: Liam Beguin <liambeguin@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>, Liam Beguin <lvb@xiphos.com>,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/6] phy: ti: omap-usb2: Fix the kernel-doc style
Message-ID: <YZkr+vwyiIfKx2Nc@shaak>
References: <20211116103951.34482-1-vkoul@kernel.org>
 <20211116103951.34482-5-vkoul@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211116103951.34482-5-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211120_091022_941474_EBFEB48C 
X-CRM114-Status: GOOD (  19.62  )
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

I missed it before but as Bjorn pointed out in this thread, it appears
the function name should end with parentheses.

Cheers,
Liam

> + *
> + * @comparator:  the companion phy(comparator) for this phy
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
