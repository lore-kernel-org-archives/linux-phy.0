Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 124C9CCF9E3
	for <linux-phy@archiver.kernel.org>; Tue, 11 Nov 2025 10:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJneRiVgUFO0XCFFW+oHQls8lzCQPi0urL71q2l5Sr8=; b=Wm9eX3vKxyz0/6
	wlrP43t4BGveS0vs7XaRbJVISMH5BSCS1s3N8/Mx2lSUilU3McMmh8Y2k42WDZ2GG9Ha/1vbKsa7C
	qQzcBcnZ6XF48iIOx8ym7ffcgZb9kNM3S+Zpe5IGILzWNMEvZdkEHrWathpDEAz4hHkAzqewVc32l
	cYy2GnH7FT31kif0NFxLKMLy9q4XMDkKr8cRiHEa3HYUqscOnzIUceDML/4MDTT3nGqSs3w3ByLYB
	N+f9cCL0qg7/CXNQoUTY/3LaXi7tL03q7KD3bYai1Cp1+3WHKFAd7lnlQXKiyeYd6K55rZG/ETj8Y
	RTvGw/a+gwmGViX+y54Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIlBZ-00000006tqq-38um;
	Tue, 11 Nov 2025 10:01:13 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIlBT-00000006tqB-0CmC
	for linux-phy@lists.infradead.org;
	Tue, 11 Nov 2025 10:01:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1762855266; x=1794391266;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=e3fqwRbOVt7OA+FEvmyZw2a0p2NHT5gR8SasjQ8stTc=;
  b=aBakPFN+qn9toR8wvgUHK6/Fv+KRBz8vUVl/jsERNupcbCahnoZ+q2hQ
   0GXO2+OL2683mSeA4ZPNlKELeXlPERZLB1JesHVyXkubGpMjruwW/chx/
   CfyAl1CaVzuilZHpGYUwxIkIUszHxQ1WY5XunrUM+O1L3Dzs8N6puxjo7
   gNHj0rKH1IKlGXq23oz6wHU45GOu4aecq74pg26EZY0Ml11Hy2Z70Zu+W
   UldhaChH7G7DuJWHk1hXTVTnNGFz/G7IFtef9xOZmHG1tYj9iOnfaoRF2
   pC1BCH0jto7NwD3XuDtYyrDpZpbI2o6HLbKO1awPwDImKv0u/gIaVtWJP
   w==;
X-CSE-ConnectionGUID: 2dh2N22+RT2H7OEQxVeL+A==
X-CSE-MsgGUID: DtILuQYCTuKnZZVhVVHmTw==
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; 
   d="scan'208";a="216293010"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 11 Nov 2025 03:01:04 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Tue, 11 Nov 2025 03:00:02 -0700
Received: from localhost (10.10.85.11) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Tue, 11 Nov 2025 03:00:02 -0700
Date: Tue, 11 Nov 2025 10:58:31 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Conor Dooley <conor@kernel.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] dt-bindings: phy: lan966x: Add optional
 microchip,sx-tx/rx-inverted
Message-ID: <20251111095831.lp4kvdfcahtwgrqc@DEN-DL-M31836.microchip.com>
References: <20251110110536.2596490-1-horatiu.vultur@microchip.com>
 <20251110110536.2596490-3-horatiu.vultur@microchip.com>
 <20251110-unwound-award-a11d69b9da4f@spud>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251110-unwound-award-a11d69b9da4f@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_020107_157245_3B646A3A 
X-CRM114-Status: GOOD (  20.85  )
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

The 11/10/2025 18:43, Conor Dooley wrote:

Hi Conor,

> On Mon, Nov 10, 2025 at 12:05:36PM +0100, Horatiu Vultur wrote:
> > This allows to invert the N and P signals of the RX and TX Serdes
> > signals. This option allows the board designer to trace their signals
> > easier on the boards.
> 
> Why can't this just be done in software, debugfs or something like that?
> Maybe it's just your description is poor, but sounds like the intention
> here is to just switch things around for debug purposes.

I don't think it should be done through debugfs. As this describes the
board layout and I don't think someone will want to change it at
runtime to see how things behave. So maybe the description is poor.

> 
> > 
> > Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> > ---
> >  .../phy/microchip,lan966x-serdes.yaml         | 24 +++++++++++++++++++
> >  1 file changed, 24 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml b/Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml
> > index 6e914fbbac567..21b19e06a75aa 100644
> > --- a/Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml
> > +++ b/Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml
> > @@ -41,6 +41,30 @@ properties:
> >        - The macro to be used. The macros are defined in
> >          dt-bindings/phy/phy-lan966x-serdes.
> >  
> > +  microchip,s0-tx-inverted:
> > +    type: boolean
> > +    description: Invert the TX N and P signals for Serdes 0
> > +
> > +  microchip,s1-tx-inverted:
> > +    type: boolean
> > +    description: Invert the TX N and P signals for Serdes 1
> > +
> > +  microchip,s2-tx-inverted:
> > +    type: boolean
> > +    description: Invert the TX N and P signals for Serdes 2
> > +
> > +  microchip,s0-rx-inverted:
> > +    type: boolean
> > +    description: Invert the RX N and P signals for Serdes 0
> > +
> > +  microchip,s1-rx-inverted:
> > +    type: boolean
> > +    description: Invert the RX N and P signals for Serdes 1
> > +
> > +  microchip,s2-rx-inverted:
> > +    type: boolean
> > +    description: Invert the RX N and P signals for Serdes 2
> > +
> >  required:
> >    - compatible
> >    - reg
> > -- 
> > 2.34.1
> > 



-- 
/Horatiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
