Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E50E9CC6B33
	for <linux-phy@archiver.kernel.org>; Thu, 15 Oct 2026 09:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+mZEAqxCh0e+pLyGZeLxXJOugmxhLlPrehmzPAQzXPQ=; b=vP1n4UvP+/24Hp
	TCvJ09/L72t6Ds+u7QMpYKJaMaL5wj8R98otaoB1MPn9WlQ/1Ig8dp+iXsNJYm+IXHH9v67LOZFn5
	0i6SVeTwjnyyWGADuOYOHnC/GePSsMtGyVIXchPmIB/TV29A5DQBgxebXM3U2JvtLBmai6MaMzMAV
	RRzuRWc2tE7SxM5qiVTGIz2yBSDmKAHO8zHS/Ut517Z4W2u9hSfvk1cT3qOo/fLrsZvhgorub8GMA
	YOQSP9/HbTc+V6MPXMfyVeR469fW0fLE8EIBhXXIaa++lSZahjXh22VpfTfKysAbSe2obX5hulcZJ
	yXSzh/KWSJUYI5xPOTXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHm8-0000000HGku-1MV3;
	Thu, 15 Oct 2026 09:29:24 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHm7-0000000HGkS-00IU;
	Thu, 15 Oct 2026 09:29:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 30F14601F0;
	Thu, 15 Oct 2026 09:29:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE5F91F000C4;
	Thu, 15 Oct 2026 09:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792056561;
	bh=HgKPVZ2e357Rb0z+ZGzfAhokRDWTxHYeRTuy+cn/s8g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ga7E1uNX2JLUwn3p2Jgx5FUxgmjbldoWqRc6sEp3V6Ymuk1jNvloxJNdJQ/tiJyp9
	 eyd3fm7KGNjyDZHB+VPrO6cds1TTYgBqkVavjM1SM6f/x9uaFBB1XQrINTQv4tlxAL
	 2O6VUfjxEore5O4DANBID3OUuPHc1qiWl8Hs4ZdFQtKfhTlWja8WXRv0eYop56QOJp
	 9UxemPFG/kRh0miA7l37cbf8RUR0rUklGqh4adebf88675tlRVcCo3EwoCfkK3cKL8
	 772CEum32XcHwLOBVoa4owV+64s/Av7dDwad+7o/RJXx21FnkFCjnPlHBD8zr1pcye
	 KaS72h4m6sCsg==
Date: Thu, 15 Oct 2026 11:29:18 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Navid Ghahremani <ghahramani.navid@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, arnd@arndb.de, 
	stefandoesinger@gmail.com, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 10/24] dt-bindings: phy: Add ZTE ZX279128S PCIe PHY
 binding
Message-ID: <20261015-celestial-wealthy-cockatrice-7f100d@quoll>
References: <20261014072109.1759502-1-ghahramani.navid@gmail.com>
 <20261014072109.1759502-11-ghahramani.navid@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261014072109.1759502-11-ghahramani.navid@gmail.com>
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

On Wed, Oct 14, 2026 at 08:20:50AM +0100, Navid Ghahremani wrote:
> Add Device Tree binding for the PCIe SerDes PHY found inside the
> topcrm block of the ZTE ZX279128S SoC.
> 
> Signed-off-by: Navid Ghahremani <ghahramani.navid@gmail.com>
> ---
>  .../bindings/phy/zte,zx279128s-pcie-phy.yaml  | 40 +++++++++++++++++++
>  1 file changed, 40 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/zte,zx279128s-pcie-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/zte,zx279128s-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/zte,zx279128s-pcie-phy.yaml
> new file mode 100644
> index 0000000000..7bfa363294
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/zte,zx279128s-pcie-phy.yaml
> @@ -0,0 +1,40 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/zte,zx279128s-pcie-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ZTE ZX279128S PCIe PHY
> +
> +maintainers:
> +  - Navid Ghahremani <ghahramani.navid@gmail.com>
> +
> +description:
> +  PCIe PHY block inside the ZTE ZX279128S Top CRM.
> +
> +properties:
> +  compatible:
> +    const: zte,zx279128s-pcie-phy
> +
> +  reg:
> +    description: Port index (0 or 1)
> +    items:
> +      - enum: [0, 1]

No, that's pointless. What is this index meaning on the bus?

> +
> +  "#phy-cells":
> +    const: 0
> +

No other resources? Then this belongs to the parent node.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
