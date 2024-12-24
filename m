Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55A53E77188
	for <linux-phy@archiver.kernel.org>; Tue, 24 Dec 2024 12:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5TXbUDPItue65pyYCdmKFks/j1jes2H2LQl2Z5ygZQ=; b=aCEOdX8N/Xl3kq
	cPuwi1a+4aHIy0SlnG7os7YWoBgxO8d+xP6+JjJzuHakADC2XRJ1kiZm0m9ie8fIPxGdtlkzc7KYi
	pDBL8ofQocHNpzuIF+sWZRPig0tQhFe8PZU2gf5UzyU6Kl1gzJcwrGKtQIAzlhdk3B/i6VpkW536J
	kQep4yHBrNTSroqR7OTM3Wj6mcvx524qWvdcszNXsiIdSQ3K5C+EsktGK8K5bfkKhctTARPcK/7al
	is1waeALMacEEldHSekO6dMIp6u7KQ0JPKckzWddJFBbQU5Yd5Wzrh7oN9pRcaHXQ84XiuKcGKKer
	l/+uplbTEWC7n57YssHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ41C-0000000BwZo-2BZ3;
	Tue, 24 Dec 2024 12:28:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ41A-0000000BwZD-2akb;
	Tue, 24 Dec 2024 12:28:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=FpgSUxP8zy9z3Ozm+IeXLmSotIQFRVFdlAAn52p9XAk=; b=zJMnPWxsL2xtSkCXoWlGw8VLzA
	hTNv5gQmIrm3nEfhiAXMtjlfwkkLzbXlFq2dLB1LwznnOH+h6+edEo/U4ktfxtvYMIMJfAchIeHcX
	bmG3yfi4h2u+TyyjoSsQcLCz5ITJJyrwVqOaZA98oy/TgQ6/fUq+AqFqizV6yRbO1USJUl9/IjVdN
	lqZKstEV8knrnwD4NqpgDcghDrNGu3Z/HwyWQXJl6XAPlokKzRl5WxcULPddtpbmHVwfiyTHD/42d
	ufO/wrr5mLrTDZTOB+lnPnGfQ3HhWVbhSjr/mOL9gON/l3ToqetmH7kiNzcffRoFqlA84tFzCyIdo
	rhdJBSyw==;
Received: from i5e860d12.versanet.de ([94.134.13.18] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tQ40u-00016A-Dw; Tue, 24 Dec 2024 13:27:52 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-phy@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add rk3562
Date: Tue, 24 Dec 2024 13:27:51 +0100
Message-ID: <1956693.6tgchFWduM@diego>
In-Reply-To: <20241224094240.3817261-1-kever.yang@rock-chips.com>
References: <20241224094240.3817261-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_042808_685173_19E7E249 
X-CRM114-Status: GOOD (  13.99  )
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

Am Dienstag, 24. Dezember 2024, 10:42:39 CET schrieb Kever Yang:
> Add compatible for the USB2 phy in the Rockchip RK3562 SoC.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
> 
>  .../devicetree/bindings/phy/rockchip,inno-usb2phy.yaml         | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
> index 6a7ef556414c..367297f6f8b5 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
> @@ -19,6 +19,7 @@ properties:
>        - rockchip,rk3328-usb2phy
>        - rockchip,rk3366-usb2phy
>        - rockchip,rk3399-usb2phy
> +      - rockchip,rk3562-usb2phy
>        - rockchip,rk3568-usb2phy
>        - rockchip,rk3576-usb2phy
>        - rockchip,rk3588-usb2phy
> @@ -150,7 +151,6 @@ allOf:
>              enum:
>                - rockchip,rk3568-usb2phy
>                - rockchip,rk3588-usb2phy
> -
>      then:
>        properties:
>          host-port:
> @@ -190,6 +190,7 @@ allOf:
>                - rockchip,rk3328-usb2phy
>                - rockchip,rk3366-usb2phy
>                - rockchip,rk3399-usb2phy
> +              - rockchip,rk3562-usb2phy
>                - rockchip,rk3568-usb2phy
>                - rockchip,rk3588-usb2phy
>                - rockchip,rv1108-usb2phy
> 





-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
