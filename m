Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43789C25B74
	for <linux-phy@archiver.kernel.org>; Thu, 16 May 2024 09:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nLr4A9q8xAVP2W2DSeWA/4hu6Pzs98b035hEd36Q2YE=; b=jTIPyzOt+W7xIF
	5Jhy78jcR/UDYauyobx1aOEgQ8qcO+TRVeA7UdbfxzvPMpgFcAXWdusZgHmL7DJ1ZsX5KhFpxB/dy
	Y9+G6+5RExRanuO7YfI7+pDg2BwUg6Ru6r9K6GvPLggmtv96I023sV95aIeXgJWfxTa0YDbUbFv8K
	l09OMo8bShw5fExgahXxC/fhzC2juG3XZGcQ+8nbwnEucMQ2Hd/kIkZEHHtKGxi62dl2FWlTSlXNl
	nqoiupRK/vkwbeVlVmTivgvQRgVu/gl4NKdxfLtlJ1s338NC49jBBExbIwYeujq6X+vl2lLdG3w8x
	yXmt4VFCKy/5vZ+nWVuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Xp2-00000004OLb-44me;
	Thu, 16 May 2024 09:54:48 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Xoz-00000004OKi-3VUv;
	Thu, 16 May 2024 09:54:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715853284;
	bh=mZfVpmqsWjhCsIsTVtjcaeo4Q4xSQ9TLL9TZdJX/NHE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=e2+4Oobp/AcPTTtDnKLATYjBTUw+/6tM61KKp6f6L0MMOwWOK+PNNqEiuaknJn+d9
	 KQEqaAAH3Bm9ALNFcbWh3SLnFBfGkIne5kDHUzJ4m1nZI22ZtyvcWd5xm2B/LCHSkD
	 PT0POFN8p/fWTmDImW+WRtu1fjEQYAOfOYO4jNK93TRr+UR/HBVepoyjx3Gz1tfmjD
	 Dss3iJ8ngLGifYkgGUyiG2PQxiPeAmtGB3BW9exC6JJ6oITFkyTeWj9Wkhf6QtScKJ
	 PG0+PR71aYeq04D9QfzuWTugnS8DC/qb2OXynHhAKINLkhtdmc2vNLuF1AOnBe1Q+Q
	 MGPUEGrt8OmBg==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 4471B37821A9;
	Thu, 16 May 2024 09:54:43 +0000 (UTC)
Message-ID: <651d97e7-d13d-4180-ab76-65dc67ef2c2f@collabora.com>
Date: Thu, 16 May 2024 11:54:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: airoha: Add binding doc for PCIe
 PHY driver
To: Lorenzo Bianconi <lorenzo@kernel.org>, linux-phy@lists.infradead.org
Cc: vkoul@kernel.org, kishon@kernel.org, lorenzo.bianconi83@gmail.com,
 conor@kernel.org, linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org, dd@embedd.com,
 catalin.marinas@arm.com, will@kernel.org, upstream@airoha.com,
 amitsinght@marvell.com
References: <cover.1715769325.git.lorenzo@kernel.org>
 <0807ee3023a771fbb35fff5c65839120959486d3.1715769325.git.lorenzo@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <0807ee3023a771fbb35fff5c65839120959486d3.1715769325.git.lorenzo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_025446_048235_7B844ACE 
X-CRM114-Status: GOOD (  13.75  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Il 15/05/24 12:44, Lorenzo Bianconi ha scritto:
> Introduce device-tree binding documentation for Airoha EN7581 PCIe PHY
> driver.
> 
> Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>   .../bindings/phy/airoha,en7581-pcie-phy.yaml  | 55 +++++++++++++++++++
>   1 file changed, 55 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
> new file mode 100644
> index 000000000000..4ab04b501129
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/airoha,en7581-pcie-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Airoha EN7581 PCI-Express PHY
> +
> +maintainers:
> +  - Lorenzo Bianconi <lorenzo@kernel.org>
> +
> +description:
> +  The PCIe PHY supports physical layer functionality for PCIe Gen2/Gen3 port.
> +
> +properties:
> +  compatible:
> +    const: airoha,en7581-pcie-phy
> +
> +  reg:
> +    maxItems: 3

If you have a description for the registers, I'd appreciate seeing that list.
If you don't, and can't retrieve a description, it's still fine, but please
try if you can.

> +
> +  reg-names:
> +    items:
> +      - const: csr_2l

Can we please avoid underscores?

Please change this to "csr-2l", after which:

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

> +      - const: pma0
> +      - const: pma1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/phy/phy.h>
> +
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        phy@11e80000 {
> +            compatible = "airoha,en7581-pcie-phy";
> +            #phy-cells = <0>;
> +            reg = <0x0 0x1fa5a000 0x0 0xfff>,
> +                  <0x0 0x1fa5b000 0x0 0xfff>,
> +                  <0x0 0x1fa5c000 0x0 0xfff>;
> +            reg-names = "csr_2l", "pma0", "pma1";
> +        };
> +    };


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
