Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E933DC3DA78
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 18:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=daahBxRL78OdhieJLqUVREdkOGCqukpI8v/P3Rv3N+s=; b=HTHJM/2J5jB0sj
	Sw96GWvOR8D+yDmqsZVls3RwtCaigELDlbWH9WWcwcO2B/IcqtKl3ZmepMjme2vFO/rEFNjm/dLsh
	thcOXJKB9B2a7dugf+xuUJdAapQQ14Hs/nwmwRUv7g+6clUfDMyvXeBXBsLbME48ehXyjLJUsPyV8
	fatxHRdYyV5tNC23A8hzNtXMWtA2QIRIDUjbNJWLhg4w7Edf4lPboWwSFMy3Fe0sSd1ZzA9AXGQr9
	Bdn3jiava9scqcevpYYIynbqBq5nMXFeHAJeoTm0g/CTzednwPYj8S5Iuy5YvsR+ym8qd79powKmT
	adsJl2Q7z24Cc9WSr5Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGOTb-003yG9-At; Fri, 13 Jan 2023 18:08:27 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGOTN-003y9t-EY; Fri, 13 Jan 2023 18:08:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B8CF7622D5;
	Fri, 13 Jan 2023 18:08:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A44ADC433D2;
	Fri, 13 Jan 2023 18:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673633291;
	bh=/AOabS0gzSJrsANTEfB1Kjc/Gs5HwKZqsKiGn38jFWM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DJ7ZuRIXkhsUlY1TuCjTHLnWmEQpqClIv/XQ445+CZEKSojWM6V9El6DgHXapUxqG
	 nUj65/qqkvZQIJS/kqAQmfbb+74pcNJIhpBdcgGSH3fMWSo5U5cmgn7hynWH2EED4N
	 LhrX6fqeiQxkWg8/7ZIdbxqF/KKYc2zv3utmse8f7ishSUfJwQCGKb6SeTmwwQHnPI
	 EoeMpVLXur7jebEC75XFjV2NkLrGpEMdGbuy6Oy6zQP64F6pEZB2TdFPukWXbaOfuL
	 L/oJ+mMjfo18g0xrQUjWV0NEViYOhgMEClAOMlt24U3wdzx5AHRj/FeEDUXo+zx2Gr
	 lgg5corXEsM/A==
Date: Fri, 13 Jan 2023 23:38:07 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
	kishon@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: rockchip: convert
 rockchip-dp-phy.txt to yaml
Message-ID: <Y8GeBzNJvhMeh3sn@matsya>
References: <aa6fe473-71f2-edba-f009-994a3dbc9802@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa6fe473-71f2-edba-f009-994a3dbc9802@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_100813_580278_1F38AF11 
X-CRM114-Status: GOOD (  21.21  )
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

On 29-12-22, 10:44, Johan Jonker wrote:
> Convert rockchip-dp-phy.txt to yaml.

This series fails to apply, pls rebase
> 
> Changed:
>   rename file name

This should not be in change log but after the --- line

> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed V2:
>   Use the compatible as filename.
> ---
>  .../bindings/phy/rockchip,rk3288-dp-phy.yaml  | 41 +++++++++++++++++++
>  .../bindings/phy/rockchip-dp-phy.txt          | 26 ------------
>  2 files changed, 41 insertions(+), 26 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3288-dp-phy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-dp-phy.txt
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3288-dp-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3288-dp-phy.yaml
> new file mode 100644
> index 000000000..2538235c5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/rockchip,rk3288-dp-phy.yaml
> @@ -0,0 +1,41 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/rockchip,rk3288-dp-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip specific extensions to the Analogix Display Port PHY
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    const: rockchip,rk3288-dp-phy
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: 24m
> +
> +  "#phy-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - clocks
> +  - clock-names
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3288-cru.h>
> +    edp-phy {
> +      compatible = "rockchip,rk3288-dp-phy";
> +      clocks = <&cru SCLK_EDP_24M>;
> +      clock-names = "24m";
> +      #phy-cells = <0>;
> +    };
> diff --git a/Documentation/devicetree/bindings/phy/rockchip-dp-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-dp-phy.txt
> deleted file mode 100644
> index e3b4809fb..000000000
> --- a/Documentation/devicetree/bindings/phy/rockchip-dp-phy.txt
> +++ /dev/null
> @@ -1,26 +0,0 @@
> -Rockchip specific extensions to the Analogix Display Port PHY
> -------------------------------------
> -
> -Required properties:
> -- compatible : should be one of the following supported values:
> -	 - "rockchip.rk3288-dp-phy"
> -- clocks: from common clock binding: handle to dp clock.
> -	of memory mapped region.
> -- clock-names: from common clock binding:
> -	Required elements: "24m"
> -- #phy-cells : from the generic PHY bindings, must be 0;
> -
> -Example:
> -
> -grf: syscon@ff770000 {
> -	compatible = "rockchip,rk3288-grf", "syscon", "simple-mfd";
> -
> -...
> -
> -	edp_phy: edp-phy {
> -		compatible = "rockchip,rk3288-dp-phy";
> -		clocks = <&cru SCLK_EDP_24M>;
> -		clock-names = "24m";
> -		#phy-cells = <0>;
> -	};
> -};
> --
> 2.20.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
