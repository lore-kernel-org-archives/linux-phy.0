Return-Path: <SRS0=nTb1=PJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 106B5C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 14:49:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C687F600CC
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 14:49:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C687F600CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MO8Eqhtam1dSV6Ep7ndOS8cyUDkeJU8e9v8XajzTWkM=; b=o4vLO0TkW9TWij
	KXV4M7n8bTkSVW0KabfPEKwa27a9ngTurw8+KD6b2ZrUIQNP/XC01thYxmVmprrsra2j8c1f02fPa
	fh0wNpwK7U0hb1EVYZAeYsTn2WPtoVYMf9FWOcAW2lu4tYXpFPfC1ZmeOx+AsAi2REQn9EYc50K1m
	ZoXz48DzgG08xY8K/2/6C3jrjqwCSaxNtBlQP5ll30PYtY5lB+7asubzoJoobWPCFlo7lOwUmIb90
	Wld5bB0AmZPDR6ib7bA2o3riFMRSEdS7eJ14MnVpUM8VXnZb8M9Ryx1haHdXyMt/GbmM2sjPdBSd1
	GTtiUtm2tAVq4jw4OJJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdZNt-007trJ-B0; Thu, 21 Oct 2021 14:49:33 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdZNq-007tqV-8A
 for linux-phy@lists.infradead.org; Thu, 21 Oct 2021 14:49:31 +0000
Received: by mail-oi1-x22d.google.com with SMTP id g125so1139323oif.9
 for <linux-phy@lists.infradead.org>; Thu, 21 Oct 2021 07:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=kMERyPmOcWXzgvq2qA9UPJ8hmaCYbxO5TYPP3bQCa7w=;
 b=MiKHpAAvOXWZVet2m4e+gw7ARFUVky/boatQib7dqM+urndcHhx8bkTpTkrDf5Lg+9
 27OFK2Hmazzlns4RcSSxuRE/O2D60E+4/6o39vl6FtPA7yqK6eInwQz3Z516ZtW4gQ4O
 Dpv0DhhNtE6FMsGB9q9+vA5CSMPoQdqvvOJc+KXghiB4RDd2z1a2eoyuvBk/5xWeVuQV
 srHjO+VdNk1xemgINIyaMjMkhSNMv8gX2rSXM8458PtHBxrrsfFGf+mNaILbyp2kYB8v
 WGkG+/i2omimT/PgX7Mc3tbtBV5Ldj5H6x4A5Eo1seK5dzOwVX36aon7dj8mCmfiUM38
 STJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kMERyPmOcWXzgvq2qA9UPJ8hmaCYbxO5TYPP3bQCa7w=;
 b=yizyKFr/eFWS/zhzzFJufL7M2Fd+euQTRh0375Oc8v0+1P5TrwXUldqohEovhf5SAL
 W/Fkijqc2rsJNOGFeeK4QFUQ0YC1fLgLF4K14ytpGwVRKnK2DZ8exafsunHrh6NNJHZX
 CrjOeGLm0sQ8iDRe9nwi8YT5KLSDezPF75pr7n5Zyyzl9ioXx0lurKagU22cP1x2fk1A
 ZBhkUlPI2/ThntNG8CljvwA5WKnuuCJ7jGyVHWObEN1DYXy7luN70B/iy/m7ZCE36J50
 e6ugBK0bCLU2rqhbpFsin/UXq57x2r/RK5CDBAecClu4XjTzl+kQJA2Cj6IKWJFcu9og
 m8eQ==
X-Gm-Message-State: AOAM5321AbFNBcR5b6mMos+QncXZSt5wvqmaYZpf/sXUGqpzJy+5UCbL
 DFvP9c9p22dokBDZSrA6KjBCuA==
X-Google-Smtp-Source: ABdhPJxVBOoZntHPKwDJDY5kiIJMBaWqLeQlrGVdtmaXG890YNpOxGQY6JUwlGvprhgsiRGSco4xyQ==
X-Received: by 2002:a05:6808:221e:: with SMTP id
 bd30mr5444472oib.174.1634827769499; 
 Thu, 21 Oct 2021 07:49:29 -0700 (PDT)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id l10sm1091096otj.9.2021.10.21.07.49.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Oct 2021 07:49:29 -0700 (PDT)
Date: Thu, 21 Oct 2021 07:51:12 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 abhinavk@codeaurora.org, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: Introduce Qualcomm eDP/DP PHY
 binding
Message-ID: <YXF+YELFaQk+ouyH@ripper>
References: <20211016232128.2341395-1-bjorn.andersson@linaro.org>
 <YW3PqhQHauDYRlwN@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YW3PqhQHauDYRlwN@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_074930_336564_EC48F629 
X-CRM114-Status: GOOD (  21.69  )
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

On Mon 18 Oct 12:48 PDT 2021, Rob Herring wrote:

> On Sat, Oct 16, 2021 at 04:21:27PM -0700, Bjorn Andersson wrote:
> > Introduce a binding for the eDP/DP PHY hardware block found in several
> > different Qualcomm platforms.
> > 
> > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > ---
> > 
> > Changes since v2:
> > - None
> > 
> >  .../devicetree/bindings/phy/qcom,edp-phy.yaml | 69 +++++++++++++++++++
> >  1 file changed, 69 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> > new file mode 100644
> > index 000000000000..c258e4f7e332
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> > @@ -0,0 +1,69 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +
> > +%YAML 1.2
> > +---
> > +$id: "http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#"
> > +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> > +
> > +title: Qualcomm DP/eDP PHY
> > +
> > +maintainers:
> > +  - Bjorn Andersson <bjorn.andersson@linaro.org>
> > +
> > +description:
> > +  The Qualcomm DP/eDP PHY is found in a number of Qualcomm platform and
> > +  provides the physical interface for DisplayPort and Embedded Display Port.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - qcom,sc8180x-dp-phy
> > +      - qcom,sc8180x-edp-phy
> 
> Is there a difference between DP and eDP?
> 

It's the same hardware block, with the same inputs, but the two modes
requires different programming sequences. So I need some way to describe
which one this is.

> Perhaps note what that is if so.
> 

What are you suggesting?

Regards,
Bjorn

> > +
> > +  reg:
> > +    items:
> > +      - description: PHY base register block
> > +      - description: tx0 register block
> > +      - description: tx1 register block
> > +      - description: PLL register block
> > +
> > +  clocks:
> > +    maxItems: 2
> > +
> > +  clock-names:
> > +    items:
> > +      - const: aux
> > +      - const: cfg_ahb
> > +
> > +  "#clock-cells":
> > +    const: 1
> > +
> > +  "#phy-cells":
> > +    const: 0
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - clock-names
> > +  - "#clock-cells"
> > +  - "#phy-cells"
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    phy@aec2a00 {
> > +      compatible = "qcom,sc8180x-edp-phy";
> > +      reg = <0x0aec2a00 0x1c0>,
> > +            <0x0aec2200 0xa0>,
> > +            <0x0aec2600 0xa0>,
> > +            <0x0aec2000 0x19c>;
> > +
> > +      clocks = <&dispcc 0>, <&dispcc 1>;
> > +      clock-names = "aux", "cfg_ahb";
> > +
> > +      #clock-cells = <1>;
> > +      #phy-cells = <0>;
> > +    };
> > +...
> > -- 
> > 2.29.2
> > 
> > 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
