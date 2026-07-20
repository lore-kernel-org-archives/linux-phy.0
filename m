Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47BCCC44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 11:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=98jIxeFOI0RkJxfBxEFe+ASZQtO+HHQOJ4LbRfwAmMk=; b=AoJC3mDWh92d/A
	F3kREKK+D2LaRl6Ia/72gpue7q1PRnCOVUk8w/Vmezj1j8ES9X2kn5LkEVRQGw5r6cozMfWwQANpb
	tqYkx053jB7hFHtOxtks4b5Qy6qYhFcf0Gtc2GyPZJnwO2+KtC1jHzH4wJ8ZqzxZKVKELgtc6TBC6
	ptPN8aj7xuJTSediKoOfyoCxJF3fG0xcP0G7WRq/xdpunnVhnCgnLstYptrOTm74RweL0kRwzyAex
	I+ylZWovg3WNgQo4ba/6Ra5cFUmlJHn2MpdzCIxKX1iu0o/TPmS+pDYid4Mhq2KMFheEn0rgVGtEx
	y0A3KYB1La/vRmIbRuwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlm5d-00000006b07-3ygL;
	Mon, 20 Jul 2026 11:23:17 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlm5c-00000006aze-129k
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 11:23:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A217A402D9;
	Mon, 20 Jul 2026 11:23:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAA991F000E9;
	Mon, 20 Jul 2026 11:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784546595;
	bh=d3xVK9YMrUjVB7REq1T+TRl9bzVEeUEnV0J6SaPCm8U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Iz8W+HLAWCJ4bghTZP1THbxM0UQQIHKCUmYXoLG5G7ynOYVIJxEutNCnsm1FmQE53
	 ky0gwJQzBzRx/c+BZkAv1kZRCfN+HnETIt9oneWLozvcfoIUJc9WnfxQbMrThMkCCH
	 lUQ00c2c8aobetivIjWBuoLdb+U9q7+ZRedCFF1FY3+WhdCvdDHR7WYTX6mykula6S
	 Q1aQduXZqYoBTDoPAwndsTCl0DwZCiccVzZLoG8i/qHgS+yFaTsFekyDfrrYMNrMdT
	 52xMpuTLeV54CnrppZwVhQMHmIPdPMCRQ9fh6ApCbo70W7a+1KuYpaux7vNNmOWb78
	 6i+YIvpXVdJbg==
Date: Mon, 20 Jul 2026 16:53:12 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 2/4] dt-bindings: phy: qcs615-qmp-usb3dp: Add support
 for Shikra SoC
Message-ID: <al4FICuDRLYdPE_8@vaman>
References: <20260712-usb-shikra-phy-v6-v6-0-1b3e51bf1541@oss.qualcomm.com>
 <20260712-usb-shikra-phy-v6-v6-2-1b3e51bf1541@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260712-usb-shikra-phy-v6-v6-2-1b3e51bf1541@oss.qualcomm.com>
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

On 12-07-26, 20:58, Krishna Kurapati wrote:

Krzysztof okay with this..?

> Declare the USB-C QMP PHY present on the Qualcomm Shikra SoC. Shikra uses
> 3 resets to be programmed before initialising the phy. As per the hardware
> documentation, the third reset is PHY_PRIM_SP0_BCR, hence naming it "phy".
> 
> Also, add remote endpoints and orientation switch support for getting
> Type-C orientation information.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml   | 49 +++++++++++++++++++++-
>  1 file changed, 48 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
> index efb465c71c1b..98397006fa62 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
> @@ -18,6 +18,7 @@ properties:
>    compatible:
>      enum:
>        - qcom,qcs615-qmp-usb3-dp-phy
> +      - qcom,shikra-qmp-usb3-dp-phy
>  
>    reg:
>      maxItems: 1
> @@ -33,12 +34,15 @@ properties:
>        - const: pipe
>  
>    resets:
> -    maxItems: 2
> +    minItems: 2
> +    maxItems: 3
>  
>    reset-names:
> +    minItems: 2
>      items:
>        - const: phy_phy
>        - const: dp_phy
> +      - const: phy
>  
>    vdda-phy-supply: true
>  
> @@ -63,6 +67,22 @@ properties:
>            - description: offset of the PHY mode register
>      description: Clamp and PHY mode register present in the TCSR
>  
> +  orientation-switch:
> +    description:
> +      Flag the PHY as possible handler of USB Type-C orientation switching
> +    type: boolean
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Output endpoint of the PHY
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Incoming endpoint from the USB controller
> +
>  required:
>    - compatible
>    - reg
> @@ -78,6 +98,33 @@ required:
>  
>  additionalProperties: false
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,shikra-qmp-usb3-dp-phy
> +    then:
> +      properties:
> +        resets:
> +          minItems: 3
> +        reset-names:
> +          minItems: 3
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,qcs615-qmp-usb3-dp-phy
> +    then:
> +      properties:
> +        resets:
> +          maxItems: 2
> +        reset-names:
> +          maxItems: 2
> +
>  examples:
>    - |
>      #include <dt-bindings/clock/qcom,qcs615-gcc.h>
> 
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
