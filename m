Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D8C4C00528
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jul 2023 20:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f5ITGvsTzku9O9joIpCfJiOFNsydtGskiw34+g3bnaY=; b=G9sDo82iE+I8g0
	Qhp14N6T+JN3AUgp6Ijmk2irPlva3G7tHpulQ+QvM9XvqCNbuuiKa1aE2zq3boUXXR0kZE3EZwXm4
	UdA4XvT2Aadwock7utzwnrfI+lYGTK70ijx9YIwoWdvkZW3RSt7Cw4GKl4ihqfP/TPrGDhcwGzkBr
	Ry2Z4M/mWsGgPiB9BHFt8sMew0GYzCYYYePEP0doB0wIf0E7lHp1Y3gBHSfVz1Q5wKH33SfjUD3Gn
	lJoECXS38gXrfW46wBBIyVjd5NyCxGKCexdNVJDzDT54drd/QZPQ4BQ93Aw7UAiMgk1NaCWwdtXFN
	K7mbC9p3YinViEpDQTzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQZpc-00HK57-1B;
	Mon, 31 Jul 2023 20:49:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQZpY-00HK3i-1j;
	Mon, 31 Jul 2023 20:49:29 +0000
Received: from i53875aa8.versanet.de ([83.135.90.168] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qQZpX-0008Uq-4l; Mon, 31 Jul 2023 22:49:27 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@edgeble.ai>
Cc: Jagan Teki <jagan@edgeble.ai>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 03/14] dt-bindings: phy: rockchip-inno-dsidphy: Document rv1126
Date: Mon, 31 Jul 2023 22:49:26 +0200
Message-ID: <4851208.31r3eYUQgx@diego>
In-Reply-To: <20230731110012.2913742-4-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
 <20230731110012.2913742-4-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_134928_571523_A462210C 
X-CRM114-Status: GOOD (  14.21  )
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

Am Montag, 31. Juli 2023, 13:00:01 CEST schrieb Jagan Teki:
> Document a compatible string for the rv1126 dsi-dphy.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

Acked-by: Heiko Stuebner <heiko@sntech.de>

> ---
> Cc: linux-phy@lists.infradead.org
> Cc: devicetree@vger.kernel.org
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Kishon Vijay Abraham I <kishon@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> 
>  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> index 5c35e5ceec0b..46e64fa293d5 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> @@ -19,6 +19,7 @@ properties:
>        - rockchip,rk3128-dsi-dphy
>        - rockchip,rk3368-dsi-dphy
>        - rockchip,rk3568-dsi-dphy
> +      - rockchip,rv1126-dsi-dphy
>  
>    reg:
>      maxItems: 1
> 





-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
