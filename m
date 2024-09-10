Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 064BDECE582
	for <linux-phy@archiver.kernel.org>; Tue, 10 Sep 2024 07:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXfxAQ/sX42IJP9g+ZCke6DZDeofdbBS6QdwJbXWihs=; b=IZmIAcNKH/X3mm
	YKpYEkiJiPPdKFs0GWAbc4rmjlO6+ZSeuQUKl5Ofuw3zp/grNg978+GtqkeX+7s4q+M17jf3EEzeF
	QdGWm+MbYb2A06nzHZ4t3VpgLRuDs9GtDmTTfGPMIkS8YBesBEWUxcvhKSQuHOZn1yWGbjCqBwSDO
	AAT6J0a3yNis4lWkFgWIhTN15vXTzORYga+AFwAQP6ypESWcbdw0CEF1zFQpjSyEwduLVbb/186YO
	QQx/FFbAZ6RUTMl9fikRLWXXADRxlfPPxKglNjd6KPkUUjqXVtxODplKH8aQsKL7IJAbfDwuPIbHI
	yOha64+u6w3JVCe/S8mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snvV2-00000004e6z-3316;
	Tue, 10 Sep 2024 07:41:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snvU0-00000004dyV-22Ed;
	Tue, 10 Sep 2024 07:40:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 089C15C05E6;
	Tue, 10 Sep 2024 07:40:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAD13C4CEC3;
	Tue, 10 Sep 2024 07:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725954015;
	bh=wlTegC/QTFnptw7DuqNfzDPNGm8rVd8/JkWhJcVsykE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gUVVggDMNXJs62VS/eSboCHyfFHuOPAwRp9z9KEZBHZbsWXqa9aQ9pxfdA0J+etxi
	 F69wIVikd8TqxQtoQOZd+llfFFqk8sSAu41T7qR2/VfyOrEILVlV99FzENUdY/hRuv
	 4Hx8PzOVx53DC3JzumRAOOcezfflc2JOC7/gsrumyogTjS60YES34eJ0mkoulQjqzn
	 xaAoO28415NSwD4e1Xb1XhblcMJhTjG6g5fOC7brr4pmHKKji2sm3YAswqjAqPWizP
	 9cGVWXHHar4GW0kMpWKT+Mi2Exc7G5HO3OQSzJb0kTfws1/hzSUUJec4kA4rZFayY7
	 YbI/NZv5MwJTg==
Date: Tue, 10 Sep 2024 09:40:12 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Daniel Machon <daniel.machon@microchip.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Lars Povlsen <lars.povlsen@microchip.com>, 
	Steen Hegelund <Steen.Hegelund@microchip.com>, UNGLinuxDriver@microchip.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 8/9] dt-bindings: phy: sparx5: document lan969x
Message-ID: <wd3gzn3lpmw64qor3xslif6rnp7htycfhu33pa2xpxvv6mrwqe@nv6pcwkstywe>
References: <20240909-sparx5-lan969x-serdes-driver-v2-0-d695bcb57b84@microchip.com>
 <20240909-sparx5-lan969x-serdes-driver-v2-8-d695bcb57b84@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240909-sparx5-lan969x-serdes-driver-v2-8-d695bcb57b84@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_004016_682976_32D9284D 
X-CRM114-Status: GOOD (  17.39  )
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

On Mon, Sep 09, 2024 at 05:14:48PM +0200, Daniel Machon wrote:
> Lan969x is going to reuse the existing Sparx5 SERDES driver - document
> that by adding compatible strings for the different SKU's that we
> support, and a short description of the SERDES types and data rates
> supported.
> 
> Signed-off-by: Daniel Machon <daniel.machon@microchip.com>
> Reviewed-by: Steen Hegelund <Steen.Hegelund@microchip.com>
> ---
>  .../bindings/phy/microchip,sparx5-serdes.yaml           | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/microchip,sparx5-serdes.yaml b/Documentation/devicetree/bindings/phy/microchip,sparx5-serdes.yaml
> index bdbdb3bbddbe..fa0b02916dac 100644
> --- a/Documentation/devicetree/bindings/phy/microchip,sparx5-serdes.yaml
> +++ b/Documentation/devicetree/bindings/phy/microchip,sparx5-serdes.yaml
> @@ -8,6 +8,7 @@ title: Microchip Sparx5 Serdes controller
>  
>  maintainers:
>    - Steen Hegelund <steen.hegelund@microchip.com>
> +  - Daniel Machon <daniel.machon@microchip.com>
>  
>  description: |
>    The Sparx5 SERDES interfaces share the same basic functionality, but
> @@ -62,12 +63,26 @@ description: |
>    * 10.3125 Gbps (10GBASE-R/10GBASE-KR/USXGMII)
>    * 25.78125 Gbps (25GBASE-KR/25GBASE-CR/25GBASE-SR/25GBASE-LR/25GBASE-ER)
>  
> +  lan969x has ten SERDES10G interfaces that share the same features, operating
> +  modes and data rates as the equivalent Sparx5 SERDES10G interfaces.
> +
>  properties:
>    $nodename:
>      pattern: "^serdes@[0-9a-f]+$"
>  
>    compatible:
> -    const: microchip,sparx5-serdes
> +    oneOf:
> +      - enum:
> +          - microchip,sparx5-serdes
> +          - microchip,lan9691-serdes
> +      - items:
> +          - enum:
> +              - microchip,lan9698-serdes
> +              - microchip,lan9696-serdes
> +              - microchip,lan9694-serdes
> +              - microchip,lan9693-serdes
> +              - microchip,lan9692-serdes

If there is going to be a new version, keep rather increasing/growing
alphanumerical order, but no need to resend just for this.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
