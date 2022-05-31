Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60A0AC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 11:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Axgr6lMfhCmLMpx0tYzHsqGWz7Mg1jPLsnTD0NApBMo=; b=ceFHhlN8X6s05R
	P3jrUg6JeQoxGCLRVZcepdK8+JiZq6bGWMbTkWWqPGWCQU+RF2ToWjcdO99sDTqp8IZc/jqeU0C9R
	LdBpOBK0DyP/Cj8JK7Lsux8dWA1edtnVQUsc9lJzO2bw9gHnSWfnbp5nBKIs9WPoOuPapzguQR2/W
	n762a59tvySCs3fXE5RC+LDIs9+o+floVVYaTng1ph8gBM34WLLswrUuaikYfTcKDJufPW+zZHcc8
	gpfk1XOOMmINm1sSwCua7XOt/0msMeeqJCt/tYJEh0mI/KOrriQ9LyN1R8Fvx8iy+0PyLyvNmMvlY
	cx2mUhm9ulN8chTryQnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw0JP-00AYaU-Fb; Tue, 31 May 2022 11:45:23 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw0JM-00AYZH-Uu
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 11:45:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9ADBA61148;
	Tue, 31 May 2022 11:45:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADE74C385A9;
	Tue, 31 May 2022 11:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1653997518;
	bh=jODhV9sVWgDMOncckTb9rlVg7HE1GMWluvYU3vHcQQw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=T/jM5cQwlJy5RlsQ3RmAF2rR6nSCTb4ZafGhYV1lwqUVtBw/IIcpex8bHtTjeaI3/
	 52K2AUShelO3J/lvZ4XtohN6LhEXMjdDRLkd8g5lG6MjMfFhUShnkM9PON6Wj0ONRq
	 ctpaD2Kwind/XUNcsB/4fajLbaFJumhG5/C4LOY1OS+O7OsAvH1DSSjTUBlLUkTXIa
	 cOYZn2esO2vxTbayF24reFPQfPXtum95iCaZ7yrL9E164SXhingiBnsicdTRqfkE5P
	 3/zjGsRQqvlYG+ISpTGljlJmqKG2AX7Yxo1vxgbZApXwDYjlnj1V3JTXr/tpfM50zV
	 J/4Hlfk8UeyZw==
Message-ID: <26603540-8887-ef8d-8f4d-26f2f33d2a6f@kernel.org>
Date: Tue, 31 May 2022 14:45:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/2] dt-bindings: phy: ti: phy-gmii-sel: Add bindings for
 J7200
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>, robh+dt@kernel.org,
 lee.jones@linaro.org, krzysztof.kozlowski+dt@linaro.org, kishon@ti.com,
 vkoul@kernel.org, dan.carpenter@oracle.com, grygorii.strashko@ti.com
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20220531111221.22963-1-s-vadapalli@ti.com>
 <20220531111221.22963-2-s-vadapalli@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20220531111221.22963-2-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_044521_131956_DCA70CDE 
X-CRM114-Status: GOOD (  23.58  )
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

Hi Siddharth,

On 31/05/2022 14:12, Siddharth Vadapalli wrote:
> TI's J7200 SoC supports additional PHY modes like QSGMII and SGMII
> that are not supported on earlier SoCs. Add a compatible for it.
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> ---
>  .../mfd/ti,j721e-system-controller.yaml       |  5 ++++
>  .../bindings/phy/ti,phy-gmii-sel.yaml         | 24 ++++++++++++++++++-
>  2 files changed, 28 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
> index fa86691ebf16..e381ba62a513 100644
> --- a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
> +++ b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
> @@ -48,6 +48,11 @@ patternProperties:
>      description:
>        This is the SERDES lane control mux.
>  
> +  "phy@[0-9a-f]+$":
> +    type: object
> +    description:
> +      This is the register to set phy mode through phy-gmii-sel driver.
> +

Is this really required? The system controller has 100s of different such registers and it is not practical to mention about all.

>  required:
>    - compatible
>    - reg
> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
> index ff8a6d9eb153..7427758451e7 100644
> --- a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
> +++ b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
> @@ -53,12 +53,21 @@ properties:
>        - ti,am43xx-phy-gmii-sel
>        - ti,dm814-phy-gmii-sel
>        - ti,am654-phy-gmii-sel
> +      - ti,j7200-cpsw5g-phy-gmii-sel

Why not just "ti,j7200-phy-gmii-sel" so it is consistent naming.

>  
>    reg:
>      maxItems: 1
>  
>    '#phy-cells': true
>  
> +  ti,enet-ctrl-qsgmii:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Required only for QSGMII mode. Bitmask to select the port for
> +      QSGMII main mode. Rest of the ports are selected as QSGMII_SUB
> +      ports automatically. Any of the 4 CPSW5G ports can act as the
> +      main port with the rest of them being the QSGMII_SUB ports.
> +

This is weird way of doing things.

The Ethernet controller driver already knows which mode the port is
supposed to operate.

e.g.
+&cpsw0_port1 {
+	phy-handle = <&cpsw5g_phy0>;
+	phy-mode = "qsgmii";
+	mac-address = [00 00 00 00 00 00];
+	phys = <&cpsw0_phy_gmii_sel 1>;
+};
+
+&cpsw0_port2 {
+	phy-handle = <&cpsw5g_phy1>;
+	phy-mode = "qsgmii-sub";
+	mac-address = [00 00 00 00 00 00];
+	phys = <&cpsw0_phy_gmii_sel 2>;

And it can convey the mode to the PHY driver via phy_ops->set_mode.
So you should be depending on that instead of adding this new property.

>  allOf:
>    - if:
>        properties:
> @@ -73,6 +82,19 @@ allOf:
>          '#phy-cells':
>            const: 1
>            description: CPSW port number (starting from 1)
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - ti,j7200-cpsw5g-phy-gmii-sel
> +    then:
> +      properties:
> +        '#phy-cells':
> +          const: 1
> +          description: CPSW port number (starting from 1)
> +        ti,enet-ctrl-qsgmii:
> +          enum: [1, 2, 4, 8]
>    - if:
>        properties:
>          compatible:
> @@ -97,7 +119,7 @@ additionalProperties: false
>  
>  examples:
>    - |
> -    phy_gmii_sel: phy-gmii-sel@650 {
> +    phy_gmii_sel: phy@650 {
>          compatible = "ti,am3352-phy-gmii-sel";
>          reg = <0x650 0x4>;
>          #phy-cells = <2>;

cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
