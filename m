Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6283FF885A
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 09:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eorl3BItVAUn5IXgQoENRGVDNdlaQ/c8ugChiWXnOaA=; b=k4lt+3F4YteNRD
	y5XUONgpSUc1pggV1+fclcAc5SRHrh7lYXktQMQOY73oIisZPTnUMMYc26ZeiCylVHAajvdR/gMnO
	WmtxuH7wW3uRrQefvC8itW+AxT3k+741hWMVktD8end3E/8vLh9cDR8LuBXjrM/fw1ChVJ8XjTEhs
	IdZz3M275+x3G5fy1OsHWk7CNymQQ35mR8/m9H7JSpdnFZrf3JehOpwscj6WjmCzxbtukJyPDVIC+
	8Sbo7rZLYZ0ov1MsZ5yg/F6TGRJpEPHPQHGadVD99cjjBlFI8j6WAZIPodgVq4RmMO7I2fe50OtMR
	TBW5tl7cqEd0AgbV9hgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJq0I-0000000CrRT-1q4h;
	Mon, 04 May 2026 09:54:18 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJq0G-0000000CrQx-2Jmi;
	Mon, 04 May 2026 09:54:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8C1E4409EF;
	Mon,  4 May 2026 09:54:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC083C2BCB8;
	Mon,  4 May 2026 09:54:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777888454;
	bh=Z8fiul8TmU7YltudEE+77XwXuYIqxOtXGRfJLVZBnJU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YLW1uNjv9+lCrTZa3oGmivE6EjkkcGTu7/RS8MVs/ucukTxRnlSdxmx3n592yqO8W
	 v609tW8k0qfx3e33eNN96/KQNe6Hu6x94PtvoVbkqBAxTJiCHQLY0S02GfnXLNS94j
	 my2P32hras+TwoEMrYf6AwsAHsybHooVGnFjbJ1rpnhBiXWamS591JH47Ds9l7qqgx
	 86jX2PVFVoJc3CGQKke3/dK6w3N6rLjCSPQfyBo1FYg8dYfKlaQIuF0SifwsmebFuM
	 EfdLUCKmFd9rMf1oToEZBHHycwJhl8DC7n1ZWhU9/rZOp34gM9CGjL4IahiXbQCL5s
	 yPBSqSTH/fBtg==
Date: Mon, 4 May 2026 11:54:11 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
	Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, Ze Huang <huang.ze@linux.dev>, 
	Alex Elder <elder@riscstar.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-hardening@vger.kernel.org, Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: Add Spacemit K3 USB3/PCIe comb phy
 support
Message-ID: <20260504-logical-nice-python-1e1f43@quoll>
References: <20260430022843.1090138-1-inochiama@gmail.com>
 <20260430022843.1090138-2-inochiama@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260430022843.1090138-2-inochiama@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_025416_651447_38BCA920 
X-CRM114-Status: GOOD (  11.14  )
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

On Thu, Apr 30, 2026 at 10:28:40AM +0800, Inochi Amaoto wrote:
> +properties:
> +  compatible:
> +    const: spacemit,k3-comb-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 2
> +    description:
> +      The first one is phy id, the second one is phy type.

You could mention here the defines representing supported phy types.

> +
> +  spacemit,apb-spare:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to APB SPARE system controller interface, used for
> +      PHY calibration.
> +
> +  spacemit,apmu:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      - items:
> +          - description: phandle of APMU syscon
> +          - description: configuration of the PHY lanes
> +    description: |
> +      Phandle to control PHY mux configuration. The configuration
> +      is described as follows:
> +      bit 4: 0 - PCIe A x8 mode, 1 - PCIe lane share mode
> +      bit 3: 0 - PCIe A x4 mode, 1 - PCIe A x2 and PCIe B x2 mode
> +      bit 2: 0 - PCIe C lane 0 is PCIe mode , 1 - USB mode
> +      bit 1: 0 - PCIe C lane 1 is PCIe mode , 1 - USB mode
> +      bit 0: 0 - PCIe D lane is PCIe mode , 1 - USB mode

I assume this device k3-comb-phy handles phys for PCIe A, B, C and D?

> +
> +      The bit[3:0] is only valid when bit 4 is 1.
> +
> +required:
> +  - compatible

reg required.

> +  - "#phy-cells"
> +  - spacemit,apb-spare
> +  - spacemit,apmu
> +
> +additionalProperties: false

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
