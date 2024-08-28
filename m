Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A05E0C5474A
	for <linux-phy@archiver.kernel.org>; Wed, 28 Aug 2024 02:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7sFeL8Q0Nf2SJXy2DPjzbMuVCRqaR3ygspQGLoRViJs=; b=pQBRFttgDy9PCI
	umV/ueaqz+74fJFgb+wTUHJnqMMsAxh6Hp1LvGRMzHswp5K8viou4l7MygCJz9R6vGfGM/SbafzqX
	HMxhaUzxIlYImDxdStyNE2OUuo2OWTUKsfd4r/LoM5XxWBSNNori6wDkKqA/Cqy6vV8tj1KK28csf
	zW6J3yXnwGazZ3hBw9rb91msZUdzqF47iaZm3LDDlT9/7wZuDsCHXvptsxJ91Eku0dSoOO9HCtrzo
	34mA895tWVmu6jG6LSIiS8MNv8M15LceVdTLV5M3FNUrL8fyp6Ze6pvg+N3Cl68TGwMAstKxm+gMC
	buu/GdzmNo600ozTr72g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj8gh-0000000DWIu-3XHZ;
	Wed, 28 Aug 2024 02:45:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj7jn-0000000DOLh-17lP;
	Wed, 28 Aug 2024 01:44:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=IC04N3pSECFSR9IAB60w2wb7p2WDMSJzd/BCucDtm7U=; b=qEmMgAYpZpr4Z6ZxzZjEuRkLst
	JcYPDyBdVmIun53FEfmdR4wteltJV+4gR+ByUW1kMB2tJpAdUXYHeAdyQBAg4/UBAgCPZA4hMa/Qi
	QEmN7Pv5F3juuC6WHTHuGnILY03pqwvAz69Tf7pxGseBMXoexH76B2fTmvfZAcz6hYDgzBgNZPr6H
	CMF3PjMzovnxFF/iRMJhvFBJajxAP0lO9Amp/jOKUOOqI2ckrQuDekAOi+R+IwZPRVLXqj4s/BhEm
	TfS7R2JGLKqPzCXwLphHyoKK64Xoy7Nxc1j7BNUN+4mhK8I4pDKd9WzPcxIRFoa3uDSrPbWemOYPU
	bstJ2aHA==;
Received: from mail-m16.yeah.net ([220.197.32.18])
	by desiato.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj7ji-0000000AzRy-1xxx;
	Wed, 28 Aug 2024 01:44:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=IC04N3pSECFSR9IAB60w2wb7p2WDMSJzd/BCucDtm7U=;
	b=bVn8bss2XN+FPxol9grcpOrqjHbFRqZSgn66a4tOOZwOX2ph2r+4Q8/YOaA5wj
	hN+8VaE82coFlVG5SuhA1O20KkqviwA1ce7f3OTf/rYR0SRUAUsmDeqnBPTuhgKm
	mtS/gsMI7sGlqGGDH4zUoA6BVm5roizpDSB82ICOzmRdE=
Received: from dragon (unknown [114.216.210.89])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgD3d1jhgM5mwYMNAA--.24374S3;
	Wed, 28 Aug 2024 09:44:03 +0800 (CST)
Date: Wed, 28 Aug 2024 09:44:00 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	gregkh@linuxfoundation.org, peter.chen@kernel.org,
	herve.codina@bootlin.com, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org,
	jun.li@nxp.com
Subject: Re: [PATCH v2 6/6] ARM: dts: imx7ulp: add "nxp,sim" property for
 usbphy1
Message-ID: <Zs6A4OEgaC8a3gcw@dragon>
References: <20240726113207.3393247-1-xu.yang_2@nxp.com>
 <20240726113207.3393247-6-xu.yang_2@nxp.com>
 <20240826065612.ol4fjib4g2jrvoy7@hippo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240826065612.ol4fjib4g2jrvoy7@hippo>
X-CM-TRANSID: Mc8vCgD3d1jhgM5mwYMNAA--.24374S3
X-Coremail-Antispam: 1Uf129KBjvdXoWrurWkGF4rZF1xWryDAF4xZwb_yoWDtrg_Wr
	W7Cw1jka1rKrs5uFyDGr1kX343KwsrGrZ3X345Wr1kJF1ava18GFs7ta93XFy5Ca42gFWD
	ZFZ3Za4jqw1SkjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8t3ktUUUUU==
X-Originating-IP: [114.216.210.89]
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiER9JZWbOG9TjXwAAs5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_024439_907426_6CA5BAA8 
X-CRM114-Status: GOOD (  15.83  )
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

On Mon, Aug 26, 2024 at 02:56:12PM +0800, Xu Yang wrote:
> Hi Shawn,
> 
> On Fri, Jul 26, 2024 at 07:32:07PM +0800, Xu Yang wrote:
> > i.MX7ULP need properly set System Integration Module(SIM) module to make
> > usb wakeup work well. This will add a "nxp,sim" property for usbphy1.
> > 
> > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> > 
> > ---
> > Changes in v2:
> >  - no changes
> > ---
> >  arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi b/arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi
> > index ac338320ac1d..b093f2a447ae 100644
> > --- a/arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi
> > +++ b/arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi
> > @@ -214,6 +214,7 @@ usbphy1: usb-phy@40350000 {
> >  			interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> >  			clocks = <&pcc2 IMX7ULP_CLK_USB_PHY>;
> >  			#phy-cells = <0>;
> > +			nxp,sim = <&sim>;
> >  		};
> >  
> >  		usdhc0: mmc@40370000 {
> 
> Could you please pick up patch 3 and 6?

Patch #3 should go via usb tree, and ping me on #6 after #3 is applied.

Shawn


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
