Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC549C38147
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 16:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qqduNqdzAl00wgM8nc3CwGtMLQ9+UlqkcAGzjf2zxtY=; b=B4vMeaOroZHAIv
	IL+YTM3rPAs/bV5TAcLrbEvTpr1yWNvDMOwDjY4CXB83gf7wbWnNlzuUJmk3gHC8RzRNT5Q4c/ocT
	oLBcRDmTcQxcIqsUqjM/ukocXCJ6pjhKuKRdqdV1IA+GfK0cmBKl4d+Blpyf9Y9oiAEbPV4D06sSt
	ooCQjbXQfHW1QSnNcsAl5F0Y/xjztxpUTv6t500BOmvFiA2ZWMtPJhUWO4wCxz+5Ba4lvFliZyDr5
	/FTPdgmV7C5yQQe/3sxsLRjQCaYYuAOXEfA+xAFmRXal1KsG8hBh20NLiyCz0UvX04Abs6bRYHmZT
	2XI2vRzLhs9TKRGXJBdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIBjl-001vLc-4A; Wed, 18 Jan 2023 16:56:33 +0000
Received: from mail-qt1-f178.google.com ([209.85.160.178])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIBjh-001vKW-Ty; Wed, 18 Jan 2023 16:56:31 +0000
Received: by mail-qt1-f178.google.com with SMTP id j9so7544847qtv.4;
        Wed, 18 Jan 2023 08:56:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5eGZCXxPoQAmJ0txjytBJor7KBRzIjhRUq2JtcYKMyc=;
        b=NJ9cmTWfJcSzrGK38F5MA+e4HGrIvXbKsfkiwn3Ivp90gnsprvc7gL0PixMesTWPtH
         N0NQHoHxTJUg1DyffY7Q5R3iY7IW6Hn9qtMlbl30zxGGwj7thBBmrtWV7Dez471M/94L
         hkU0GbFax1HV4w0VCKM2UeIewYKaTbZuQr73Lz1oK+Zg2KnocfNE2XXmcsIPoAwiH/ne
         A+bJLmLNzhlzyM39pOj8R3XKdC2qA3cL/XEvXpolpwD956Q8j1/qN/5gUDWRYgID3xME
         BXeUyFDZ4CbOqD7Ep3I09aPkvmf0lmuBA27OqrNI1cYycFPT1TuTiX7bWUwahx76Qx5B
         4NOw==
X-Gm-Message-State: AFqh2kouNAlgyO7s1dJXRBbt4v5Y2ydWT7e92C5R0V7R83Xiz7kkASu+
	SAxVqhr7vI0bERA+RqtIN16HtS1UcNtQ2Sjf
X-Google-Smtp-Source: AMrXdXv4xgtmFkc8Doc9MOZFxM82HQztZRm5FOCEwcZUsViuvui6vbd/ElD3SUokdpAQ1nKKeOvr/A==
X-Received: by 2002:ac8:5318:0:b0:3b1:221c:c74 with SMTP id t24-20020ac85318000000b003b1221c0c74mr9268931qtn.68.1674060987719;
        Wed, 18 Jan 2023 08:56:27 -0800 (PST)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com. [209.85.219.172])
        by smtp.gmail.com with ESMTPSA id bs14-20020a05620a470e00b006b95b0a714esm1950733qkb.17.2023.01.18.08.56.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 08:56:27 -0800 (PST)
Received: by mail-yb1-f172.google.com with SMTP id o75so38887312yba.2;
        Wed, 18 Jan 2023 08:56:27 -0800 (PST)
X-Received: by 2002:a81:6e46:0:b0:37e:6806:a5f9 with SMTP id
 j67-20020a816e46000000b0037e6806a5f9mr952154ywc.47.1674060612772; Wed, 18 Jan
 2023 08:50:12 -0800 (PST)
MIME-Version: 1.0
References: <cover.1674036164.git.geert+renesas@glider.be> <cd685d8e4d6754c384acfc1796065d539a2c3ea8.1674036164.git.geert+renesas@glider.be>
 <Y8gb8l18XzYOPhoD@rowland.harvard.edu>
In-Reply-To: <Y8gb8l18XzYOPhoD@rowland.harvard.edu>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 18 Jan 2023 17:50:00 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUsULA0PM26Y8WL2bGiBHGAGADS6eYLUp0CDVgm4N5kow@mail.gmail.com>
Message-ID: <CAMuHMdUsULA0PM26Y8WL2bGiBHGAGADS6eYLUp0CDVgm4N5kow@mail.gmail.com>
Subject: Re: [PATCH 7/7] usb: host: ohci-exynos: Convert to devm_of_phy_optional_get()
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Madalin Bucur <madalin.bucur@nxp.com>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Horatiu Vultur <horatiu.vultur@microchip.com>, UNGLinuxDriver@microchip.com, 
	Thierry Reding <thierry.reding@gmail.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Rob Herring <robh@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Siddharth Vadapalli <s-vadapalli@ti.com>, Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_085629_985196_7EAFE99A 
X-CRM114-Status: GOOD (  25.58  )
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

Hi Alan,

On Wed, Jan 18, 2023 at 5:26 PM Alan Stern <stern@rowland.harvard.edu> wrote:
> On Wed, Jan 18, 2023 at 11:15:20AM +0100, Geert Uytterhoeven wrote:
> > Use the new devm_of_phy_optional_get() helper instead of open-coding the
> > same operation.
> >
> > This lets us drop several checks for IS_ERR(), as phy_power_{on,off}()
> > handle NULL parameters fine.
>
> The patch ignores a possible -ENOSYS error return.  Is it known that
> this will never happen?

While some phy_*() dummies in include/linux/phy/phy.h do return -ENOSYS
if CONFIG_GENERIC_PHY is not enabled, devm_of_phy_optional_get()
returns NULL in that case, so I think this cannot happen.

> > --- a/drivers/usb/host/ohci-exynos.c
> > +++ b/drivers/usb/host/ohci-exynos.c
> > @@ -69,19 +69,12 @@ static int exynos_ohci_get_phy(struct device *dev,
> >                       return -EINVAL;
> >               }
> >
> > -             phy = devm_of_phy_get(dev, child, NULL);
> > +             phy = devm_of_phy_optional_get(dev, child, NULL);
> >               exynos_ohci->phy[phy_number] = phy;
> >               if (IS_ERR(phy)) {
> > -                     ret = PTR_ERR(phy);
> > -                     if (ret == -EPROBE_DEFER) {
> > -                             of_node_put(child);
> > -                             return ret;
> > -                     } else if (ret != -ENOSYS && ret != -ENODEV) {
> > -                             dev_err(dev,
> > -                                     "Error retrieving usb2 phy: %d\n", ret);
> > -                             of_node_put(child);
> > -                             return ret;
> > -                     }
> > +                     of_node_put(child);
> > +                     return dev_err_probe(dev, PTR_ERR(phy),
> > +                                          "Error retrieving usb2 phy\n");
> >               }
> >       }
> >

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
