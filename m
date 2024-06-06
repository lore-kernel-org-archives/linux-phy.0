Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF95CC27C54
	for <linux-phy@archiver.kernel.org>; Thu,  6 Jun 2024 20:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=65kzXkMjRpN6g/1zHMs+QAlJDha3wK7ZXsOjdFlxP68=; b=RXfrQhxgPRs6vd
	gGhxGB/EnFX1JUXHbpnuOgoM/Cnimr7pqgToXkI/IRiGqv8/DaJHUZxMUcacZI4blRDIS7cpK19dM
	PrB4rhDREvwMYFIk6NNKEvQwXwCeNoEgQdl/384ZClNaedPXaL1jyUsBdm+gZRvWSPpMndHj76cN4
	PvXzh1o6zhYzO0XIpB0DeDVNSb3TmGwSoC2SV/Y/lTxKhgcjJNw5bZSkiatsODPXMgMIfc4D6N+RA
	MJ7u+kSXic5vB2QznV24Q6Cdxc5LBJBLaApU8yABquJPHdkc+Gw8QMh6a+kTV/7ftLZBbExTNzJEu
	H5BwTszAWIrriNRKb2DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFJTV-0000000BD9n-1s0J;
	Thu, 06 Jun 2024 20:12:41 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFJTR-0000000BD8z-3h7H;
	Thu, 06 Jun 2024 20:12:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B9584CE1C38;
	Thu,  6 Jun 2024 20:12:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FBA9C2BD10;
	Thu,  6 Jun 2024 20:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717704755;
	bh=wHvxL/Gw5jJJxgJG8DBVyc7WxHfQ4axP9NbOc0wfTV0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=e4FvyCSOU4Kz4MHxKWKeSfGySXFTCuyG2wXI1Q8NIMuxj8QSiuQZQmUumKXBarmkN
	 g5mfG5zMPI5P0UeCKWX2C5a+ETNGYrkienm9lTWJmCZR6gLk8YOfBoIb/WbVojyCQm
	 NIfExJIDIhmqBn1Qbnoag+/mSGZ08YQi9M/g2nAb+Z2LB1KChxwzL6FSGcGlrHHKVN
	 SxAv32KCYYs1ykZmDdhXe7HZPQdiJrW/Kzyqqe6Aa1D7xVpuxXsdELbfUxLbeRWYV5
	 pwOOefAgsB68/m0GgTnrhpXv+GLjhHvVMcb4Kwhieox2WPSyljbLT9xnFr+cHetA9D
	 azflw1EXWcqfQ==
Date: Thu, 6 Jun 2024 21:12:22 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Josua Mayer <josua@solid-run.com>, Andrew Lunn <andrew@lunn.ch>, Gregory
 Clement <gregory.clement@bootlin.com>, Sebastian Hesselbarth
 <sebastian.hesselbarth@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Daniel Baluta
 <daniel.baluta@nxp.com>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@kernel.org>, Konstantin Porotchkin <kostap@marvell.com>,
 Richard Cochran <richardcochran@gmail.com>, Yazan Shhady
 <yazan.shhady@solid-run.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-phy@lists.infradead.org,
 netdev@vger.kernel.org
Subject: Re: [PATCH v6 3/7] dt-bindings: iio: adc: ti,ads1015: add
 compatible for tla2021
Message-ID: <20240606211222.3b0f7a01@jic23-huawei>
In-Reply-To: <20240604-suspend-schnapps-191d2c1ad53e@spud>
References: <20240602-cn9130-som-v6-0-89393e86d4c7@solid-run.com>
	<20240602-cn9130-som-v6-3-89393e86d4c7@solid-run.com>
	<20240604-suspend-schnapps-191d2c1ad53e@spud>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.42; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_131238_154046_671D2150 
X-CRM114-Status: GOOD (  20.43  )
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

On Tue, 4 Jun 2024 18:42:46 +0100
Conor Dooley <conor@kernel.org> wrote:

> On Sun, Jun 02, 2024 at 05:49:38PM +0200, Josua Mayer wrote:
> > TI tla2021 is a limited single-channel variant of tla2024 which is
> > similar enough to be easily supportable through the same driver.
> > 
> > Add compatible string for tla2021 so boards may describe it in
> > device-tree.
> > 
> > Signed-off-by: Josua Mayer <josua@solid-run.com>  
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

This binding has per channel descriptions. Perhaps for this device
it should be updated to include a restriction on number of
such sub nodes (probably via the reg value in them) ?

Mind you it's currently 8 and the ti,tla2024 only has 4.
So a possible job for another day, hopefully alongside the
driver support and the tla2022 which seems to be the 2 channel
version.

Applied.

Thanks,

Jonathan

> 
> Thanks,
> Conor.
> 
> > ---
> >  Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml b/Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml
> > index d605999ffe28..718f633c6e04 100644
> > --- a/Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml
> > +++ b/Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml
> > @@ -18,6 +18,7 @@ properties:
> >      enum:
> >        - ti,ads1015
> >        - ti,ads1115
> > +      - ti,tla2021
> >        - ti,tla2024
> >  
> >    reg:
> > 
> > -- 
> > 2.35.3
> >   


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
