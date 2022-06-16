Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D31EC43334
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jun 2022 22:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=imH2scjFoa+Obc4OWM0ZsxOhsF8UC2GyS4yXGGHG0xA=; b=3G9CFaszU/5bCr
	/DM7vh+pMnzWBERNInxIGvpezLuXu9nZBWPp7PxBmzCE0WvhbXUZ1rIp+Osp+bxRR1s92HOs/iVWU
	dveQlWdYg1oWkxRX/363Jmh874D1khnjSZ1jL+y5m6qIgxuJLbZsYWKzKSoXd0+P9FcVvJD9BLoca
	ZWE+lMf23c7sueQr3hlfgBJqMQJ7kr729L/rVqN0sE116fLmV/nGPy+UEZpnDctjg5B6FjkBNBuJv
	WCQzur/FOR1KvtJ6/DYiYMBMLLdTIPPZAUhscqr29ZFUtZbit9C3JCagAqSvePM5HKkPpQOy7hcx5
	vyLvg3FBFPk4ysvHBGAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1yRr-004isL-HA; Thu, 16 Jun 2022 22:58:47 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1yRo-004irK-CN
	for linux-phy@lists.infradead.org; Thu, 16 Jun 2022 22:58:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5921C6117F;
	Thu, 16 Jun 2022 22:58:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A181BC3411C;
	Thu, 16 Jun 2022 22:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655420318;
	bh=BhBSw9D9ltx5eL2VOtxBAgMRkCtcfgjW4sB86qkvEWU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=O5yP0MIVY9hQpBQur4ksZUlxWpn4EZ8BsqV1Q/gMV59ra7EMrb6I2j5b9IaetwL7G
	 b7UYX++AYKx91UASeN8k1yeeTwDAQIHg2E4mG4YiG/6W6xFS0UPFhxEe0Kecbw7pr8
	 BULCMbxdVK8LoKR3opAeSmWWoU7ZNoyzSJQb/SBTY4aNxXrtES5mmaxuhvJcH5CGwl
	 0halR+YTriqyvJnTnfjpecBFuxtVtHWpSktTqcu2RtiDZaCe7zEhOvRJ7UyZunRl3N
	 fOyIla2gMtTwRA+x3C8NIjsfbClotpvqPiUoYMpPVMTmTd0o31RJ3MlCV/xwgfdV9T
	 dhyhajVoW9Ryw==
Message-ID: <4b4b08af-887b-89e9-b4a5-93e7d8a03222@kernel.org>
Date: Thu, 16 Jun 2022 15:58:37 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 2/5] dt-bindings: phy: Add ARTPEC-8 PCIe phy
Content-Language: en-US
To: wangseok.lee@samsung.com, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
 "lars.persson@axis.com" <lars.persson@axis.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "kw@linux.com" <kw@linux.com>,
 "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
 "kernel@axis.com" <kernel@axis.com>
Cc: Moon-Ki Jun <moonki.jun@samsung.com>,
 Sang Min Kim <hypmean.kim@samsung.com>, Dongjin Yang
 <dj76.yang@samsung.com>, Yeeun Kim <yeeun119.kim@samsung.com>
References: <20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p7>
 <CGME20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p5>
 <20220614012916epcms2p5cf8d55e7420dea10bb4a05d91aaf99dd@epcms2p5>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220614012916epcms2p5cf8d55e7420dea10bb4a05d91aaf99dd@epcms2p5>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_155844_549309_4F0B9FAC 
X-CRM114-Status: GOOD (  18.23  )
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

On 13/06/2022 18:29, Wangseok Lee wrote:
> Add description to support Axis, ARTPEC-8 SoC.
> ARTPEC-8 is the SoC platform of Axis Communications
> and PCIe phy is designed based on SAMSUNG PHY.

No improvements here. On v2 I gave you link pointing to specific
paragraph of our documentation which you need to apply - wrong wrapping.
Is there something unclear here?

Please
do
not
wrap
in
different
style.


> 
> Signed-off-by: Wangseok Lee <wangseok.lee@samsung.com>
> ---
> v2->v3 :
> -modify version history to fit the linux commit rule
> -remove 'Device Tree Bindings' on title
> -remove clock-names entries
> -change node name to soc from artpec8 on excamples
> 
> v1->v2 :
> -'make dt_binding_check' result improvement
> -Add the missing property list
> -Align the indentation of continued lines/entries
> ---
>  .../bindings/phy/axis,artpec8-pcie-phy.yaml        | 73 ++++++++++++++++++++++
>  1 file changed, 73 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
> new file mode 100644
> index 0000000..316b774
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
> @@ -0,0 +1,73 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/axis,artpec8-pcie-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARTPEC-8 SoC PCIe PHY
> +
> +maintainers:
> +  - Jesper Nilsson <jesper.nilsson@axis.com>
> +
> +properties:
> +  compatible:
> +    const: axis,artpec8-pcie-phy
> +
> +  reg:
> +    items:
> +      - description: PHY registers.
> +      - description: PHY coding sublayer registers.
> +
> +  reg-names:
> +    items:
> +      - const: phy
> +      - const: pcs
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  clocks:
> +    items:
> +      - description: PCIe PHY reference clock
> +
> +  num-lanes:
> +    const: 2
> +
> +  lcpll-ref-clk:
> +    const: 1

Unknown field... custom properties need vendor (axis,), type (boolean)
and description.

> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - "#phy-cells"
> +  - clocks
> +  - clock-names
> +  - samsung,fsys-sysreg

Same problem as in patch #1.

> +  - num-lanes
> +  - lcpll-ref-clk
> +
> +additionalProperties: true

No, this must be false.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
