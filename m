Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 379F8C3DA63
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jul 2024 02:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GvTmP66bSwPcRsu1bsi7lyI+oLcWZbheODRj5Z/w7xQ=; b=bKmxoRayTy09+/
	rVsOtu3IILbKjP/rxZ2K4zrS/iUZa4AADBDeKUr/78O8WZqJRBx14HSjGYJpt0WQhWSb+75ibcMMJ
	lUdHNvKu6Tn8Y6njbMpW9uU7ijySWKMDW4ZEt+yyShY4ktu9acQfMK9t5sBtZrHEANdPyl7QyTuar
	pjYIuLnB5ukvQ9tAxO3ciC2FaKs16h5LEvwneiculB84MUmGXIuDSJUwTN+iY0uCxWiBxOz3vwb5N
	ZRMODHxeDuDmLQc5NaX/dYVOAvu8D1kIc5OiLWG1ivWbUolmXvhdg8T0EYv2QZtlDZbZALmJKfMyf
	jjrq27bqYLgWZn5Et40g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sW5co-0000000BAjU-3OkX;
	Tue, 23 Jul 2024 02:51:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sW5cQ-0000000BAgj-0j1c;
	Tue, 23 Jul 2024 02:51:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 54B5560AB6;
	Tue, 23 Jul 2024 02:51:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD138C116B1;
	Tue, 23 Jul 2024 02:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721703073;
	bh=8f4JRcrwXHy++9/5/z8Qgm+dkVwDQLC/tLAYNCJRVqI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I4bcjXKlbq3vK4A9Yxj2HSavSoovc0HlmseEJt4vDSZcNzer0SiJ/s+E9VTqaUbrU
	 LaLyhBgjeNWPjj3LUSmxQik0aF/cd9dq5919wLw4/zkF8Eu9Ysu0/bOv59SmU6QiVH
	 453v6jicu2ak8/Bs74njb+yZEFa9g/mLr7Gd6bdBVjiViXztkcgwPI49ZQA96gYLOg
	 gdtKUzDyjLRSZy8dMXbRB91A8T0VqgsU2jUO512Ze/v8TBsW4rIXXyK79mvQqYmwyx
	 JdTiOUdOECE+H9EelMvQYBUQMkjJ1f76XM9wzJDhBR18sfLqrgnzERxBV4jkYuk38/
	 3TSKVzFGpi6qA==
Date: Mon, 22 Jul 2024 20:51:10 -0600
From: Rob Herring <robh@kernel.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com,
	gregkh@linuxfoundation.org, peter.chen@kernel.org,
	herve.codina@bootlin.com, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org,
	jun.li@nxp.com
Subject: Re: [PATCH 3/6] dt-bindings: phy: mxs-usb-phy: add nxp,sim property
Message-ID: <20240723025110.GA199927-robh@kernel.org>
References: <20240718102637.3964232-1-xu.yang_2@nxp.com>
 <20240718102637.3964232-3-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240718102637.3964232-3-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_195114_302500_E47C0DD5 
X-CRM114-Status: GOOD (  12.06  )
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

On Thu, Jul 18, 2024 at 06:26:34PM +0800, Xu Yang wrote:
> i.MX7ULP need properly set System Integration Module(SIM) module to make
> usb wakeup work well. This will add a "nxp,sim" property.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> ---
>  .../devicetree/bindings/phy/fsl,mxs-usbphy.yaml    | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> index f4b1ca2fb562..2141f271f8f1 100644
> --- a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> @@ -87,6 +87,12 @@ properties:
>      maximum: 119
>      default: 100
>  
> +  nxp,sim:
> +    description:
> +      The system integration module (SIM) provides system control and chip
> +      configuration registers.
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +
>  required:
>    - compatible
>    - reg
> @@ -110,6 +116,14 @@ allOf:
>        required:
>          - fsl,anatop
>  
> +  - if:
> +      properties:
> +        compatible:
> +          const: fsl,imx7ulp-usbphy
> +    then:
> +      required:
> +        - nxp,sim

       else:
         properties:
           nxp,sim: false


> +
>  additionalProperties: false
>  
>  examples:
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
