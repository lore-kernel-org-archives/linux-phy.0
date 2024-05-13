Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04DE9C25B10
	for <linux-phy@archiver.kernel.org>; Mon, 13 May 2024 13:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=udjc6Su7WFslwKua6kqS1JluABUQZMR/8p7GHIcX7c0=; b=aVt/2zROT+Jkk7
	xaiOtaAAKrvsFM6WnO24+sdlfa5+7HNy5AH5l215olmA6YasRY71vbcf4xdtXgoDdm6GFegjtN3wE
	tm0Kg4dxbc3WEJKhfCfuMzQbRA+U/OjoSv4lghoHCqSOYZUefePEDjEkc5BS3ElHziQUtQSvKbPPG
	qvuG1krCRfZgSTMcArNwj0b/vosS40wCRh/g6YmbGbe/Vu86+LF3Avvg97VV61zJ8fct5qjQ18dC8
	9j0ZfTFEu3qUxUOgYOsUmyH1hTgAWLZotvxSHS/NEIzMoPunNJtYRV3878pfRyVuQVam/S2BJE09+
	88jZBWJvEPI0lSpyTcOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6VWF-0000000CxmS-2zF7;
	Mon, 13 May 2024 13:15:07 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6VWB-0000000CxlJ-1ztt;
	Mon, 13 May 2024 13:15:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715606101;
	bh=ScwE65y5oZ1iSlFlJ7VmFHYWNkFNi8jko7R1nKVjKAg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=2EkJxSmvVIJ3oG4G3tzRAiekWbwD52f3irZ5Mgj1KkEyBqQE3MHoXHjsSItzhp/az
	 6O0OwiE1Tggw2xRSy2LWGoBe4bH+8oy6rRShZ9W0Rua7Rh/UxlnvC9Twc9KsOMOTM+
	 kFl7YyOgZ5y/znfh3082NV/ik+RV8sB9i/sDAvBw9q3vtiP45GsSINR4EUp+Zt96vS
	 iR2BLRbIDZZRk+yzYERuUJzhuwbxzSfQQX/8HhsyXOAbeqMxEBCxB/2gT2iLuBVvoE
	 02kJjqBk7AzaIwDR5bgdRj1hqjyr3Jj4seUKK1vUzraS25XQGVkr9VeU7SqGu3yaiY
	 xkLSNQ8UhTCAQ==
Received: from [IPV6:fd00::2a:39ce] (cola.collaboradmins.com [IPv6:2a01:4f8:1c1c:5717::1])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5830E3782139;
	Mon, 13 May 2024 13:15:00 +0000 (UTC)
Message-ID: <b65a6290-1500-42bc-815c-d88dd52dd8ac@collabora.com>
Date: Mon, 13 May 2024 15:14:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: phy: airoha: Add binding doc for PCIe
 PHY driver
To: Lorenzo Bianconi <lorenzo@kernel.org>, linux-phy@lists.infradead.org
Cc: vkoul@kernel.org, kishon@kernel.org, lorenzo.bianconi83@gmail.com,
 conor@kernel.org, linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org, dd@embedd.com,
 catalin.marinas@arm.com, will@kernel.org, upstream@airoha.com
References: <cover.1715527166.git.lorenzo@kernel.org>
 <7b60943ea9814a1a9a3d8b273157b338f9130174.1715527166.git.lorenzo@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <7b60943ea9814a1a9a3d8b273157b338f9130174.1715527166.git.lorenzo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_061503_683639_4C4BF54A 
X-CRM114-Status: GOOD (  11.09  )
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

Il 12/05/24 17:27, Lorenzo Bianconi ha scritto:
> Introduce device-tree binding documentation for Airoha EN7581 PCIe PHY
> driver.
> 
> Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>   .../bindings/phy/airoha,pcie-phy.yaml         | 55 +++++++++++++++++++
>   1 file changed, 55 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml
> new file mode 100644
> index 000000000000..443d7e717296
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml

airoha,en7581-pcie-phy.yaml

> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/airoha,pcie-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Airoha PCIe PHY

title: Airoha EN7581 PCI-Express PHY

> +
> +maintainers:
> +  - Lorenzo Bianconi <lorenzo@kernel.org>
> +
> +description: |
> +  The PCIe PHY supports physical layer functionality for PCIe Gen2/Gen3 port.
> +
> +properties:
> +  compatible:
> +    const: airoha,en7581-pcie-phy
> +
> +  reg:
> +    maxItems: 3
> +
> +  reg-names:
> +    items:
> +      - const: csr_2l
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
> +    bus {

Shouldn't this realistically be 'soc' instead?

Cheers,
Angelo

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
