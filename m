Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8E6EC02192
	for <linux-phy@archiver.kernel.org>; Mon,  3 Feb 2025 22:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XqMRQORo7vKUJqbQi/eMgrDeoVFPbNTtTiIbK2vegCY=; b=iBm2DN3oEmJRq6
	dyaPJ0bhQmyVlewO2lStlwXG5+Cx5M8efcG6h2QpgOzlRUXxBS6aQNI9kbdRn/4EN6NbaRpEss1Ep
	FAMeT6e99AJXKcLzRWOXC43uBdxuGNqM9B+rjfL+vGqqmbQvZTwaPZX//uJFjyALIs/mB6YGOrypj
	70PGHogTFVp5IFwC8eMycDyXgET2VL7GNlvQXAZDU22LxN2mEYeijdqtG+lPusYUkgYeS5YtNJYJ/
	ak7VAqlVod7SqOLFk4aVOnGWz/apD8FAHfPjblOtJfLrKkS8S4knXuURI+Dtc4uRLxRlglXtI/hgH
	oxtjZFQRXQHLuqzsnjUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tf4pm-0000000GmEM-1D6e;
	Mon, 03 Feb 2025 22:22:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tf4np-0000000Gm0o-01yc;
	Mon, 03 Feb 2025 22:20:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=4owTwwRTiUJNe/UwXGTFceMfkYxJWBm3DVKrkEKXJHw=; b=Gz47kXrfxXNzMiT/jCkm/CZdGa
	kXzKEYJ1GE9OASJwHNyCjmtSl2a2QaCYfU5Px8nEBHQlJBUwjdZfKpvWGLla3LaFFCyOZ+Sx+/Vl9
	+K0HeCZqq7nSMYQ4iypUSA7wolx899o9HiWwHCxsF6tMfC3nbxkKYZd7FFd1JJYFNktXyNdio5SLI
	9hS9hAKOGt7ExshOEbhN+zIjgGAY3lIIhaW0bwNsnUTNEbX3waxNrTrN2FIQB9BUHzXyk4oTRV7hi
	XTteVKx87Yn9BOxvCeCFBEPc8btcj1oqJ6PE/VK47UNsDZU5rBvoUsJJIBn9fPuj6n4MZKOF12kos
	b9SrBtZw==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tf4nl-0000000GCXg-3MCa;
	Mon, 03 Feb 2025 22:20:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 53CE65C111B;
	Mon,  3 Feb 2025 22:19:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 976C1C4CED2;
	Mon,  3 Feb 2025 22:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738621219;
	bh=YHnhH8TGTVwn5M7n1rEBKbWfWUvHH1qfDMRyCsjzgVE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QnWSwFKLxV/bQd8Pu43Oh88t0R1YK305mRti99NklxLCDM0Lm6X4CobKomvMce48o
	 CJATxa7dNjXBRUU1KZFnCV8ixqVdgVzC87ccgl7Sq1Bi0+Q/H1rHXLx2RjeP4Wj4qu
	 OWalL9BWbFK1TyGzAK1hwJI6yXhG7v/m/Hworcp/EhC+IH+Hvt9a3ELy9rzH7cn9D1
	 vSJbfqK9y80/BMpPk/HjMOsbrg2dc5Ep+DtlZ33gqlvI06JOy3id8tMXJgKbzZhVsz
	 t8i3JCc/m7Me1D4zc4VSNpUOLsMiYzgwesxFK482/eyNHr4d5FORsSPtW+OJ2ety47
	 nTXAg33bTK6FA==
Date: Mon, 3 Feb 2025 16:20:18 -0600
From: Rob Herring <robh@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rui Miguel Silva <rmfrfs@gmail.com>,
	Martin Kepplinger <martink@posteo.de>,
	Purism Kernel Team <kernel@puri.sm>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, "Guoniu.zhou" <guoniu.zhou@nxp.com>,
	Robby Cai <robby.cai@nxp.com>,
	Robert Chiras <robert.chiras@nxp.com>,
	Mirela Rabulea <mirela.rabulea@nxp.com>,
	Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
Subject: Re: [PATCH 08/14] media: dt-bindings: nxp,imx8mq-mipi-csi2: Add
 i.MX8QM compatible strings
Message-ID: <20250203222018.GA226659-robh@kernel.org>
References: <20250131-8qxp_camera-v1-0-319402ab606a@nxp.com>
 <20250131-8qxp_camera-v1-8-319402ab606a@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250131-8qxp_camera-v1-8-319402ab606a@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_222022_225767_C9E73B59 
X-CRM114-Status: GOOD (  14.71  )
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

On Fri, Jan 31, 2025 at 04:33:53PM -0500, Frank Li wrote:
> From: Robert Chiras <robert.chiras@nxp.com>
> 
> Add compatible strings for i.MX8QM platform. Remove fsl,mipi-phy-gpr from
> required properties and add 'phys', since i.MX8QM use standard phy
> interface.
> 
> Keep the same restriction for other compatible strings.
> 
> Signed-off-by: Robert Chiras <robert.chiras@nxp.com>
> Reviewed-by: Robby Cai <robby.cai@nxp.com>
> Reviewed-by: Mirela Rabulea <mirela.rabulea@nxp.com>
> Reviewed-by: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  .../bindings/media/nxp,imx8mq-mipi-csi2.yaml       | 30 ++++++++++++++++++++--
>  1 file changed, 28 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-mipi-csi2.yaml
> index 2a14e3b0e0040..91c4d8fbb1f8c 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-mipi-csi2.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-mipi-csi2.yaml
> @@ -18,6 +18,8 @@ properties:
>    compatible:
>      enum:
>        - fsl,imx8mq-mipi-csi2
> +      - fsl,imx8qm-mipi-csi2
> +      - fsl,imx8ulp-mipi-csi2
>  
>    reg:
>      maxItems: 1
> @@ -39,13 +41,18 @@ properties:
>        - const: ui
>  
>    power-domains:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
>  
>    resets:
>      items:
>        - description: CORE_RESET reset register bit definition
>        - description: PHY_REF_RESET reset register bit definition
>        - description: ESC_RESET reset register bit definition
> +    minItems: 1
> +
> +  phys:
> +    maxItems: 1
>  
>    fsl,mipi-phy-gpr:
>      description: |
> @@ -113,9 +120,28 @@ required:
>    - clock-names
>    - power-domains
>    - resets
> -  - fsl,mipi-phy-gpr
>    - ports
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,imx8qm-mipi-csi2
> +              - fsl,imx8ulp-mipi-csi2
> +    then:
> +      required:
> +        - phys
> +    else:
> +      properties:
> +        reg:
> +          maxItems: 1

The max is already 1.

> +        resets:
> +          minItems: 3

1, 2, or 3 resets is valid for imx8qm and imx8ulp?

2 power-domains are also now valid?

> +      required:
> +        - fsl,mipi-phy-gpr
> +
>  additionalProperties: false
>  
>  examples:
> 
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
