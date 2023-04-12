Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15B27C77B6F
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 13:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7cFgtM3YnvIXg2Lav41eWKz7AOMznUFjLMDbRr5Nkko=; b=AltoX4TqojiOpo
	LNSq/9aDV2re1d2G622ZRRwJwf/HnuGPowpAtyDSoNpJqDvOYsA1NBEbVzUjtw7t5HsFBNNGNnnUd
	HB0hKDUI+KuSUrGz+cDnh4YM7mhhWR9P4IJLsTh6mEh/YlPXj2XzPDW60AP2LqAfuH0y8QX8s655O
	Y2Lhv0OSzjdpJmehIOaGuTOd4vRSDI+msIGUfXSBCkrSU5XOSWk4cnMjpzKTEkp662uQ68PPN+A5H
	ypHd/E55VNGApuiPMSoujhCsZEBY0jniaYuJirzvFXo59E2NJDgGsdrr7ZkVFkxUgTE0d2SASAfH7
	D26v3JAc0YYHAhZBD0LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmahE-003NIK-27;
	Wed, 12 Apr 2023 13:39:36 +0000
Received: from mail-oa1-f47.google.com ([209.85.160.47])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmahC-003NFJ-0A;
	Wed, 12 Apr 2023 13:39:35 +0000
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-18782426c4bso600595fac.9;
        Wed, 12 Apr 2023 06:39:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681306763; x=1683898763;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wqTBOiXW+OSKCG/B6dEs6T+l192CJMJlj9OxbNQfKPY=;
        b=Qz4RPj5V0Jyl6iQ6zJnBMQKe3SBJoTFXsjecni3W1PtuL9vuxCyya3XiPS71+PdSuD
         34D4PTUTrY+0nkKauNAnmzHPhrNv/yynixCkh25zbmLiVSKzzrcl1TV3cUuXu9Y1KTpk
         /PlAbNsr2fq2GzKNC1DGM4/rdQ0WoQoqCwTUam7ZJpOdkjETYnR+akYMjs68K1Emih3A
         jwJjDPSln0PI9ycSRfcsm/npZgrz1zSiU+DGMVv9iLlQYwrI4rbMgJ/hoDntODpZ6IRu
         PQvQOekaCPsp7jK9yPpHxZGQm0g8XfAAg2H15R5hlTN1WzSokXMbzRULYdi1VvfNliei
         N9Kw==
X-Gm-Message-State: AAQBX9d89ZVieerJxhfOvV1/poPt8GdHuMxiNFVusjHlEpYaMq0SRnbg
	dA9mVpSjdAUHGQE7e+VSsA==
X-Google-Smtp-Source: AKy350ackMhPHZrmUsBkYtWkgvuVjprseT2ZSz58PZgTnUQvLVrAPQN80r7cK3FqlRLxKHggFOITwQ==
X-Received: by 2002:a05:6870:f228:b0:17e:9798:6e34 with SMTP id t40-20020a056870f22800b0017e97986e34mr8351022oao.32.1681306762985;
        Wed, 12 Apr 2023 06:39:22 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r17-20020a05687080d100b001726cfeea97sm6143360oab.29.2023.04.12.06.39.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Apr 2023 06:39:22 -0700 (PDT)
Received: (nullmailer pid 2193869 invoked by uid 1000);
	Wed, 12 Apr 2023 13:39:21 -0000
Date: Wed, 12 Apr 2023 08:39:21 -0500
From: Rob Herring <robh@kernel.org>
To: Johannes Zink <j.zink@pengutronix.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, vkoul@kernel.org, kishon@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com, krzysztof.kozlowski+dt@linaro.org, jun.li@nxp.com, haibo.chen@nxp.com, linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: imx8mq-usb: add phy tuning
 properties
Message-ID: <20230412133921.GA2017891-robh@kernel.org>
References: <20230405112118.1256151-1-j.zink@pengutronix.de>
 <20230405112118.1256151-2-j.zink@pengutronix.de>
 <5398cbe0-c681-5dd7-0b3e-3a586cc4915f@linaro.org>
 <3f7257ee36dc44f162a87281c8279fd5bad91dea.camel@pengutronix.de>
 <95b4afd4-c93e-628b-fd22-6fcbc1d1234e@linaro.org>
 <b394b456540943b1022a7b093bf369924fca0566.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b394b456540943b1022a7b093bf369924fca0566.camel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_063934_089795_1D9749C1 
X-CRM114-Status: GOOD (  23.92  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, Apr 11, 2023 at 04:22:37PM +0200, Johannes Zink wrote:
> Hi Krzystof,
> =

> thank you for your explanations. As I'm still quite new to writing
> bindings, I still have some questions:
> =

> On Fri, 2023-04-07 at 11:03 +0200, Krzysztof Kozlowski wrote:
> > On 05/04/2023 14:14, Johannes Zink wrote:
> > > Hi Krysztof,
> > > =

> > > thanks for your review, please find my questions below.
> > > =

> > > On Wed, 2023-04-05 at 13:51 +0200, Krzysztof Kozlowski wrote:
> > > > [snip]
> > > > > =A0=A0=A0=A0=A0=A0 A phandle to the regulator for USB VBUS.
> > > > > =A0
> > > > > +=A0 fsl,phy-tx-vref-tune:
> > > > > +=A0=A0=A0 description:
> > > > > +=A0=A0=A0=A0=A0 HS DC Voltage level adjustment
> > > > =

> > > > "Level" in what units?
> > > > =

> > > =

> > > The datasheet just shows percent, ranging from -6 to +24%, in 2%
> > > increments. What unit would you suggest?
> > =

> > percent
> > https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/=
property-units.yaml
> =

> I am still a bit confused how to use this properly. How can I restrict
> the values to multiples of 2 in order to avoid illegal values?
> =

> At the moment the only thing I could come up with is something like
> =

> fsl,phy-tx-vref-tune-percent:                 =

>   description: |                              =

>     Adjusts the high-speed DC level voltage   =

>   $ref: /schemas/types.yaml#/definitions/int32

Note that with standard unit suffixes, you don't need a type.

>   minimum: -6                                 =

>   maximum: 24                                 =

>   default: 0                                  =

> =

> Does something like this work? I am not quite sure if I am on the right
> track here, especially as this requires a signed int, of which I have
> not seen many examples so far.

We'd have to change the type for -percent to signed. That's possible, =

but for vendor specific properties there's not much advantage to use =

standard units instead of just using the register values directly.

Rob

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
