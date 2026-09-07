Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E17D3C79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 08:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cyqgQe/6XsoYy350r3zdX6r+saSSvZPhP76AUMud9p8=; b=mjuAeI7ucIHxGb
	c9qRqpkNS7/RhIzXpiORFyAK5y7pPmT/1hD1uk+7Uwl1JOJConXlzHA5nWn0Nk6+JUrBbrHa1KNZx
	pr8wwk+IhrXf1CkONAKSEjFbcoVq+pE+3cz5l7jDMVOERUr3Y+tFFkf1p1/MqO7ACu9/G/di1ycc6
	CDphuxXJUPXGSb5hbxP919l5coLNXudiO85ImvO9gpoVbXYkbGOTcIqM+IxHEGjkcHYButxcaRUks
	VojUK+bVNABvrwL9XlYWorFifdILebbGaXhFlZrSUP8BVzx4hKOLWs0jbXUrW8ZbXEh5hrlDxzTCE
	knHCW9bJrDsN0XlY9hag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Uyr-00000006Iuh-2f3Q;
	Mon, 07 Sep 2026 08:45:33 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Uyp-00000006Iu0-3aaS;
	Mon, 07 Sep 2026 08:45:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D308E60052;
	Mon,  7 Sep 2026 08:45:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9101A1F00A3A;
	Mon,  7 Sep 2026 08:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788770730;
	bh=9CfMRY6C+btqHlTiWd8OIUdZwnsYHsyWiOk41SLPto4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=aWB61ri4ehlda/B8fFIjk1Hhvy6YOBKytcCVKJtzdcYF9KZU4wgPy0FohmFQhXbB9
	 AF7/YNHVNx9cJ2R4EutlG1zfQ0rg7OfCP1X4AxDpKDiGrjTtqB1COXbbZLG65dAc1D
	 tKFf2QisYr4UEpp0n7n+HFb3PVTepaBorQG/duRx25C+9hySII7MpiIHtwdlX9Fa03
	 d9Km+UGTfesTFLTRefDFUkAZaokSTVlRPrEsRFff1ry8RkfVgjnP3W2eiSnhxu4r7G
	 /dsZ/FZH9lkmC2+OQ/NDsGhz0BF+5Yvk4lI6E9v+NGG1N7Mqlz1d5NjexbZ+b20K0t
	 ZI7X635dRgYgg==
Date: Mon, 7 Sep 2026 10:45:26 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Frank Li <Frank.Li@nxp.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Aswath Govindraju <a-govindraju@ti.com>, 
	Christoph Stoidner <c.stoidner@phytec.de>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, sashiko-bot@kernel.org
Subject: Re: [PATCH V4 1/4] dt-bindings: phy: ti,tcan104x-can: Fix property
 constrains
Message-ID: <20260907-debonair-whispering-mule-8eee51@quoll>
References: <20260903080427.6103-1-wahrenst@gmx.net>
 <20260903080427.6103-2-wahrenst@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260903080427.6103-2-wahrenst@gmx.net>
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

On Thu, Sep 03, 2026 at 10:04:24AM +0200, Stefan Wahren wrote:
> Microchip ATA6561 is compatible to TI TCAN1042, so the same property
> constrains should apply. But they use a strict scalar enum match, which
> makes Microchip ATA6561 fallthrough. So add a "contains" to cover also all
> compatibles ones.
> 
> Reported-by: sashiko-bot@kernel.org
> Closes: https://lore.kernel.org/linux-devicetree/20260902133525.E22DE1F000E9@smtp.kernel.org/
> Fixes: 05ace63d0bcf ("dt-bindings: phy: ti,tcan104x-can: Document NXP TJA105X/1048")
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---
>  .../devicetree/bindings/phy/ti,tcan104x-can.yaml         | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
