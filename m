Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C1A0C25B10
	for <linux-phy@archiver.kernel.org>; Mon, 13 May 2024 16:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Yqq9VNoFCk88LoGND8N+aMCYvREPX9zNPuFXgmAwoB4=; b=3VkT0TBGpfyXSaQTU//6JhXwne
	D5KjTJcKt79hOIP48EzYiUKXVAcTSRNkWiavDPy3PInmW/QZSajO5Nc1veAmCjquknPjyZ3ZkjAq1
	IYX0e/6ohPJTcspH643ojdKtVRc7WFfGm7tvnN1GH5Y4nY4StiSKMw0fIg/Xm7qBvpYQZ6nPYLDjg
	YKaCqPPex1/kzLFodYGmDQgvQXrR6JUAWwpVxDqjzfivuCYVsdRvKb1VhOw9udMHoJTvaIS4nY0CJ
	iqJraJVwx21IeTa1mUnG0UKXOq6lLMo9QKN0tSApsXJPm8onynFf/rJIIO44CBZ331ErVHGVGv5zh
	106jd6uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6Y7W-0000000DRR0-0WGa;
	Mon, 13 May 2024 16:01:46 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6Y7R-0000000DRNU-2MoA;
	Mon, 13 May 2024 16:01:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 71E43CE0F54;
	Mon, 13 May 2024 16:01:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3C99C32786;
	Mon, 13 May 2024 16:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715616098;
	bh=VhYVty2acqcCBHONMhwvO6FK9j6wZBYyuF0dbi8giHE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ffg7e+m5AIYyrukObG14BNxs6iZMIte+CF9XqtORl9+GcQRHlMyUiM/PgQiLOBqTo
	 NtIbLlBKyudR4ZUkA0qBEUs7xVbPdE2Z7rQOcndm+SBoWHt2TAnvXkcoaj0INd4xiw
	 VYl8NhPUWDcfc95/m2uPILl66Hyn6aDz6yJBoqEzo0F/SUJYZ4Gf75K32l/VRDMaHQ
	 eHxvu0o8/30zkXB55dgRdXv27xyqQ5cgZyv9flhveKWOa0+hjeb2lERC/ipOqXnTvT
	 i00yuKXLbU6clOF3YSyfoNzIibYIbIfilNS64jsgRrbQ21iDHR6sK4MBoe4uUBLh71
	 wHGf+Qmp2Ig7w==
Date: Mon, 13 May 2024 17:01:33 +0100
From: Conor Dooley <conor@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, frank.li@nxp.com,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, kernel@pengutronix.de,
	imx@lists.linux.dev
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: Add i.MX8Q HSIO SerDes PHY
 binding
Message-ID: <20240513-antonym-flanking-5a812dd49920@spud>
References: <1715563324-6391-1-git-send-email-hongxing.zhu@nxp.com>
 <1715563324-6391-2-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1715563324-6391-2-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_090141_982461_C2A20B31 
X-CRM114-Status: GOOD (  17.64  )
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
Content-Type: multipart/mixed; boundary="===============4359585841510886628=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4359585841510886628==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ww9JUqbrd7gfrxGO"
Content-Disposition: inline


--ww9JUqbrd7gfrxGO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 13, 2024 at 09:22:03AM +0800, Richard Zhu wrote:

> +  fsl,hsio-cfg:
> +    description:
> +      Specifies the use case of the HSIO module in the hardware design.
> +      Because the HSIO module can be configure into three different use
> +      cases.
> +      Refer to macro HSIO_CFG* of include/dt-bindings/phy/phy-imx8-pcie.h.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    maximum: 3

> +/*
> + * Regarding the design of i.MX8QM HSIO subsystem, HSIO module can be
> + * confiured as following three use cases.
> + *
> + * Define different configurations refer to the use cases, since it is
> + * mandatory required in the initialization.
> + *
> + * On i.MX8QXP, HSIO module only has PCIEB and one lane PHY.
> + * Define "IMX8Q_HSIO_CFG_PCIEB" for i.MX8QXP platforms.
> + *
> + * +----------------------------------------------------+----------+
> + * |                               | i.MX8QM            | i.MX8QXP |
> + * |-------------------------------|--------------------|----------|
> + * |                               | Lane0| Lane1| Lane2| Lane0    |
> + * |-------------------------------|------|------|------|----------|
> + * | IMX8Q_HSIO_CFG_PCIEAX2SATA    | PCIEA| PCIEA| SATA |          |
> + * |-------------------------------|------|------|------|----------|
> + * | IMX8Q_HSIO_CFG_PCIEAX2PCIEB   | PCIEA| PCIEA| PCIEB|          |
> + * |-------------------------------|------|------|------|----------|
> + * | IMX8Q_HSIO_CFG_PCIEAPCIEBSATA | PCIEA| PCIEB| SATA |          |
> + * |-------------------------------|------|------|------|----------|
> + * | IMX8Q_HSIO_CFG_PCIEB          | -    | -    | -    | PCIEB    |
> + * +----------------------------------------------------+----------+
> + */
> +#define IMX8Q_HSIO_CFG_PCIEAX2SATA	0x1
> +#define IMX8Q_HSIO_CFG_PCIEAX2PCIEB	0x2
> +#define IMX8Q_HSIO_CFG_PCIEAPCIEBSATA	(IMX8Q_HSIO_CFG_PCIEAX2SATA | IMX8Q_HSIO_CFG_PCIEAX2PCIEB)
> +#define IMX8Q_HSIO_CFG_PCIEB		IMX8Q_HSIO_CFG_PCIEAX2PCIEB

Rob may disagree with me, but I think this should be an enum of possible
strings with the table here moved into the property description. The QXP
only option should then be constrained per compatible.

> +
> +  fsl,refclk-pad-mode:
> +    description:
> +      Specifies the mode of the refclk pad used. INPUT(PHY refclock is
> +      provided externally via the refclk pad) or OUTPUT(PHY refclock is
> +      derived from SoC internal source and provided on the refclk pad).

> +      This property not exsit means unused(PHY refclock is derived from

Please run a spell checker on your patches.

> +      SoC internal source).

> +    $ref: /schemas/types.yaml#/definitions/string
> +    enum: [ input, output ]

enum: [input, output, unused]
default: unused

Cheers,
Conor.

--ww9JUqbrd7gfrxGO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZkI5XQAKCRB4tDGHoIJi
0jqoAQCYD2YK1tmMPaNlI9amDiaAHYglL45y74OiDECRW83y9QEAhhjmKXQ4AoBA
7osBM/TWVCR/ttAnM0RjJm8MSwDcjQA=
=aM53
-----END PGP SIGNATURE-----

--ww9JUqbrd7gfrxGO--


--===============4359585841510886628==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4359585841510886628==--

