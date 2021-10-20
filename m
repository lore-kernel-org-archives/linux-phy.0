Return-Path: <SRS0=T9my=PI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EBECC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 19:34:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5C3ED60FDA
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 19:34:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5C3ED60FDA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FXZyb+E2eWrWrXgRSsVBYPKwcuqr/5HVx1i34XkaT2E=; b=q2DWl605DKGMZu
	nxn9WkUryem3sfonzhmscIy9xvZk+YmSNpeXQgqZlSMj6SiIABR/OlpbPo3QbBv1U3OsYznmeq1sd
	OVeWzcMcpgRIvGeIHdkF1nUykxMQcz59ptK/FyGU5xara6I1zIQQP7UiVAIPFiI0i2WMIit3hXogy
	v412FxGaLpKUa5xUZkPxLOdzi1tpM8toztqlq39hRswLOoXo3CyGjCT2O7WSmDbpSrBzLCLUwWqHm
	+IbQo3y2lGJR5213hyekT6NkLYo57JaDLqDHXFM3Y4AZnqhvJGx5c4whxwAmzpz1jmrnMmcr0vG1L
	4IdcS974Kdw6ihzMAZrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdHLr-005fbz-T8; Wed, 20 Oct 2021 19:34:15 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdHLn-005fZz-1F
 for linux-phy@lists.infradead.org; Wed, 20 Oct 2021 19:34:13 +0000
Received: by mail-wm1-x32a.google.com with SMTP id
 g79-20020a1c2052000000b00323023159e1so3804169wmg.2
 for <linux-phy@lists.infradead.org>; Wed, 20 Oct 2021 12:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=NvPAjwt7fyzI4iyzhah+QCTodceAQRPvH3A75BnZsTo=;
 b=g9C4Q+FGe3RhcO39LAR/2C5riQT1MS5idA1Uc0WW9dHdFwfMJt+c8S5Pv0riiYuF0v
 oF4yMSjmw/c9rRlFKJHX4k7cDyVCYhbux98pyMOlpt4NGGGmRk3uXPr2IWDXEG1mDXQ1
 Nmj/f1MCO+cIPu0+w/5TYk8pYgncEcnXaSllD4fhgIKkr2JHPVyVCRStqNanIfizGFnS
 J8Rpis0dSyVJm3XykDBu6PJFasTpxI/TW7uS9OWvvR2J69YLuVLA29Y0AGHU1Ub4j4eM
 hPZ21LJ90PznprSNpDxa0atqZV/ZYPfMu715MFGAH8X8v1GnnneYd/6BRQMB6iwsPyQN
 HgaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NvPAjwt7fyzI4iyzhah+QCTodceAQRPvH3A75BnZsTo=;
 b=31jURA0l9yY911X4AAuH9sMKMruMzeubUi26Z1D8SJq6G02VS7ghE/9m5PL5hLWCR7
 t4Q1y3CEE3x4zq5N3/bA/3majRSgiQeZ40XQ25C96nGBkEq+KzLIL6w2r7Q2ifPFEnJ2
 MRqdwp6ztBMm1KmuKjqGwIv1G8hYAZKrVhmyBt+JRw5pGrZPqNc2c7wVEmpygjyAE7h8
 kujGiJJ7OVtHAzxHCbH5SDvBrE/gYXEYYbWEOHn/Ep2g4lLU6piEhNj/m4+UM7myQUmq
 wWMTeO7GdfjfouTTMXiUAzfuV+R4mKWixANCyOjvoDWtvuq6PAbUBlhEaOZDE6B3/BrX
 kUVA==
X-Gm-Message-State: AOAM533MlICKMLs/PbMYLvnGQMq3jzqfsT+EqxfKV7AGL/G9Yqnxk7Yz
 wSzaL02TsNHMO7dtXIu3QjIWPw==
X-Google-Smtp-Source: ABdhPJxhXGVW++4V0sz2hvab4LJBAF8DPOIn0OjMGV74GJEYevwnJeXR6UCwTqgf0uxJqVNxHNIGWw==
X-Received: by 2002:a05:600c:2905:: with SMTP id
 i5mr1313497wmd.159.1634758448562; 
 Wed, 20 Oct 2021 12:34:08 -0700 (PDT)
Received: from blmsp ([2a02:2454:3e6:c900:5142:5fbb:5821:5dc3])
 by smtp.gmail.com with ESMTPSA id t1sm3655328wre.32.2021.10.20.12.34.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Oct 2021 12:34:08 -0700 (PDT)
Date: Wed, 20 Oct 2021 21:34:07 +0200
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Rob Herring <robh@kernel.org>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Vinod Koul <vkoul@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 2/7] dt-bindings: mediatek, dp: Add Display Port binding
Message-ID: <20211020193407.meektqms4psltg34@blmsp>
References: <20211011094624.3416029-1-msp@baylibre.com>
 <20211011094624.3416029-3-msp@baylibre.com>
 <YWTaJOXGgF2bHznv@robh.at.kernel.org>
 <20211018141908.fuevv2m66fw3xg36@blmsp>
 <CAL_Jsq+QwEPNEztD+yg-UO8gWf_X=E-n0_HMYJsGxteZAZparg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+QwEPNEztD+yg-UO8gWf_X=E-n0_HMYJsGxteZAZparg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_123411_111105_6C95F5D4 
X-CRM114-Status: GOOD (  27.49  )
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

On Mon, Oct 18, 2021 at 02:38:33PM -0500, Rob Herring wrote:
> On Mon, Oct 18, 2021 at 9:19 AM Markus Schneider-Pargmann
> <msp@baylibre.com> wrote:
> >
> > Hi Rob,
> >
> > On Mon, Oct 11, 2021 at 07:43:16PM -0500, Rob Herring wrote:
> > > On Mon, Oct 11, 2021 at 11:46:19AM +0200, Markus Schneider-Pargmann wrote:
> > > > This controller is present on several mediatek hardware. Currently
> > > > mt8195 and mt8395 have this controller without a functional difference,
> > > > so only one compatible field is added.
> > > >
> > > > The controller can have two forms, as a normal display port and as an
> > > > embedded display port.
> > > >
> > > > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > > > ---
> > > >  .../display/mediatek/mediatek,dp.yaml         | 89 +++++++++++++++++++
> > > >  1 file changed, 89 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> > > > new file mode 100644
> > > > index 000000000000..f7a35962c23b
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> > > > @@ -0,0 +1,89 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/display/mediatek/mediatek,dp.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Mediatek Display Port Controller
> > > > +
> > > > +maintainers:
> > > > +  - CK Hu <ck.hu@mediatek.com>
> > > > +  - Jitao shi <jitao.shi@mediatek.com>
> > > > +
> > > > +description: |
> > > > +  Device tree bindings for the Mediatek (embedded) Display Port controller
> > > > +  present on some Mediatek SoCs.
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    enum:
> > > > +      - mediatek,mt8195-edp_tx
> > > > +      - mediatek,mt8195-dp_tx
> > >
> > > Are these blocks different?
> >
> > Good point, the registers of these blocks are described in its own
> > chapter each. Also I do need to distinguish between both in the driver.
> > Would you suggest making this distinction differently or keep it as two
> > compatibles?
> 
> If the registers are all the same, then it should be the same
> compatible. If you still need to distinguish, then you should have a
> panel or connector node that will let you do that.

Thank you. Good idea to check with the connector node, I have changed it
as you suggested.

> 
> Also, s/_/-/ in the compatible string.

Done.

Thanks,
Markus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
