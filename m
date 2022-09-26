Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA19FC07E9D
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 05:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kyrsdbd/HJtfPca/H3tbLVXTn3u7uIIquTu5+r6UtyI=; b=FkcOPG6GE+0YGE
	7mB+p1iYUE+g/lWfLW9ZXsYrvPrLSSkgZN7M8d3/02bruaVNKqtkaIXJJm72cGS6ggiFyb2zUL5lK
	cXMXu9IkrFNAFnYhgFN7SYTL6iWVHRk+DVcTcYk8ErGm61xuI6kwlZsPj27zq7zo653DUBc1wwOEl
	mmS8YHIaysZl0tvdBlKtOfaxG43vYVaI/YtpJW4ZS7yodLJX40zBSemwim+FPpmc/T7vZq9N/FRPz
	d5gHoJLyLX/0zdH6P+q0gVhMXDAnPkzfrdRO2e8pewsZuvyfUtJvMDJbXOuxZPI2N1RWNouleneYP
	x+LLsflCHVVestAPopSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocgbc-001yo0-6C; Mon, 26 Sep 2022 05:24:36 +0000
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocgbZ-001ymo-R7
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 05:24:35 +0000
Received: by mail-io1-xd36.google.com with SMTP id e205so4364049iof.1
        for <linux-phy@lists.infradead.org>; Sun, 25 Sep 2022 22:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=jEvurfgQn31+MuQ9PuCNa1QSbNB9nuSrakYO01iDa0I=;
        b=PBDYoF0ic9Mb/1mI1YKRHy9Z0n5FU2etf3En+x15fDRZoG29HSFX6c/LhtSQ2gawAx
         HUQ/P7WZ/S2t8ezXnuwLGzOntikDVgIRixZEGHOeG4xWJ1+hllfLvuURJO4X71TgFlKA
         4nCik36ImKTv6m/gJcOmL5NIpO/qmKGTCTeds=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=jEvurfgQn31+MuQ9PuCNa1QSbNB9nuSrakYO01iDa0I=;
        b=O0SsYVz2PMK5HWOiFHlKL6tu4nwcAIMXTYJKA6Jhh89kvFewx2zzFke83kttRS7ZiN
         CYmNyI5Sb3Kqa3Q0A3xa7n1c3Ro7F/w6o9SCK4sROIrjJDmROVzxWDa18WhAvz8anZwo
         P5x/VZZtMBhzwn2uWi77PqrUY6GU7X6/OTHfe2r966Z+umLpgYWeS10jyWexIaIHFuau
         Xk44OCNxgBQxBZqBY6tbRk025B5Dm5Dv5pfSDg3p3l/KHChmEjb4vxEZV09uCIkal0x/
         CLODKS8X955LlXAqXs1tE1gjozhqG0cCHJxLU/SpQ+iTgfz+FOqrE1+eVVuz+YcZLjcb
         Ywrg==
X-Gm-Message-State: ACrzQf3jXxj69yHiEWXBc3WX6jfv0GBxRwX7o7xCs1R/z7OfcLSpUZ63
	JsWBstiFW5Rs3PxfgS5vQqWr9kEkvKF3PogvuV2jQw==
X-Google-Smtp-Source: AMsMyM7De/9dx5rvLkUXiEMENOXrcabNaS46duo0p3ODzyDJhzzbtcEstux2UW5Xef0qQZaCHX+iifRVf5LNG1hnmFw=
X-Received: by 2002:a05:6638:12c2:b0:35a:6dc2:891 with SMTP id
 v2-20020a05663812c200b0035a6dc20891mr10221862jas.316.1664169872766; Sun, 25
 Sep 2022 22:24:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220919-v1-0-4844816c9808@baylibre.com> <20220919-v1-15-4844816c9808@baylibre.com>
 <e993c25e-f334-e1ca-73f8-58cf141c521e@linaro.org>
In-Reply-To: <e993c25e-f334-e1ca-73f8-58cf141c521e@linaro.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 26 Sep 2022 13:24:20 +0800
Message-ID: <CAGXv+5FYjj6=WHWBvNRDmpw2Ux8RJ4a2fT1gXk3+eXSqt9poeQ@mail.gmail.com>
Subject: Re: [PATCH v1 15/17] dt-bindings: display: mediatek: dpi: Add
 compatible for MediaTek MT8195
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Guillaume Ranquet <granquet@baylibre.com>, Vinod Koul <vkoul@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>, Rob Herring <robh+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Daniel Vetter <daniel@ffwll.ch>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
	Jitao shi <jitao.shi@mediatek.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Kishon Vijay Abraham I <kishon@ti.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org, 
	Mattijs Korpershoek <mkorpershoek@baylibre.com>, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, 
	Pablo Sun <pablo.sun@mediatek.com>, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220925_222433_914414_55D91CD4 
X-CRM114-Status: GOOD (  12.42  )
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

On Thu, Sep 22, 2022 at 3:20 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 19/09/2022 18:56, Guillaume Ranquet wrote:
> > Add dt-binding documentation of dpi for MediaTek MT8195 SoC.
> >
> > Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> >
> > diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
> > index 5bb23e97cf33..2c7ecef54986 100644
> > --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
> > +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
> > @@ -24,6 +24,7 @@ properties:
> >        - mediatek,mt8183-dpi
> >        - mediatek,mt8186-dpi
> >        - mediatek,mt8192-dpi
> > +      - mediatek,mt8195-dpi
> >        - mediatek,mt8195-dp-intf
>
> Aren't these the same?

*-dpi are MIPI DPI (as in parallel data with DDR modes) encoders.
*-dp-intf are Display Port encoder.

Totally distinguishable. :)

The hardware blocks seem similar upon cursory comparison of the register
tables, with the base layout being the same, and sharing registers for
basic settings such as the display timings.

The DPI ones have some extra registers, presumably to control the signals
or output width. The DP one has some registers of its own that only make
sense for Display Port.


ChenYu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
