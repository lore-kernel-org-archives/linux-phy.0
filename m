Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E8B1C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 30 Nov 2021 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wIoZu2BccMUuZLuKQZB1bFUdBxsuuCzYXjL4el/HBCM=; b=f9y7QGbI0/cnhQ
	xmCYoViXeX6i/LsF1L9KYYqn6mOFesDIZL/FZ8LbCLTyvlxIBjcAtgxKcxn13Vvf2/MCQ9VL8gjbI
	F/8QZpLvT68yeScbDbAQ27plN5OypTCCtr5KrmDZ0RoSLIH72+/lX7u2JaavDdfrZcrLbkqyw7efv
	OEdXLok8wSc4Ek4HKfIydZD2KzEU8V0qnYOmg7OnguYfgXNHiYeFRVZkU5pnn5XWBqTWQhVovYAFZ
	3PEMctK+SO15JUeTBA5NzIJZ6GPVqFGa5Ql1q7p7QG+6rjMAKPu18+zeDA15KzKNYD/4Ht/asaM2D
	kywWrXu/5J5l0bUiW/qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms5hY-00662Y-QR; Tue, 30 Nov 2021 16:09:52 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ms5hV-00660r-Sh
 for linux-phy@lists.infradead.org; Tue, 30 Nov 2021 16:09:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1638288590; x=1669824590;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2QWtVNSkRc85nLajFxYVSBdaIfBbfoV5BCiAUQVnQlg=;
 b=kAnr8znqvy9lSczR2PF5qIZrU+e+496hTijSlHpfygtrzjIlHqZwioUV
 3lwuPPYM4Zc2oR9BJicia8+gTVeQuhlDJ/Hofn4AbpjzWQ4SUPWxmpV/l
 DYTFMEzDboSdpHcpwu3aoF8b83R/8nFUhiQmRJzgIM5sY7ZHP+hx/R6/k
 4N7dlHQk5kz9eMuNupPQS60wcTmqGqFNrvq0M7DNZssTTQO793Mg6sq4i
 87EL6KsPV035rZLDWW0Or0q4+pNSQ1/DV3GDChfaFuVQu60MpzWE6vHnq
 qY+db08y7U779vviaVJX6ZEJrmv599v+MwA6h3ZR/aoZdXIjicNyYk/vM Q==;
IronPort-SDR: Ws5lURyfgKd+UvWPvnUKveK6akZpm8XCHEOWm6eWkrRIYRqWEWghkULvYFOUEzF+ZctQMQBdf5
 7CvS1SnIcxAuKKQJafCqPlfG3jokf2Qd3IVjWJhSuyQNrfpcuLUaHZEuZdWD8oFbSnbW3mGKfq
 0qxQoqMAOC0b2D6wPhOahcy2HAslVrFfLqIYilUgeq20z9PaAsoQpTqOuDuxKUJ+ezGRITRcbR
 AkU/LOGC4+fr6mX8mJYFFPefONRVzlnzekUtMKatjKAuqiRFrUScctszUot9mWpi76y4H6O8Sm
 2MypZtqj5bFylXBJBnSDcOwU
X-IronPort-AV: E=Sophos;i="5.87,276,1631602800"; d="scan'208";a="145009024"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 Nov 2021 09:09:49 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Tue, 30 Nov 2021 09:09:48 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Tue, 30 Nov 2021 09:09:48 -0700
Date: Tue, 30 Nov 2021 17:11:41 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
CC: Kishon Vijay Abraham I <kishon@ti.com>, Vinod <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Jakub Kicinski <kuba@kernel.org>,
 <linux-phy@lists.infradead.org>, "open list:OPEN FIRMWARE AND FLATTENED
 DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH resend v4 1/3] dt-bindings: phy: Add lan966x-serdes binding
Message-ID: <20211130161141.pat3h5sojddr2ne6@soft-dev3-1.localhost>
References: <20211116100818.1615762-1-horatiu.vultur@microchip.com>
 <20211116100818.1615762-2-horatiu.vultur@microchip.com>
 <CAMuHMdUkr3n-m8dadyzb=s7F9ns6PXMLgOkZaG=XTYNKnaaORg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdUkr3n-m8dadyzb=s7F9ns6PXMLgOkZaG=XTYNKnaaORg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_080949_994995_1C3E3894 
X-CRM114-Status: GOOD (  22.07  )
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

The 11/30/2021 15:02, Geert Uytterhoeven wrote:
> 
> Hi Horatio,

Hi Geert,

> 
> On Tue, Nov 16, 2021 at 11:16 AM Horatiu Vultur
> <horatiu.vultur@microchip.com> wrote:
> > Document the lan966x ethernet serdes phy driver bindings.
> >
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> 
> Thanks for your patch, which is now commit fd66e57e46a3d1b7
> ("dt-bindings: phy: Add lan966x-serdes binding") in phy/next.
> 
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml
> 
> > +examples:
> > +  - |
> > +    serdes: serdes@e2004010 {
> > +      compatible = "microchip,lan966x-serdes";
> > +      reg = <0xe202c000 0x9c>, <0xe2004010 0x4>;
> > +      #phy-cells = <2>;
> > +    };
> 
> So this overlaps with the switch registers, cfr.
> Documentation/devicetree/bindings/net/microchip,lan966x-switch.yaml
> in net-next/master?
> 
>     switch: switch@e0000000 {
>       compatible = "microchip,lan966x-switch";
>       reg =  <0xe0000000 0x0100000>,
>              <0xe2000000 0x0800000>;
>       ...
>     };

Well, they will overlap, but the switch will not use the registers used
by the the serdes. The 'lan966x_main_iomap' inside lan966x_main.c will
decide which parts of the resource will be used.

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

-- 
/Horatiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
