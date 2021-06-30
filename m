Return-Path: <SRS0=FOTy=LY=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3353AC11F6A
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jun 2021 09:29:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DF1F361C83
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jun 2021 09:29:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DF1F361C83
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ssISHR7/XTRvPl+Sfc3VxXzhMbUIoReSTNJdlG8wQdQ=; b=WQLhfor+aXA7Go
	xkk6/bo6wlnKHl9s3zMe6/VJ6OfZKUFxdTtDfdrnxVyjYMUHoKdo8AoLVoItj+F6U/zBEtWZlm3E1
	6mGfh+HiDX8STlCGuLEChDFqCAhoOuKhOQO8rK/wCYS5mgA8nPy1bCmdhXQO43Qoco4GibsYrKDMm
	EKH9mNQHHHXc/ODgUw4GFMF2eS5AHxs1nflx2A5qulsBXyDWYDvh0uNFtnK+4lLYGTd3tYc02kx5N
	AGBMqftLK+zbbc2FsmJwomPbt6tVXUwf3AEsn+bvC5rHmvL6sf9eflFAhh+Hyv8nltR1JIaN8zFP7
	5RBVaaVr/fvAPuc7b4Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyWXX-00DTjz-Bu; Wed, 30 Jun 2021 09:29:51 +0000
Received: from mail-ua1-f46.google.com ([209.85.222.46])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyWXV-00DTjV-0o
 for linux-phy@lists.infradead.org; Wed, 30 Jun 2021 09:29:50 +0000
Received: by mail-ua1-f46.google.com with SMTP id f34so772939uae.4
 for <linux-phy@lists.infradead.org>; Wed, 30 Jun 2021 02:29:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I0DU43SVWZn+SOkoLNZ84J8luwY/ZlxJfuH0H4d14i4=;
 b=YkX1zup6KONRRPdeBtfE8gxjCxHp65PJo7M3M1xdloZQgZZLfIjXaTjGxqnIbl5IzO
 keZEf2EOtotkJknAhDuWQQyWH1eNhcjU8ZminhrJzbKLU683SXgysf1UpMEh+iKJcxZ/
 jk4A7Do78z7j1/kX9yWEvkdn4g8h5qyBw6U+e0SfMjGHqDXZyriZGYEjaotECQ++dfhk
 7pNhoOyZiXhtrM2AABq3od0ZcIhT1DddgVRbr7JaimP8ivcHmjhGeL9Mx3AMEjHlZgzP
 1h3N850un0KluXDDs4hQSwN00KpQfEaEJwnpTql4JA4Wat61iKP9RR26XKSG7/2vRj5r
 zPcg==
X-Gm-Message-State: AOAM533q55h8z7XP0N6oOTUf+YYC8CZCkob6s+r2W8jiJQ3+WiWRvatY
 MqK/q+n3OwEj4TOXKQdPJRuczkT1NU0KLJCNg50=
X-Google-Smtp-Source: ABdhPJytiVG3ezpA2xgfdSxGL51grHSv4XgTD5FuC9yFwlYUBojMLqL9CRVX+IIbr0aw/sn1FrEaT837Ay4C3Wczfco=
X-Received: by 2002:ab0:484b:: with SMTP id c11mr32041601uad.100.1625045387432; 
 Wed, 30 Jun 2021 02:29:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210630073013.22415-1-biju.das.jz@bp.renesas.com>
 <20210630073013.22415-8-biju.das.jz@bp.renesas.com>
In-Reply-To: <20210630073013.22415-8-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 30 Jun 2021 11:29:36 +0200
Message-ID: <CAMuHMdWbhY9i+WvV77LVNYhLBLQBVCojgEwM93A-pvFf9Eab1g@mail.gmail.com>
Subject: Re: [PATCH v3 07/11] dt-bindings: phy: renesas,usb2-phy: Document
 RZ/G2L phy bindings
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-phy@lists.infradead.org, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Biju Das <biju.das@bp.renesas.com>, 
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_022949_103900_ACF8535F 
X-CRM114-Status: GOOD (  22.62  )
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

Hi Biju,

Thanks for your patch!

On Wed, Jun 30, 2021 at 9:31 AM Biju Das <biju.das.jz@bp.renesas.com> wrote:
> Document USB phy bindings for RZ/G2L SoC.
>
> RZ/G2L USB2.0 phy uses line ctrl register for OTG_ID pin changes. Apart
> from this it uses a different OTG-BC interrupt bit for device recognition.

Nothing about resets? But see below...

>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
> v2->v3
>  * Created a new compatible for RZ/G2L as per Geert's suggestion.
>  * Added resets required properties for RZ/G2L SoC.
> ---
>  .../bindings/phy/renesas,usb2-phy.yaml         | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> index d5dc5a3cdceb..a7e585ff28dc 100644
> --- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> @@ -30,6 +30,9 @@ properties:
>                - renesas,usb2-phy-r8a77995 # R-Car D3
>            - const: renesas,rcar-gen3-usb2-phy
>
> +      - items:
> +          - const: renesas,usb2-phy-r9a07g044 # RZ/G2{L,LC}
> +
>    reg:
>      maxItems: 1
>
> @@ -91,6 +94,21 @@ required:
>    - clocks
>    - '#phy-cells'
>
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,usb2-phy-r9a07g044
> +    then:
> +      properties:
> +        resets:
> +          items:
> +            - description: USB phy reset
> +            - description: reset of USB 2.0 host side

Do you need the second reset?
Looking at your .dtsi patch, the second reset is shared with ehci/ohci,
so perhaps it makes sense to drop it from the phy node?

> +      required:
> +        - resets
> +
>  additionalProperties: false
>
>  examples:

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
