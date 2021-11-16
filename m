Return-Path: <SRS0=azk1=QD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 124E8C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 16:39:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CACCD61544
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 16:39:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CACCD61544
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RAziap9Vn1cIeihhPpSjeSQVAwG5ZpFlihyFDJ0PEaw=; b=ZS4oavj8ZN570r
	Aph6ZeFj/Je7AjaM9ZYDKXlYbupQPFTKNjSlYTwHNUXwtkl3ClKakH8jSmcV1sWLHxvGV1hEvMF8Y
	ObbTGGnIhr+DUVTG//QMWfraYsB8McFS6gxQyZmIei6ncGyOZ4JAnYkYU3CuvCBuMRxCVH/Cckos5
	xqy3gA+yjhpNmDIPQ1sOJfMeU2jZfoPOJ/2XG0iE4Pq8B8mU3tagBSesIX9h2KkRTmxwiStZ9wYZC
	q4YnfJMPJBb9Au5ozgam7uF+qiQil1pF9VWAPsrcBfGsJoIqiLcEDNPOxytWKV7b980+mCiiqc5of
	JUnk/UQLzLwY8e6DAXAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mn1Uz-002NtV-9G; Tue, 16 Nov 2021 16:39:57 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mn1Uw-002Ns2-SO
 for linux-phy@lists.infradead.org; Tue, 16 Nov 2021 16:39:56 +0000
Received: by mail-qk1-x72f.google.com with SMTP id g28so16750430qkk.9
 for <linux-phy@lists.infradead.org>; Tue, 16 Nov 2021 08:39:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=FZDeBwODectLe24qS+nx8i7YyWEsFffW0AzQ4wkbsEU=;
 b=Ub6vd8WvLk13+eu6ncvVRM+QdzEl6l27hu3KQOODL3HJ9Anga47jiC/OwArUD7P2zL
 7M+Ehmuz6S0kq3WsuWiHKGZInOlYmx52EHV0oe9ZBgIzoX/tNB4AJf+puICgCYH/DlUc
 KbYeb2yMa+vEn4YMuw51s2u+gfKBG2ZR98x4TXubj65Ta+AO0+qfgbNnfxOdmCx3SP7P
 MZsmU6/XBQhTUUKrm+Q8HXeM9qrFiyYSA3of/zvILfCC2diNuh8jSxq1jIWNy/bxsTV+
 n2NM0QsDhiohxqtJRsghNOEChDM5DadE9ylOVzrewqBA4pjjKTVp6ha1XsgLtBi3GGEs
 WQ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FZDeBwODectLe24qS+nx8i7YyWEsFffW0AzQ4wkbsEU=;
 b=fHKmZ1E4VS9ST5VsHVIiVz6axE1o+7lT6nOcVNRP33gnXEf1Gc9UIXk9prHPVRtS/6
 0YMBZqzat5BWxaibGWpI4ArbLF9lX4d8I3u4oIkuDvBx6GdbW8APIrtJTK96HzE4MkIe
 VQpiwQVePi0cMefoflrgJ8l2TTbUpJVbalaVIZ3HeDFszFShFqMZRFf7jt1W9ojaLNtu
 7zOhPO91fbJCIBfdoRO9ydnZwN+CSnZ59OamDDzh+pBqMiDY3W4Ha7vFwpYwwhsCUojj
 9Nhs/VDFNsL+5Sewkvfn8EchnKG+EtmsAGiVKXc5C76KaTYgQPLot2eryoAZGg2Lebp/
 p8cg==
X-Gm-Message-State: AOAM5316p1aw82dk3Mfebosvbk61ZJCnx00a35tJeZjw+rNHqa4rfzWV
 AWP/0FeDtoEF5LC2+oDv7JY=
X-Google-Smtp-Source: ABdhPJxuHUB/tw87oogapSQiw4DpwFq2TK8RCpK1m2ix6FIXJ83ruh9c2EZ+1prurv68Zej5SqXouQ==
X-Received: by 2002:a05:620a:4481:: with SMTP id
 x1mr7212824qkp.423.1637080792910; 
 Tue, 16 Nov 2021 08:39:52 -0800 (PST)
Received: from shaak (198-48-202-89.cpe.pppoe.ca. [198.48.202.89])
 by smtp.gmail.com with ESMTPSA id m15sm5403176qkp.76.2021.11.16.08.39.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Nov 2021 08:39:52 -0800 (PST)
Date: Tue, 16 Nov 2021 11:39:50 -0500
From: Liam Beguin <liambeguin@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>, Liam Beguin <lvb@xiphos.com>,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 6/6] phy: ti: tusb1210: Fix the kernel-doc warn
Message-ID: <YZPe1iq02ZXczDtL@shaak>
References: <20211116103951.34482-1-vkoul@kernel.org>
 <20211116103951.34482-6-vkoul@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211116103951.34482-6-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_083954_989347_60E486A3 
X-CRM114-Status: GOOD (  14.07  )
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

On Tue, Nov 16, 2021 at 04:09:51PM +0530, Vinod Koul wrote:
> The comment is not kernel-doc one and starts with /**, so fix that.
> 
> drivers/phy/ti/phy-tusb1210.c:16: warning: expecting prototype for tusb1210.c(). Prototype was for TUSB1210_VENDOR_SPECIFIC2() instead
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>

Reviewed-by: Liam Beguin <liambeguin@gmail.com>

> ---
>  drivers/phy/ti/phy-tusb1210.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/ti/phy-tusb1210.c b/drivers/phy/ti/phy-tusb1210.c
> index a63213f5972a..15c1c79e5c29 100644
> --- a/drivers/phy/ti/phy-tusb1210.c
> +++ b/drivers/phy/ti/phy-tusb1210.c
> @@ -1,5 +1,5 @@
>  // SPDX-License-Identifier: GPL-2.0-only
> -/**
> +/*
>   * tusb1210.c - TUSB1210 USB ULPI PHY driver
>   *
>   * Copyright (C) 2015 Intel Corporation
> -- 
> 2.31.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
