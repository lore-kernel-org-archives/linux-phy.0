Return-Path: <SRS0=80zw=J3=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929F6C433ED
	for <linux-phy@archiver.kernel.org>; Fri, 30 Apr 2021 15:06:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E8DB86143A
	for <linux-phy@archiver.kernel.org>; Fri, 30 Apr 2021 15:06:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E8DB86143A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hq+nvA7XmFZQo6NEZJemUDm4yM8L2lqBBXtyn6oCwgk=; b=HosQkKVJlKq2xQ6bw32cs+7cc
	9aq+/AzGGSXbAawsxugbB6bNcpD4cY97yAmzh6rnGTpr4/YXTYaN6lc3Ls2rbkGkG7M0rZrBfqQLj
	T7GSi2buuMNasypBRpg1AN2cjGDS4cks5Lh+A9m/o/EvhNi2ka+qdlDeBS/mdnkdoTGMqQdoVBrA1
	dOSuAJRGkZjjJ+qdtblg4m/9ewstf//MMSSNpIkrug4WAE1gt/HHJKwqxMmjBLCNF9JJ292OdJgkb
	KZ5GZXc8SNPJEm59uYsstUJglnYqHl7Duwdiy3SnhD8F867a/QpoyiHQhw2FaS7zsAzRXOmeyGo6I
	w+LcPUQAA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcUiX-0080uV-4s; Fri, 30 Apr 2021 15:06:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcUiT-0080tq-GL
 for linux-phy@desiato.infradead.org; Fri, 30 Apr 2021 15:06:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=n4yNY14iANXzzHRqcO5/UVD04FwUySJbnV2wB6AF6ks=; b=dHGsvYfy0G0qLfiFAs3jDZM4uR
 RdF9gUMnsLQr9pJiITvqpLQbijM3MT15ANh1xJ4c0NZJhY1ok+5lbfII1o1g41tvD6U9/LQTQVjoC
 du03aHYbab2XtQ3Zt1oAJhAqCIKnvOhcJYuTV9v5ZxlMRPS/M8EZ9Tplx1CqNj77B8vs3+YveJc+X
 kYCJ6YZ4sykaufpR95xI1XEqvuWx0bxqyBKCKFTRGmESEOl4J5wcImJeHj0zWu5Xr1kDRct0s3Y5v
 RRezcCVEAf8FJhVmNyTbtgsnMAsgni9kIPf5Ql+VuO8n2L6Qn5AYUX8fpHm2+MLAgf6lSQZJGBBOO
 +xRjVPpw==;
Received: from mail-il1-x131.google.com ([2607:f8b0:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcUiR-001TFd-1V
 for linux-phy@lists.infradead.org; Fri, 30 Apr 2021 15:06:04 +0000
Received: by mail-il1-x131.google.com with SMTP id c18so56443273iln.7
 for <linux-phy@lists.infradead.org>; Fri, 30 Apr 2021 08:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n4yNY14iANXzzHRqcO5/UVD04FwUySJbnV2wB6AF6ks=;
 b=CfUq5RBVdq2vvyGjjooQxXACzeB68ARRk4s0/ONsuzqV21SG5/SNpTNj2436qspGii
 X1r9Ry/WHYFQ+nGvCiSTiH6e+aM37cOSDNliI9xNdw+KWdT0f5oP9f5mOOxCSqOxbdtO
 RiU5D00Rp9gAKLwliwzoyA/t5wCFH0/TyibD7kaqhC7AzbXoaBDO+nw5/TOvY8lsuVr3
 ARE7LNtdPxFX3vejxIWUKfsNboIBVfGXfKF1Lr9Usstm+DRMGrMul3lcqRtIQoxXbMsm
 Tx1RBoFf1K91Nx2QWNQCwFKjnASD/KwvTKGup+WzRIg1N2ldsw1aOGYtWWQaEWWretfC
 aRuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n4yNY14iANXzzHRqcO5/UVD04FwUySJbnV2wB6AF6ks=;
 b=KMEPwMyJ6djRiv/jPmBQF1X54TKBGkc5L0SkKrE1Lz8qdmn9oOMCtVBBkEb7i/yGxn
 nDGOVkGy0KF1yLXqvzZbdFPa2TwquZqg72SCRV2v+DGQZbTzY8gVXuZVEYVQtB4EWpS4
 C8frFX41gDg0lXIKN4PXcdIhl827T+Yhq2i7JZXKsGQ3RL+9N4spGCvSlSFMnV3LwDMF
 2rmbDEq7C9ZVjs0kkfaQkLKkXjxWohSYA5GFnqcI29ZL4CQrVqrm86p5KVAWeEqJKCWV
 vPzrkBcg8zb88CTeKAzE+lJjb5OUUODfw00m73ZBaM2348KzteJcw1HlnHr458T+m/LA
 M5Dg==
X-Gm-Message-State: AOAM532MDc+Uq5R9eZ7dP2aEX3oT/6FqMYWco9GvYEgPQe8RoWdXoWq1
 gOXFgjYec2tLdOG9NNjgxEypEy5f7F1zZk3UoqQ=
X-Google-Smtp-Source: ABdhPJzK+4SWfOymIki2WzgOcGx3B7dWkalS4IdUQsSsz6OKOgXOWDeV2TbRAODNyoxopIKs2EzbDohCIjoc4JWJnCI=
X-Received: by 2002:a92:ad07:: with SMTP id w7mr4419679ilh.98.1619795159738;
 Fri, 30 Apr 2021 08:05:59 -0700 (PDT)
MIME-Version: 1.0
References: <87czuggpra.wl-chenli@uniontech.com>
In-Reply-To: <87czuggpra.wl-chenli@uniontech.com>
From: Alan Cooper <alcooperx@gmail.com>
Date: Fri, 30 Apr 2021 11:05:48 -0400
Message-ID: <CAOGqxeWPSnCZtCXZK_2v8kxgF_7HJBAj+ruoKLWy=2YEYKPGrg@mail.gmail.com>
Subject: Re: [PATCH] phy: usb: Fix misuse of IS_ENABLED
To: Chen Li <chenli@uniontech.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, 
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_080603_107487_74A77054 
X-CRM114-Status: GOOD (  17.65  )
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

On Tue, Apr 27, 2021 at 3:18 AM Chen Li <chenli@uniontech.com> wrote:
>
>
> While IS_ENABLED() is perfectly fine for CONFIG_* symbols, it is not
> for other symbols such as __BIG_ENDIAN that is provided directly by
> the compiler.
>
> Switch to use CONFIG_CPU_BIG_ENDIAN instead of __BIG_ENDIAN.
>
> Signed-off-by: Chen Li <chenli@uniontech.com>
> ---
>  drivers/phy/broadcom/phy-brcm-usb-init.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.h b/drivers/phy/broadcom/phy-brcm-usb-init.h
> index 899b9eb43fad..a39f30fa2e99 100644
> --- a/drivers/phy/broadcom/phy-brcm-usb-init.h
> +++ b/drivers/phy/broadcom/phy-brcm-usb-init.h
> @@ -78,7 +78,7 @@ static inline u32 brcm_usb_readl(void __iomem *addr)
>          * Other architectures (e.g., ARM) either do not support big endian, or
>          * else leave I/O in little endian mode.
>          */
> -       if (IS_ENABLED(CONFIG_MIPS) && IS_ENABLED(__BIG_ENDIAN))
> +       if (IS_ENABLED(CONFIG_MIPS) && IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
>                 return __raw_readl(addr);
>         else
>                 return readl_relaxed(addr);
> @@ -87,7 +87,7 @@ static inline u32 brcm_usb_readl(void __iomem *addr)
>  static inline void brcm_usb_writel(u32 val, void __iomem *addr)
>  {
>         /* See brcmnand_readl() comments */
> -       if (IS_ENABLED(CONFIG_MIPS) && IS_ENABLED(__BIG_ENDIAN))
> +       if (IS_ENABLED(CONFIG_MIPS) && IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
>                 __raw_writel(val, addr);
>         else
>                 writel_relaxed(val, addr);
> --
> 2.31.1
>
>

Reviewed-by: Al Cooper <alcooperx@gmail.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
