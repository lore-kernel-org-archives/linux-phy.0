Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6E01C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 28 Feb 2022 14:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kj5BuZ+3qNwzFerzZhcIOOfBKyAuuDwNib44NnWRhHk=; b=0fu8qQ2aNZLCq+
	4C9ciLxggpjlqAskbjjXBP6WTUsqzajXbEKrFl4bmngyGqcCAo706SD/tQ9MyjhplNSC7ddwGa3wU
	bAYvHPjfdisT9/tAknUyYeyiClAE9ubE0yqAmy/GBcBaLs0x2VVYqMDXNUY62OEEVUpGsDhDCIIJy
	5eIIhXXhXvUhqn/D1T7qB7IpyNRKRW5oh8vwZoKrIP9Q8Cb5IfuAp68j74Jttq+s4RPM97zzOH+ys
	oUsqW+ty4j9GyN8XZtUyEkdLqlwTi1lM+0xPezKAXazYflxVng3iSqXuhLq5h9DsBfBxRhcy4JI+x
	keZEtp1/pILjNat7vNwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOhG3-00CzSX-RD; Mon, 28 Feb 2022 14:44:15 +0000
Received: from mail-vs1-f48.google.com ([209.85.217.48])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOh7r-00CwMJ-QK
 for linux-phy@lists.infradead.org; Mon, 28 Feb 2022 14:35:49 +0000
Received: by mail-vs1-f48.google.com with SMTP id i27so13113219vsr.10
 for <linux-phy@lists.infradead.org>; Mon, 28 Feb 2022 06:35:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4W2KAZr0aee0ddqrQkvXwCKjH8/N/IF9E6sKuTx6QWo=;
 b=tiURuisAz8bqpaM6KEDY6Jnq4kPu0XCEuzX8SNF7zNy7kpqW6kUdeqWH9ve3Sv1GUN
 tp3ZWo2KAbsxfz6TLubBz6+BV+m3uXIpimNH60q3vqJTUpA941Y6c3PcfjHeLsT+qrAn
 cTIc5+3UtBhCEd5GMnFQailChH6G7DQy1ONe3Cc6EvqE0eSuijG8UN2s48DuccQH4GRt
 OCFSylLUQhOurTevFoB5UMB+xbrbbF/cwab4jx90y8HhHKkdv1sYcFN3sG5aL/g59QF3
 UgmtN5EGUlHliB9RBdVkz07v2ttmlhrnbmUnrN2T6sQoTqUR0tWbIPn6r3+h+h3KDqvL
 Aq6Q==
X-Gm-Message-State: AOAM532zS7tG70vuOqsC2qoEJII4E/nrGTUIv62sfGzl8b8Z9fe969Qm
 K5B8k3Q6Qz7JtNts6x7o4vlyYWYWRTmWZA==
X-Google-Smtp-Source: ABdhPJwLhK5z18Wwts2zPZ6G7nzTUSAZOwTOFhbRmP7cQV6u/RoxsaXL0q+Ih5rLiykZw/FYfpm0tg==
X-Received: by 2002:a05:6102:838:b0:31a:c4de:648b with SMTP id
 k24-20020a056102083800b0031ac4de648bmr7580903vsb.46.1646058946215; 
 Mon, 28 Feb 2022 06:35:46 -0800 (PST)
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com.
 [209.85.221.178]) by smtp.gmail.com with ESMTPSA id
 j35-20020a05612221a300b0031efb73803bsm1655459vkd.4.2022.02.28.06.35.45
 for <linux-phy@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Feb 2022 06:35:45 -0800 (PST)
Received: by mail-vk1-f178.google.com with SMTP id k15so5213102vkn.13
 for <linux-phy@lists.infradead.org>; Mon, 28 Feb 2022 06:35:45 -0800 (PST)
X-Received: by 2002:a05:6122:130d:b0:333:33a4:52a9 with SMTP id
 e13-20020a056122130d00b0033333a452a9mr2122971vkp.33.1646058945038; Mon, 28
 Feb 2022 06:35:45 -0800 (PST)
MIME-Version: 1.0
References: <20220227230817.31094-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <TYBPR01MB5341A5DC3BBB4AA59668AF87D8019@TYBPR01MB5341.jpnprd01.prod.outlook.com>
In-Reply-To: <TYBPR01MB5341A5DC3BBB4AA59668AF87D8019@TYBPR01MB5341.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 28 Feb 2022 15:35:33 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX5yW3_3ydFXZBsOd+s-23-3dCfcgCxi8g_VEg0XPYnDA@mail.gmail.com>
Message-ID: <CAMuHMdX5yW3_3ydFXZBsOd+s-23-3dCfcgCxi8g_VEg0XPYnDA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: phy: renesas,
 usb2-phy: Document RZ/V2L phy bindings
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, 
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Prabhakar <prabhakar.csengg@gmail.com>, 
 Biju Das <biju.das.jz@bp.renesas.com>, 
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_063547_901871_E16BB1D7 
X-CRM114-Status: GOOD (  25.88  )
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

On Mon, Feb 28, 2022 at 3:18 AM Yoshihiro Shimoda
<yoshihiro.shimoda.uh@renesas.com> wrote:
> > From: Lad Prabhakar, Sent: Monday, February 28, 2022 8:08 AM
> >
> > Document USB phy bindings for RZ/V2L SoC. RZ/V2L USB phy is identical to
> > one found on the RZ/G2L SoC. No driver changes are required as generic
> > compatible string "renesas,rzg2l-usb2-phy" will be used as a fallback.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> > ---
> >  Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> > b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> > index 3a6e1165419c..4c475be413ef 100644
> > --- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> > @@ -33,6 +33,7 @@ properties:
> >        - items:
> >            - enum:
> >                - renesas,usb2-phy-r9a07g044 # RZ/G2{L,LC}
> > +              - renesas,usb2-phy-r9a07g054 # RZ/V2L
> >            - const: renesas,rzg2l-usb2-phy  # RZ/G2L family
>
> The "# RZ/G2L family" is not suitable now. I think removing
> the comment is better like "renesas,rcar-gen3-usb2-phy".

Indeed.

> I don't have the RZ/V2L- documentation. So, I cannot check
> whether the RZ/V2L is the same specification with RZ/G2{L,LC}.
> But I trust you. So, after the comment was removed,

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
