Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5D1AC3DA63
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jul 2024 17:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mwLH9VM2G1tBBJy3939tVMoJ1Sv4+hQkWr2It60rPXE=; b=m4/TEgAzkiIYIw
	c84K3TS4dkiVPILa/Quxoxg8wjNo7ist7d5zfwCnxvR9VFxyTDACQ0IZsIWFd27o22/PRRfWQtR0X
	ao2pzUjLmYPBMrw4SpozHcQe+oMYFEvYVAWaTrXv60hBcQ5FpaqFLOmWo5BfAhZi+HdJGCZqMpC8c
	1V2aYpGPV0w5NfGA8kvuzpR+PQhQordHE9A9bwXDc636anNgzvARlxgN/T3URzCQVDCTH8eBIv/ZJ
	4sheAvCh/4lSjyLU4/QIneb0MgRzwpSiQZ2fmLYtmq+YioC7pPUz/B8+woFcggv5k1l8qneXz+K3j
	qIGDyBafav9hsqvTkrYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWJBn-0000000D6su-1Coa;
	Tue, 23 Jul 2024 17:20:39 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWJBQ-0000000D6oz-221Z
	for linux-phy@lists.infradead.org;
	Tue, 23 Jul 2024 17:20:38 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-66c7aeac627so27859927b3.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Jul 2024 10:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721755215; x=1722360015; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XOe0MLUMVLOrVxxv/ePfl9ff0aPXG4+Z35ycnARxiY8=;
        b=LKuqxtamKFvj2PJXRdEP94fKnf2PG5xju0FQq934Xm8pg2Aan5baqREkKJASKmP8P+
         XyE5Twb51+3Y8/gFmJPtxlIZjX7Rhx7trxNdbAR/0i77zFjn9lNwv5aUAsejLvcdTRI7
         ULVf/vQE0Di8JqGWMxk3xB3TTJ4NQT32dV4u+BXyNs+xoZZxRYc35IqxvSs3fBAyUPO7
         ej+bra3gFLSo82ZBz/XS2TpvAw/w9rFJ5gkNOhAi30qw6IbfMH5T0RCyc/HeBoIxb6ND
         GAxILynuUE/l4Pg9oOenOqwpYCif8GsqQIr/VrJ1+eocosIEBY+Ppp8Y2vHQRC0CAjui
         XD5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721755215; x=1722360015;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XOe0MLUMVLOrVxxv/ePfl9ff0aPXG4+Z35ycnARxiY8=;
        b=cLGzFRBD7IbMyBs0VFpK4LoCRlcdS/B6p3PBMgeFQRlXnwLytDEjlNI7txqZrmI1Bt
         e02pMeFh+cCvmmbXx76DRW1w/FP5wxbewygjxnP/OZZnEeyly29O6DkWigIIgjXA0KXI
         zwdz92OAEreX0yfsFHMgsE/xpPsDcvfMrdqutVus4QCRtM0H7nUze7FD/kwU9TcmDp1I
         Biw5HZL4G2X0oTA8ZAnJWZG5Pa5BYH6knlNAc5+I0tfS3EQt6FCf14FdpMtVHi/QX7Ib
         0eQPXlA/xPAFX4i2zgWm5gOhdvnsgBvOjzErK5nBS0seNKwyRWeF8KpRFONQYBALtNG6
         S0wQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7g1CrZyIHpN7580IC5ocw5ZTqEz3L/mPjzTWXzr+bW5O0vqbN5AucWnxquS797xI8DBWh77QsoBp0mzjPX12pnewAlyHG8i6I9DhtvQ==
X-Gm-Message-State: AOJu0YygYsXc32b8xiNU+UCAwJrZt3AesmRoRQifn+HCXDFoaTPgFbKe
	FMW1ocFdPfXronum066PyZzHgd/bDRWrGDnTC3wnXX5/iPr1LnTQd1GsnkFXZ76xSAkqVJHLvxD
	qv9T5B5JWeRyCYt1fRKzRTAE0JrU=
X-Google-Smtp-Source: AGHT+IFcHozHZx+cILlSEO6Gl2LmXfljpvHEyEVdBwuFcMIZtVfKaO43sgcYRG67ZYw8sJ27fCMFQ9KO8R/WVwG8mzo=
X-Received: by 2002:a05:690c:10d:b0:64b:7e17:b339 with SMTP id
 00721157ae682-66a68b87fe5mr136874317b3.15.1721755215500; Tue, 23 Jul 2024
 10:20:15 -0700 (PDT)
MIME-Version: 1.0
References: <20240718210322.37492-1-ilordash02@gmail.com> <20240718210322.37492-2-ilordash02@gmail.com>
 <20240719-ahead-kiwi-995e52bf3e74@spud>
In-Reply-To: <20240719-ahead-kiwi-995e52bf3e74@spud>
From: IlorDash <ilordash02@gmail.com>
Date: Tue, 23 Jul 2024 20:20:04 +0300
Message-ID: <CAGCz5HkF_WNZBVpY2SWVf071Pi896BvKFk0jnfNAYX5AKx2Zcw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: ti,tcan104x-can: Document Microchip ATA6561
To: Conor Dooley <conor@kernel.org>, geert+renesas@glider.be
Cc: mkl@pengutronix.de, mailhol.vincent@wanadoo.fr, vkoul@kernel.org, 
	kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, a-govindraju@ti.com, 
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_102016_550582_F04EFFD4 
X-CRM114-Status: GOOD (  20.90  )
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

On Fri, 19 Jul 2024 at 18:07, Conor Dooley <conor@kernel.org> wrote:
>
> On Fri, Jul 19, 2024 at 12:03:21AM +0300, Ilya Orazov wrote:
> > Microchip ATA6561 is High-Speed CAN Transceiver with Standby Mode.
> > It is pin-compatible with TI TCAN1042.
> >
> > Signed-off-by: Ilya Orazov <ilordash02@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > index 79dad3e89aa6..03de361849d2 100644
> > --- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > @@ -18,6 +18,7 @@ properties:
> >        - nxp,tjr1443
> >        - ti,tcan1042
> >        - ti,tcan1043
> > +      - microchip,ata6561
>
> Given that your driver patch has
> | diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
> | index ee4ce4249698..dbcd99213ba1 100644
> | --- a/drivers/phy/phy-can-transceiver.c
> | +++ b/drivers/phy/phy-can-transceiver.c
> | @@ -89,6 +89,10 @@ static const struct of_device_id can_transceiver_phy_ids[] = {
> |                 .compatible = "nxp,tjr1443",
> |                 .data = &tcan1043_drvdata
> |         },
> | +       {
> | +               .compatible = "microchip,ata6561",
> | +               .data = &tcan1042_drvdata
> | +       },
> |         { }
> |  };
>
> the driver patch is actually not needed at all, and you just need to
> allow ti,tcan1042 as fallback compatible in the binding, so something
> like:
>
>   compatible:
>     oneOf:
>       - enum:
>           - nxp,tjr1443
>           - ti,tcan1042
>           - ti,tcan1043
>       - items:
>           - const: microchip,ata6561
>           - const: ti,tcan1042
>
>    '#phy-cells':
>      const: 0
>
> Cheers,
> Conor.
>
> >
> >    '#phy-cells':
> >      const: 0
> > --
> > 2.34.1
> >
> >

I tested the build with fallback compatible:

compatible:
  oneOf:
    - items:
      - enum:
        - microchip,ata6561
      - const: ti,tcan1042
    - items:
      - enum:
        - nxp,tjr1443
      - const: ti,tcan1043

and modified compatible property in DTS:

compatible = "microchip,ata6561", "ti,tcan1042";

Build succeeded, phy-can-transceiver driver was used. So I would like
to add a fallback compatible for both "microchip,ata6561" and
"nxp,tjr1443" in this binding and modify other DTS files with
compatible = "nxp,tjr1443". What do you think?

-- 
Best regards,
Ilya Orazov

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
