Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6992FC624CC
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 08:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PwTmPUTifiEhK2SsBY3IOw8deRLcIwI4W8F1i/h8UQg=; b=tGjlBuNWHe2vEu
	QSaJCSc35QyrfgUp78h1L+AYFFO/b38alH2zve6rszF/MvwgV4LmxPbq5dwJ5w3QIH9uQ7EX8mlnf
	hU+IFvPAaKbsy3erpaVeS/dZYtnfh6WnSKATV4WaSiW+VFpF1EFMYcgJBwZX2sJWIZNV7t4Kc9pj7
	z/aK8OQk43Zyj9pfj174K+W3tyB298IQV2YwQwrJr6yzb669aRQoLG9IQDuV1hMtTk0iBtEH+wAEp
	RaOmvVUL4BAtyR3kmu4Vx+l8ZEAWNCKHry18e4+TtbOAHFk4tPKLH/RqKNZ18FWaQ2Xs64pC610Cx
	GFq21t4TGwDA4w8kl+jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0xFa-00000008piK-0DhH;
	Mon, 31 Aug 2026 08:20:18 +0000
Received: from mail-qk1-f181.google.com ([209.85.222.181])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0xFU-00000008pcd-1gkc
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 08:20:14 +0000
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-936c02e58dfso228004585a.3
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 01:20:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788164411; x=1788769211;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=n+6mIWWcx/hgj72l0+IMwbJPq4HotcZmhxU6vYoZhGw=;
        b=gXz6OfToBKoMPmETS0Fu4e4HmZ2peLTygqb6u1+44EAD6isMbPSKxkdZ8J3hVbrrhR
         Jq9amE8AUqlqhl6umktZl7ld7dojlnA3KUgmdfilKXlKqV0jWPTduP25QSmBALGGalqV
         nittrv7hj1MCBUO2tX5hG8L7FOSo1uO+P5/UQieBK2Lq+OxT5BqTKoMB8Ln9XDa63Ae3
         59M36GMz4K6ke5lV+r4IB+dz2h6kvBEBBzfW3LpcofHdxHLCxYpjncle5G9iAozEl71G
         gWi4fHRGI8fqPyh1hCq+jnaDv8mlOYUUDhHlzPCdGm8FLRlQTskM1AXo4TtzacVJpw4N
         HZ1Q==
X-Gm-Message-State: AFuF++mfrJcFijg0Z299FRhKdDbSgM2T5z7ogoXchGCyVwyX16HVxSCQ
	btHkho5LcbpuOgv6LGHsYTG3CzatG2pHJlfRhyQ21CFkCK1twxMxYobKVaUGRiLE
X-Gm-Gg: AR+sD10HDOgLiaH46PAxUhm+rHEhRQqbH7NzBrSIJnmgE4vyZ4icMwrMkI40cFOiK+T
	M2F+sW9VEnlOea3LG184K/cBKc2U3vmwuJsltX+64x2gEXXFj37kC9KmeB4tyvQ+nqxJsxFBtx/
	fTX3GoWmx933Bi7ZfQaBwVcoA4D1hGa9na6z9hEOYIQWA17Fw9yrkC64gAJiZLOmQ2JDRx467Kn
	u30euYgKeJS4jIxrcHN7MxAsKYpOeWOHh1vjNM2Tn1obkF7YOMso+ZnwDgexIIBnF+vTsTudQFh
	L+czKiXDkGmzy/BuK3r0Xeqr//CUsKPTpCW/GPXfkb8OC5l6F6+e1KFXkGGki1hgXA8gYhKpxcP
	0k35+J1DNpi3gf4GxkWkWTMD42XntV2jSHsQ5opAEEsNIJhk/kjZDPn6se5rIV9KZ33i1nHVg3T
	b+yENLhEEq3U1ESGZ5C4arRf4wKhlnNhQblmWktYDqgPXKsDvxIMGAgODjthV6xQ6p9OYh8xoYk
	0fCHsoO6pzXvVcO9ZjatArnz37KZw==
X-Received: by 2002:a05:620a:6301:10b0:936:31c9:6c57 with SMTP id af79cd13be357-939137b7e17mr2081369285a.7.1788164410592;
        Mon, 31 Aug 2026 01:20:10 -0700 (PDT)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com. [209.85.160.173])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-90ce44f4ef8sm78617106d6.31.2026.08.31.01.20.10
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2026 01:20:10 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-5300bdf61d9so8542681cf.3
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 01:20:10 -0700 (PDT)
X-Received: by 2002:a05:6102:f9b:b0:77f:7df:ddd2 with SMTP id
 ada2fe7eead31-785972e710emr9471412137.1.1788163994928; Mon, 31 Aug 2026
 01:13:14 -0700 (PDT)
MIME-Version: 1.0
References: <20260828192223.402422-1-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260828192223.402422-1-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 31 Aug 2026 10:13:03 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWEz=NoDkvvSjZqNwDQE7+F-JqEeduD0-E-NXTj4Ykbuw@mail.gmail.com>
X-Gm-Features: AcwNN1W_pE0AEcDpr5Qk2q9RcyT_OX0D891rRk8joGtPW1leA8taoV55ukV4EjA
Message-ID: <CAMuHMdWEz=NoDkvvSjZqNwDQE7+F-JqEeduD0-E-NXTj4Ykbuw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: Document Renesas Multi-Protocol PHY
 driver for R-Car X5H
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-phy@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>, 
	Biju Das <biju.das.jz@bp.renesas.com>, Conor Dooley <conor+dt@kernel.org>, 
	Hai Pham <hai.pham.ud@renesas.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Manivannan Sadhasivam <mani@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Phong Hoang <phong.hoang.wz@renesas.com>, 
	Rob Herring <robh@kernel.org>, Tam Nguyen <tam.nguyen.xa@renesas.com>, 
	Thanh Quan <thanh.quan.xn@renesas.com>, 
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>, 
	Vinh Nguyen <vinh.nguyen.xz@renesas.com>, Vinod Koul <vkoul@kernel.org>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_012012_464588_D2FAA7D8 
X-CRM114-Status: GOOD (  21.74  )
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

Hi Marek,

On Fri, 28 Aug 2026 at 21:22, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Document Renesas Multi-Protocol PHY present in R-Car X5H (R8A78000) SoC.
> This is a multiplexing PHY block with inputs from five IPs, and outputs
> to four separate IO blocks. The five inputs are two PCIe4, two USB 3.2,
> and ethernet PCS, each connected into the PHY with up to 4 times 2 lanes.
> The inputs can be multiplexed to the four IO blocks as needed.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Thanks for your patch!

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/renesas,rcar-gen5-mpphy.yaml
> @@ -0,0 +1,125 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/renesas,rcar-gen5-mpphy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas R-Car Generation 5 Multi-Protocol PHY
> +
> +maintainers:
> +  - Marek Vasut <marek.vasut+renesas@mailbox.org>
> +  - Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: renesas,r8a78000-mpphy   # R-Car X5H MPPHY
> +      - const: renesas,rcar-gen5-mpphy  # R-Car Gen5 MPPHY
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 5
> +    maxItems: 5
> +
> +  clock-names:
> +    items:
> +      - const: mpphy01
> +      - const: mpphy11
> +      - const: mpphy21
> +      - const: mpphy31
> +      - const: mpphy02

These look like provider-centric instead of consumer-centric names.
Please add descriptions, so it is more clear what they are, especially
for the last entry (which should perhaps be the second entry?).

> +
> +  power-domains:
> +    minItems: 4
> +    maxItems: 4

Why four? (yeah, SCMI...)

> +
> +  power-domain-names:
> +    items:
> +      - const: mpp0
> +      - const: mpp1
> +      - const: mpp2
> +      - const: mpp3

Likewise.

> +
> +  resets:
> +    minItems: 5
> +    maxItems: 5
> +
> +  reset-names:
> +    items:
> +      - const: mpphy01
> +      - const: mpphy11
> +      - const: mpphy21
> +      - const: mpphy31
> +      - const: mpphy02

These look like provider-centric instead of consumer-centric names.

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
