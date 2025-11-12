Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED1ADCCFA1A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Nov 2025 08:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VQcMCCUn3yohSQJX6HK801yRcJbHSbfDO7G7egBHTc=; b=3m5FOlUk5j1EpB
	6eQhLshiJuuWcbs/E0nktu/03xkWAJyNzxk6bTZuzWl2v/6eNf8QBxEPkqEz0euY1gvBwpMqelDcQ
	yzqqvMVbY2uF0vf8urP1pr1JUfyttfrN639Z7ljE/J+sqZIBDdCSNxq8ytoHMbL7GQnxrcVZhaewx
	fXIvcuMRc5B5oIdQ6hGikmFoMjXnaOrRF/arjFWtKOL+rKWc38iwRs/LNa71StNme0sDJ4TOom+YL
	qdRYbGJErsS/xFk6cCLcVn4n2jY5OH+Pxr25TY7s1C/6zRXdMh18CKJ16zBunBpnqoqdR8Q3u1dVP
	zPaTn7tbezFTjUju59Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ5qm-00000008JHr-339K;
	Wed, 12 Nov 2025 08:05:08 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ5qi-00000008JHS-2zLk
	for linux-phy@lists.infradead.org;
	Wed, 12 Nov 2025 08:05:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1762934705; x=1794470705;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=7fgngQWE5JqhzDwfazakRBCRmnVFrLFlRIkASUf9MlU=;
  b=XCCBJQlicHH/Xo0eeuUcdT2stoJ2arQZpOwtU33uH6NKOLfomNjZHx+1
   zLP8EQzUK3Z5fnJ9xJN1ZkcsRy3hTCwtrK46MAjNvcZlVaImyLIvDza6Y
   /q8KpEsArBbVU4KmkZQ9g72ngIWfLQ2/VFYBISiVZ3pwDlU57me961/9S
   Cx7uxgF2aO6klUn7qmTyLhfaa9h09z8jlM6oSpVSggTpNavaWSGUbGAql
   Uj+p+yfa/ftUr0TCjusdT9qhU0Wu7WKEm9+TPxBPSheSwwSS6wZU5rBqt
   +ItPAtxA1ZpRsU6bu3r6lxVUZ8opVXyGRxHyWig5gbmb9M4odtwFYsGbq
   g==;
X-CSE-ConnectionGUID: O+7tn57RR6yiVzrz+41PbQ==
X-CSE-MsgGUID: /JM4zLgETfazU5PP2MMZiA==
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; 
   d="scan'208";a="49497723"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 12 Nov 2025 01:05:02 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Wed, 12 Nov 2025 01:04:07 -0700
Received: from localhost (10.10.85.11) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Wed, 12 Nov 2025 01:04:07 -0700
Date: Wed, 12 Nov 2025 09:02:35 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Conor Dooley <conor@kernel.org>
CC: Krzysztof Kozlowski <krzk@kernel.org>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] dt-bindings: phy: lan966x: Add optional
 microchip,sx-tx/rx-inverted
Message-ID: <20251112080235.c5iinfnketsunefy@DEN-DL-M31836.microchip.com>
References: <20251110110536.2596490-1-horatiu.vultur@microchip.com>
 <20251110110536.2596490-3-horatiu.vultur@microchip.com>
 <20251110-unwound-award-a11d69b9da4f@spud>
 <20251111095831.lp4kvdfcahtwgrqc@DEN-DL-M31836.microchip.com>
 <58b0d712-48a4-4490-a63f-404716844557@kernel.org>
 <20251111-ploy-dispersal-164ae403df4d@spud>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251111-ploy-dispersal-164ae403df4d@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_000505_022206_E91E257A 
X-CRM114-Status: GOOD (  23.37  )
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

The 11/11/2025 17:39, Conor Dooley wrote:
> On Tue, Nov 11, 2025 at 11:06:02AM +0100, Krzysztof Kozlowski wrote:
> > On 11/11/2025 10:58, Horatiu Vultur wrote:
> > > The 11/10/2025 18:43, Conor Dooley wrote:
> > > 
> > > Hi Conor,
> > > 
> > >> On Mon, Nov 10, 2025 at 12:05:36PM +0100, Horatiu Vultur wrote:
> > >>> This allows to invert the N and P signals of the RX and TX Serdes
> > >>> signals. This option allows the board designer to trace their signals
> > >>> easier on the boards.
> > >>
> > >> Why can't this just be done in software, debugfs or something like that?
> > >> Maybe it's just your description is poor, but sounds like the intention
> > >> here is to just switch things around for debug purposes.
> > > 
> > > I don't think it should be done through debugfs. As this describes the
> > > board layout and I don't think someone will want to change it at
> > > runtime to see how things behave. So maybe the description is poor.
> > 
> > You said it is purely for hardware designer to trace signals, so sorry,
> > but that's not DTs purpose.
> 
> If it is not purely some sort of debug helper, then please explain
> better in your commit message.

Yes, I will do so because I don't see how this is a debug helper
functionality. I see it as changing the polarity of some pins and there
are few examples in the devicetree bindings where pins change the
polarity. Why I see it as changing the polarity is because the
N(negative) will become P(positive) and the P(positive) will become the
N(negative), so we just invert the signals.

> pw-bot: changes-requested



-- 
/Horatiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
