Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C68ECCF9F0
	for <linux-phy@archiver.kernel.org>; Thu, 30 Oct 2025 18:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wevOQOs1NRemWpr9wuVgQXDrnREe4YvTxEuYL6KAta4=; b=aO3cFc3FaGFKT0
	Zv40antqAhTpA1QRTMHiDKpcEoINgFbAE17ZKyLFO1CfUUww+wQYQ18UItC7p7KTnAhBvPr9aQnN+
	aypIxzjpvUnSxh/2BCEsGk5Lf5zbNbARwV5T/0hY0G/41+WGU5gvw+f9hqitcnoD6af+3hKaeMHoP
	z4sudjCfEXddoYvvUl57qDEYsh/G2nlXzPsxurV/RyB2IvQd0AoosO0K1f5+I3+4Jbs7xOZ88xirn
	oVbJuPX2OE6UYZR8dHbTPI5k7K2iRDA9qcxu632glV7xxah+dpO7RBEBeDqDbr1b0ECSfRW7Wby6K
	N7mWv3xpRBo0zI/IGp1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEXk8-00000004dAx-3x3y;
	Thu, 30 Oct 2025 18:51:28 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEXk5-00000004dAO-1bXJ;
	Thu, 30 Oct 2025 18:51:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8881C61135;
	Thu, 30 Oct 2025 18:51:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9089C4CEF1;
	Thu, 30 Oct 2025 18:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761850284;
	bh=FBCCR/Suue4f/BvtdNxzoMBDqCveM6h0dVOlYqgroZM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ppahJgI3Xpdl1cneURrtsR7KIjC+5T47cH07+HkmD4gKk5zbtBbcJ7WlO5RtFoDGB
	 Agf3/JtDIpzT0bS9yvmQmQxyN6MEBMVjerBSWgqL7LqLflyyi0dPVIn1J4kE4PG/nK
	 q6EAr0bkeofrSkl4D7UdD/TRn1xSWZFL1xIptv+Xv53fOu5x+4LIQ5w9sg9O4QfYGJ
	 NrWp2HIU+xkwZmrtcL3sAtuDnpFkugmTDZMWKykXc5JTuelFgbnUz2heyaxVB6hgat
	 6t/Bnpm073zqJY11MUlgRPwAkRGaNeLHmm5w9AABv+WHTMAeO+v3+QTSzn9kYAxZFs
	 3RzUr4Zp4XgRA==
Date: Thu, 30 Oct 2025 13:51:22 -0500
From: Rob Herring <robh@kernel.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Conor Dooley <conor@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/4] dt-bindings: phy: Add documentation for Airoha
 AN7581 USB PHY
Message-ID: <20251030185122.GA236742-robh@kernel.org>
References: <20251029173713.7670-1-ansuelsmth@gmail.com>
 <20251029173713.7670-3-ansuelsmth@gmail.com>
 <20251029-mutual-scotch-7ca52e17da69@spud>
 <69025bc9.5d0a0220.1f0440.deb9@mx.google.com>
 <20251029-henna-easily-227513366e90@spud>
 <690266d4.050a0220.3a144c.eef7@mx.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <690266d4.050a0220.3a144c.eef7@mx.google.com>
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

On Wed, Oct 29, 2025 at 08:11:10PM +0100, Christian Marangi wrote:
> On Wed, Oct 29, 2025 at 06:35:51PM +0000, Conor Dooley wrote:
> > On Wed, Oct 29, 2025 at 07:24:04PM +0100, Christian Marangi wrote:
> > > On Wed, Oct 29, 2025 at 06:07:22PM +0000, Conor Dooley wrote:
> > > > On Wed, Oct 29, 2025 at 06:37:10PM +0100, Christian Marangi wrote:
> > > > > Add documentation for Airoha AN7581 USB PHY that describe the USB PHY
> > > > > for the USB controller.
> > > > > 
> > > > > Airoha AN7581 SoC support a maximum of 2 USB port. The USB 2.0 mode is
> > > > > always supported. The USB 3.0 mode is optional and depends on the Serdes
> > > > > mode currently configured on the system for the relevant USB port.
> > > > > 
> > > > > The first USB port on the SoC can be both used for USB 3.0 operation or
> > > > > Ethernet (HSGMII).
> > > > > The second USB port on the SoC can be both used for USB 3.0 operation or
> > > > > for an additional PCIe line.
> > > > > 
> > > > > Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> > > > > ---


> > > > > +  '#phy-cells':
> > > > > +    description: Describe if the referred PHY is the USB 2.0 PHY or USB 3.0 PHY.
> > > > > +    const: 1
> > > > 
> > > > Which is which here?
> > > >
> > > 
> > > Mhh I think I didn't understand here. #phy-cells describe the
> > > parameters to be used for phys property in a different node.
> > > 
> > > The current usage would be
> > > 
> > > <&usb0_phy PHY_TYPE_USB2> for USB 2.0
> > > or <&usb0_phy PHY_TYPE_USB3> for USB 3.0
> > > 
> > > This node expose 2 PHY that can be referenced by the single parameters.
> > 
> > Ah, I didn't know that the 1 cell variant here was type not index.
> > 
> 
> Yes in the driver I'm maching for type not index as it's very confusing.
> Any hint on better describe it on the schema? Maybe I can reword with
> 
> "Describe if the referred PHY is PHY_TYPE_USB2 or PHY_TYPE_USB3"

"The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3, as defined 
in dt-bindings/phy/phy.h."

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
