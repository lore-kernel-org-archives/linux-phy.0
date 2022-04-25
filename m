Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CD94C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 25 Apr 2022 13:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WI4Mmxf3vqQyKm+S+V9DDwp71IFOCBOOSXXMU7crchU=; b=1q3QaUtIIbSwAA
	3dzCkduHUOX0quwyh4Rb++Aq6sU/Hi57eJkEvQR2+OjEySPbqs7G4cIrEOQr/d/ibp2UE/27Ho+ID
	ehAPe6x1S2K95KzLiQYxqAmbYHvGbQ93KRFuA09JQruokXW7YcbF+MKUXNpG0bP8Zfi+F6WJBgDsI
	+GSeg3ADkem1mLxqHcJi91u0WwzWFbZYb7HH8IhwW2dXpOT0FDhmWYIOrnQZjWS5gUqqfkRlIXIKh
	82BREgijLxU+KOjZ1ujXrztbfuznIEzRpgPYA/dvn/wJu6vWjupN4PhP2fqcXhmNW2TjL5lQje8Sn
	KFs361ervbPfloGLncfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niyWw-009cEk-Bn; Mon, 25 Apr 2022 13:13:30 +0000
Received: from mail-qv1-f43.google.com ([209.85.219.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niyWu-009cDZ-FU
 for linux-phy@lists.infradead.org; Mon, 25 Apr 2022 13:13:29 +0000
Received: by mail-qv1-f43.google.com with SMTP id k12so3818911qvc.4
 for <linux-phy@lists.infradead.org>; Mon, 25 Apr 2022 06:13:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cPhFN097SNSAA6DApz7uxkKT4+Ug0TC0TFUbciBcqio=;
 b=alAKORz9TQm0uYxY9d6sxHwD9DmgkmTAFnPI1zAUlEEIqCcy5CUqObSmqdtETFsDuG
 Epya3P56njVb8xUIvy7MyrlRMk+6SRtMJNRS4pdzv0kvKVnX6Q800kQFvuCWcW6bgUSN
 VvRG/bLC1VkwnNz+rD48OrflfHBCszTNQQRwBGssembFc7WF63cvTp0sTuuVLhMcqvTD
 ty7TCyr2oIWhepHnHeHq1fNleFaJahbW+8mn0tjupJiREwTmPhN4+CkLW1E06bwSlySJ
 L5dcNwnTCUU/rzM4ZXPOywj2ECFUSBlBwB2wxCWbMic+D8NoJ68j14W4FHgI9Y2EFk80
 mHGw==
X-Gm-Message-State: AOAM5324WTdJK43j71PznR6dSKI6zGjZgdRxX6akSUB2EvyU3fmPU0Ff
 O6zy2LO4W2TDjIzat25cZKz/CSljtpX3qA==
X-Google-Smtp-Source: ABdhPJxZikrz5S55SeGb5t1zST1rfEB5hWpSgrOunNTN8fRpxClajk2s8kY9MMDTM/mrepfA3uI+FA==
X-Received: by 2002:ad4:5769:0:b0:446:5740:e0d0 with SMTP id
 r9-20020ad45769000000b004465740e0d0mr12257082qvx.129.1650892405843; 
 Mon, 25 Apr 2022 06:13:25 -0700 (PDT)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com.
 [209.85.128.177]) by smtp.gmail.com with ESMTPSA id
 bm1-20020a05620a198100b0047bf910892bsm5206842qkb.65.2022.04.25.06.13.25
 for <linux-phy@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Apr 2022 06:13:25 -0700 (PDT)
Received: by mail-yw1-f177.google.com with SMTP id
 00721157ae682-2f7bb893309so67506577b3.12
 for <linux-phy@lists.infradead.org>; Mon, 25 Apr 2022 06:13:25 -0700 (PDT)
X-Received: by 2002:a81:8489:0:b0:2f7:edff:239f with SMTP id
 u131-20020a818489000000b002f7edff239fmr4050001ywf.256.1650892404998; Mon, 25
 Apr 2022 06:13:24 -0700 (PDT)
MIME-Version: 1.0
References: <20220423134752.143090-1-biju.das.jz@bp.renesas.com>
In-Reply-To: <20220423134752.143090-1-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 25 Apr 2022 15:13:12 +0200
X-Gmail-Original-Message-ID: <CAMuHMdW9tG7oV9bf_zrsQ5Y8_UWNJ9w4SKf+YANxGL2ytBRZ5A@mail.gmail.com>
Message-ID: <CAMuHMdW9tG7oV9bf_zrsQ5Y8_UWNJ9w4SKf+YANxGL2ytBRZ5A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: phy: renesas,
 usb2-phy: Document RZ/G2UL phy bindings
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 linux-phy@lists.infradead.org, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>, 
 Biju Das <biju.das@bp.renesas.com>, 
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_061328_550701_95AFFB09 
X-CRM114-Status: GOOD (  16.45  )
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

On Sat, Apr 23, 2022 at 3:48 PM Biju Das <biju.das.jz@bp.renesas.com> wrote:
> Document USB phy bindings for RZ/G2UL SoC. RZ/G2UL USB phy is identical to
> one found on the RZ/G2L SoC. No driver changes are required as generic
> compatible string "renesas,rzg2l-usb2-phy" will be used as a fallback.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

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
