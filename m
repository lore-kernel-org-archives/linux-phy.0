Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93514CA5FDD
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 10:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6F/1KPy5UUY84Lhq33j0ZfINpLbaOqA2/yKqZZGkTmo=; b=o0TGYyROUvEv//
	gnMZ4R0ssNRbRmXDJHKDHJUThs9C7wgsRtLbx9++FPz7kFfsB3I4bRqF4q2g7bB2Km8B1MbCaHcCq
	jKfK3tex4eYz19CU8qYGxiI2KLre2yRWNv1ovx84u8qGj86JGyf7CjBtXP4gkHj9LtkxpycDlJAWi
	+E89cxB0iEsHGlSr++QNFMpAoDtCX3WaBCpB/8UuW/v0aDgYuvy41plXDUsaZBm2Kb6g/J1AzeYcD
	abvXAxZ8W1y2DiWqH+WZjYfxaEYzXPkrFjbbh8xicHSBrvl/aIqkGBkyWblMtaMxfPB6cIFUb5dws
	PMHnlzUV8hSaiRYVTajQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCxGG-0000000DO2P-12LO;
	Sat, 03 Oct 2026 10:46:36 +0000
Received: from mail-ej2-x0d.google.com ([2a00:1450:4864:34::d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCxGD-0000000DO0E-0cBh
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 10:46:35 +0000
Received: by mail-ej2-x0d.google.com with SMTP id a640c23a62f3a-c2e01f5c0aeso76269966b.1
        for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 03:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1791024391; x=1791629191; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=RwKHh70JY+GXTFZ9akuGUGzP+mt92O/1MI1gWM+jXbk=;
        b=xRGDbdFysW8TdBdSKvddTkMIdCq81c+tLWRd9K7poTrx7fjauewEGfPQ38qEUD1G0K
         rCkRyqK1s51L05PAcIF7dFWEO2sOZa2/IiZpFIIiBFUcSt2bhpedTlvzZEPAXw4t+joG
         Lb2HEWbWpNDqs8LKyuurHYqQd4GWIkB0phz5wDSgt5vpB2Z2PRjWan1ptuaWGtlx+dhP
         t1CWuqzVUkr4wEg6c/jaXUCpaJKhYohsY+eYmJSBQyjYiSW7dKWabCrS57+DZuWEA5hg
         Q9lbtwgSbJo3P5xuXXJ1OrYRWWz0q7AFrAxAXKd/Md85F5i9bTySg6fl49y1HPlD7Vsi
         unLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791024391; x=1791629191;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RwKHh70JY+GXTFZ9akuGUGzP+mt92O/1MI1gWM+jXbk=;
        b=cNz0bPd+y7CE5TB2MTpa7DJ0UyhB13cZJ7tA/lLHgkYXyCFGnfTkJAPplr07dzeZoU
         zphzEbe2e9VWDnDNeVPx0IdbOWqtusz9U7qwGlF3dwUSGZG8YUdYevq18D05kAborfem
         LEdjsSUGlStMp+iMwmvcFrgpfF8aP0wpVRbP+GZfvjlhUSYoGxfHA356tmjr9ZssQ2oy
         1bYeRRVegYbvpW+1visd5SeGGAJyWrrXKId6s/MPcDCX8fne+uy8F/JdT4sqHCCrkDuA
         A8wrEMQH90Z/Lm63nJ4NQH1nRdlG/MBJe6GWC+dOg4J/KAElJzs1o6y0Iwuksoqda2lK
         wPIA==
X-Forwarded-Encrypted: i=1; AKwUvBxTl6WhOPDd0kX/C9dxrehVfbSMGq4EjuhkWQhQU/neKVc7Fxv4q9jOyi7VkpEFo3j/og88GsmCPyc=@lists.infradead.org
X-Gm-Message-State: AFuF++myGhG02yVLwKdHDGTBKJZsMXemClyuqptbSlDmc9pHA2YsCXjx
	NRUGsp9vQnpYtLLsQchNRsYmpvzU6zN2v8LBB7jPbFVG7zAaBJkyPg2nLTsKOxHqZrw=
X-Gm-Gg: AYBFou051Fm/BDtwoCEzHmR5vHCNlOXYSMc13fVeLur+kLR91ir5X4nWtHmxWDFi/3S
	lwVdDhHMZ+UKtC4TDWYlVyXiz/VUJGczOcnFSyzwllgMa4nlOT2DfpWnzL6LQQChyxFvjUQwwec
	HP2AOlZuXlJFZNfvDraWm9Bbf04MyJzw2ZajjU9DGuzQDr5oe3HGyM9soX3zCpxkxja3iYZAZvN
	qpg/9i9FPYieGLCZfOK6GvLEV3ei0wJ02JVEjX/0K51CwDOYwW3lMQz4UEU+h+1AelpX0N2N0zu
	6ZEhTZMvPEX4+h8RVUpD+8AAc32zEmUJyOb00pL05o41MjTmzPM3cftOtc6r2bFaFVQCLxEWTmy
	vxSK2RJAknp9NBIwByNTeap5BG1tiNSNr72kRNlA5Jgee3alVJQ7VK4AbGkjeLDV1Dcr/j4i4vi
	V9x8dC2wZiusuY0xxNTJ0bBdJHJWyRMtT1BQjcMUkmAk1n+z3Jnr3Ja/y7T5QthBbcYd8FURTS0
	9jfYCtrDAU=
X-Received: by 2002:a17:906:f58b:b0:c2e:30a9:c04f with SMTP id a640c23a62f3a-c2e4ad155a4mr454607266b.13.1791024391402;
        Sat, 03 Oct 2026 03:46:31 -0700 (PDT)
Received: from [192.168.0.167] ([109.77.86.130])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2e4cf5f4e4sm192822066b.42.2026.10.03.03.46.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2026 03:46:30 -0700 (PDT)
Message-ID: <61a2d75e-4061-4be9-ad8a-a85c5bf7368c@linaro.org>
Date: Sat, 3 Oct 2026 11:46:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] dt-bindings: phy: rockchip-inno-csi-dphy: add
 rk3576 variant
To: Amin Gattout <amin.gattout@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Riesch <michael.riesch@collabora.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Conor Dooley <conor.dooley@microchip.com>
References: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
 <Vv2QfKmkyPTU5VXXS1TYn-cg7DX3OD7InbT-5UjiZLMHVPPDWcj-0hgl7PJxI7ugjmudNTZJfhXCisY2fExubQ==@protonmail.internalid>
 <20260915-rk3576-dphy-v2-2-b56e68b54b8c@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20260915-rk3576-dphy-v2-2-b56e68b54b8c@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_034633_225614_CFEC108C 
X-CRM114-Status: GOOD (  18.55  )
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

On 15/09/2026 11:42, Amin Gattout wrote:
> The Rockchip RK3576 features two MIPI CSI-2 DPHYs compatible with this
> binding. Unlike the RK3588 variant, each PHY instance only has an APB
> reset line, so add the new compatible to the single-reset group as
> well.
> 
> No fallback compatible is used because the RK3576 DPHYs match neither
> existing variant: their control bits sit in a dedicated CSI-DPHY GRF as
> on RK3588 (rather than in the shared VI GRF used on RK3568), while only
> a single APB reset is wired up, as on RK3568. Falling back to
> "rockchip,rk3588-csi-dphy" would make the driver request a second,
> non-existent reset, and falling back to "rockchip,rk3568-csi-dphy"
> would make it write to the wrong GRF offsets, so dedicated match data
> is required.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
> ---
>   Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> index 03950b3cad08..92d0c961f4c4 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> @@ -21,6 +21,7 @@ properties:
>         - rockchip,rk3326-csi-dphy
>         - rockchip,rk3368-csi-dphy
>         - rockchip,rk3568-csi-dphy
> +      - rockchip,rk3576-csi-dphy
>         - rockchip,rk3588-csi-dphy
> 
>     reg:
> @@ -89,6 +90,7 @@ allOf:
>                 - rockchip,rk3326-csi-dphy
>                 - rockchip,rk3368-csi-dphy
>                 - rockchip,rk3568-csi-dphy
> +              - rockchip,rk3576-csi-dphy
>       then:
>         properties:
>           resets:
> 
> --
> 2.43.0
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
