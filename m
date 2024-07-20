Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0003C3DA49
	for <linux-phy@archiver.kernel.org>; Sat, 20 Jul 2024 19:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=65t18TGnq1C38c0I5nTPgXprdtPsAA7evDiihfwPmQI=; b=j6i9FhxUqhYHzu
	aYoypW4epJmPd4vTjaJEsnDUgdzTK6O+G/mypRfapifibVSkih5AGd6wMlZqiX3WORu0szbD6YBGI
	AgmRV0Cg9mgOBM9WOWeEUYd5GZ1WN80Ex7APMcQaCxDtwHI2wn86KTR2KjW7Pr6v9s9JhnuYVIoSG
	Zg4jqIjqk+rJlvBEGvKTD3HIXSOHPegqJBRGF27DLRurw8pTdqfZD1HTv/hHJh6eOVlLMLMaGDEnJ
	SLILIyYT8iRz/a74tYrDsbrovDSbwlDPrb0sO7skiXaGfDU53ZKq9aE82LydjG4sei8tIJB/uhqe4
	i3xlJrX/ABkbdSK6G5Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVFNd-00000005XLQ-1IXb;
	Sat, 20 Jul 2024 19:04:29 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVFNb-00000005XL1-23dV;
	Sat, 20 Jul 2024 19:04:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=BE54p3YGClfJDDCL6XCD3gOyj0Z+zt+Mt1nuvA2yYII=; b=H9PJJ8SEpssxh8qxaXzQQJQPNs
	h+NH7LMZpcLixiZA0Oln9ee29DOLNnxGREM1xDuV/Is/xFP8aUyKKSVuj8+wOuy7gdKJzFlrjHzWW
	TJ91QRDnGok+vOpWIxoaiQ1GS5ll0UDgI4u0GR4L0PcGF3sA7qrInqQGuYTtoolK9VHM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1sVFNU-002uUn-Jo; Sat, 20 Jul 2024 21:04:20 +0200
Date: Sat, 20 Jul 2024 21:04:20 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Josua Mayer <josua@solid-run.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH RFC v2 2/4] arm: dts: marvell: armada-38x: add
 description for usb phys
Message-ID: <2f91fb4e-df92-43f0-9c43-08862acbaba4@lunn.ch>
References: <20240716-a38x-utmi-phy-v2-0-dae3a9c6ca3e@solid-run.com>
 <20240716-a38x-utmi-phy-v2-2-dae3a9c6ca3e@solid-run.com>
 <44ce546d-c043-44ad-9e2c-eaf052e5531b@kernel.org>
 <2a7936ef-3a50-49df-b6a9-337b38d33c57@solid-run.com>
 <a88faea2-662c-4c19-96b5-bfa423cd826c@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a88faea2-662c-4c19-96b5-bfa423cd826c@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240720_120427_551157_41C9475F 
X-CRM114-Status: GOOD (  15.62  )
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

On Sat, Jul 20, 2024 at 08:23:09PM +0200, Krzysztof Kozlowski wrote:
> On 20/07/2024 15:19, Josua Mayer wrote:
> > Am 17.07.24 um 14:04 schrieb Krzysztof Kozlowski:
> >> On 16/07/2024 22:52, Josua Mayer wrote:
> >>> Armada 38x has 3x USB-2.0 utmi phys. They are almost identical to the 2x
> >>> utmi phys on armada 8k.
> >>>
> >>> Add descriptions for all 3 phy ports.
> >>>
> >>> Signed-off-by: Josua Mayer <josua@solid-run.com>
> >>> ---
> >>>  arch/arm/boot/dts/marvell/armada-38x.dtsi | 29 +++++++++++++++++++++++++++++
> >>>  1 file changed, 29 insertions(+)
> >>>
> >>> diff --git a/arch/arm/boot/dts/marvell/armada-38x.dtsi b/arch/arm/boot/dts/marvell/armada-38x.dtsi
> >>> index 446861b6b17b..701a1c0c19ad 100644
> >>> --- a/arch/arm/boot/dts/marvell/armada-38x.dtsi
> >>> +++ b/arch/arm/boot/dts/marvell/armada-38x.dtsi
> >>> @@ -392,6 +392,11 @@ comphy5: phy@5 {
> >>>  				};
> >>>  			};
> >>>  
> >>> +			syscon0: system-controller@18400 {
> >>> +				compatible = "syscon", "simple-mfd";
> >> That's not a valid pair. They cannot be alone.
> > Curious! I have seen it in armada-cp11x.dtsi.
> 
> Old code, I don't think anyone is working on armada and other Marvell
> chips, so by copying old code you will copy bugs or wrong designs. I can
> only suggest to work on recent platform where such oddities are fixed...

As you say, these are old platform. I'm not sure they are actually
buggy or wrong design, it is more that current day best practice is
different to the best practice back then. This was from before the
time linting tools and .yaml existed for DT.

The kirkwood-b3.dts i wrote in 2013 still works, my NAS box gets its
kernel updated about once a year, and a new disk about every 8
years. These systems can keep running for a long time. We have to
accept there will be legacy DT.

       Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
