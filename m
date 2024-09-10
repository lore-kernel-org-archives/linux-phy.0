Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9F0DECE564
	for <linux-phy@archiver.kernel.org>; Tue, 10 Sep 2024 09:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7NKMyEuVAtVtHCY4G6DSrGf2SWE1GFANmv+Grf+zwQA=; b=Jh7N3sAh08G08u
	Jge2iBVGCQbX3tbvVyp68B/YxQ0fu8a8GiX08o3+C6AHCaUMblBAdMf8pGCNQlTd9T+mhq5F9MCxw
	FXSyHNo71S6yagTJ9B2mN2JYi2RtESgyAfdR6JU66Yg2Jezg53P7QzqCHjKb/G/Kpklny0Drob6rG
	8P21zRF90b7DOfK8swo1pFVDyrMnmkJs7a3F4norVwgkYjJd+zRm4ciazJgXhDZlNiHVAavZLf6vY
	yVGrkRTFnSXyt4tR0N3k1ldDPan/YFrvh4y+7U6YyLFmweJqsN9Mwdgn/vUm/9H+fyoDel5wt+5RQ
	IbGSvdC1xuvkD6k7yydg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snwjl-00000004uOR-2Lml;
	Tue, 10 Sep 2024 09:00:37 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snwji-00000004uNY-1yYb;
	Tue, 10 Sep 2024 09:00:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1725958834; x=1757494834;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=gKIOXWk8XFw+NBoYrB/b5DFLbg0bA9+VpNV/DgItObs=;
  b=mP9LecOsaphvb6SIrBRFITBOU96t0eGhSsFJCcFNXEGRHJpsKxUw5bDT
   Ua5IJHe2il2iW/Rdv1cA0elreP0SeZ9ieNd1suSqC9rkEZ43VX50PucDx
   MPE+5UQwldLVQKJFR+4MWj33YZYM0k5jLOhVdutuaSNZbjiXoIO9fGeHY
   cHpASw9WcZhbu2QyohE1nZwAB26S8LzXdeFx2LzPjHCjFpYiteacjzfia
   vrK31tMWH00iysQf+nb0wP6W5Y2bFveqjpfF2nd9UGE4l6vXLGn/U27tf
   jvyUKKEnpE9KBbRX/WeUjrJdJlowO9yFNf4QacNTL8TjaPQ479DBFNEuF
   A==;
X-CSE-ConnectionGUID: Hr8gDLTiSAu2y7wQ9bR3sA==
X-CSE-MsgGUID: lkbXYb+CRoWQUYO7YRv/qw==
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; 
   d="scan'208";a="34688000"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 10 Sep 2024 02:00:32 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 10 Sep 2024 01:59:55 -0700
Received: from DEN-DL-M70577 (10.10.85.11) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Tue, 10 Sep 2024 01:59:53 -0700
Date: Tue, 10 Sep 2024 08:59:52 +0000
From: Daniel Machon <daniel.machon@microchip.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Lars Povlsen <lars.povlsen@microchip.com>, Steen Hegelund
	<Steen.Hegelund@microchip.com>, <UNGLinuxDriver@microchip.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 8/9] dt-bindings: phy: sparx5: document lan969x
Message-ID: <20240910085952.azwmrvuntyvuc3nb@DEN-DL-M70577>
References: <20240909-sparx5-lan969x-serdes-driver-v2-0-d695bcb57b84@microchip.com>
 <20240909-sparx5-lan969x-serdes-driver-v2-8-d695bcb57b84@microchip.com>
 <wd3gzn3lpmw64qor3xslif6rnp7htycfhu33pa2xpxvv6mrwqe@nv6pcwkstywe>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <wd3gzn3lpmw64qor3xslif6rnp7htycfhu33pa2xpxvv6mrwqe@nv6pcwkstywe>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_020034_650775_53E1D0CF 
X-CRM114-Status: GOOD (  11.70  )
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

> >  maintainers:
> >    - Steen Hegelund <steen.hegelund@microchip.com>
> > +  - Daniel Machon <daniel.machon@microchip.com>
> >
> >  description: |
> >    The Sparx5 SERDES interfaces share the same basic functionality, but
> > @@ -62,12 +63,26 @@ description: |
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
> > +    oneOf:
> > +      - enum:
> > +          - microchip,sparx5-serdes
> > +          - microchip,lan9691-serdes
> > +      - items:
> > +          - enum:
> > +              - microchip,lan9698-serdes
> > +              - microchip,lan9696-serdes
> > +              - microchip,lan9694-serdes
> > +              - microchip,lan9693-serdes
> > +              - microchip,lan9692-serdes
> 
> If there is going to be a new version, keep rather increasing/growing
> alphanumerical order, but no need to resend just for this.

Ack.

> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof
>

Thanks for reviewing!

/Daniel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
