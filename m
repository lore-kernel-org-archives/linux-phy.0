Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94D31C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 20 Dec 2022 14:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=agaPX97Ke6XFaz9VHx+P7r9yG0OHpRJqgW54slYsta8=; b=bjygtDrw1xzBkk
	TcVSpp4qHijdqHSbe+raYau0cd5Y6BNUFYsBD4VETHP3ZyQCTBUhBSEV2+O2QR4FUeAzGhH4n/+aI
	WAhpqwdSOlYM4S4QWFJhT8aboWl4t5VAs511A0UlpChdnMJUWPaeKxYsx4rv3NAzXHPSf7xVBLvv9
	1D0rrFPtk+MzrJC0jPZuQt/Is55ZkwIjDoiBTyHvAUAbH4cmC4mHRV+K2WQBZ9N5AmL4yRl5BMl0g
	SQRM39mGDkgVXFD83U5YzpKFt5Dn1h0nlOAkjdV3Q5FPH099l64hjg8rZdv25l1tQFnSY+L35C585
	H43UtbLN7duN0Ds6YaVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7dQP-00GZ2i-V4; Tue, 20 Dec 2022 14:16:57 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7dQC-00GYtH-Bt
	for linux-phy@lists.infradead.org; Tue, 20 Dec 2022 14:16:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4F5A2B811A0;
	Tue, 20 Dec 2022 14:16:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AB36C433EF;
	Tue, 20 Dec 2022 14:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671545801;
	bh=aR9QMgocYSz4U3/eJjLNgSMrMPwutNnlewjFdmIWMQI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=E+g1heNbk3hVgPX/xsLcnO+qMA1B/n7mMRO7BFY23RHjFVf5Jt2vgcAXq1NPSpYw/
	 jZswuIsc6hoUfipvCtbCkH1LI/iRTGN5C4B6XbF97TLDCbze6Sk9TCd2eTXFLnXOr1
	 cJhOg6U8Pkno1VWGThe35ikbnJ/mHFuBWb6NEMku/2t39bU1PvN2w37kcOLP6HRgyT
	 KcTo0cyE7XLjzCGDK5vSnkCqu9RThBwPAplSIYLSKYtGu0nTZNCw3t/nEUGpS/WiMS
	 vsMTNJE5hvJP6e8Cg8t1EbaXEIEGrh32XXDJrff1r1BF2fSQsvu9aTgVH8pPgCCJUP
	 nGfnycrL2zf8w==
Message-ID: <3a0980ef-7128-1153-7016-6bb44760bf3b@kernel.org>
Date: Tue, 20 Dec 2022 15:16:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v5 1/4] dt-bindings: media: Document bindings for DW MIPI
 CSI-2 Host
Content-Language: en-US
To: Eugen Hristev <eugen.hristev@microchip.com>, linux-media@vger.kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, luis.oliveira@synopsys.com,
 Luis Oliveira <lolivei@synopsys.com>
References: <20221216143717.1002015-1-eugen.hristev@microchip.com>
 <20221216143717.1002015-2-eugen.hristev@microchip.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20221216143717.1002015-2-eugen.hristev@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221220_061644_746492_0A441EB6 
X-CRM114-Status: GOOD (  22.18  )
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

On 16/12/2022 15:37, Eugen Hristev wrote:
> Add bindings for Synopsys DesignWare MIPI CSI-2 host.
> 
> Signed-off-by: Luis Oliveira <lolivei@synopsys.com>
> [eugen.hristev@microchip.com: reworked binding, converted to yaml]
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---

1. Please use scripts/get_maintainers.pl to get a list of necessary
people and lists to CC.  It might happen, that command when run on an
older kernel, gives you outdated entries.  Therefore please be sure you
base your patches on recent Linux kernel.

You did not CC anyone, so who is supposed to take this patch?

2. Subject: drop second, redundant "bindings for".

>  .../bindings/media/snps,dw-csi.yaml           | 149 ++++++++++++++++++
>  1 file changed, 149 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/snps,dw-csi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/snps,dw-csi.yaml b/Documentation/devicetree/bindings/media/snps,dw-csi.yaml
> new file mode 100644
> index 000000000000..439eadc8e517
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/snps,dw-csi.yaml
> @@ -0,0 +1,149 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/snps,dw-csi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Synopsys DesignWare CSI-2 Host controller (csi2host)
> +
> +maintainers:
> +  - Eugen Hristev <eugen.hristev@microchip.com>
> +
> +description:
> +  CSI2HOST is used to receive image coming from an MIPI CSI-2 compatible
> +  camera. It will convert the incoming CSI-2 stream into a dedicated
> +  interface called the Synopsys IDI (Image Data Interface).
> +  This interface is a 32-bit SoC internal only, and can be assimilated
> +  with a CSI-2 interface.
> +
> +properties:
> +  compatible:
> +    const: snps,dw-csi
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    description:
> +      CSI2HOST can have two clocks connected. One clock is the
> +      peripheral clock for the inside functionality of the hardware block.
> +      This is named 'perclk'. The second clock can be the phy clock,
> +      which is used to clock the phy via an internal link.
> +      This clock is named 'phyclk', phy clock.
> +    items:
> +      - const: perclk
> +      - const: phyclk

Drop "clk" from both


> +
> +  phys:
> +    maxItems: 1
> +    description: MIPI D-PHY
> +
> +  phy-names:
> +    items:
> +      - const: dphy
> +
> +  resets:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description:
> +          Input port node, single endpoint describing the input port.
> +
> +        properties:
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +            description: Endpoint connected to input device
> +
> +            properties:
> +              bus-type:
> +                const: 4
> +
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +                items:
> +                  maximum: 4
> +
> +              clock-lanes:
> +                maxItems: 1
> +
> +              remote-endpoint: true
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description:
> +          Output port node, single endpoint describing the output port.
> +
> +        properties:
> +          endpoint:
> +            unevaluatedProperties: false
> +            $ref: video-interfaces.yaml#
> +            description: Endpoint connected to output device
> +
> +            properties:
> +              bus-type:
> +                const: 4
> +
> +              remote-endpoint: true
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - ports

reg? phys? interrupts? All others?

> +
> +examples:
> +  - |
> +    csi2: csi2@3000 {

Generic node names, so "csi"

> +        compatible = "snps,dw-csi";
> +        reg = <0x03000 0x7FF>;

lowercase hex

> +        phys = <&mipi_dphy_rx>;
> +        phy-names = "dphy";
> +        resets = <&dw_rst 1>;
> +        interrupts = <2>;
> +

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
