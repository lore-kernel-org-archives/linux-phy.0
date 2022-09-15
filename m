Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FE89ECAAD3
	for <linux-phy@archiver.kernel.org>; Thu, 15 Sep 2022 11:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gR5j3jLfyOpc4vvlJDkIfhgQSIK8Drui59jyxtNOQgE=; b=PztsiGs6wCXBtF
	t8utRxG4LpjSeTk5DRTvWKEZqTChAw+OrqWhNeZslVHtn1+XkQvDQBy7dnqpIsItP67Awc2yTZ0sl
	3I2nvntjGxlhxpUGeKbTGhcUzGFBZMFgZ1PshvT5PbPqng2vsmYQlRpNOkQELn8NjyTsABrB+g9bH
	R9naPoTE+o4wBdSXJHcHA6C7Kp2WwNOhzBzf4UoJIkTJNJ1+7JRs/yE+9zs5LrLNy9l4t0tPif/iE
	u0EHS9AR1Umj5Nj0aszpBaYIjZpO0kF/GBNVCjRcRXIY9Pltq0HX7hURKBBTX2xN5w+IMCJI7jAlj
	9N3L/zcrP3CD+QBbRzZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYmnr-007RJT-U9; Thu, 15 Sep 2022 11:13:07 +0000
Received: from mail-qk1-f176.google.com ([209.85.222.176])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYmnp-007RGe-8l
	for linux-phy@lists.infradead.org; Thu, 15 Sep 2022 11:13:07 +0000
Received: by mail-qk1-f176.google.com with SMTP id o7so9238320qkj.10
        for <linux-phy@lists.infradead.org>; Thu, 15 Sep 2022 04:13:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=b1H9IitsHRzZLObixFefzQTMDKGYldbXn5dO1sCoUQg=;
        b=zJpJJmayKxawNvNfn/P6QcGuPeoa9GX8zHObYG+EAiieb17kid6N9vtrqaQZDPx+FX
         fs04Fh7WLvOoY3GLVNDRmII6UywXffletxMCXqv1gcj7+ZSWF4TJEoKULXXPj36QKET/
         XqhFASwU32MT7dzGm2PxZ1DRdCB4Mg75w3Ro0w1Usl2gIhaVEjS58I8Dq+HLtaKZAMMI
         zDmGBbG95qc/o+qLEW+ci1NCpMOVM5jkR+W2n9dAvQ4MkMflsfSM9Hn+bH+2E636AZSz
         xvVBpRw2niq4WQZ9EqHX+2XWA+kwAoVtJiUtDIrtnRkY9TZeVrUN3kCjdG5oVHj5+hSv
         E6Qg==
X-Gm-Message-State: ACgBeo0fXFCMHWNfAPsn1rwoGu6J3Ej6xD6w/sLvoqGoqeszB5lvx4s+
	YnH8ke/g2KjdrDR+NM2r+2RNHj3puVotgrfr
X-Google-Smtp-Source: AA6agR75s20jXnfkEeZbgySrxHdHHlhAhJUz+u8d+QnQVaquEuR7Ub4HI2I3HFwS4MnREBZ3vIa3GA==
X-Received: by 2002:ae9:e905:0:b0:6cd:eae1:adfe with SMTP id x5-20020ae9e905000000b006cdeae1adfemr20545889qkf.585.1663240382177;
        Thu, 15 Sep 2022 04:13:02 -0700 (PDT)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com. [209.85.128.177])
        by smtp.gmail.com with ESMTPSA id cd6-20020a05622a418600b0035a6d0f7298sm3175428qtb.35.2022.09.15.04.13.00
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Sep 2022 04:13:00 -0700 (PDT)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-3457bc84d53so216171967b3.0
        for <linux-phy@lists.infradead.org>; Thu, 15 Sep 2022 04:13:00 -0700 (PDT)
X-Received: by 2002:a81:6756:0:b0:345:525e:38 with SMTP id b83-20020a816756000000b00345525e0038mr34243429ywc.47.1663240379843;
 Thu, 15 Sep 2022 04:12:59 -0700 (PDT)
MIME-Version: 1.0
References: <dbdcffd009302734fe2fb895ce04b72fa1ea4355.1663165000.git.geert+renesas@glider.be>
 <20220915093537.qqddtqx2lr5ttuck@krzk-bin>
In-Reply-To: <20220915093537.qqddtqx2lr5ttuck@krzk-bin>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 15 Sep 2022 12:12:48 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV9dv8j34bXBiussjM3f6+nW2aJ-S2drU-MF4q_aB8trg@mail.gmail.com>
Message-ID: <CAMuHMdV9dv8j34bXBiussjM3f6+nW2aJ-S2drU-MF4q_aB8trg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: phy: renesas,rcar-gen2-usb-phy: Convert
 to json-schema
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, linux-phy@lists.infradead.org, 
	Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_041305_330936_9A4E6502 
X-CRM114-Status: GOOD (  30.92  )
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

Hi Krzysztof,

On Thu, Sep 15, 2022 at 10:35 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:>
> On Wed, 14 Sep 2022 16:17:37 +0200, Geert Uytterhoeven wrote:
> > Convert the Renesas R-Car Gen2 USB PHY Device Tree binding documentation
> > to json-schema.
> >
> > Add missing properties.
> > Rename the device node from "usb-phy" to "usb-phy-controller", as it
> > does not represent a USB PHY itself, and thus does not have a
> > "#phy-cells" property.
> > Rename the child nodes from "usb-channel" to "usb-phy", as these do
> > represent USB PHYs.
> > Drop the second example, as it doesn't add any value.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> > v2:
> >   - Rename nodes to fix "'#phy-cells' is a required property".
> >
> > This is the final conversion to json-schema of DT bindings for Renesas
> > ARM SoCs, hurray!
> >
> > Note that there are still a few plain text bindings left for Renesas IP
> > cores that are present on non-Renesas SoCs (nbpfaxi and usdhi6rol0).
> > ---
> >  .../devicetree/bindings/phy/rcar-gen2-phy.txt | 112 ----------------
> >  .../phy/renesas,rcar-gen2-usb-phy.yaml        | 123 ++++++++++++++++++
> >  2 files changed, 123 insertions(+), 112 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/phy/rcar-gen2-phy.txt
> >  create mode 100644 Documentation/devicetree/bindings/phy/renesas,rcar-gen2-usb-phy.yaml
> >
>
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.

These should be fixed by the DTS counterpart
"[PATCH] ARM: dts: renesas: Fix USB PHY device and child node names"
https://lore.kernel.org/all/6442b4042e26537abc8632c4772f8201685f1f1f.1663165098.git.geert+renesas@glider.be/>

In hindsight, I should have cross-linked the patches in both
directions, not just in one direction. Sorry for that.

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
