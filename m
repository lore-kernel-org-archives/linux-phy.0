Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5194DC61DA4
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6HVHkCwstUU6CTarVjy5ujhgDpmPcsxSJKo/OPYayc8=; b=01cabBQiwziLPC
	8qWWAq5Wf43V37iIGj5KsyVEhWZrTsq5KSnLASU37jMcq2Xzlp6ZygQdID8pShKZlHf7fdAKqohmf
	ZOj14Lgdz/BZCn95OHuk69pPSdepUm6Q1ohnaxInNvmgNwbXKtS1L4Qn1h5xnG+huHIyKiMCywWTe
	sfkPtL14ZMmzIrTs2zt3CIBg4KVQnkfoz+frX1vZuq7R4lG+4jI8ec/XgklhwHotYRJ5Pom/7RbiG
	tHnCz02hrqttcKlmQdLIx27tK5CnFIvZvgRw3NEUCBPY7Oli8jzLP0XzASKvw317XO+80139iAqJg
	FgfCNb9Z610yp5zY4rhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNr40-000vwc-P8; Fri, 03 Feb 2023 08:04:52 +0000
Received: from mail-qt1-f180.google.com ([209.85.160.180])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNr3x-000vvI-0g; Fri, 03 Feb 2023 08:04:50 +0000
Received: by mail-qt1-f180.google.com with SMTP id z5so4669523qtn.8;
        Fri, 03 Feb 2023 00:04:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kDxWR290mL61G5r22X9+N8Kd9HuPTjlQvTYHZMCubL4=;
        b=joXBcsdtMzCOmCV7NW2h8GQvW1bqjvYSU65wEDhttYDu9ny05hSTJoNbr6Wd70Ehe2
         hJFPw9khmFVI9dRauAXvYscVYO1AYwAwIppFnKpvFeDkbvvpveVhXl4pMa1N47rEonh/
         DThCLAMCXY9Yi6HYa+Mj021AtCPie5EvDTJSpyZDvp/ZhKfr7tB+dNHCh1SvjXoHM/nA
         FJmZq77/2ICNAASmKSMckDOOge9G0sI5PYTKqZbwmFoWL4DUMSGl7oEijtcnrTmfTSGy
         od5jWiPXwT4MuIl9Ap00N6cJut+q3YbSP5HhDWb7yLTOYPbM2I3McO01vSBm4VXLW2Xe
         A5rA==
X-Gm-Message-State: AO0yUKX7bcSnc36/l4va21fkXRzeC6QDzS381TZUSwm2U+ueMXyBSbYV
	7nOY3RhXgW2LFzyEmI0d9cCHecUVtfvpdw==
X-Google-Smtp-Source: AK7set9JSGPjYmXJIQ0vocrvlcbuV8/G3ggZsCUKQHG9wHZjL+N4v8EmJM4itB2gEN3UB+KIcDN6Gw==
X-Received: by 2002:ac8:5911:0:b0:3b6:2f0d:1925 with SMTP id 17-20020ac85911000000b003b62f0d1925mr18050356qty.64.1675411486031;
        Fri, 03 Feb 2023 00:04:46 -0800 (PST)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com. [209.85.219.176])
        by smtp.gmail.com with ESMTPSA id r30-20020a05620a03de00b0071c2a68d6f2sm1392038qkm.20.2023.02.03.00.04.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Feb 2023 00:04:44 -0800 (PST)
Received: by mail-yb1-f176.google.com with SMTP id 123so5333293ybv.6;
        Fri, 03 Feb 2023 00:04:44 -0800 (PST)
X-Received: by 2002:a25:ada1:0:b0:839:c329:be37 with SMTP id
 z33-20020a25ada1000000b00839c329be37mr1030442ybi.89.1675411484019; Fri, 03
 Feb 2023 00:04:44 -0800 (PST)
MIME-Version: 1.0
References: <cover.1674584626.git.geert+renesas@glider.be> <3d612c95031cf5c6d5af4ec35f40121288a2c1c6.1674584626.git.geert+renesas@glider.be>
 <Y9ybPmWub43JpMUb@matsya>
In-Reply-To: <Y9ybPmWub43JpMUb@matsya>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 3 Feb 2023 09:04:32 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVJo3aRLh4BCSvOrX+4KMNC=WoQCHMzdiWOmdjSSESxbg@mail.gmail.com>
Message-ID: <CAMuHMdVJo3aRLh4BCSvOrX+4KMNC=WoQCHMzdiWOmdjSSESxbg@mail.gmail.com>
Subject: Re: [PATCH v2 6/9] net: ethernet: ti: am65-cpsw: Convert to devm_of_phy_optional_get()
To: Vinod Koul <vkoul@kernel.org>
Cc: Jonathan Corbet <corbet@lwn.net>, Madalin Bucur <madalin.bucur@nxp.com>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Horatiu Vultur <horatiu.vultur@microchip.com>, UNGLinuxDriver@microchip.com, 
	Thierry Reding <thierry.reding@gmail.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Rob Herring <robh@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Alan Stern <stern@rowland.harvard.edu>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Siddharth Vadapalli <s-vadapalli@ti.com>, Russell King <linux@armlinux.org.uk>, 
	linux-phy@lists.infradead.org, linux-doc@vger.kernel.org, 
	netdev@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_000449_072715_787370B4 
X-CRM114-Status: GOOD (  27.49  )
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

On Fri, Feb 3, 2023 at 6:27 AM Vinod Koul <vkoul@kernel.org> wrote:
> On 24-01-23, 19:37, Geert Uytterhoeven wrote:
> > Use the new devm_of_phy_optional_get() helper instead of open-coding the
> > same operation.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> > v2:
> >   - Rebase on top of commit 854617f52ab42418 ("net: ethernet: ti:
> >     am65-cpsw: Handle -EPROBE_DEFER for Serdes PHY") in net-next
> >     (next-20230123 and later).
>
> I was trying to apply this on rc1, so ofcourse this fails for me? How do
> we resolve this?
>
> I can skip this patch, provide a tag for this to be pulled into -net
> tree

Thanks, that's one option.
The other option is to postpone this patch, and apply it after v6.3-rc1.

Thanks!

> > --- a/drivers/net/ethernet/ti/am65-cpsw-nuss.c
> > +++ b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
> > @@ -1460,11 +1460,9 @@ static int am65_cpsw_init_serdes_phy(struct device *dev, struct device_node *por
> >       struct phy *phy;
> >       int ret;
> >
> > -     phy = devm_of_phy_get(dev, port_np, name);
> > -     if (PTR_ERR(phy) == -ENODEV)
> > -             return 0;
> > -     if (IS_ERR(phy))
> > -             return PTR_ERR(phy);
> > +     phy = devm_of_phy_optional_get(dev, port_np, name);
> > +     if (IS_ERR_OR_NULL(phy))
> > +             return PTR_ERR_OR_ZERO(phy);
> >
> >       /* Serdes PHY exists. Store it. */
> >       port->slave.serdes_phy = phy;

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
