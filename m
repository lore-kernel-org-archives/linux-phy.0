Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9762DECE57E
	for <linux-phy@archiver.kernel.org>; Mon,  9 Sep 2024 08:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oZWzXlUgA9nPWLtyk9eUWELNiLg49EwoDf/XbgU6/RI=; b=qH+EaDwchBCW5b
	0TwGL/Jxn8vJVEgzeS/pRuVGycdOHYYs9cSAqutk2SwYTRMHsxP0jVEJIH0g0beiKQl2RTbLCnVai
	+EEf7VDc7nTknoOfPZ7lilEMQyGx2D06T44GJogs8+C8PcSwfLFQ2WpFP6oeAdC5Vm+VTTSQle+Vt
	AiVBX+EytyU6Qk5TAyYXCTb8oOrvj7VXh+W2x2Cly7oO1WsiL69cNMRk3eKvGCwFkOziEKD0KBSK3
	nOrXTxEDSE0LDnAClkCIU91a0TY8tWB54ykVnp9Y8wKMTjd4Isqqw7vXzYPVhx4UBuSMaG1VKFwNP
	L+jSEvC4ScuQ9fFp+8lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snZg0-000000014OW-192S;
	Mon, 09 Sep 2024 08:23:12 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snZfx-000000014NC-0DJK;
	Mon, 09 Sep 2024 08:23:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1725870189; x=1757406189;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=RWYOkSCv3h0126EVIboGoeRZMQwR/AQWmiXSAK7DxjA=;
  b=hwuxgAIOPtb7LDbu7x6pPZZF0/fbYgv+G+cFK3g3T9O98u1iDxLIeRkR
   glrCxEbtmAz7ixhZnynB95D7mrAJ5YTUy80+ohtqBpQn867YaGPAL1Yes
   oVsfn7wIsYRtTV2PNWlJL/vXtpk2bAsNY3V7ikS+CelAGKbjx9PccmngZ
   kFZF3uF+zmlO7MwrKWre8xM4PFYkN/6scGQDqzPLA9MGASNgekFBJMhwP
   7NjxbkoNMixcN5I+Hx4xPr7BUq6CWJHe7DgqP5776MwoZWYeIV2f0Zjqo
   mCCPP069z/w9ZbTDXrg4em/UMKz3njJZVGRIAjygK9IBEIOtE1uUBzasX
   g==;
X-CSE-ConnectionGUID: PZVtMCSfSX6DUnxmZ/IX3Q==
X-CSE-MsgGUID: BlHxOriiSRydW/a4O6+9oA==
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; 
   d="scan'208";a="32139047"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 09 Sep 2024 01:23:06 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 9 Sep 2024 01:22:44 -0700
Received: from DEN-DL-M70577 (10.10.85.11) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Mon, 9 Sep 2024 01:22:42 -0700
Date: Mon, 9 Sep 2024 08:22:41 +0000
From: Daniel Machon <daniel.machon@microchip.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Lars Povlsen <lars.povlsen@microchip.com>, Steen Hegelund
	<Steen.Hegelund@microchip.com>, <UNGLinuxDriver@microchip.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>
Subject: Re: [PATCH 8/9] dt-bindings: phy: sparx5: document lan969x in sparx5
 dt-bindings
Message-ID: <20240909082241.hvw3a7yig3pujrsk@DEN-DL-M70577>
References: <20240906-sparx5-lan969x-serdes-driver-v1-0-8d630614c58a@microchip.com>
 <20240906-sparx5-lan969x-serdes-driver-v1-8-8d630614c58a@microchip.com>
 <c0aa5342-a2af-4ac4-bc33-b6dbfff77f63@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c0aa5342-a2af-4ac4-bc33-b6dbfff77f63@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_012309_328646_F25AAA2E 
X-CRM114-Status: GOOD (  22.39  )
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

Hi Krzysztof,

Thanks your comments.

> On 06/09/2024 14:52, Daniel Machon wrote:
> > Document lan969x in the existing Sparx5 dt-bindings.
> >
> 
> Say something useful, not copy of subject.
> 
> > Signed-off-by: Daniel Machon <daniel.machon@microchip.com>
> 
> A nit, subject: drop second/last, redundant "dt-bindings". The
> "dt-bindings" prefix is already stating that these are bindings.
> See also:
> https://elixir.bootlin.com/linux/v6.7-rc8/source/Documentation/devicetree/bindings/submitting-patches.rst#L18

Duly noted.

> 
> 
> > Reviewed-by: Steen Hegelund <Steen.Hegelund@microchip.com>
> > ---
> >  .../bindings/phy/microchip,sparx5-serdes.yaml          | 18 ++++++++++++++++--
> >  1 file changed, 16 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/microchip,sparx5-serdes.yaml b/Documentation/devicetree/bindings/phy/microchip,sparx5-serdes.yaml
> > index bdbdb3bbddbe..1e07a311e8a5 100644
> > --- a/Documentation/devicetree/bindings/phy/microchip,sparx5-serdes.yaml
> > +++ b/Documentation/devicetree/bindings/phy/microchip,sparx5-serdes.yaml
> > @@ -8,6 +8,7 @@ title: Microchip Sparx5 Serdes controller
> >
> >  maintainers:
> >    - Steen Hegelund <steen.hegelund@microchip.com>
> > +  - Daniel Machon <daniel.machon@microchip.com>
> >
> >  description: |
> >    The Sparx5 SERDES interfaces share the same basic functionality, but
> > @@ -62,12 +63,17 @@ description: |
> >    * 10.3125 Gbps (10GBASE-R/10GBASE-KR/USXGMII)
> >    * 25.78125 Gbps (25GBASE-KR/25GBASE-CR/25GBASE-SR/25GBASE-LR/25GBASE-ER)
> >
> > +  lan969x has ten SERDES10G interfaces that share the same features, operating
> > +  modes and data rates as the equivalent Sparx5 SERDES10G interfaces.
> > +
> >  properties:
> >    $nodename:
> >      pattern: "^serdes@[0-9a-f]+$"
> >
> >    compatible:
> > -    const: microchip,sparx5-serdes
> > +    enum:
> > +      - microchip,sparx5-serdes
> > +      - microchip,lan969x-serdes
> 
> It seems there is no lan969x SoC/chip. Are you sure you are using
> correct naming, matching what kernel is using? Maybe you just sent
> whatever you had in downstream (hint: that's never a good idea).

You are right. There is no upstream support for lan969x SoC yet. The
upstreaming of the lan969x SoC has just begun, and this series is part
of that upstreaming effort. The lan969x switch driver (not submitted
yet) will depend on this SERDES driver, however, their functionality is
really independent of each other. That is why I am also upstreaming the
SERDES- and switch driver series independent of each other.

If these series needs to somehow be connected, by link or whatever, then
fine.  If there is some preferred way to do this, then please let me
know or point me in some direction. Thanks.

> 
> >
> >    reg:
> >      minItems: 1
> > @@ -90,11 +96,19 @@ additionalProperties: false
> >
> >  examples:
> >    - |
> > -    serdes: serdes@10808000 {
> > +    serdes@10808000 {
> >        compatible = "microchip,sparx5-serdes";
> >        #phy-cells = <1>;
> >        clocks = <&sys_clk>;
> >        reg = <0x10808000 0x5d0000>;
> >      };
> >
> > +  - |
> > +    serdes@e3410000 {
> > +      compatible = "microchip,lan969x-serdes";
> > +      #phy-cells = <1>;
> > +      clocks = <&fabric_clk>;
> 
> No differences so no need for new example. Also please follow DTS coding
> style in case of any DTS code.
> 

Ack.

> Best regards,
> Krzysztof
> 

/Daniel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
