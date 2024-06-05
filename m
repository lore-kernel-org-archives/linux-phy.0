Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EC5EC25B76
	for <linux-phy@archiver.kernel.org>; Wed,  5 Jun 2024 16:13:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0BmqR1EMYr3WRIU0LF+V/DfZdnGT5XK38OlC6P6h1vU=; b=0p7duLHrAIzi6O
	ODpAVAzVYz12VuFbsJ9GBS5wLD1IK1P1U+aQsFmb0h/p6yRl/9FNvQGeGysondhHxnSRaSavG4XFf
	Qj7qCcH1dxP6FI2lUkuAhqzevhLQgns4k/cOLUQAVv78JzlnCiASkUSZk/DbjwiuhApUK06WCReXR
	xd5dpWYdZYj5x5iQLI20Wts/tZbjCKVn+B0DuJQ+chW+VivEpgTwqGYLyUH91Ru6KE2ShczP3so9p
	M1vxhQ7ozo9Bgy8OqPtA/xW9iSrZisp+eGaRgwlGbNtcBzAjvobK+O0KxtNN+CLeqot0pWRT6SFlK
	6WHy8foCQNoejEK68+dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEtGn-00000006nhS-2zTk;
	Wed, 05 Jun 2024 16:13:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEtGj-00000006ngD-1RW3;
	Wed, 05 Jun 2024 16:13:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E8E62619C2;
	Wed,  5 Jun 2024 16:13:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 457C5C2BD11;
	Wed,  5 Jun 2024 16:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717604020;
	bh=xOMMuTmFafOBZoFgW+ylCUc2IiwmGERlE/npYTHqpj4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r2IRzr775nQzqud0EzuWd8pj1F3rd7fC2g0l9tQaXPIQYgezvxSvBJnBs5jCfeAWz
	 3PRXDWr14tTmU6D9hhQLz0GUTb6+PisQsOO8fIH3wIwkkSfh05S6l8M9OSBnq1G8rN
	 DoCsL1M1k419l4ep+liEHMSogMEyhhZmEMwV0KgD+hOmKFIXkAyGATWpyoBcR1huDZ
	 G5hppLh1nINaHnPL9dAsptnLF18CiGVK4houAzQpWAnZ6vn2D1TgYA+cVCwUFT1sGy
	 yEPXiWZzA2n99txWgecgAjgmJ52if8+prSkzpoc/wK+aKPpNyXrNDIKl7QMlAE4QPa
	 7RQ3YBn61mtaQ==
Date: Wed, 5 Jun 2024 10:13:37 -0600
From: Rob Herring <robh@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Josua Mayer <josua@solid-run.com>, Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konstantin Porotchkin <kostap@marvell.com>,
	Richard Cochran <richardcochran@gmail.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-phy@lists.infradead.org, netdev@vger.kernel.org
Subject: Re: [PATCH v6 4/7] dt-bindings: phy: armada-cp110-utmi: add optional
 swap-dx-lanes property
Message-ID: <20240605161337.GA3256958-robh@kernel.org>
References: <20240602-cn9130-som-v6-0-89393e86d4c7@solid-run.com>
 <20240602-cn9130-som-v6-4-89393e86d4c7@solid-run.com>
 <20240604-tucking-aggregate-0496e393f21c@spud>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240604-tucking-aggregate-0496e393f21c@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_091345_507108_8DB68E11 
X-CRM114-Status: GOOD (  19.50  )
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

On Tue, Jun 04, 2024 at 06:41:03PM +0100, Conor Dooley wrote:
> On Sun, Jun 02, 2024 at 05:49:39PM +0200, Josua Mayer wrote:
> > Armada CP110 UTMI supports swapping D+ and D- signals.
> > usb251xb.yaml already describes a suitable device-tree property for the
> > same purpose but as child usb controller node.
> > 
> > Add optional swap-dx-lanes device-tree property to armada cp110 utmi phy
> > with same semantics as usb251xb:
> > The property lists all ports that swap D+ and D-, unlisted ports are
> > considered correct.
> > 
> > Signed-off-by: Josua Mayer <josua@solid-run.com>
> > ---
> >  .../devicetree/bindings/phy/marvell,armada-cp110-utmi-phy.yaml      | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/marvell,armada-cp110-utmi-phy.yaml b/Documentation/devicetree/bindings/phy/marvell,armada-cp110-utmi-phy.yaml
> > index 9ce7b4c6d208..2ef02aac042a 100644
> > --- a/Documentation/devicetree/bindings/phy/marvell,armada-cp110-utmi-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/marvell,armada-cp110-utmi-phy.yaml
> > @@ -41,6 +41,12 @@ properties:
> >        Phandle to the system controller node
> >      $ref: /schemas/types.yaml#/definitions/phandle
> >  
> > +  swap-dx-lanes:
> 
> Missing a vendor prefix.
> Otherwise, to me naive eye, seems okay.

Already have the same property elsewhere, so it's fine.

> 
> > +    $ref: /schemas/types.yaml#/definitions/uint32-array
> > +    description: |
> 
> This | probably isn't needed though, there's not any format here that
> seems worth preserving.
> 
> Thanks,
> Conor.
> 
> > +      Specifies the ports which will swap the differential-pair (D+/D-),
> > +      default is not-swapped.
> > +
> >  # Required child nodes:
> >  
> >  patternProperties:
> > 
> > -- 
> > 2.35.3
> > 



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
