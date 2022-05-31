Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B937EC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 13:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KYTkYedb0Z4NLWCrkf3xBmKnpdTSSfRk7jNtjgmaTU=; b=J72rTpuqVW7kkE
	yunJz3wn4glTPAAcnVzPeeNi1twKNgOOPlc4XazMn3Q5r88TfS+WqeQdzhxgeKa1+i3xw30XXFSV7
	UwUazOeuRoU+rvEIYwmB+e7JOq3Mte95qZsuikTHK8eheRFOZxen4r4zHqPnGivVmtW79dVDz8u9b
	DnNcKoKjkVQ/ejnZpu9jIA5rrAc04biycPPGZaYT7OEEtc4/JQuL5gYQFDesHuHuvOd9CNFYVbJcj
	Zp6AdASkp3nr53XccbooyEzgpeo01YOdy1Hs2Xh81VjenJlPS+nZEFsnmSagngf4xB0/HsuNmR1Sl
	E3zTm7OLfj3dQZjKFh3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw1l4-00B1Q1-3u; Tue, 31 May 2022 13:18:02 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw1l1-00B1Mx-Ve
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 13:18:01 +0000
Received: by mail-ej1-x62c.google.com with SMTP id gh17so26598704ejc.6
        for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 06:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=tpA42Tx44I0fnuuCprNTajRej43QyVodYuy8RXRmj7I=;
        b=tcsodHGz8IqIORGd0a2SWG5S+EnDeWCOTSoO1dfwXffZDM4sjNpNzUr8Jhv6fFtg2X
         a9eoEWUyQ4L2gsw+3vlwdu8/A58jYl80KdSs1icT9wQ1FI0VMw8x/7NfPTHk/0azGwlt
         fmOs1UUcFmuHnVu5/v7Z5MY1NNvrdwifxw6u1Mt/IpgcMCUBzZHy0V1QiyebL4b8RZIf
         hvd8gbtaYqYQcxp4Izw4u9R5eGgUPBFUMywr+nyAx2I6PcanxO4n1uMmxlq44TYivFzv
         haogT6bNlUA/XiY0EFY4mH6jWdPyjl4o5z/ar7CK8yM67kzYcXb3p3u9fs/Rsv83k+U6
         lIbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=tpA42Tx44I0fnuuCprNTajRej43QyVodYuy8RXRmj7I=;
        b=8A4eLXmyHwZLFoA6bk1IkAXjPbmHNiZcdpfFRkvxEML5lBQeKRx726ZHNAeOZZA2UI
         +OMbW7NVgWwwc4dBBUtYdzeXAV4uWJMbJNiFHO5KYCn9DAJ27Vu1cc9Ed6lcHEcjJysp
         0qVY7vn40t5GZokMZR5/eTOQ4TI8f/byb5z51+mKdTom61xpiw+Ox7B4FShFCMNVbYR/
         4wofv9giLwU/MnTkxoMYkcKKkMPLNDUQnwpY2FJMttHNrx3c7DPklKSKfmFyOIEHW8ia
         QwRY+j/h4ET3DgHMs7jUsVYZtZ9yoEvyX8NAPIqvZY40/abWHl93uL5dC6oPLO4YGn1p
         hgeQ==
X-Gm-Message-State: AOAM532YPL/O+ycz8h18srVbYKe26lfYBYQxWgHlKTrOxN8FZ804eQHB
	pXLfVMdK4NnI1Tdeca4MaG3giA==
X-Google-Smtp-Source: ABdhPJxa6B5W86EzUoyr39/9kYuoZNb7bEBcDDiKZI03K64YBYD7w3EMgBY04Zh/hLOqXrEZl9XIGA==
X-Received: by 2002:a17:906:c155:b0:6ff:25f9:b9b5 with SMTP id dp21-20020a170906c15500b006ff25f9b9b5mr22268410ejc.288.1654003074168;
        Tue, 31 May 2022 06:17:54 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id a25-20020a509b59000000b0042dd3bf1403sm2872641edj.54.2022.05.31.06.17.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 06:17:53 -0700 (PDT)
Message-ID: <9947e5b7-8843-1952-be93-abe67723127f@linaro.org>
Date: Tue, 31 May 2022 15:17:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 1/4] dt-bindings: phy: samsung,ufs-phy: make pmu-syscon as
 phandle-array
Content-Language: en-US
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20220531121913.48722-1-chanho61.park@samsung.com>
 <CGME20220531121922epcas2p15861df56f7253265c591a88244520446@epcas2p1.samsung.com>
 <20220531121913.48722-2-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531121913.48722-2-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_061800_143904_E224B08D 
X-CRM114-Status: GOOD (  14.46  )
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

On 31/05/2022 14:19, Chanho Park wrote:
> To support secondary ufs phy devices, we need to get an offset value
> from pmu-syscon.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  .../devicetree/bindings/phy/samsung,ufs-phy.yaml    | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> index f6ed1a005e7a..80c3ec14375a 100644
> --- a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> @@ -40,9 +40,14 @@ properties:
>        - const: tx0_symbol_clk
>  
>    samsung,pmu-syscon:
> -    $ref: '/schemas/types.yaml#/definitions/phandle'
> -    description: phandle for PMU system controller interface, used to
> -                 control pmu registers bits for ufs m-phy
> +    $ref: '/schemas/types.yaml#/definitions/phandle-array'
> +    items:
> +      - items:
> +        - description: phandle for PMU system controller interface, used to
> +                       control pmu registers bits for ufs m-phy

Wrong indentation.

> +        - description: offset of pmu control register for ufs m-phy
> +    description:
> +      can be phandle/offset pair. The offset can be optional.

You made offset required, not optional.  You need minItems:1 on the
level of second "items".

>  
>  required:
>    - "#phy-cells"
> @@ -63,7 +68,7 @@ examples:
>          compatible = "samsung,exynos7-ufs-phy";
>          reg = <0x15571800 0x240>;
>          reg-names = "phy-pma";
> -        samsung,pmu-syscon = <&pmu_system_controller>;
> +        samsung,pmu-syscon = <&pmu_system_controller 0x720>;
>          #phy-cells = <0>;
>          clocks = <&clock_fsys1 SCLK_COMBO_PHY_EMBEDDED_26M>,
>                   <&clock_fsys1 PHYCLK_UFS20_RX1_SYMBOL_USER>,


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
