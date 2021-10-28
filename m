Return-Path: <SRS0=1k0B=PQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB021C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 08:56:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6B254610CF
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 08:56:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6B254610CF
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6eoTCACn0wBFULq58VuzBNwzCs1GRTMBUpAAVpevuc0=; b=SU5udYgHYmyv1C
	85uMOYYnHyYD2nyswwnrSwGSEm4x6hUSp4BLvTptl9/QNbCxIdlBxsvyTYHySDqaCXl8KHotxbDHk
	Iro3V0DJx89yW2aEypV3f38BVdV5wccdIYRYznDX3+SvIluC1KAqbmzw98VAHXbM550oAewzxlxuB
	EnRiJGF9rMlJrVKMukh3uJ4e95VI98QmVUGBW8f+NjUMl/WYmnkQypJi5YxlMOLbXzEvc4/06sTQ9
	SoTVHywVfK0oE0NQYHmZ/5q09v2hUubEnLxxCG1nPJkkCz9F1vVaEPB3Rgtp8+GHPU02hQxLJzujE
	ChpSLvFHS9e47uL9Hjow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mg1Cl-007KFi-Ti; Thu, 28 Oct 2021 08:56:11 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mg1Ci-007KEb-PJ
 for linux-phy@lists.infradead.org; Thu, 28 Oct 2021 08:56:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1635411368; x=1666947368;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/0UPLaDhy5BJJ6FFv8PzjnYUUj7i5fsxoZCJyakl5BQ=;
 b=KaEdy6fZDFPu8zGDdMsfNO6daLSyat2PmDk6eIQxMPFVm7hODq5L/j1n
 Sv4COFCBzV1JCr8Oui5cP2pIPpgEQ0szp2WrYEd2GwPwNiFQIPzo5C+h9
 y4AG5dDdMm8Y8oUD5C84YS8tQ5GpoCJady2E0d50kNU7c7wIbwmqloujU
 ZOnHOvlMtihzfEeK0acXYKC++u/0CZX+RNiz5SoQ8g49XhzDUmGpa+J+7
 JBjDwknzGuFQd1b6m+BJT6P1LXRlh0w5VEWbE29BfQNG3JNtF1FNiRO3R
 /Blk0R+bdmtUC37vY6ZuSW3jUtrzRqo/PeUjqwt80drcR/bzqeYFe++kg g==;
IronPort-SDR: yty8zBVIjgtCtz9mlh4VOpVaraBtaIwXR43SXtqVi4Z2aTxe5IeCShX5JgUlGtfCL0p8NG5/B4
 WAmFTQytlmG3zIIt4OstqR6SuscnqgoSpaCcIHapXJlBtPO1NpT43z04jXR0ryh7xjwjnHwh3I
 siW5OEQAOd5ixyb/RRcctAbvbJh3c7mA5jvkqng+8RznHnn5GQ9Tmlo5qO7btwqVy1FPN2bFG0
 q6QF3vDgAeC7e6TYgHYlxY7x9BpkOFl6ZSGEkpYb1YZa3ZeFMQlaxRFRhcZixtL6PJD6FXRsA2
 WxCAhz2RtNc8RCDok0IKhoqp
X-IronPort-AV: E=Sophos;i="5.87,189,1631602800"; d="scan'208";a="149848806"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 Oct 2021 01:56:05 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Thu, 28 Oct 2021 01:56:05 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Thu, 28 Oct 2021 01:56:04 -0700
Date: Thu, 28 Oct 2021 10:57:47 +0200
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Alexandre Belloni <alexandre.belloni@bootlin.com>, <kishon@ti.com>,
 <robh+dt@kernel.org>, <andrew@lunn.ch>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 3/3] phy: Add lan966x ethernet serdes PHY driver
Message-ID: <20211028085747.hhpbcfaevmt4wrl2@soft-dev3-1.localhost>
References: <20211015123920.176782-1-horatiu.vultur@microchip.com>
 <20211015123920.176782-4-horatiu.vultur@microchip.com>
 <YW8HIHTCVgB+URJ5@matsya>
 <20211020091733.fxph2pq3xa3byvry@soft-dev3-1.localhost>
 <YXA3VVUGEjUR4HDC@matsya> <YXA6lZBTeA6aNxVD@piout.net>
 <YXEEcJHuEdFLPyCU@matsya>
 <20211021091032.ffaoncg5jjdwdeyg@soft-dev3-1.localhost>
 <YXGoGtbFeKa+TVk2@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YXGoGtbFeKa+TVk2@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211028_015608_861755_9A2622BA 
X-CRM114-Status: GOOD (  16.83  )
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

The 10/21/2021 23:19, Vinod Koul wrote:
> 
> On 21-10-21, 11:10, Horatiu Vultur wrote:
> > The 10/21/2021 11:40, Vinod Koul wrote:
> > >
> > > On 20-10-21, 17:49, Alexandre Belloni wrote:
> > > > On 20/10/2021 21:05:49+0530, Vinod Koul wrote:
> > > > > > > > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > > > > > >
> > > > > > > Any reason why this is dual licensed, why not GPL only?
> > > > > >
> > > > > > No reason, I think I copy this from a different file.
> > > > >
> > > > > Please have a chat with your lawyers on the correct license this should
> > > > > have!
> > > > Dual GPL and MIT was Microsemi's policy, I'm not sure it carried over to
> > > > Microchip.
> > >
> > > That is why they need to talk to someone and decide what license
> > > applies :)
> >
> > I have changed it to be the same as the one on sparx5 because also
> > sparx5 is a Microchip product. On sparx5 we used:
> > 'SPDX-License-Identifier: GPL-2.0-or-later'
> 
> Has the code been copied/derived from somewhere/auto generated from
> scripts/tools or entirely written by you?

Sorry for late reply, but I was out of office without access to the
emails.

The register file 'lan966x_serdes_regs.h' was autogenerated from some
internal scripts. Which takes the info from here [1] and generates these
header files. The reason why we generate them is that is more error proof
that writting them manually. We are doing the same for sparx5
registers[2]

The other file 'lan966x_serdes.c' was entirely written by me.

[1] https://github.com/microchip-ung/lan9668_reginfo
[2] https://elixir.bootlin.com/linux/latest/source/drivers/phy/microchip/sparx5_serdes_regs.h

> 
> --
> ~Vinod

-- 
/Horatiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
