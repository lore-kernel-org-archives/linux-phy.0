Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C7C5C36005
	for <linux-phy@archiver.kernel.org>; Mon, 28 Apr 2025 08:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4T7m3MzkE59NMpSCSav9MQPd9Y7TLpCQmGn6gQ7dNJY=; b=mFD+P9JddahUGT
	ZIba60nalWJNonwm2/FIlH3hpc7KOekFOVdPmzsrCXziUssak6XNeAMMeHplfR9lsotBYb9nk7NWI
	6SGhM5RjqolcC0z4J/z2EpIb33ofL8Jdscpv/rd8MvZ1iCfwz/44Nea4KGYv7qRNxhqe2MAOPySYy
	vkVzf41ES2/Vs/Dh9IRa7w7RU0/edrRvaARjVHwhiUX4PExx6wsc36eEaocanaOLk7F5+5eiUsOrx
	abb1VOlcRavx6WcPpQdWKX0VEGIkVL0WHS2Rse9g52aJlUtRLlTkwtEsYo+I9Imuoxxdlkgl91kfo
	sgtovGOtChsl7KDBfWJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9Jcd-00000005N9t-3eys;
	Mon, 28 Apr 2025 08:13:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9JP0-00000005L5t-0LPn;
	Mon, 28 Apr 2025 07:59:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6F18D5C2731;
	Mon, 28 Apr 2025 07:57:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A24E9C4CEE4;
	Mon, 28 Apr 2025 07:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745827185;
	bh=vurruFqLtF8yoeklNaL/NrKmDFnF7HGf/qbXQ8ET/Z4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PzJ+lsZAS1otJLR8mP6WCOo6R3WaMZo5HTBVvGuciQld5qH+wpHUDzrkUV0UvP6FU
	 7vqu3JattTkocjlCF/HNPy2RItdz+UItRdmX3MdtmJlRx7fMURg5/QQa0ltd3O+/zV
	 K8V1/KR5kHgh3M+rkl3h9ZQq08w27TWKAObu1uk/BTv2Za5qHhyM64PrzdKoCtFtqr
	 g545sVd85CEHiInw1Db2ROtvtDNP5BQ/rzbwKGXCitDUKjIX/Krw/Viy49+mnZB636
	 vg/GLbRn/rpqfKnV1O3YyAkZ4fAcBwDbRgJiCtVdBaJO/C9qdqMTK9IoNsWyY3JG0E
	 LrUgxxBVR3bWQ==
Date: Mon, 28 Apr 2025 09:59:42 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, jun.li@nxp.com, 
	alexander.stein@ew.tq-group.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: imx8mq-usb: improve some tuning
 properties
Message-ID: <20250428-thankful-observant-trogon-a5a003@kuoka>
References: <20250423094607.1029429-1-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250423094607.1029429-1-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250428_005946_207225_EB6A19A8 
X-CRM114-Status: GOOD (  20.11  )
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

On Wed, Apr 23, 2025 at 05:46:06PM GMT, Xu Yang wrote:
> Commit b2e75563dc39 ("dt-bindings: phy: imx8mq-usb: add phy tuning
> properties") add many tuning properties, but some parameter value doesn't
> match the register description. It made some changes based on the original
> value: add offset to a negative number so turn it to a non-negative number.
> However, this conversion bring many pain when some properties need to be
> improved.
> 
> Because device-tree supports negative parameter number, this will improve
> some propertie's parameter.
> 
> Mainly include below properties:
>  - fsl,phy-tx-vref-tune-percent
>  - fsl,phy-tx-rise-tune-percent
>  - fsl,phy-comp-dis-tune-percent
> 
> The parameter value of above 3 properties are USB PHY specific. i.MX8MP
> and i.MX95 USB PHY has different meanings. So this add restrictions for
> them.
> 
>  - fsl,phy-tx-vboost-level-microvolt
> 
> For this property, the parameter value is wrong in register description.
> This will correct it according to true value.
> 
> For detailed info, please refer to i.MX8MP and i.MX95 latest reference
> manual.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> ---
>  .../bindings/phy/fsl,imx8mq-usb-phy.yaml      | 43 +++++++++++++++----
>  1 file changed, 35 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> index daee0c0fc915..b09e3dab4c59 100644
> --- a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> @@ -43,15 +43,11 @@ properties:
>    fsl,phy-tx-vref-tune-percent:
>      description:
>        Tunes the HS DC level relative to the nominal level
> -    minimum: 94
> -    maximum: 124

Widest constraints should always stay here.

>  
>    fsl,phy-tx-rise-tune-percent:
>      description:
>        Adjusts the rise/fall time duration of the HS waveform relative to
>        its nominal value
> -    minimum: 97
> -    maximum: 103
>  
>    fsl,phy-tx-preemp-amp-tune-microamp:
>      description:
> @@ -63,15 +59,12 @@ properties:
>    fsl,phy-tx-vboost-level-microvolt:
>      description:
>        Adjust the boosted transmit launch pk-pk differential amplitude
> -    minimum: 880
> -    maximum: 1120
> +    enum: [844, 1008, 1156]
>  
>    fsl,phy-comp-dis-tune-percent:
>      description:
>        Adjust the voltage level used to detect a disconnect event at the host
>        relative to the nominal value
> -    minimum: 91
> -    maximum: 115
>  
>    fsl,phy-pcs-tx-deemph-3p5db-attenuation-db:
>      description:
> @@ -112,6 +105,40 @@ allOf:
>          reg:
>            maxItems: 1
>  
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - fsl,imx8mq-usb-phy
> +            - fsl,imx8mp-usb-phy
> +    then:
> +      properties:
> +        fsl,phy-tx-vref-tune-percent:
> +          minimum: -6
> +          maximum: 24

That's ABI break with vague reason "some pain".

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
