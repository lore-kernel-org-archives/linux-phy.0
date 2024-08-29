Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF847C8303E
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 18:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GeBq9jo22oIkE60aTP9IcteYmfcNR0S2nk0ttDJGrQI=; b=VqAjt5m3MXl/lE
	mcs8Nj8bcfZdaB8Nd4kvw+PiaOaIgJjmT9dSTVsg2JsXywj0JVZc9CSzRfY+gTmCGYiof9Jg1kxtJ
	sYG/lOjamBFML/Vmc6VaSF/jZ93FRyS8Yo9vVQI0QLFFB4VNBdOQfFM/Y7chotaQIj2c7xk8jCR/r
	OZaOixLba69LYfCUNCBeyHoAsK/DyhqDpoaDAFMDXrLPvX26E4Kn9JArEoOEaH89xV5LpXGaGkvdy
	vcbI3YMeoJx9elFjkc50tq39frySTlIO4LrPDvMtoBy1RqZAD+Q3bI9eIVohLGJ+xV+G8nRReYpel
	WqoAVh8jD/6XCBR19Nvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjjeO-000000039Hb-2clm;
	Thu, 29 Aug 2024 18:13:40 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjjeL-000000039Gw-3CNN
	for linux-phy@lists.infradead.org;
	Thu, 29 Aug 2024 18:13:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C3301CE1C2E;
	Thu, 29 Aug 2024 18:13:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BE5AC4CEC1;
	Thu, 29 Aug 2024 18:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724955215;
	bh=6ZMa9h2VTobODNOsYJeJxc9Xk8h0cW0u66Ff2U8Cr/8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pFLwFXLphGK1H8TeghkFhFBpA2dXKWQ6N2/sudFMJBc48I97MASMG12Y14bu5aKDn
	 BD0jmCCLmRCBkFkDEeq39kYWseQJ3DZSBSOKxOPp3oDF5Vaq3I7ZDTjvbtw5TW4MeL
	 DUFSQfOmXxpbod9cKyNjitZSxV0MuE5RK2MDgQhvVIuImi/Ks+oHioJh9M7pK+lfZQ
	 bG+OEzzIB8ZsAKpIMSvM42or8vd69IVjCXQ7siVmHvwrhbRTYGXh/6u7k8gV+apz5m
	 nYAmgA3o7brj/Jca5+WlIFOxnOZYlYhk6oSnMjzI1EO2bl+X72JtZMjpNEe8m+zWAN
	 /GgDV022LrQLg==
Date: Thu, 29 Aug 2024 23:43:31 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Ilya Orazov <ilordash02@gmail.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>, linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v4 1/1] dt-bindings: phy: ti,tcan104x-can: Document
 Microchip ATA6561
Message-ID: <ZtC6S6I/QKihcsyu@vaman>
References: <20240822105238.213019-1-ilordash02@gmail.com>
 <20240822105238.213019-2-ilordash02@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240822105238.213019-2-ilordash02@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_111337_998914_9838A072 
X-CRM114-Status: GOOD (  12.32  )
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

On 22-08-24, 13:52, Ilya Orazov wrote:
> Microchip ATA6561 is High-Speed CAN Transceiver with Standby Mode.
> It is pin-compatible with TI TCAN1042 and has a compatible programming
> model, therefore use ti,tcan1042 as fallback compatible.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Ilya Orazov <ilordash02@gmail.com>
> ---
>  .../devicetree/bindings/phy/ti,tcan104x-can.yaml    | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> index 79dad3e89aa6..4a8c3829d85d 100644
> --- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> @@ -14,10 +14,15 @@ properties:
>      pattern: "^can-phy"
>  
>    compatible:
> -    enum:
> -      - nxp,tjr1443
> -      - ti,tcan1042
> -      - ti,tcan1043
> +    oneOf:
> +      - items:
> +          - enum:
> +              - microchip,ata6561
> +          - const: ti,tcan1042
> +      - enum:
> +          - ti,tcan1042
> +          - ti,tcan1043
> +          - nxp,tjr1443

No driver/dt for new compatibles?

>  
>    '#phy-cells':
>      const: 0
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
