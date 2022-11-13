Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BEBFC4332F
	for <linux-phy@archiver.kernel.org>; Sun, 13 Nov 2022 22:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rxBD/hvkoxUoI+ErdK7CxPpHhN0Dae8tC5u7it+vLAQ=; b=yYuD9GfrnLlhZ1
	/zif6KjBfczStlpVsGJMC0kgqGO5CIvgY+tpxML6kxklDuZsOy7NZ2T/OjmFFWZ8s7Ph4jBfJdRqn
	SmKRagY8I4p1Q/nJePKjAzU8/NEu+GGvsPFXuuqi2K+YCVyWv1Xp60taRcS0hKatXpkSjaTiRJBlV
	N/JwxP1aZseF2AKbaXlj+RjD5wy2m7d9FBYYkEVi1DwU3cGV1vLiAHYfZGC0+OrjYZnJBzjwMvlMn
	ZUjWz6GcCf6hkqpWK/yTMpH8eXiMDj+ObK66zi1UtvKyz2KG9BZs/uZgBNlD+0x1KGAKNGfdG8vmf
	b7tnY6e7TJLF6dE5gOSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouLZG-00EgSf-FQ; Sun, 13 Nov 2022 22:35:10 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouLZ3-00EgO0-VG; Sun, 13 Nov 2022 22:34:59 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 4A9EC5C0053;
	Sun, 13 Nov 2022 17:34:57 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Sun, 13 Nov 2022 17:34:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1668378897; x=
	1668465297; bh=aa9u7KFGnoEFdEcyyA3MaXZLY+Tt4imQzrHCuo0hs98=; b=i
	J8aP5U5Zd8RlTG1fVlAkw9sWUEdy9PxZhXAOVXYvNNtffCC28Jrkm9T0xKmafyS1
	jPw49jdB/gGethgYwHPv2k84lzcF4FuHTGHz4BRQPEnA4/bVh2zcZGpqOtkIQSW2
	BdFcQnmnQXQMBkNc1hptHFUPFoQ3xTUyX9Ylc11UTLo9vDOCMx32EAZ7mj1L6CGm
	IV9O0Tmz8guRNcBBpxP41Lttaxx77YrZYJ3I7hvAZ72rZizlHpenwaAYZIhJY22x
	SBZ8usYeKFRTUmwJDbRr55BXJSxUfBybCc1NDYaKcUvA9pPzQ7wIB7V59vReloLQ
	1ZzSmduxpLNDDa+1sUxHw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1668378897; x=
	1668465297; bh=aa9u7KFGnoEFdEcyyA3MaXZLY+Tt4imQzrHCuo0hs98=; b=B
	SXMT9/5cb/oMyC8+OrCV6wZIilF4Zj86+aooYhewjhhfIx+hRl+ZfI/XKn6PqL9f
	YoKyeoKgp0kFMJ50ljmxhmEO6bH7PUxUZQr3Zt1MByw+dS6baqrwCmWYk58ygj9f
	pqz10ySGpFJz1SDNCY5xwZ7OIVyBhWYCzAM+XFddfcpc1ANu3EZgJ9/WoRE9OVps
	HtNNroJELcmbpUNn3ShKoUI9ZObErqXnO91dvikx8sRRl5afc//g4b16Lf4fH41p
	tRN+FkAefrmvYdNrlgcCH24UY9IeqrbX8Gjbqj3cGBRAYSlEDotOzC6tvKWF3LSB
	DYUpvNH9tsVIJjSInQ5gA==
X-ME-Sender: <xms:EHFxY5jbCMk1gAPoCIG6uRJbVNZwoBKgKgMD4zvgV4xFx2VhTLqBvQ>
    <xme:EHFxY-ArJhY_XHDeRQ9NtUVdauZCnaZdbOLKud9vkutPmbpSEP3PNOkAUp0LQf1Xx
    TxiJKyeKeO3Amjenw>
X-ME-Received: <xmr:EHFxY5FGjGMFU2_jd2rEc5FyP_hq68AhfxZ-Y-neOrDVh0deD7f94FH_ctBKSREOEFx-ytist9zs7Im3a-keToVA9W9S7g-M7JQhb_SAhLzVf0WgyIFvq3E7ng>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrgedtgdduieehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghm
    uhgvlhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenuc
    ggtffrrghtthgvrhhnpeekjeelleefiedthfdtgfekgeehudefudeugeffvdfhudekleel
    fedtteejhedutdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:EHFxY-S9r3oo8m6pThj8rC60dwCF4fVjDtG6BKs35zVXYfWUjGiUCw>
    <xmx:EHFxY2x24iMN-daquE6-nAjO6HsIZkQB2P3R3_-BeJJLKRtYxkSaQQ>
    <xmx:EHFxY04QSBJab15tHZxLmWgEybHXUPKFuwxJjAksqWbuawLG7v6slg>
    <xmx:EXFxYxq-iUWWshp9tpTRUVZlZa7DwsBhHA9CRBEUOdFgstB_ywqGQA>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 13 Nov 2022 17:34:56 -0500 (EST)
Message-ID: <e1ab922c-36d5-d5d9-93ea-b8a257c9c633@sholland.org>
Date: Sun, 13 Nov 2022 16:34:55 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux ppc64le; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v3 02/11] dt-bindings: usb: sunxi-musb: add F1C100s MUSB
 compatible string
Content-Language: en-US
To: Andre Przywara <andre.przywara@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Icenowy Zheng <uwu@icenowy.me>
Cc: soc@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20221106154826.6687-1-andre.przywara@arm.com>
 <20221106154826.6687-3-andre.przywara@arm.com>
From: Samuel Holland <samuel@sholland.org>
In-Reply-To: <20221106154826.6687-3-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221113_143458_106333_33C89075 
X-CRM114-Status: GOOD (  13.81  )
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

On 11/6/22 09:48, Andre Przywara wrote:
> From: Icenowy Zheng <uwu@icenowy.me>
> 
> Allwinner F1C100s has a hybrid MUSB controller between the A10 one and
> the A33 one.
> 
> Add a compatible string for it.
> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml        | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml b/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
> index 8992eff6ce38..9ae634280bf4 100644
> --- a/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
> +++ b/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
> @@ -17,6 +17,7 @@ properties:
>        - const: allwinner,sun6i-a31-musb
>        - const: allwinner,sun8i-a33-musb
>        - const: allwinner,sun8i-h3-musb
> +      - const: allwinner,suniv-f1c100s-musb

This would be a good place to use an enum. Either way:

Reviewed-by: Samuel Holland <samuel@sholland.org>

>        - items:
>            - enum:
>                - allwinner,sun8i-a83t-musb


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
