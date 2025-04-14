Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74863C369B5
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 10:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMqHOHQr5gSjnJoMtHdxUJ09iucdfqWItAdQfCctTAU=; b=X/0+4LTZp383t1
	G4NKO13HJWSkQvZC7g5rpLPlq1Pexh/4N//3vSlSaHXvUCDpR+543M/aX2knv7vfdEmwEE7fqycsv
	70jt6+FYGVHOjDkP48dhBSE+WU6ggAlgEJ3yoH2zjPFHjJ1L/dYhPccnOl6DDv84J3pZ8mmC6LBQA
	KrlF6i0FaMTrZjIJMc5R/CwBJTMP222uHM5kmqdx3SGW3OvVYF5W8BnPe85jkA9k29bMBzBc3jBI1
	qMTUcfCpccn5O6AGR9CwJzXc5cBWhbUvWClPJ1ExlBQomv5i8LFzV2gWM8YLkQgdNcqjD8VawaPDa
	7p3gN6MLEhX7T61ATiDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HHD-00000001ai1-0msf;
	Mon, 14 Apr 2025 10:42:55 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4H0I-00000001WCH-1Y78;
	Mon, 14 Apr 2025 10:25:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1744626324;
	bh=oNovNC7Tc5LqT/Tmjvy+D6kZkuhR+8/8x/Z4YPaWM+o=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TGlGR5BI5wWU982+Co1FkL4MEWOr6ukC6p0+7hQ0e72iwzO4JfKHUT0rBMTwt9AJQ
	 RYcdJNJwB3L26X0BjLXO6pbsO2C1jySokkDhDGX9oxV1NK+lsXDME+NnCien0vI+cc
	 rYVyteZwOCurZFAY5zvZHTyy6LJzDMp3DibyIcdffH0lks6poPioJR/HYJ0QDUtnKS
	 UQmCLC3zaFfwY7mAfg6+TWwlTjt96uqDmkV5HlCLIvSAKtVWmEU+0Kc/s4nQe9b1Ie
	 1/XpVpGYkd/VDju6iRXSUi+pkcVSNdIxvTAP5NeQ3ju3WN49IdTkYyuUqATgs0u+QX
	 lDXhjeLyKhpgA==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DD01817E1034;
	Mon, 14 Apr 2025 12:25:23 +0200 (CEST)
Message-ID: <700af1ab-f43e-4583-8f0e-27e5d4424338@collabora.com>
Date: Mon, 14 Apr 2025 12:25:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 3/5] dt-bindings: power: Add binding for MediaTek MT7988
 topmisc power controller
To: Frank Wunderlich <linux@fw-web.de>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Daniel Golle <daniel@makrotopia.org>, Sam Shih <sam.shih@mediatek.com>,
 MandyJH Liu <mandyjh.liu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250413085806.8544-1-linux@fw-web.de>
 <20250413085806.8544-4-linux@fw-web.de>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250413085806.8544-4-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_032526_633919_13DD4269 
X-CRM114-Status: GOOD (  13.00  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Il 13/04/25 10:58, Frank Wunderlich ha scritto:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Topmisc is a systemcontroller used for xs-phy and ethernet on  mt7988.
> Add binding for it.

That's the wrong binding... check mfd/syscon.yaml :-)

P.S.: Is there any reset controller in topmisc? Any clock?
       If yes, syscon.yaml is also wrong, and you need a driver for that.
       Remember: If it turns out *later* that this has clk/resets and the
       bindings are already set for just a syscon, it's gonna be way harder!

Cheers,
Angelo

> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>   .../power/mediatek,power-controller.yaml      | 35 +++++++++++++------
>   1 file changed, 24 insertions(+), 11 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
> index 591a080ca3ff..60d2fc7963e5 100644
> --- a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
> +++ b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
> @@ -22,17 +22,27 @@ properties:
>       pattern: '^power-controller(@[0-9a-f]+)?$'
>   
>     compatible:
> -    enum:
> -      - mediatek,mt6735-power-controller
> -      - mediatek,mt6795-power-controller
> -      - mediatek,mt8167-power-controller
> -      - mediatek,mt8173-power-controller
> -      - mediatek,mt8183-power-controller
> -      - mediatek,mt8186-power-controller
> -      - mediatek,mt8188-power-controller
> -      - mediatek,mt8192-power-controller
> -      - mediatek,mt8195-power-controller
> -      - mediatek,mt8365-power-controller
> +    oneOf:
> +      - items:
> +        - enum:
> +          - mediatek,mt6735-power-controller
> +          - mediatek,mt6795-power-controller
> +          - mediatek,mt8167-power-controller
> +          - mediatek,mt8173-power-controller
> +          - mediatek,mt8183-power-controller
> +          - mediatek,mt8186-power-controller
> +          - mediatek,mt8188-power-controller
> +          - mediatek,mt8192-power-controller
> +          - mediatek,mt8195-power-controller
> +          - mediatek,mt8365-power-controller
> +      - items:
> +        - enum:
> +          - mediatek,mt7988-topmisc
> +        - const: syscon
> +        - const: mediatek,mt7988-power-controller
> +
> +  reg:
> +    maxItems: 1
>   
>     '#power-domain-cells':
>       const: 1
> @@ -43,6 +53,9 @@ properties:
>     '#size-cells':
>       const: 0
>   
> +  '#clock-cells':
> +    const: 1
> +
>   patternProperties:
>     "^power-domain@[0-9a-f]+$":
>       $ref: "#/$defs/power-domain-node"



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
