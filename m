Return-Path: <SRS0=dFK9=LQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4076C48BDF
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 15:34:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 96BFC611BF
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 15:34:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 96BFC611BF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2YW3mIvDJO963wV+E/hR8WOeyGKse32AeXxy8mn6eos=; b=ZFsdusMQm5hj76
	hWUINx93YQDPTq4pNUediuXbyfRmDynnsQRI2SV/26gQ2Khkp9NrC/FBL6h0Upb7tpLE7Yo/WdyFM
	fNtZMUwtDq4UlxoTfOq85sqbj4UeaqBAKk/l1IJPkl1j8bvFEKsDzcPhWn6griWjk7u1wuOZN2OOt
	8xql1sLZ8/BOG2To1Qww/r1fzw1G4dxXHtf09esO52ml+1u0QBIZZbVrmE+0Fui2pAaoFYBdpG97m
	CCY65QNscs3bNs0jMavTBJeiWJ3dDpy3/dcJDQsXwd/LMfpuFcbB10X1Py2kNLos3Mw6nbtgnZbgo
	i4TJ5aDQoZIV80zBkFUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lviPb-007jX8-1m; Tue, 22 Jun 2021 15:34:03 +0000
Received: from mail-vs1-f48.google.com ([209.85.217.48])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lviPY-007jVx-GN
 for linux-phy@lists.infradead.org; Tue, 22 Jun 2021 15:34:01 +0000
Received: by mail-vs1-f48.google.com with SMTP id l26so3309667vsm.9
 for <linux-phy@lists.infradead.org>; Tue, 22 Jun 2021 08:34:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e0kj1yCj9hUXoWtuJlxr+wOuOoyWlBQbRl2CeEKY3qM=;
 b=rCmgLZ9e1ope8KqB2QZfLgjHQakjdE+mx27tRFpmSFO1OElDKRh+BJpJfkw9R+llb/
 1WSrzExhFDb3wBjBbFOB1RNIgcafZ767nDA8bornAbXB40dzmMb2yzB6IJNHbBe9IWL8
 uAcr8iqStVaPLK2YSLe58e8jSjR1zQooN+2v2RXLTi1Maq0pqOAr268ECvLehKo8km4F
 QspHW01eiCME3sXgLkkb1AeTZY/1/m3KBoDguxEvWDPwcoy4LtIkVimp833WHlcCAkj/
 EVRJmdRP8CzlP0inlOGSas3v1miYXEOHmRS/R2gIuMRO9hH66Bc5h1Qi/Bw/LolGP/Pt
 dgsQ==
X-Gm-Message-State: AOAM533ifUlF2K5Ep7cl0YnxFYZGkzg0oYHkTbuV/PYTE9LyRI81VroI
 AM92JXkoj0S1UR8YKoIGfABQudfVTP/PO7H1gjo=
X-Google-Smtp-Source: ABdhPJyYtCKexQMmD6WfpRtiEBJ6BJpZqbgg5bB8kbrqIm1MhxMd5tkMzX6oKMTtU7/a7Byr/xpm2BFyMMIcUNeJlDo=
X-Received: by 2002:a67:7787:: with SMTP id s129mr18673501vsc.40.1624376039492; 
 Tue, 22 Jun 2021 08:33:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210621093943.12143-1-biju.das.jz@bp.renesas.com>
 <20210621093943.12143-6-biju.das.jz@bp.renesas.com>
In-Reply-To: <20210621093943.12143-6-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 22 Jun 2021 17:33:48 +0200
Message-ID: <CAMuHMdWJhrCtJ8stfNotr5Cfc9HK=Sytn_Tn_U1v3o+kEnwecw@mail.gmail.com>
Subject: Re: [PATCH v2 05/11] dt-bindings: phy: renesas,usb2-phy: Document
 RZ/G2L phy bindings
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-phy@lists.infradead.org, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>, 
 Biju Das <biju.das@bp.renesas.com>, 
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_083400_591991_B74F3619 
X-CRM114-Status: GOOD (  21.20  )
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

On Mon, Jun 21, 2021 at 11:40 AM Biju Das <biju.das.jz@bp.renesas.com> wrote:
> Document USB phy bindings for RZ/G2L SoC.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  .../bindings/phy/renesas,usb2-phy.yaml        | 23 ++++++++++---------
>  1 file changed, 12 insertions(+), 11 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> index 0f358d5b84ef..eebba6c83aec 100644
> --- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> @@ -17,17 +17,18 @@ properties:
>
>        - items:
>            - enum:
> -              - renesas,usb2-phy-r7s9210  # RZ/A2
> -              - renesas,usb2-phy-r8a774a1 # RZ/G2M
> -              - renesas,usb2-phy-r8a774b1 # RZ/G2N
> -              - renesas,usb2-phy-r8a774c0 # RZ/G2E
> -              - renesas,usb2-phy-r8a774e1 # RZ/G2H
> -              - renesas,usb2-phy-r8a7795  # R-Car H3
> -              - renesas,usb2-phy-r8a7796  # R-Car M3-W
> -              - renesas,usb2-phy-r8a77961 # R-Car M3-W+
> -              - renesas,usb2-phy-r8a77965 # R-Car M3-N
> -              - renesas,usb2-phy-r8a77990 # R-Car E3
> -              - renesas,usb2-phy-r8a77995 # R-Car D3
> +              - renesas,usb2-phy-r7s9210   # RZ/A2
> +              - renesas,usb2-phy-r8a774a1  # RZ/G2M
> +              - renesas,usb2-phy-r8a774b1  # RZ/G2N
> +              - renesas,usb2-phy-r8a774c0  # RZ/G2E
> +              - renesas,usb2-phy-r8a774e1  # RZ/G2H
> +              - renesas,usb2-phy-r8a7795   # R-Car H3
> +              - renesas,usb2-phy-r8a7796   # R-Car M3-W
> +              - renesas,usb2-phy-r8a77961  # R-Car M3-W+
> +              - renesas,usb2-phy-r8a77965  # R-Car M3-N
> +              - renesas,usb2-phy-r8a77990  # R-Car E3
> +              - renesas,usb2-phy-r8a77995  # R-Car D3
> +              - renesas,usb2-phy-r9a07g044 # RZ/G2{L,LC}
>            - const: renesas,rcar-gen3-usb2-phy
>
>    reg:

As some of the register bits are different, cfr. my comments to
[PATCH v2 10/11], I think you want to add a new oneOf instead:

      - items:
          - enum:
              - renesas,usb2-phy-r9a07g044 # RZ/G2{L,LC}
          - const: renesas,rzg2l-usb2-phy


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
