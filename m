Return-Path: <SRS0=HkoW=PF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4123C433F5
	for <linux-phy@archiver.kernel.org>; Sun, 17 Oct 2021 21:46:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1191860FD9
	for <linux-phy@archiver.kernel.org>; Sun, 17 Oct 2021 21:46:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1191860FD9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xh5M2Eo0/c0d3fA8BRjqiFR1sb/1m3kvSlmKMayenxY=; b=hVfHlMzm8q7uL3
	Y3K5Sw1UXmEtQC6Zg8MOJufFltn0QEHaZOA37sDJA1j9QpHCQ12U9iau4ercJk3fMOVXkfJ26ihZT
	v+xarY66uqqs4MebDR/TlRH3ndQqO7qV/5Tkidz3EY0PMe+/BensrrM0MVHfhj220mvcOBH0BNrnD
	HUqxOlP1qT83bOQeXNhKu5p8OmPHMb27raSHhOQdveZMGxvmX6KvhP0a7YPafRwLXMWTKm7YaDvzW
	5UU+lV5N074AOo+e4Lo4CCwT0ykgvbBpAk8teJjDYcW3AeytXC8vIHz2hyreM/0wVeWdkoLKzIghG
	0DzHdOOxgDlEj3vILr1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcDym-00DNNE-Bs; Sun, 17 Oct 2021 21:46:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcDyk-00DNMm-2o; Sun, 17 Oct 2021 21:46:03 +0000
Received: from p508fd4f7.dip0.t-ipconnect.de ([80.143.212.247]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mcDyg-0004up-B7; Sun, 17 Oct 2021 23:45:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, kishon@ti.com, vkoul@kernel.org
Cc: robh+dt@kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: rockchip: remove usb-phy fallback
 string for rk3066a/rk3188
Date: Sun, 17 Oct 2021 23:45:57 +0200
Message-ID: <2801784.XqmsWqfj7A@phil>
In-Reply-To: <20210828111218.10026-1-jbx6244@gmail.com>
References: <20210828111218.10026-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211017_144602_183303_5DA7CFE3 
X-CRM114-Status: GOOD (  15.76  )
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

Hi Vinod, Kishon,

Am Samstag, 28. August 2021, 13:12:17 CEST schrieb Johan Jonker:
> With the conversion of rockchip-usb-phy.yaml a long time used fallback
> string for rk3066a/rk3188 was added. The linux driver doesn't do much with
> the GRF phy address range, however the u-boot driver rockchip_usb2_phy.c
> does. The bits in GRF_UOC0_CON2 for rk3066a/rk3188 and rk3288 for example
> don't match. Remove the usb-phy fallback string for rk3066a/rk3188
> to prevent possible strange side effects.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

are you picking up this patch or can I get an Ack to just apply it
together with the dts patch2?

Thanks
Heiko

> ---
>  .../devicetree/bindings/phy/rockchip-usb-phy.yaml     | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml
> index f0fc8275d..499d55131 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml
> @@ -11,13 +11,10 @@ maintainers:
>  
>  properties:
>    compatible:
> -    oneOf:
> -      - const: rockchip,rk3288-usb-phy
> -      - items:
> -          - enum:
> -              - rockchip,rk3066a-usb-phy
> -              - rockchip,rk3188-usb-phy
> -          - const: rockchip,rk3288-usb-phy
> +    enum:
> +      - rockchip,rk3066a-usb-phy
> +      - rockchip,rk3188-usb-phy
> +      - rockchip,rk3288-usb-phy
>  
>    "#address-cells":
>      const: 1
> 





-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
