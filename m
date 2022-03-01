Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1F8EC433F5
	for <linux-phy@archiver.kernel.org>; Tue,  1 Mar 2022 12:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YgL2I/tfaIjNGVNS7A/P+qCoTeQhNycWxyo8pBKaWBw=; b=kos+rC3hQ5dqWN
	4BpPWvjQxfumaoy8xtWmTqUs+hdDG53TKJHFfmAIPv0onlw2btvb0Nx6xPkD9pOifxtEqzOMv/akG
	lkz1YmokG+fJc/+v4ZQ/4oJjL8zoMbjtGebafxEZsWcBPTkwt8hgU98rExd6iuf2gYxxoDWbn3Jgq
	6Dxy6CdXbL6Uda58Ilq3Yw/xVAfrRi0GhQRQ/dUMspAs4ntLLO6l2ShA2lUBKWnD3KOzt7Nnyp9sN
	UppZbxLxThsFfFLb3ubIXElVL94i5yk+szA/aC9P08bHtlMuuB44NuzR2u8iiLWPmmGr+q5EPgfWp
	wWqqow2Zi5T1j0RNWfKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP1l9-00GaPC-5b; Tue, 01 Mar 2022 12:37:43 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP1l4-00GaLe-JI
 for linux-phy@lists.infradead.org; Tue, 01 Mar 2022 12:37:40 +0000
Received: by mail-yb1-xb30.google.com with SMTP id f5so3111245ybg.9
 for <linux-phy@lists.infradead.org>; Tue, 01 Mar 2022 04:37:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eDhnSrogQYYZ/PDz/FJ1mmPBu5LlPYyHGz4zly3ela0=;
 b=nix2l333nSPrpKfbmKrEr8yuHirrIsI6H6Q4h1MjwAIfVBJN0KOmGeEUIlLlZmr9h3
 zuSDaWKW249d9KHqXfxd9d4amX99aiDg66S6ahNJ3RgHgf33clravY6Ra94MxSus5yi5
 X2qeNaVppLL7BCcHmJqXAwQagR+VjFPlCcJjZJ6GU6AvDC0rRu63L8lQlIBAudcmOxwn
 0E9MANioUadr4BD7f+PAvQYO4zULO2vGEhfzFsUGYlLq/prNWHZaJxENrbdf3RXSy8BB
 pC0B+8tcMBX8rAteUBi5tfRkJpdFu3FVHLreGXL5idYUKFtWyfJHXu5WUD6wgFxhO8Z3
 tFFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eDhnSrogQYYZ/PDz/FJ1mmPBu5LlPYyHGz4zly3ela0=;
 b=XQ2W/vgn4buXpI4a09PI0D088YAfKAwHOtUtMnXkGSnnBr0kt1uiR2XIt/c8ObKfW8
 mCvFqlw1/WprCsSCtQO1TX6YmqFjhBGHwCmSsUn+4vqiIptRpJ9Lwkf1JzoHjUx+ycmu
 I7toM1sOUZtECs2J3VRBDaZs8B3oxaFZJSkOXXWduAYFX6tpeacFkBi1VVgdOQqpA6C1
 wEOZok890YCAd8ySMeKdt1y3ryvb4eDTxh6+Gr6hSQnrKcf4+2fAprtB+IlZaML1bUt+
 xTK79nrZ4BO4dMuS+eQx5iDhJLNKyr5qe1vbdWMv4ciU7PPApYSAidPjQeziudacL9K8
 kgIg==
X-Gm-Message-State: AOAM530aY88AocyRirDa/o8DyKbuDbebUVWFtRpiu4s2uNfhvr2aGGGW
 jABsenSY96Aa1lExvJcR6BQR20j0xiGcsFSwN+Q=
X-Google-Smtp-Source: ABdhPJyPGQ1BAYl5MPLZJ0Ym3NE3dFAFBwfJXZm/Vv7mnJozErV8YETJjcrqQ6OZgFYgN+/FDxDgQ2+UfyhwuiDV52k=
X-Received: by 2002:a05:6902:4e2:b0:611:19fc:a30 with SMTP id
 w2-20020a05690204e200b0061119fc0a30mr22644183ybs.431.1646138256813; Tue, 01
 Mar 2022 04:37:36 -0800 (PST)
MIME-Version: 1.0
References: <20220227230817.31094-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <TYBPR01MB5341A5DC3BBB4AA59668AF87D8019@TYBPR01MB5341.jpnprd01.prod.outlook.com>
 <CAMuHMdX5yW3_3ydFXZBsOd+s-23-3dCfcgCxi8g_VEg0XPYnDA@mail.gmail.com>
In-Reply-To: <CAMuHMdX5yW3_3ydFXZBsOd+s-23-3dCfcgCxi8g_VEg0XPYnDA@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 1 Mar 2022 12:37:11 +0000
Message-ID: <CA+V-a8uuuQiij4iZvRvTKsqYmdTgEFcKZAMTJJMQv0Er=xRG2g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: phy: renesas,
 usb2-phy: Document RZ/V2L phy bindings
To: Geert Uytterhoeven <geert@linux-m68k.org>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, 
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Biju Das <biju.das.jz@bp.renesas.com>, 
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_043738_711797_8026ABD9 
X-CRM114-Status: GOOD (  27.98  )
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

Hi Geert and Shimoda-san,

Thank you for the review.

On Mon, Feb 28, 2022 at 2:35 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> On Mon, Feb 28, 2022 at 3:18 AM Yoshihiro Shimoda
> <yoshihiro.shimoda.uh@renesas.com> wrote:
> > > From: Lad Prabhakar, Sent: Monday, February 28, 2022 8:08 AM
> > >
> > > Document USB phy bindings for RZ/V2L SoC. RZ/V2L USB phy is identical to
> > > one found on the RZ/G2L SoC. No driver changes are required as generic
> > > compatible string "renesas,rzg2l-usb2-phy" will be used as a fallback.
> > >
> > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> > > ---
> > >  Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> > > b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> > > index 3a6e1165419c..4c475be413ef 100644
> > > --- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> > > @@ -33,6 +33,7 @@ properties:
> > >        - items:
> > >            - enum:
> > >                - renesas,usb2-phy-r9a07g044 # RZ/G2{L,LC}
> > > +              - renesas,usb2-phy-r9a07g054 # RZ/V2L
> > >            - const: renesas,rzg2l-usb2-phy  # RZ/G2L family
> >
> > The "# RZ/G2L family" is not suitable now. I think removing
> > the comment is better like "renesas,rcar-gen3-usb2-phy".
>
> Indeed.
>
Agreed, I will drop it and resend a v2.

Cheers,
Prabhakar

> > I don't have the RZ/V2L- documentation. So, I cannot check
> > whether the RZ/V2L is the same specification with RZ/G2{L,LC}.
> > But I trust you. So, after the comment was removed,
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
