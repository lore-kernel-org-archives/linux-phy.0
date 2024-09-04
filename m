Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04E27CD37AE
	for <linux-phy@archiver.kernel.org>; Wed,  4 Sep 2024 07:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WJhLncMd/VXiV8R0Z+JWq6S4LJWHLMpF88htvIsjcSI=; b=pyp/SfIRwyPm1K
	1JrmfhxQ9564H87lEp4aKutJWFo2i0fDD12ll4ICt+momboGaFK5Las7KMIrVQNeHFWA/hHhYfDGn
	9YnJKkbu7eNlBoK7Fv00x9bfv0eOCsmHXZ0Pf/aGGP49PyWJLXffqoeWFk0s8gLJ8B0+I6lM/lDl7
	ZDWeF24nhR/0aEIPRVqMEZA2fuuBTv4O17QNJBzmRjEcdhX2NO60UFl+l4/M7HMPR54tyz16lN1Pb
	L8YPIc/zJAZMok0Lts5F9u7B79waZ6HOaUxlRx3gQmgrU+IZ3t6J+FPahg+48MOJohFpmo5T3X81V
	tRD55Bj9WxTKt1lhLHiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slk2k-000000036lj-32G1;
	Wed, 04 Sep 2024 07:03:06 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slk0X-000000036J3-31Xt;
	Wed, 04 Sep 2024 07:00:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 538C0A40888;
	Wed,  4 Sep 2024 07:00:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A050BC4CEC2;
	Wed,  4 Sep 2024 07:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1725433248;
	bh=cdxAWOOEytd3O6tuHVxZGPBLNWtxs7CiEOEjMXojNXo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uUBbQ0qdPCN+dt6qpOFPrgV1SpYObZeETsHyOEvOurNnEEawgkeU9g2BdtlOzUgpp
	 QaAwBlgDYjhlQY3waZnpILn2LrpFnbvD5x9CfQnbPKITiRH9ZSKQSRRXai3HmLpVkA
	 glMfBn9G/diqIfKb1o5N4ecW4Xl/Wl41pBAs48wM=
Date: Wed, 4 Sep 2024 09:00:45 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 2/2] ARM: dts: imx7ulp: add "nxp,sim" property for
 usbphy1
Message-ID: <2024090418-helpful-nearness-39ab@gregkh>
References: <20240903075810.1196928-1-xu.yang_2@nxp.com>
 <20240903075810.1196928-2-xu.yang_2@nxp.com>
 <20240904063407.qjvevd4xhvohg4cd@hippo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240904063407.qjvevd4xhvohg4cd@hippo>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_000049_856997_8047C3EF 
X-CRM114-Status: GOOD (  18.38  )
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

On Wed, Sep 04, 2024 at 02:34:07PM +0800, Xu Yang wrote:
> Hi Shawn,
> 
> On Tue, Sep 03, 2024 at 03:58:10PM +0800, Xu Yang wrote:
> > i.MX7ULP need properly set System Integration Module(SIM) module to make
> > usb wakeup work well. This will add a "nxp,sim" property for usbphy1.
> > 
> > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> > 
> > ---
> > Changes in v2:
> >  - no changes
> > Changes in v3:
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
> 
> The dtschema patch #1 has been picked by Greg. You can pick up patch #2
> when you see this ping. 

Because our tools like to suck in entire patch series at once, you
should really just resend this so that Shawn doesn't accidentally take
patch 1/2 as well.

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
