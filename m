Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 601D9C4345F
	for <linux-phy@archiver.kernel.org>; Wed, 24 Apr 2024 19:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zDnTm8J3CJG5qL0x2WUAmgz44HsT5zrUeOIiaFqIXG4=; b=ZyzIbt3pxLuKBm
	7yycb9sjai7DdMmdXHkuP5CVIShWa7lwQmEafbh+R2Jz7SyPvCsRt1g/es1be9QSSLDEzovnJ/88P
	V3E/NS4jMG8iInBzFt5U8U5+1rvd3zTzFtQtNR4YrmNVActRLlSifqQkw/E5Y5UxzdWr28ci7cAQx
	XvasYk+WEPsVs7F80ushaRxgebONe65bXClKkooA7J34o9nrFuSpRzjJCG1eRTXhDS101+NQOnf9C
	4kqm8i3daBS+eCcdTXjGCjT3ihInQ8j2KMFQm/dTSJa11dlfsqYYYF/vxHIhhVZ//3wf3oBpuMVTc
	gkyZ0KZHsOCaOq+go4/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rziWr-00000005ifN-3sH9;
	Wed, 24 Apr 2024 19:43:41 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rziWn-00000005ie0-1PUf;
	Wed, 24 Apr 2024 19:43:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 267F1CE17E1;
	Wed, 24 Apr 2024 19:43:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14CE8C113CD;
	Wed, 24 Apr 2024 19:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713987814;
	bh=vKFYekx4zyI62STnk+FA6F7HSB3eErVD+QjnOQSj1zo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XJLpfqld/3oPnXCMuNWmUg+dzsWu9g5aWo3ExrrsKERD1UuKm7b6qJJwf8r47fTSP
	 TOTA8OFSenxTbjqqCgWrfM6h0yzb4/dm9sEX7FpCf59AS6VTYAY0KSMmeqW7/L/Jsa
	 +oPs17OTG2cWSX8qfdrgu65VGgpP+Vjt7WeMzkgNPstKbbOFzVayCpLCunJla1/n+/
	 l85xedaTFLhc/r6hZnmlvO5IvPTE4sToreAqtEKPq4eW9qlTPFlenSfvIuv7w5Wt3o
	 ggC33kausbftez9qr1TZX7mnrSsEVFr8U0h6VPteLc0kwF7ItP7lV5DFcuhII31c9c
	 2yVCBUSJtMT3Q==
Date: Wed, 24 Apr 2024 14:43:31 -0500
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Will McVicker <willmcvicker@google.com>,
	Roy Luo <royluo@google.com>, kernel-team@android.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/7] dt-bindings: phy: samsung,usb3-drd-phy: add gs101
 compatible
Message-ID: <20240424194331.GA352392-robh@kernel.org>
References: <20240423-usb-phy-gs101-v1-0-ebdcb3ac174d@linaro.org>
 <20240423-usb-phy-gs101-v1-1-ebdcb3ac174d@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240423-usb-phy-gs101-v1-1-ebdcb3ac174d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_124337_759784_20CA8BCE 
X-CRM114-Status: GOOD (  13.14  )
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

On Tue, Apr 23, 2024 at 06:06:03PM +0100, Andr=E9 Draszik wrote:
> Add a dedicated google,gs101-usb31drd-phy compatible for Google Tensor
> gs101 SoC.
> =

> It needs additional clocks enabled for register access, and additional
> memory regions (PCS & PMA) are required for successful configuration.
> =

> Signed-off-by: Andr=E9 Draszik <andre.draszik@linaro.org>
> ---
>  .../bindings/phy/samsung,usb3-drd-phy.yaml         | 78 ++++++++++++++++=
+-----
>  1 file changed, 61 insertions(+), 17 deletions(-)
> =

> diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.y=
aml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> index 452e584d9812..db1dc4c60b72 100644
> --- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> @@ -25,6 +25,7 @@ description: |
>  properties:
>    compatible:
>      enum:
> +      - google,gs101-usb31drd-phy
>        - samsung,exynos5250-usbdrd-phy
>        - samsung,exynos5420-usbdrd-phy
>        - samsung,exynos5433-usbdrd-phy
> @@ -57,7 +58,18 @@ properties:
>        the OF graph bindings specified.
>  =

>    reg:
> -    maxItems: 1
> +    minItems: 1
> +    items:
> +      - description: PHY register base address.
> +      - description: PCS register base address.
> +      - description: PMA register base address.
> +
> +  reg-names:
> +    minItems: 1
> +    items:
> +      - const: phy
> +      - const: pcs
> +      - const: pma
>  =

>    samsung,pmu-syscon:
>      $ref: /schemas/types.yaml#/definitions/phandle
> @@ -85,30 +97,62 @@ allOf:
>        properties:
>          compatible:
>            contains:
> -            enum:
> -              - samsung,exynos5433-usbdrd-phy
> -              - samsung,exynos7-usbdrd-phy
> +            const: google,gs101-usb31drd-phy
>      then:
>        properties:
>          clocks:
> -          minItems: 5
> -          maxItems: 5
> -        clock-names:
>            items:
> -            - const: phy
> -            - const: ref
> -            - const: phy_utmi
> -            - const: phy_pipe
> -            - const: itp
> -    else:
> -      properties:
> -        clocks:
> -          minItems: 2
> -          maxItems: 2
> +            - description: Gate of main PHY clock
> +            - description: Gate of PHY reference clock
> +            - description: Gate of control interface AXI clock
> +            - description: Gate of control interface APB clock
> +            - description: Gate of SCL APB clock
>          clock-names:
>            items:
>              - const: phy
>              - const: ref
> +            - const: ctrl_aclk
> +            - const: ctrl_pclk
> +            - const: scl_pclk
> +        reg:
> +          minItems: 3
> +        reg-names:
> +          minItems: 3
> +      required:
> +        - reg-names
> +    else:
> +      if:

We generally try to avoid having nested else/if like this. Please change =

the existing 'else' to an 'if' and then add an 'if' for your new =

compatible.

Rob

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
