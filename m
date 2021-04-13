Return-Path: <SRS0=GU22=JK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 556B0C433B4
	for <linux-phy@archiver.kernel.org>; Tue, 13 Apr 2021 13:18:01 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D20FA613AE
	for <linux-phy@archiver.kernel.org>; Tue, 13 Apr 2021 13:18:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D20FA613AE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZOs4inJyjCS1jTgY+NJ4U/wRAf+Er4NZTwfTl67x9wQ=; b=j6kyWeGoFNaDXF0sTSIgoZu00
	lKjLmjoAECVfr1cepdXAJTy/y0N33dzIP9n5AOWQ6AiEzUkA19PbDT4qj7pe1kuTUO9JTzKrRQ0K9
	/zO8CH/eowvi67eZF/hm4ZDwp9ByrmMWbU4QNre+IsNe0FkIWbsesCAKV8/3M03HUsWDmCHFE1CH+
	zMQmR+2Ekz9wHpoPuO5Vdi5rKs+T+lyhzC/agnBs/xpxpdZB6S6R99v7snLabKRV2o4uyll6XzRWY
	H8jYsygE/NuLJtcIy+9asXgVAlc/RxFer2h0b/YtPApwmUNrRjmftKissKWvb78XJnXBfsApPJOWk
	9Tn1y4agg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWIvW-009LmF-0O; Tue, 13 Apr 2021 13:17:58 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWItE-009LWz-KG
 for linux-phy@desiato.infradead.org; Tue, 13 Apr 2021 13:15:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=2diZWBcd1URd5GoR8BcQqj+ayxNThTky2oELI+7zA1Q=; b=SZQinybfBw4jGJlF7gVqWfIU1M
 ZCd1sN0/9oCIPhe6ZV9AIYsBhdqDteZqugTe26YSDdiJAwwMPbEzQmSfnlpBveNHDkjJxgUcu5drg
 tggMeOuToeZ/1bCyvBkc5X4OCSSQ5Kc8kMpSlfElz7RhFKN0qMDF7uhzD7t1bMU8qCx2pFU7NRTZK
 5GU79GI8Qk41VZf4xRip/ErNGBoOETrQTymIqGqUDWEJa3WJye8LLmQjCbPjvNhwAhGjpE+gJrFwX
 2zUN59hfjBAzGH6Bb/7u3/WC8pj8e0dP0YTK601JY+APFE0By0w11bzvhhmzouMTKSf7kAlVzJ874
 Y4O4eVhg==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWItB-0073Jc-Mq
 for linux-phy@lists.infradead.org; Tue, 13 Apr 2021 13:15:35 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9EED3613B2
 for <linux-phy@lists.infradead.org>; Tue, 13 Apr 2021 13:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618319732;
 bh=hntf3n54qqh0uXzZ6D8tUaPqStMPIr+/hNfZoDniY4A=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=pFpwLvstWECXqVpOgyrkrKmlfsQ28mBYBwtR2o1zDIZNTN3s1OyR8ka9IMQF3ifAE
 apbS1JSkX1Thm0Dz70rv4l+fRx8vcuF9w7H0zOOqpejghSANJvWB7UO37TuxD0SsPE
 tPNQd5x1e3XOL1g/hzXjXdaL4D/pRLipUmK6nOWDyro+mXVGfwYFTYKNilgerKm4ss
 VbyvwloBimOPyZejVrnXMy5SwDPYjcGpLt7in7dRz23norkDFszPBjq6XLp2scE4Ss
 IpeYXQTzhOEVZSa4EnQ+y8p0vmIN3KT0xqanjCYFh1IMn2jykf6CATmG4DFSpIF8+T
 9Z6LYAE7/ltbQ==
Received: by mail-ej1-f47.google.com with SMTP id v6so24572555ejo.6
 for <linux-phy@lists.infradead.org>; Tue, 13 Apr 2021 06:15:32 -0700 (PDT)
X-Gm-Message-State: AOAM530ZcsWOryMqKJ5p/rW9pxC6kK0nknToRudXhXvfrD5eO/xIsjtD
 kQM533VdVWi++B7e4AIJP7pTTBgFdmupc1A+6Q==
X-Google-Smtp-Source: ABdhPJzC/tge5Y9i/M8U9jxXXMaHumRpj2qoNI/uM/HWkeG+5F6Zoeof4s70jO3VjFJc52wf9aBwCKB/22YZrMkMMhQ=
X-Received: by 2002:a17:907:367:: with SMTP id
 rs7mr18299959ejb.468.1618319731269; 
 Tue, 13 Apr 2021 06:15:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210409134056.18740-1-a-govindraju@ti.com>
 <20210409134056.18740-2-a-govindraju@ti.com>
 <f9b04d93-c249-970e-3721-50eb268a948f@pengutronix.de>
 <20210412174956.GA4049952@robh.at.kernel.org>
 <20210413074106.gvgtjkofyrdp5yxt@pengutronix.de>
In-Reply-To: <20210413074106.gvgtjkofyrdp5yxt@pengutronix.de>
From: Rob Herring <robh@kernel.org>
Date: Tue, 13 Apr 2021 08:15:18 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+yEQGuZYWhsQ-we36_Xi5X94YJ23oFe-T6h4U4X6iUhg@mail.gmail.com>
Message-ID: <CAL_Jsq+yEQGuZYWhsQ-we36_Xi5X94YJ23oFe-T6h4U4X6iUhg@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: phy: Add binding for TI TCAN104x CAN
 transceivers
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Aswath Govindraju <a-govindraju@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, 
 Kishon Vijay Abraham I <kishon@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>, 
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Chandrasekar Ramakrishnan <rcsekar@samsung.com>, 
 Wolfgang Grandegger <wg@grandegger.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 linux-can@vger.kernel.org, 
 netdev <netdev@vger.kernel.org>, devicetree@vger.kernel.org, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_061533_822799_DA04B1AD 
X-CRM114-Status: GOOD (  24.15  )
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

On Tue, Apr 13, 2021 at 2:41 AM Marc Kleine-Budde <mkl@pengutronix.de> wrote:
>
> On 12.04.2021 12:49:56, Rob Herring wrote:
> > On Mon, Apr 12, 2021 at 12:19:30PM +0200, Marc Kleine-Budde wrote:
> > > On 4/9/21 3:40 PM, Aswath Govindraju wrote:
> > > > Add binding documentation for TI TCAN104x CAN transceivers.
> > > >
> > > > Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> > > > ---
> > > >  .../bindings/phy/ti,tcan104x-can.yaml         | 56 +++++++++++++++++++
> > > >  1 file changed, 56 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > > > new file mode 100644
> > > > index 000000000000..4abfc30a97d0
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > > > @@ -0,0 +1,56 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: "http://devicetree.org/schemas/phy/ti,tcan104x-can.yaml#"
> > > > +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> > > > +
> > > > +title: TCAN104x CAN TRANSCEIVER PHY
> > > > +
> > > > +maintainers:
> > > > +  - Aswath Govindraju <a-govindraju@ti.com>
> > > > +
> > > > +properties:
> > > > +  $nodename:
> > > > +    pattern: "^tcan104x-phy"
> > > > +
> > > > +  compatible:
> > > > +    enum:
> > > > +      - ti,tcan1042
> > > > +      - ti,tcan1043
> > >
> > > Can you create a generic standby only and a generic standby and enable transceiver?
> >
> > As a fallback compatible fine, but no generic binding please. A generic
> > binding can't describe any timing requirements between the 2 GPIO as
> > well as supplies when someone wants to add those (and they will).
>
> Right - that makes sense.
>
> > > > +
> > > > +  '#phy-cells':
> > > > +    const: 0
> > > > +
> > > > +  standby-gpios:
> > > > +    description:
> > > > +      gpio node to toggle standby signal on transceiver
> > > > +    maxItems: 1
> > > > +
> > > > +  enable-gpios:
> > > > +    description:
> > > > +      gpio node to toggle enable signal on transceiver
> > > > +    maxItems: 1
> > > > +
> > > > +  max-bitrate:
> > > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > > +    description:
> > > > +      max bit rate supported in bps
> >
> > We already have 'max-speed' for serial devices, use that.
>
> There is already the neither Ethernet PHY (PHYLINK/PHYLIB) nor generic
> PHY (GENERIC_PHY) can-transceiver binding
> Documentation/devicetree/bindings/net/can/can-transceiver.yaml which
> specifies max-bitrate. I don't have strong feelings whether to use
> max-bitrate or max-speed.

Okay, max-bitrate is fine.

>
> Speaking about Ethernet PHYs, what are to pros and cons to use the
> generic PHY compared to the Ethernet PHY infrastructure?

For higher speed ethernet, both are used. There's the serdes phy and
the ethernet phy with serdes phy using the generic phy binding. For
CAN, it probably comes down to what's a better fit.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
