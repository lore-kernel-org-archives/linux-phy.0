Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 319F3CCD18D
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 12:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=deP3doCl91mWUHVR+sP1IcWF317/lBrpbQa/DPcEcDQ=; b=YFDk6EY3KbdClb
	3b3t89to5WyMCNXkbqM9FrGBTptnFEeaypjegPJBrYPVTdwA3C5uZ0bf8Zn8La3920Kka34VTNID3
	Myukw71iXKsTta9cVoav8K0ev70T0Fi5Kl3/eTp+vDPCW3iXWeP/dTA8xtXzaXvW3tEPl88tzvIHT
	ks01A3TotQPnz6QA1YWYRcH353oVW0AwEpaB72kzjRJnRTgZEcKIHwTBlNVr7Se78cSEwN4dLxIrF
	qBrwjx4MRiexm9qGCQ/EaXp33oJRJsLsDsM1dTrw6egLvtOxttoG8WZ7j4hXiNJW8kerDKy1YbjpO
	KQUjAN2nqdUZPLhxwVQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8e05-0000000GEdE-2shZ;
	Tue, 14 Oct 2025 12:19:33 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8e02-0000000GEca-3yIo
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 12:19:32 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-46e2e363118so44851125e9.0
        for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 05:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760444369; x=1761049169; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1NXdPaciUzkmwtjhiuah7SoNF0Jn6KSlADxbD7J4quk=;
        b=X3HQCeK96lxai5feUk4ErFfy7oPRtZZ0mzB56KCg0cdlmR+rny/i/P/CKnAVeKnNu0
         9pTK/uJSZSFmcvKnTD06AkDeoIgohvNjxVrnua74J1X8Twk6WVWv6IFZl98JrcAkYQ+z
         wHtoyVWDS/qVe89NNtSaJWU08O6wjGZJI/jWctqQa558wzItt2F8D26vs5mgwkJd440/
         06cR/+jz8Um7zNmiJiAmZP0tQE3os9p90BORxvitcshouY5Rjj429S7yTY6Od+8jP9GE
         i752F7USnNxU0+9oy4Z0ShnMYADlo2WVLZcjperaUOrpNcWwGJeuxRHBXj/30/RZHpvU
         4t2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760444369; x=1761049169;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1NXdPaciUzkmwtjhiuah7SoNF0Jn6KSlADxbD7J4quk=;
        b=EH2smqUtF8fd1ofUJY0TIBkac15EjcdCmDbP1cYr1IuubHRK57+WKHehH3YfyJT8zs
         hWpYhSVEQAjo5XjgG4ymjlhSbaGFsLOVIvhPz+CSWAIkrCB+TTFEQJHeA3TXZ7ZUaejW
         YOTUwfgNfQDJZt3HpLWpnPrZov6ykiAoHoSJ2eDT1HRAeP9Ozsv3Uq+NYJe3fzT19zzp
         lpZCpjg/lG3KhDe11IGxus/L42MkefqoDxgg0ohDNoqArQdYAnuCu1/KngYne4FND9DM
         W0/LNctvRmLmfQJE+Fzpt1Q3o8mLqgTiZG+eKrsZlX0tuql04FNcKLDUb5FIzOcVdG4h
         6gSw==
X-Forwarded-Encrypted: i=1; AJvYcCVi/G+JupdbZqxQRMQtEUZfHB9bykfMrMqTDu14LdA5m5JeB+ebmWAPl+2tS9NTqG9dGrdOANOzbnA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyoMIK0qw7AanWApUuucRlvqXtglMy8K/lkoDF8xHx7efOJ9B5J
	rCnKm+35hoSeMJI8m52Eh3NXVsh+n9cIUvmp/aZcL5Abp8jzPLntfkwxpVgMrg==
X-Gm-Gg: ASbGncu2Dg/Qx/raDaXE0efJhpf6OP6uhPUDT3G+QlIZE56CrXLDDOgGebEHUueJGDD
	gnLwOfdPr7ruAwW1p/7+XYBD5aJfdbwhfHBeqVINSGOg3VBWHWWd6VjgcONZsiX39OQPbR1ErXg
	yxKdnwqw+pUhGzQ6FxXwa3K/AnKn46RaGvIG0NaKVXTy8lCpQF7F1SYeV3FYoN4l3FXAqEn20Qv
	P+g2Rkc9xSWgT3s3qrCz7Sr78Tbcrpy2aa8VkTWno8bZBDYqfz+i4jijhslGITgplZ66oYw4NTa
	Y+clkdYNJaQQMOAt3ivPgRLf+4K2oXIeGVs9llWqcgQlyk7OjDR2nnraCRjxn4m0UxA3b1TrcB7
	zs3NsxU5eOYCqJHfEHsXfmsjQAyh1vEbOPeB9P2k7TEYBT+K4K9t/YZohZyY=
X-Google-Smtp-Source: AGHT+IEtq2qk43DUx3Tekk3H1O0Yj52quZDJgPjlvM1teoyT/1HnDwsFwZ9RqTFP55MEyX2ZO4zCeQ==
X-Received: by 2002:a05:600c:820a:b0:46e:4704:b01e with SMTP id 5b1f17b1804b1-46fa9a8631fmr169279315e9.8.1760444368506;
        Tue, 14 Oct 2025 05:19:28 -0700 (PDT)
Received: from legfed1 (lis01.vpn.liebherr.com. [193.27.220.234])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426f3fa3bdasm985060f8f.46.2025.10.14.05.19.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 05:19:28 -0700 (PDT)
Date: Tue, 14 Oct 2025 14:19:26 +0200
From: Dimitri Fedrau <dima.fedrau@gmail.com>
To: Conor Dooley <conor@kernel.org>
Cc: dimitri.fedrau@liebherr.com, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Marc Kleine-Budde <mkl@pengutronix.de>, linux-can@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: add support for NXPs TJA1145
 CAN transceiver
Message-ID: <20251014121926.GA63762@legfed1>
References: <20251013-tja1145-support-v3-0-4a9d245fe067@liebherr.com>
 <20251013-tja1145-support-v3-1-4a9d245fe067@liebherr.com>
 <20251013-supplier-edition-0ffc88286b5d@spud>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251013-supplier-edition-0ffc88286b5d@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_051931_022790_93A866A9 
X-CRM114-Status: GOOD (  24.68  )
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

Am Mon, Oct 13, 2025 at 08:41:49PM +0100 schrieb Conor Dooley:
> On Mon, Oct 13, 2025 at 11:19:18AM +0200, Dimitri Fedrau via B4 Relay wrote:
> > From: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
> > 
> > Adding documentation for NXPs TJA1145 CAN transceiver, which resides like
> > the ti,tcan104x-can.yaml in the same directory as other generic PHY
> > subsystem bindings. At the moment there is only support for simple PHYs
> > by using regulator bindings in combination with can-transceiver.yaml or
> > PHYs that implement the generic PHY subsystem like the NXP TJA1145.
> > 
> > Signed-off-by: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
> > ---
> >  .../devicetree/bindings/phy/nxp,tja1145-can.yaml   | 79 ++++++++++++++++++++++
> >  1 file changed, 79 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/nxp,tja1145-can.yaml b/Documentation/devicetree/bindings/phy/nxp,tja1145-can.yaml
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..3b81a2e1ead8452ed5fcf2021f33d628d4e12346
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/nxp,tja1145-can.yaml
> > @@ -0,0 +1,79 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/nxp,tja1145-can.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: TJA1145 CAN transceiver
> > +
> > +maintainers:
> > +  - Dimitri Fedrau <dimitri.fedrau@liebherr.com>
> > +
> > +allOf:
> > +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: nxp,tja1145-can
> 
> I'd drop the -can here, since I don't think the device can be anything
> else?
>
Will drop the -can. Device cannot be anything else.

> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  "#phy-cells":
> > +    const: 0
> > +
> > +  spi-max-frequency:
> > +    maximum: 4000000
> > +
> > +  spi-cpha: true
> 
> Is this optionally cpha or always? I'd mark it required if it is always
> needed for the device to function.
> 
According to the datasheet it is cpha. Didn't test if the device is
running with a different configuration. I mark it as required then.

> > +
> > +  spi-cs-setup-delay-ns:
> > +    minimum: 50
> > +    default: 50
> > +
> > +  spi-cs-hold-delay-ns:
> > +    minimum: 50
> > +    default: 50
> > +
> > +  spi-cs-inactive-delay-ns:
> > +    minimum: 250
> > +    default: 250
> > +
> > +  vcc-supply:
> > +    description:
> > +      CAN transceiver supply voltage
> > +
> > +  vio-supply:
> > +    description:
> > +      Supply voltage for I/O level adaptor
> > +
> > +  vbat-supply:
> > +    description:
> > +      Battery supply voltage
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - "#phy-cells"
> > +
> > +unevaluatedProperties: false
> 
> If the properties you've listed above from spi-peripheral-props are the
> only ones suitable for the device, I think additionalProperties: false
> is sufficient here.
> 
I switch to additionalProperties: false then

Best regards,
Dimitri Fedrau

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
