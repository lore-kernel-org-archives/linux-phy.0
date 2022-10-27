Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92170FA3742
	for <linux-phy@archiver.kernel.org>; Thu, 27 Oct 2022 16:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fkzN6k41frrbDHP/i+Jz+AOaFJzrpSGN60LG6mNXQK8=; b=HIposARI+IlcWs
	Gq2UpNfOPq9DvusMjkIBlBXj+Ei+Sg5yqnC9IDq/WkW+zNBEZYspNPKHKvaToRe499Ek++ga2iVd0
	DhZzASz+JxzB2XWEJhaqFTStero+85CUH51pBraIsUv5QsjbJNBClxwDCEBXDXmDi4qSGB5hmdb9m
	cYtky+PRqDeKMhzO0ZSCHJlRTPJQCih2C8+ZC1iLEVdSmPejMRe2DWdLwwNtw1chI5KMUkxyUM9bP
	7KbhaGNdTKylA2Ihmmxm3Nh9SeYYb/2+ZqQdtWp0get1DXxuhUbSRDF2AwkpJOWLepwvTCK1oOjdv
	+yrYCnn2YwtJdmrYOiwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo652-00EH0f-RA; Thu, 27 Oct 2022 16:50:08 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo650-00EGyA-0x
	for linux-phy@lists.infradead.org; Thu, 27 Oct 2022 16:50:07 +0000
Received: by mail-ej1-x634.google.com with SMTP id sc25so6308519ejc.12
        for <linux-phy@lists.infradead.org>; Thu, 27 Oct 2022 09:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=27thMH6kbiBYeHImVpD7suGwEm5dpzCEVU9319M7znE=;
        b=LR5ylFn+fuISymwTB00xHZ6t3I/9VqmosSnSmVnG+w+wni69hiZfzUtKio5rU1epqQ
         PKwl26tatzAMYRrFcU1ArEm9elaSOfVYxYBaGAWAwJBeUH6o3WbL+H1eChTNMnckRwoz
         YLpPwxWkmTWPIxMH08r77/N86vm90ow8+Nhsduxhz4JqYgwq6ENfqc6awtMqNKOHO+6V
         APUEvq4dtPgK6eeZbttohwccXcC/kku6WwdXXlVR1ixzeDn8iQsKFSwKwl3AdZMJa2ue
         mqr0ytlrq4EJhLDIncsbdsYhTXeS7S5MImB0/owkhV2qBAOaNUPPhxO/Xwo4qnZHWMA+
         JDVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=27thMH6kbiBYeHImVpD7suGwEm5dpzCEVU9319M7znE=;
        b=ICkCvfDRteneeJkOFa1PJF0UcqsYYdxbXgxP9maKmUKjmd+Vchilsu5NwAW+T1vIUm
         nqctVnYbZo4cYY074NNDmvFXNMEgmOo1n8qH4TKZhqBo0eY8G8nJVhXA7dYhlL7D7zZ0
         i9zCV7mZNJigSkKUtBMEcKuB9XQZBzS3JeoQ1MrfwnjMwANQRS9aUTFQGgS+ZaN/em8N
         CLCY7K+VjysR2ARqobu600J1beoQ7GqgQ4tFpPfegZiFZVAjGM83BVkr6GV3PzeHi1VW
         tlQ9jiij1e10R9XArICAjg+ue2SIN+MS/MCrLbBlx/tIxcsNL2EacFUkbf4WqI3m76Ou
         v/hg==
X-Gm-Message-State: ACrzQf08j1SI4mXac6nlVgNlVNJJcYitiO4lWbwMuPn94Bykm5btqQjz
	i3R+9hcZ8JhK4Ag4S1yhM91tNr9M9kMUcyUMrPQ=
X-Google-Smtp-Source: AMsMyM58LmKYkZC59FJWd+D3WjBzjSxLpn7tvaAGnZjFQMskGI5vXH3qrtVsby1unS0KOziaRirmP2zfJqz42OjuNno=
X-Received: by 2002:a17:906:da85:b0:741:40a7:d08d with SMTP id
 xh5-20020a170906da8500b0074140a7d08dmr45198589ejb.263.1666889399497; Thu, 27
 Oct 2022 09:49:59 -0700 (PDT)
MIME-Version: 1.0
References: <20221026224450.2958762-1-f.fainelli@gmail.com>
In-Reply-To: <20221026224450.2958762-1-f.fainelli@gmail.com>
From: Justin Chen <justinpopo6@gmail.com>
Date: Thu, 27 Oct 2022 09:49:48 -0700
Message-ID: <CAJx26kWS6+FPjpe125817f7Rf6LiXHBPJ2AfM_1Sj7BwK09Fug@mail.gmail.com>
Subject: Re: [PATCH] phy: phy-brcm-usb: Utilize platform_get_irq_byname_optional()
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: linux-kernel@vger.kernel.org, Al Cooper <alcooperx@gmail.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_095006_106479_CA258480 
X-CRM114-Status: GOOD (  15.83  )
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

On Wed, Oct 26, 2022 at 3:45 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> The wake-up interrupt lines are entirely optional, avoid printing
> messages that interrupts were not found by switching to the _optional
> variant.
>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Acked-by: Justin Chen <justinpopo6@gmail.com>

> ---
>  drivers/phy/broadcom/phy-brcm-usb.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
> index 2cb3779fcdf8..fbf454b206f2 100644
> --- a/drivers/phy/broadcom/phy-brcm-usb.c
> +++ b/drivers/phy/broadcom/phy-brcm-usb.c
> @@ -445,9 +445,9 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
>                 priv->suspend_clk = NULL;
>         }
>
> -       priv->wake_irq = platform_get_irq_byname(pdev, "wake");
> +       priv->wake_irq = platform_get_irq_byname_optional(pdev, "wake");
>         if (priv->wake_irq < 0)
> -               priv->wake_irq = platform_get_irq_byname(pdev, "wakeup");
> +               priv->wake_irq = platform_get_irq_byname_optional(pdev, "wakeup");
>         if (priv->wake_irq >= 0) {
>                 err = devm_request_irq(dev, priv->wake_irq,
>                                        brcm_usb_phy_wake_isr, 0,
> --
> 2.25.1
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
