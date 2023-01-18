Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30107C38147
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 19:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X9cWSJfpZMU1QqHsuIrnOyrfpnkrg8o66JfcK+2eBHw=; b=YEC6nERbW+jtAs
	oRKryS0bPhyYwBZ+Gaigm6752s2/wsTqDBVZTXxEpG9d5NIXIa7HCRD0c9P2ohFk5yenPSzGhMUMk
	Uv0Fj82tKZjRuKNbLFCyJ2XOpA3fRrXbKdAKLSi46z4C+DuXzltuGZ4bdy1kcFmhRxHYBc2eCWYjw
	a6W+h0p/hawhP87+5FSKDJDvcNJVcloflMjCZ5kWAu9hJ948v9C6phnhvPRrddke0osQgIw1teoMe
	5koNVJRKuCACu7faIxfiUDzudsgm0FBX3MdtC5+Ri0Qubh1UR6MrZt5rxW1JGd/XifamFe5GWh7t5
	z/gfU31tNpAVmwOFINIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIERE-002YD0-Iz; Wed, 18 Jan 2023 19:49:36 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIER4-002YB6-94; Wed, 18 Jan 2023 19:49:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 88343619C5;
	Wed, 18 Jan 2023 19:49:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B94ADC433AC;
	Wed, 18 Jan 2023 19:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674071363;
	bh=K9VHfqO8vnfOpGdnzgN383P6tlz0U6lpjZAgw4IA3to=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=kbOI3g4szAhkbjyPLWIrMcmWNNwFJ0g35IV5pexIYtnRQzmpc6XLoxO3dWPHZa4Zb
	 E48U15W3+cSWmi6hg+WMzMljLBW7pwCAM04xaJPDceliuUTfFeXfsH9kUAunhCoTr9
	 +bdAEvIjTYB5y73gnxe836ayYwyUeU0B9WLrC5DjWSOtRdEns4yK3vTsZsp21SF0fX
	 2iPX55g9IADXlVGJEdA7Nm5f9y2+aEySxxq6wHzFKSixbrz3GmCUld00KyFRtbxBoD
	 kJrh7tYKMgulqDnN16gxiBmgJ8CzlRWgSm2T9aZnl0F9TDvvA0gmph2XCY4gE57Ekc
	 oAjAYQ8ACtIwA==
Received: by mail-vs1-f45.google.com with SMTP id 187so6241509vsv.10;
        Wed, 18 Jan 2023 11:49:23 -0800 (PST)
X-Gm-Message-State: AFqh2kpYlQL4kJ8cEwiUd8+5z1ilGfsSBCRbTwg2QjoqGv4Zn9gl1xFy
	5dUIArBC4v8fyb1dQDV1XgH7tmRQZpgunfkMXw==
X-Google-Smtp-Source: AMrXdXuCIq0Ww65rdCS464DY9dHcawHDeCICiNnnkYP7sB4H6h1MeXyWffA52VxKBtwikHq5ZggppMVlMdvTHaeZRZE=
X-Received: by 2002:a67:ef8a:0:b0:3d0:b955:e0af with SMTP id
 r10-20020a67ef8a000000b003d0b955e0afmr1201488vsp.26.1674071362247; Wed, 18
 Jan 2023 11:49:22 -0800 (PST)
MIME-Version: 1.0
References: <cover.1674036164.git.geert+renesas@glider.be> <cd685d8e4d6754c384acfc1796065d539a2c3ea8.1674036164.git.geert+renesas@glider.be>
 <CAL_JsqJS2JTZ1BxMbG_2zgzu5xtxMFPqjxc_vUjuZp3k1xUmaQ@mail.gmail.com> <CAMuHMdXGsmNjYy-ofmuHLkr8yaDEzy+SGnhtbmc_2ezbEKAMjw@mail.gmail.com>
In-Reply-To: <CAMuHMdXGsmNjYy-ofmuHLkr8yaDEzy+SGnhtbmc_2ezbEKAMjw@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 18 Jan 2023 13:49:10 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJWEzb_hxi0_sSj-5F0q4A9UcJEhwcSArWT6eAffpeqHA@mail.gmail.com>
Message-ID: <CAL_JsqJWEzb_hxi0_sSj-5F0q4A9UcJEhwcSArWT6eAffpeqHA@mail.gmail.com>
Subject: Re: [PATCH 7/7] usb: host: ohci-exynos: Convert to devm_of_phy_optional_get()
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Madalin Bucur <madalin.bucur@nxp.com>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Horatiu Vultur <horatiu.vultur@microchip.com>, UNGLinuxDriver@microchip.com, 
	Thierry Reding <thierry.reding@gmail.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Siddharth Vadapalli <s-vadapalli@ti.com>, Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_114926_411552_6DCBA463 
X-CRM114-Status: GOOD (  27.78  )
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

On Wed, Jan 18, 2023 at 12:28 PM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
>
> Hi Rob,
>
> On Wed, Jan 18, 2023 at 6:30 PM Rob Herring <robh@kernel.org> wrote:
> > On Wed, Jan 18, 2023 at 4:15 AM Geert Uytterhoeven
> > <geert+renesas@glider.be> wrote:
> > > Use the new devm_of_phy_optional_get() helper instead of open-coding the
> > > same operation.
> > >
> > > This lets us drop several checks for IS_ERR(), as phy_power_{on,off}()
> > > handle NULL parameters fine.
> > >
> > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > ---
> > >  drivers/usb/host/ohci-exynos.c | 24 +++++++-----------------
> > >  1 file changed, 7 insertions(+), 17 deletions(-)
> > >
> > > diff --git a/drivers/usb/host/ohci-exynos.c b/drivers/usb/host/ohci-exynos.c
> > > index 8d7977fd5d3bd502..8dd9c3b2411c383f 100644
> > > --- a/drivers/usb/host/ohci-exynos.c
> > > +++ b/drivers/usb/host/ohci-exynos.c
> > > @@ -69,19 +69,12 @@ static int exynos_ohci_get_phy(struct device *dev,
> > >                         return -EINVAL;
> > >                 }
> > >
> > > -               phy = devm_of_phy_get(dev, child, NULL);
> > > +               phy = devm_of_phy_optional_get(dev, child, NULL);
> > >                 exynos_ohci->phy[phy_number] = phy;
> > >                 if (IS_ERR(phy)) {
> > > -                       ret = PTR_ERR(phy);
> > > -                       if (ret == -EPROBE_DEFER) {
> > > -                               of_node_put(child);
> > > -                               return ret;
> > > -                       } else if (ret != -ENOSYS && ret != -ENODEV) {
> > > -                               dev_err(dev,
> > > -                                       "Error retrieving usb2 phy: %d\n", ret);
> > > -                               of_node_put(child);
> > > -                               return ret;
> > > -                       }
> > > +                       of_node_put(child);
> > > +                       return dev_err_probe(dev, PTR_ERR(phy),
> > > +                                            "Error retrieving usb2 phy\n");
> >
> > Optional is really the only reason for the caller to decide whether to
> > print an error message or not. If we have both flavors of 'get', then
> > really the 'get' functions should print an error message.
>
> In case of a real error, both should print an error message, right?
>
> Anyway, I understand that's a three step operation:
>   1. Introduce and convert to the _optional variant,
>   2. Add error printing to callees.
>   3. Remove error printing from callers.

I think you only need 2 out of 3 steps depending on the situation. In
this case, you can add error printing in the _optional variant when
you introduce it and then convert callers to it.

Where we already have an optional variant, then you need steps 2 and 3.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
