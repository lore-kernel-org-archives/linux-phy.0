Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87C94C83F0B
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 08:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8fFiXEWHDO3hWGs7iXGMAczECZAmP0Cbt3gXvSQOIzo=; b=VY1gSv1blXt5ej
	Rn7A38gxT+MWYrC6+dK//7m7jWxhk8/Qyb4i6w4NliFVyQwMWzCjbJ2JduTZTSe8szMqpOPpCkOIC
	xjy6mDwv7lO0hIICuJCd7+vnTua75K9at2l+yXE2UQeZD5ct4esvGgpb7szKWCz60hn2bFpx0aNAm
	tZ+AHTf0O13eEP7WD6UzWyONN8dHv5lPh99aQzLGd8IBTGsyekDpCUReOXMgtA9UuSU7a7XziRfZI
	KIWG1gUXJcqYlkjEaRX22mTM022t8wTTR/Yh1zRU2VDPMsgxuJ3meHPtIrTj1ub+tPsqPEXmZi1y2
	5Hfr6Lm6e2BJt7hx22KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjx9o-00000005OIf-10Fo;
	Fri, 30 Aug 2024 08:39:00 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjx82-00000005NmV-03hA
	for linux-phy@lists.infradead.org;
	Fri, 30 Aug 2024 08:37:11 +0000
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-e116a5c3922so1574014276.1
        for <linux-phy@lists.infradead.org>; Fri, 30 Aug 2024 01:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725007028; x=1725611828; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=31d7hZq/3IptMCIezPTJphlV/fOaIPteID4cgke+Fm0=;
        b=SL753KTNpxNSyQveo1hXfrtZK+aZ8nCVDaGnquVxN7ozG2Fx64tU5L4WZnNslvWdr4
         wMkot6YEibmg10NDWZcgWpoVcF1BwuwX8iSnu4sJSLTq9KsQTnfhBfbieoAHzNT/AzFT
         uXIWYI2DKB5ZWe6HVtbebL8BfJmXCgH1c6FGG7yY51BUBs2cnOPu24LTDd38Ap670xUK
         /5P/ZReRd6Qfu5o79/DaURkihHlVH4svnDHXvCp6Fcp91FpV/C9YuoIPBsuL94c2OHcK
         zzMGQ3+FikvZSvJV22YOfLIzPInKLjpkjUwlRHiFPw2w6A7J6KMLsjOQY/sMQbn1uWdJ
         75tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725007028; x=1725611828;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=31d7hZq/3IptMCIezPTJphlV/fOaIPteID4cgke+Fm0=;
        b=VKIg4flW7XScV/LeRPiBij1m80g/R/8iV8U5tfIEwHh3XSo6aNYRctzI8ZvOpxrt0I
         CiU7EEK0ogZgrFBwNBEvZpsXSboPBHBycdwXDUSXUlT/8Sfg4micfH/rI0spfBIkhOub
         yKtzAp4q6W9KnZck6oflO65N2OnY5E1uenJYs26VWLaqCRFJQIS2XP+2q3beSKIFSeJm
         byn4jS+PJg6GT3BClrrQrPPW8Px2eueaC2zKFZEWVXzEXMTFCTL25P8+7ZoVAOIqPozP
         lHkBMmfqI+Ww1Tof+rQooj+r23RbTBPZDvrW91TNAvIkUmh6bqe4taXeYMuxdQS+4RwH
         iw9Q==
X-Forwarded-Encrypted: i=1; AJvYcCWIIPSEspAtenqhby7905af9V80Nz9KTNm2EVlPTJ+PBKll3fzLar1BA+Z5fZpFRLpqT3T8oI9Owmg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+++wSPk6pEqgYksZjmZwLTvOdYWM3ZqPBlTeJ3HdfP7AdfppL
	Yc8WNcbrido8Dh8YQAYyq8HzUpIr2Je42xl/aycztgI9RCBnYj7pABU/UpKZ1DwS2x/WlB/PeJe
	8f5Wr61PRVtR7EpVvAC8ab4QTvtM=
X-Google-Smtp-Source: AGHT+IGv646FbyuGE3nSt1USD81qaCTmkIsKuR1GVErqyBk4BGsOTCdJ41R5AwVCpk1z3YAtl3HfPbWoPoCieHUNZYk=
X-Received: by 2002:a05:690c:10c:b0:6b5:5042:2c9d with SMTP id
 00721157ae682-6d40e77fd6emr11447737b3.24.1725007028363; Fri, 30 Aug 2024
 01:37:08 -0700 (PDT)
MIME-Version: 1.0
References: <20240822105238.213019-1-ilordash02@gmail.com> <20240822105238.213019-2-ilordash02@gmail.com>
 <ZtC6S6I/QKihcsyu@vaman>
In-Reply-To: <ZtC6S6I/QKihcsyu@vaman>
From: Ilya Orazov <ilordash02@gmail.com>
Date: Fri, 30 Aug 2024 11:36:56 +0300
Message-ID: <CAGCz5HmTNtGJHoXmuFhC_43jTObDN+Bxn0rLK3OfH-DBhacomA@mail.gmail.com>
Subject: Re: [PATCH v4 1/1] dt-bindings: phy: ti,tcan104x-can: Document
 Microchip ATA6561
To: Vinod Koul <vkoul@kernel.org>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Aswath Govindraju <a-govindraju@ti.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	Conor Dooley <conor.dooley@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_013710_111611_342FE884 
X-CRM114-Status: GOOD (  15.88  )
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

On Thu, 29 Aug 2024 at 21:13, Vinod Koul <vkoul@kernel.org> wrote:
>
> On 22-08-24, 13:52, Ilya Orazov wrote:
> > Microchip ATA6561 is High-Speed CAN Transceiver with Standby Mode.
> > It is pin-compatible with TI TCAN1042 and has a compatible programming
> > model, therefore use ti,tcan1042 as fallback compatible.
> >
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > Signed-off-by: Ilya Orazov <ilordash02@gmail.com>
> > ---
> >  .../devicetree/bindings/phy/ti,tcan104x-can.yaml    | 13 +++++++++----
> >  1 file changed, 9 insertions(+), 4 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > index 79dad3e89aa6..4a8c3829d85d 100644
> > --- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > @@ -14,10 +14,15 @@ properties:
> >      pattern: "^can-phy"
> >
> >    compatible:
> > -    enum:
> > -      - nxp,tjr1443
> > -      - ti,tcan1042
> > -      - ti,tcan1043
> > +    oneOf:
> > +      - items:
> > +          - enum:
> > +              - microchip,ata6561
> > +          - const: ti,tcan1042
> > +      - enum:
> > +          - ti,tcan1042
> > +          - ti,tcan1043
> > +          - nxp,tjr1443
>
> No driver/dt for new compatibles?

There is phy-can-transceiver.c driver that can be used also for
ata6561. I used this PHY in my own DTS. It is a popular chip, so I
decided to add ATA6561 to the kernel, as I believe it would be
beneficial.


>
> >
> >    '#phy-cells':
> >      const: 0
> > --
> > 2.34.1
>
> --
> ~Vinod



--
Best regards,
Ilya Orazov

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
