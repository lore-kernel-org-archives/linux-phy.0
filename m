Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F7DAC05027
	for <linux-phy@archiver.kernel.org>; Fri, 20 Jan 2023 07:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1KARbIFajiEUOHdlUMGl7AMUBInkUPcaQkkLtD+T1o=; b=lpTJLVeoGiz3fi
	McwHcW/wc3ZufjnDx2EuPSTJDdXgbKb3dV0tNvhPZisaNH4DVoaT5Z1v+xa6+WaEVSfwVYGJAF2Sw
	Tc1nrFpDla0YOGzPjf+TAxa0DCB4fg+3vffelay6g5iisYDJUjo4/7ff3dL5smWUgOhiLs1e/yKLa
	IVJycpFuhvO2mT88lNzJ7INwoyzbulYbDhb4/0rvY2RwifPQpOi796mSyvHSYJwuUt1jlny7PTZrY
	1dsbCdYLwDbv4qgnZzDonLNdBvmUuJb5UHpybrNJrNvePtQYnLQM9jogUE1EQgpiZF7gA8tgxh7vJ
	4s5ddsfgJhPVsHMPvZSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pImGY-008tqy-Kp; Fri, 20 Jan 2023 07:56:50 +0000
Received: from mail-qv1-f53.google.com ([209.85.219.53])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pImGU-008tpN-UU; Fri, 20 Jan 2023 07:56:48 +0000
Received: by mail-qv1-f53.google.com with SMTP id h10so3331661qvq.7;
        Thu, 19 Jan 2023 23:56:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Twh/RMOkW9lPwocGUUWk5FJezMEMoAxY5/88HPIqIY=;
        b=xYFujTPtf9TvHfuJqHl2N6nVkhej5pLR5lKJVd9PYqFKHj/cW290NXeOXXDXVJZULy
         d5m8F+OW1Eq2MOefg/8FjxLmD7Kxo5sMtsicqGoUH37iSVt8quFKg461MxWD0cAjZXxp
         Cdt6QeQMNUIXUW668JXMtb8xOMqFAvpDrX5h/Z4/nuCBuRSTcD8z4SfOWRfLCxHTNaFl
         KdbZIV9utHD+T+aJzKr8jJU5UykWBhlwj8SXCEBlWKS9Y9+C/iwZ3mCOQ1N1W29xq6OR
         NgdRFeUtYNNA0tuyT3KA2iCcaGDiHX63QErdGXIAcmut2vah27FMXU7ojzoW32epwb5R
         Hzvw==
X-Gm-Message-State: AFqh2kqdT5ib5I56AXD4x47HI3IvGO4T7QrkvWQe0AnMAgEzUX09nK4R
	bIBHzOkXBLKjLYW63n9SFzkrti9b8xsxvg==
X-Google-Smtp-Source: AMrXdXsUiBVuY/O1bILe6T9WvUjzKLl39TGOP2Xmu4vi3FsiEUDjCSUGXrcDT5RovW778EVO9+PE9w==
X-Received: by 2002:a05:6214:5f87:b0:534:1cd3:1393 with SMTP id ls7-20020a0562145f8700b005341cd31393mr18920781qvb.12.1674201402914;
        Thu, 19 Jan 2023 23:56:42 -0800 (PST)
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com. [209.85.128.176])
        by smtp.gmail.com with ESMTPSA id d12-20020a05620a240c00b006fcc3858044sm26554846qkn.86.2023.01.19.23.56.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jan 2023 23:56:42 -0800 (PST)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-50112511ba7so2321027b3.3;
        Thu, 19 Jan 2023 23:56:42 -0800 (PST)
X-Received: by 2002:a0d:db07:0:b0:500:8d0d:7feb with SMTP id
 d7-20020a0ddb07000000b005008d0d7febmr79917ywe.358.1674201401946; Thu, 19 Jan
 2023 23:56:41 -0800 (PST)
MIME-Version: 1.0
References: <cover.1674036164.git.geert+renesas@glider.be> <cd685d8e4d6754c384acfc1796065d539a2c3ea8.1674036164.git.geert+renesas@glider.be>
 <CAL_JsqJS2JTZ1BxMbG_2zgzu5xtxMFPqjxc_vUjuZp3k1xUmaQ@mail.gmail.com>
 <CAMuHMdXGsmNjYy-ofmuHLkr8yaDEzy+SGnhtbmc_2ezbEKAMjw@mail.gmail.com> <CAL_JsqJWEzb_hxi0_sSj-5F0q4A9UcJEhwcSArWT6eAffpeqHA@mail.gmail.com>
In-Reply-To: <CAL_JsqJWEzb_hxi0_sSj-5F0q4A9UcJEhwcSArWT6eAffpeqHA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 20 Jan 2023 08:56:29 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXFjJJq=XqBZmL+EC9x5DMmucyncKE5ExS89bb00sir1g@mail.gmail.com>
Message-ID: <CAMuHMdXFjJJq=XqBZmL+EC9x5DMmucyncKE5ExS89bb00sir1g@mail.gmail.com>
Subject: Re: [PATCH 7/7] usb: host: ohci-exynos: Convert to devm_of_phy_optional_get()
To: Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Madalin Bucur <madalin.bucur@nxp.com>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Horatiu Vultur <horatiu.vultur@microchip.com>, UNGLinuxDriver@microchip.com, 
	Thierry Reding <thierry.reding@gmail.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Alan Stern <stern@rowland.harvard.edu>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Siddharth Vadapalli <s-vadapalli@ti.com>, Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_235647_023595_4A08E6F2 
X-CRM114-Status: GOOD (  38.05  )
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

Hi Rob,

On Wed, Jan 18, 2023 at 8:49 PM Rob Herring <robh@kernel.org> wrote:
> On Wed, Jan 18, 2023 at 12:28 PM Geert Uytterhoeven
> <geert@linux-m68k.org> wrote:
> > On Wed, Jan 18, 2023 at 6:30 PM Rob Herring <robh@kernel.org> wrote:
> > > On Wed, Jan 18, 2023 at 4:15 AM Geert Uytterhoeven
> > > <geert+renesas@glider.be> wrote:
> > > > Use the new devm_of_phy_optional_get() helper instead of open-coding the
> > > > same operation.
> > > >
> > > > This lets us drop several checks for IS_ERR(), as phy_power_{on,off}()
> > > > handle NULL parameters fine.
> > > >
> > > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > > ---
> > > >  drivers/usb/host/ohci-exynos.c | 24 +++++++-----------------
> > > >  1 file changed, 7 insertions(+), 17 deletions(-)
> > > >
> > > > diff --git a/drivers/usb/host/ohci-exynos.c b/drivers/usb/host/ohci-exynos.c
> > > > index 8d7977fd5d3bd502..8dd9c3b2411c383f 100644
> > > > --- a/drivers/usb/host/ohci-exynos.c
> > > > +++ b/drivers/usb/host/ohci-exynos.c
> > > > @@ -69,19 +69,12 @@ static int exynos_ohci_get_phy(struct device *dev,
> > > >                         return -EINVAL;
> > > >                 }
> > > >
> > > > -               phy = devm_of_phy_get(dev, child, NULL);
> > > > +               phy = devm_of_phy_optional_get(dev, child, NULL);
> > > >                 exynos_ohci->phy[phy_number] = phy;
> > > >                 if (IS_ERR(phy)) {
> > > > -                       ret = PTR_ERR(phy);
> > > > -                       if (ret == -EPROBE_DEFER) {
> > > > -                               of_node_put(child);
> > > > -                               return ret;
> > > > -                       } else if (ret != -ENOSYS && ret != -ENODEV) {
> > > > -                               dev_err(dev,
> > > > -                                       "Error retrieving usb2 phy: %d\n", ret);
> > > > -                               of_node_put(child);
> > > > -                               return ret;
> > > > -                       }
> > > > +                       of_node_put(child);
> > > > +                       return dev_err_probe(dev, PTR_ERR(phy),
> > > > +                                            "Error retrieving usb2 phy\n");
> > >
> > > Optional is really the only reason for the caller to decide whether to
> > > print an error message or not. If we have both flavors of 'get', then
> > > really the 'get' functions should print an error message.
> >
> > In case of a real error, both should print an error message, right?
> >
> > Anyway, I understand that's a three step operation:
> >   1. Introduce and convert to the _optional variant,
> >   2. Add error printing to callees.
> >   3. Remove error printing from callers.
>
> I think you only need 2 out of 3 steps depending on the situation. In
> this case, you can add error printing in the _optional variant when
> you introduce it and then convert callers to it.
>
> Where we already have an optional variant, then you need steps 2 and 3.

Right, so the error printing can be done now, while introducing
devm_of_phy_optional_get().

Vinod: Do you agree?
If yes, I can respin with that change.
If not, I'll have to respin anyway, as the bug in
am65_cpsw_init_serdes_phy() has been fixed in the meantime.

Thanks!

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
