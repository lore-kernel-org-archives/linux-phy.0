Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B12BC41513
	for <linux-phy@archiver.kernel.org>; Fri, 11 Aug 2023 19:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5E6iJwQ7SYxoV8RpNp9fOf6EzVyhjnESgEX+a0wOa00=; b=fqUbEXhyAutZCp
	dyRXhWogGxy8+CSpA8LKhoxUPkVdrznkRInqbtuGAR4Q+ckrSoCI4hlXQQ5u/29vz6r8SqSp+r93X
	/orxj69zUiM1bcrkfLsszG5Icg9MLQScR/twmCUEgeK8RMytcZ3EZVdjXZJwi/nLqxR3pk3VrTHm0
	LJDdgI+po7AtXlkcpeYN5Sw7LfmoFJh3yCmrQJXp2rorQhx8HuBRh+3phcS8RDlllcMugVU65sUlD
	Tz2R27BYJrn2Yy8HaDq+8V4COSZDRJue5acQRSUJV/QGjEOvhcEbyVACwYqcSfc0Wcw0ZE2JJQnzt
	Odb+6V1Yk1zA/EJlwfuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUXnd-00BSfj-2i;
	Fri, 11 Aug 2023 19:27:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUXna-00BSem-0e
	for linux-phy@lists.infradead.org;
	Fri, 11 Aug 2023 19:27:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A450E6794E;
	Fri, 11 Aug 2023 19:27:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A385C433C8;
	Fri, 11 Aug 2023 19:27:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691782069;
	bh=DobAbm1IHae1StSaGpB4TPZBLLSgCPyIvioYYdeqsmU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VpwXSIe7nulyV9vgDfTveSjjWq2qTS0ZtuZ/N1hA2TEiXx0bAPBWvKm6At3Iy4PVC
	 WnmhTBqNo6ittuaRwmcBriqG8eUTPMng2xDoYwYKO17NCphwFLHVjlU67HvoQufPJy
	 OxYYpCHj1bNQWT2eFZBu1Nq0pDY00uI+snsKZHhQWGKbcHxzPmUBSSClXjMj/82ubN
	 CUOjckWF+rNK16TEOXNeZxngfxM6UrA1ocymhZlo6qDLpeusQFekt1eKzfD6Kiegyh
	 n7+0oIhDqc6GxhASIj150LhCeu6ALNk6Du4F2EDLJl/ElPM6PcY0g+MN53v67+rQQE
	 6EqmuqNfAmu2Q==
Received: (nullmailer pid 3990588 invoked by uid 1000);
	Fri, 11 Aug 2023 19:27:47 -0000
Date: Fri, 11 Aug 2023 13:27:47 -0600
From: Rob Herring <robh@kernel.org>
To: Raphael Gallais-Pou <rgallaispou@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Patrice Chotard <patrice.chotard@foss.st.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, =?iso-8859-1?Q?Rapha=EBl?= Gallais-Pou <raphael.gallais.pou@gmail.com>
Subject: Re: [PATCH] dt-bindings: phy: st: convert phy-stih407-usb to DT
 schema
Message-ID: <20230811192747.GA3978164-robh@kernel.org>
References: <20230801205510.15713-1-rgallaispou@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230801205510.15713-1-rgallaispou@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_122750_641421_82315AA6 
X-CRM114-Status: GOOD (  22.14  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, Aug 01, 2023 at 10:55:10PM +0200, Raphael Gallais-Pou wrote:
> From: Rapha=EBl Gallais-Pou <raphael.gallais.pou@gmail.com>
> =

> Convert the st,stih407-usb2-phy binding to DT schema format.
> =

> Signed-off-by: Rapha=EBl Gallais-Pou <raphael.gallais.pou@gmail.com>
> ---
>  .../bindings/phy/phy-stih407-usb.txt          | 24 -------
>  .../bindings/phy/st,stih407-usb2-phy.yaml     | 63 +++++++++++++++++++
>  2 files changed, 63 insertions(+), 24 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/phy-stih407-usb=
.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/st,stih407-usb2=
-phy.yaml
> =

> diff --git a/Documentation/devicetree/bindings/phy/phy-stih407-usb.txt b/=
Documentation/devicetree/bindings/phy/phy-stih407-usb.txt
> deleted file mode 100644
> index 35f03df00130..000000000000
> --- a/Documentation/devicetree/bindings/phy/phy-stih407-usb.txt
> +++ /dev/null
> @@ -1,24 +0,0 @@
> -ST STiH407 USB PHY controller
> -
> -This file documents the dt bindings for the usb picoPHY driver which is =
the PHY for both USB2 and USB3
> -host controllers (when controlling usb2/1.1 devices) available on STiH40=
7 SoC family from STMicroelectronics.
> -
> -Required properties:
> -- compatible		: should be "st,stih407-usb2-phy"
> -- st,syscfg		: phandle of sysconfig bank plus integer array containing p=
hyparam and phyctrl register offsets
> -- resets		: list of phandle and reset specifier pairs. There should be t=
wo entries, one
> -			  for the whole phy and one for the port
> -- reset-names		: list of reset signal names. Should be "global" and "por=
t"
> -See: Documentation/devicetree/bindings/reset/st,stih407-powerdown.yaml
> -See: Documentation/devicetree/bindings/reset/reset.txt
> -
> -Example:
> -
> -usb2_picophy0: usbpicophy@f8 {
> -	compatible	=3D "st,stih407-usb2-phy";
> -	#phy-cells	=3D <0>;
> -	st,syscfg	=3D <&syscfg_core 0x100 0xf4>;
> -	resets		=3D <&softreset STIH407_PICOPHY_SOFTRESET>,
> -			  <&picophyreset STIH407_PICOPHY0_RESET>;
> -	reset-names	=3D "global", "port";
> -};
> diff --git a/Documentation/devicetree/bindings/phy/st,stih407-usb2-phy.ya=
ml b/Documentation/devicetree/bindings/phy/st,stih407-usb2-phy.yaml
> new file mode 100644
> index 000000000000..1f66ceddbf81
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/st,stih407-usb2-phy.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/st,stih407-usb2-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STiH407 USB PHY controller
> +
> +maintainers:
> +  - Patrice Chotard <patrice.chotard@foss.st.com>
> +
> +description:
> +  The USB picoPHY driver is the PHY for both USB2 and USB3 host controll=
ers
> +  (when controlling usb2/1.1 devices) available on STiH407 SoC family fr=
om
> +  STMicroelectronics.
> +
> +properties:
> +  compatible:
> +    const: st,stih407-usb2-phy
> +
> +  st,syscfg:
> +    description: Phandle to the syscfg bank
> +    $ref: "/schemas/types.yaml#/definitions/uint32-array"

Drop quotes

The correct type is 'phandle-array' which is really a matrix, so you =

need:

items:
  - items: =

      - description: ...
      - description: ...
      - description: ...

> +    items:
> +      - description: phandle to syscfg
> +      - description: phyparam register offset
> +      - description: phyctrl register offset
> +
> +  resets:
> +    items:
> +      - description: Phandle and reset specifier pair for the whole phy.
> +      - description: Phandle and reset specifier pair for the port.
> +
> +  reset-names:
> +    description: List of reset signal names.
> +    items:
> +      - const: "global"
> +      - const: "port"

Drop quotes

> +
> +  "#phy-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - st,syscfg
> +  - resets
> +  - reset-names
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/reset/stih407-resets.h>
> +    usb2_picophy0: usbpicophy {
> +    	compatible	=3D "st,stih407-usb2-phy";
> +    	#phy-cells	=3D <0>;
> +    	st,syscfg	=3D <&syscfg_core 0x100 0xf4>;
> +    	resets		=3D <&softreset STIH407_PICOPHY_SOFTRESET>,
> +    			  <&picophyreset STIH407_PICOPHY0_RESET>;
> +    	reset-names	=3D "global", "port";

Mixed spaces and tabs.

> +    };
> +...
> -- =

> 2.41.0
> =


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
