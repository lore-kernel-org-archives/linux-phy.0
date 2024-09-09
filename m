Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7D74ECE57E
	for <linux-phy@archiver.kernel.org>; Mon,  9 Sep 2024 10:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=goPiPaAo+ii9PKlCgSG6BZG3jwNeRcJ1VshvOxcyF1k=; b=LmddCV1AF6Z/gs
	NdaZmRwG9DixIjAPKtdBOqhWrfEpNe8Sv3vwB6mfmi9V2YAyDPvMSoZY/kDo7ZAvx7pZnQ6Amk54K
	rUKfqP+97Ke9Q/FGm0/LnP62TvKDZpiLkvXromFdCdQzXke3GFc1ASEUtGbeLLZ4cSYoyxuicuJrm
	iK/DfSMjT2wY6Qbv8DDpuCux0iv731LWJSEK2r57TEfzCUVrBbcmCu+yO9TWODA0w8lAnyfSLjD54
	aSxSOUXt2exAyxY+SZO1KrIyPdH8lgzDk0p2aMQuI3oxu7ZfzqrBg0Oasqb2mEJek9K3pbzx1GNFA
	CgtBKtc6xYOG9qblScxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snbtZ-00000001YDV-1Upp;
	Mon, 09 Sep 2024 10:45:21 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snawL-00000001NI4-1X0j;
	Mon, 09 Sep 2024 09:44:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1725875050; x=1757411050;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=h5LA/enNgw1sNFYXeart0ZorY5rVj4crVb/Vfqx8aUI=;
  b=HA1fYfiypLp2Xd0x+Tbo5DuzRn63fI5PiZz7WFnXD/MfgwWppH/ou7IA
   K/mPqBbMe13EpuzQdojyXUt5d+GKEkwrbWAlXDLIPC1TWBCNR1qimNE61
   Ik5yQqA04nYhh5orvoQRVNuGyr2uIFlwnvxH8qXUdOAlsLR6tgErTQ6xw
   YpGWcobcwdU5UNCouyj97VuY4lRYcGSK0TqXQqMixm+Wb93DEDleZXHES
   aoR1jzcqr6puAQl0DxHA8/MO8Y8/IJ/s5NR8U3XlBvCjgdKKuPzpvo8ND
   b9/LEFHUnxZjyURkh/RVMpmaX3vcmRJ6nu8wuCKUOh/w7JmsSD23TzqM/
   A==;
X-CSE-ConnectionGUID: L5CatC7qR+24yrk0PqV2lQ==
X-CSE-MsgGUID: JW9LqD7NTV6izxZSQ6janA==
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; 
   d="scan'208";a="262473465"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 09 Sep 2024 02:44:09 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 9 Sep 2024 02:43:27 -0700
Received: from DEN-DL-M70577 (10.10.85.11) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Mon, 9 Sep 2024 02:43:25 -0700
Date: Mon, 9 Sep 2024 09:43:24 +0000
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
Message-ID: <20240909094324.u2aahgnrmxkxt7fc@DEN-DL-M70577>
References: <20240906-sparx5-lan969x-serdes-driver-v1-0-8d630614c58a@microchip.com>
 <20240906-sparx5-lan969x-serdes-driver-v1-8-8d630614c58a@microchip.com>
 <c0aa5342-a2af-4ac4-bc33-b6dbfff77f63@kernel.org>
 <20240909082241.hvw3a7yig3pujrsk@DEN-DL-M70577>
 <ee4d4375-873b-4b9c-b694-f0191e5c2c54@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ee4d4375-873b-4b9c-b694-f0191e5c2c54@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_024409_433562_5F425B8C 
X-CRM114-Status: GOOD (  16.85  )
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

> >>>    compatible:
> >>> -    const: microchip,sparx5-serdes
> >>> +    enum:
> >>> +      - microchip,sparx5-serdes
> >>> +      - microchip,lan969x-serdes
> >>
> >> It seems there is no lan969x SoC/chip. Are you sure you are using
> >> correct naming, matching what kernel is using? Maybe you just sent
> >> whatever you had in downstream (hint: that's never a good idea).
> >
> > You are right. There is no upstream support for lan969x SoC yet. The
> > upstreaming of the lan969x SoC has just begun, and this series is part
> > of that upstreaming effort. The lan969x switch driver (not submitted
> > yet) will depend on this SERDES driver, however, their functionality is
> > really independent of each other. That is why I am also upstreaming the
> > SERDES- and switch driver series independent of each other.
> 
> That's not exactly my point. Becayse lan969x appears. I claim you use
> incorrect name, so are you sure you do not use wildcards?
> Best regards,
> Krzysztof

Ahh.

So the problem is the 'x' in lan969x, right? I think we have a habbit of
documenting compatible strings like this in bindings. Anyway, what I can
do is document the different part numbers in the bindings: lan9691,
lan9692, lan9693, lan9694, lan9696 and lan9698.

/Daniel


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
