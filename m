Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 394A8C28B20
	for <linux-phy@archiver.kernel.org>; Wed,  2 Apr 2025 08:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gR0bsJjR2JYlh2ikdYeWLqIJarme4DJIbaYl25KUl94=; b=dJyMykL7fR13Cw
	0sxUYlUtXWqlrC1BJ50K99fp8tpycGt1U9SaQ9XULVCefsFKV+TllJ4QnMmKCQfsDSG/cJgOAyzO2
	ujDWpfcg+WdpwtK0MDPb1BR7/EvqtmQiiGQqhp4uK1DbmZm7CiS4E4YObZ4ofZKNv6IQA2PvYAd5J
	D6bW/F4u8MQ67Az938CiQZQ8TQ094yjSCj2izEXC1MVF7JJAt0xOms73398veWK5GRr5EiB5yWeb4
	lph1yajPjSTpWwLhE5eNI2BR4LhcFnV6NOuXw3pbP/rc1zTed1P9sXHoKoEdnw57aktGXnkzWCNr8
	qGddqnWqpseBbJBlge3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzt5h-00000005TdR-3Pjf;
	Wed, 02 Apr 2025 08:04:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzt1q-00000005SsA-2p8g;
	Wed, 02 Apr 2025 08:00:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 14E315C6338;
	Wed,  2 Apr 2025 07:58:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE45FC4CEDD;
	Wed,  2 Apr 2025 08:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743580853;
	bh=lK4gVLi61oFm0LfV8A1u08bUdk3LlugSuZjn+dMmtP0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u9NWRA6YFufa0TAjI/fbbYJXG+6QWPyzpAzkZRFVeh5qWOLHpkbwKb0GVzCs5uquQ
	 CqjgWhkvHT6Cs0Fpu3pSvoHyNrV5adYf5AL2qb/1qHomJDB9JADWKVnV0kon4bB3eQ
	 Ci5qZy3N7B/d2MKFghh4QSgfQas3Pfvts6AQvwfRTSJfPtNgkECWeDERpEaYlydP5I
	 ba7fKzxn9p2ikD/CEhXDGyvqLA4wKLnNob8faMErcEIMhPhDPJG7NsWZoHVyA+74wk
	 P4tYlv/ZzTya3n/ttssjBCDjo0nEo768zDmT2/D+GQdMqDPgl8LLWxUMmnVAPGQmqu
	 9Y2ISgGkhHpRQ==
Date: Wed, 2 Apr 2025 10:00:49 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Justin Chen <justin.chen@broadcom.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, rafal@milecki.pl, alcooperx@gmail.com, 
	bcm-kernel-feedback-list@broadcom.com, florian.fainelli@broadcom.com, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, kishon@kernel.org, vkoul@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: brcmstb-usb-phy: Add support
 for bcm74110
Message-ID: <20250402-clever-judicious-bull-7e7caf@krzk-bin>
References: <20250401210736.2613748-1-justin.chen@broadcom.com>
 <20250401210736.2613748-2-justin.chen@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250401210736.2613748-2-justin.chen@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_010054_753890_B0D701AF 
X-CRM114-Status: GOOD (  14.54  )
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

On Tue, Apr 01, 2025 at 02:07:35PM -0700, Justin Chen wrote:
> bcm74110 brcmstb usb phy adds further power savings during suspend
> states.
> 
> Signed-off-by: Justin Chen <justin.chen@broadcom.com>
> ---
> v2:
> 	Sorted compat string odering
> 	Add new compat string to constraints
> 
>  .../devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml      | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
> index 580fbe37b37f..28906bb664f4 100644
> --- a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
> @@ -15,9 +15,10 @@ maintainers:
>  properties:
>    compatible:
>      enum:
> -      - brcm,bcm4908-usb-phy
> +      - brcm,bcm74110-usb-phy
>        - brcm,bcm7211-usb-phy

Does not look sorted.

>        - brcm,bcm7216-usb-phy
> +      - brcm,bcm4908-usb-phy

The list was sorted before but now it is not.

>        - brcm,brcmstb-usb-phy
>  
>    reg:
> @@ -139,7 +140,9 @@ allOf:
>        properties:
>          compatible:
>            contains:
> -            const: brcm,bcm7216-usb-phy
> +            enum:
> +              - brcm,bcm74110-usb-phy
> +              - brcm,bcm7216-usb-phy

Keep the sorting, don't add items in random spots.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
