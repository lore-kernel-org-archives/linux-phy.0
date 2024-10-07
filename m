Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A223CFB454
	for <linux-phy@archiver.kernel.org>; Mon,  7 Oct 2024 19:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cAt4Rj7f16Qy1BpndiQVUHq9ddsHH874LJkwOHeil4M=; b=uKrpNEKCMxxh0A
	9OvJoyk3h5xkBA4mlrL97Mo+wq4nFBZ+ispEIljlsG8mLR5xPVNjEZLK5l0F0XMtoo0Ub80mGFyXl
	VeoDTTRivl6XC92A2VbVAQL/ie8pd4v0NwWsqcYjplEZViDMSGekNd5fmwr9aAfBIYZ+0ho0C202Z
	5wWDeTlxrCwadTPUs/hVqHH25yXjoMsgETwconiJzfOpiUCQBNhp+mK6U+TiQ+U1wR043Cy/Aoapj
	odS042BA39baQstNtjlu3r3WByjjCCqrDK+BEo0k4WqFQXn4k5QnFgQpXxVgFwZiUup5sHSPC049S
	HGRKcvEuZHm9OMctHhVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxtNJ-00000003c2l-0JFg;
	Mon, 07 Oct 2024 19:26:33 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxtND-00000003c22-2vks
	for linux-phy@lists.infradead.org;
	Mon, 07 Oct 2024 19:26:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 45DAEA4213B;
	Mon,  7 Oct 2024 19:26:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92AF9C4CEC6;
	Mon,  7 Oct 2024 19:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728329186;
	bh=DxB6tP/1/54tXDZO+i+KzpSZ9NCOJyhjjOB+P87GCe4=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=lqFdxo2GJC9Zy9zGz9oUo+j00CHiUZ8Mz9N+8Id7VmOFcGg8aFkXQRKBryeKGa7gI
	 GZDI7cDFlf2k76IgoEUdLqZms8U2YTN/LH7uryUY3sfIFG9xFpdgBTNORM6zIB6rtN
	 Z8EJiLGmS7KL+UQS/joLNRp2nwZ+pIS11uN5b/n91LUpw854UlrlJkRXMYSb/rWcfy
	 RVblXPuhOh4hipnFY3Xt5qiae+w+lGok7+94aGBIkchU+8EGJpJwEthIFgvvnBnc8I
	 7OJzNXWiqHwAunpisr53OAi48SAchWrtlR6D+JvjiDLXhesquz8WfEdLyGzVdoebHM
	 WCy/nL3XCtipQ==
Message-ID: <e0355f2b-9d77-4792-9405-14b0bf79ac32@kernel.org>
Date: Mon, 7 Oct 2024 21:26:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes PHY
 binding
To: Markus Stockhausen <markus.stockhausen@gmx.de>,
 linux-phy@lists.infradead.org, chris.packham@alliedtelesis.co.nz,
 devicetree@vger.kernel.org
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de>
 <20241007163623.3274510-2-markus.stockhausen@gmx.de>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20241007163623.3274510-2-markus.stockhausen@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_122627_903071_63FA36F2 
X-CRM114-Status: GOOD (  25.67  )
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

On 07/10/2024 18:36, Markus Stockhausen wrote:
> Add bindings for the SerDes of the Realtek Otto platform. These are
> network Switch SoCs with up to 52 ports divided into four different
> model lines.
> 
> Changes in v2:
> - new subject
> - removed patch command sequences
> - renamed parameter controlled-ports to realtek,controlled-ports

Changelog goes under ---.


> 
> Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
> ---
>  .../bindings/phy/realtek,otto-serdes.yaml     | 95 +++++++++++++++++++
>  1 file changed, 95 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml b/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
> new file mode 100644
> index 000000000000..a72ac206b35f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml

Nothing improved.

> @@ -0,0 +1,95 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/realtek,otto-serdes.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek Otto SerDes controller
> +
> +maintainers:
> +  - Markus Stockhausen <markus.stockhausen@gmx.de>
> +
> +description:
> +  The MIPS based Realtek Switch SoCs of the Realtek RTL838x, RTL839x, RTL930x and RTL931x series
> +  have multiple SerDes built in. They are linked to single, quad or octa PHYs like the RTL8218B,
> +  RTL8218D or RTL8214FC and are one of the integral part of the up-to-52-port switch architecture.
> +
> +  Although these SerDes controllers have common basics they behave differently on the SoC families
> +  and rely on heavy register magic. To keep the driver clean it can load patch sequences from
> +  devictree and execute them during the controller actions like phy_init(), ...
> +
> +  The driver exposes the SerDes registers different from the hardware but instead gives a
> +  consistent view and programming interface. So the RTL838x series has 6 ports and 4 pages, the
> +  RTL839x has 14 ports and 12 pages, the RTL930x has 12 ports and 64 pages and the RTL931x has
> +  14 ports and 192 pages.

Totally messed wrapping. Please wrap your code as Linux coding style.

> +
> +properties:
> +  $nodename:
> +    pattern: "^serdes@[0-9a-f]+$"
> +
> +  compatible:
> +    items:
> +      - enum:
> +          - realtek,rtl8380-serdes
> +          - realtek,rtl8390-serdes
> +          - realtek,rtl9300-serdes
> +          - realtek,rtl9310-serdes
> +
> +  reg:
> +    items:
> +      description:
> +        The primary SerDes paged register memory location. Other SerDes control and management
> +        registers are distributed all over the I/O memory space and are identified by the driver.

What happened here? I asked only about |. Why are you adding unrelated
changes?

Anyway, still not tested and still does not look any other binding.

> +
> +  "#phy-cells":
> +    const: 4
> +    description:
> +      The first number defines the SerDes to use. The second number a linked SerDes. E.g. if a octa
> +      1G PHY is attached to two QSGMII SerDes. The third number is the first switch port this
> +      SerDes is working for, the fourth number is the last switch port the SerDes is working for.
> +
> +  realtek,controlled-ports:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      A bit mask defining the ports that are actively controlled by the driver. In case a bit is

Driver? Bindings are not about drivers. Drop.

I don't think you implemented my feedback.

> +      not set the driver will only process read operations on the SerDes. This is just in case the
> +      SerDes has been setup by U-Boot correctly and the driver malfunctions. If not set the driver
> +      will control all SerDes.



> +
> +reguired:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +
> +additionalProperties:
> +  false

Please open any existing binding and do it like there. Or start from
scratch from example-schema.

> +
> +examples:
> +  - |
> +    serdes: serdes@1b00e780 {
> +      compatible = "realtek,rtl8380-serdes", "realtek,otto-serdes";
> +      reg = <0x1b00e780 0x1200>;
> +      controlled-ports = <0x003f>;
> +      #phy-cells = <4>;
> +    };

One example is enough.

... and still not tested. Sending untested code is waste of our time.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
