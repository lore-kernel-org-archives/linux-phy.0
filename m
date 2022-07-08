Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F6E5C43334
	for <linux-phy@archiver.kernel.org>; Fri,  8 Jul 2022 08:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uq3DJ0RTdpccQ8TPmuC4OTYBERts/ZvmsoZRoxAUSqI=; b=rJAy5HP8C5jdWE
	YwTd5OprsNaIdrGwbZdXlEHbA8vqGfI27gxBTZw40KKFBx70f+BEp9DbqThOn8bQb+AS44uGRMjBd
	spAtj+z7s731juTwXAOuGAL/f8fpP2eiSdPM4uVGd6GueHsyahsn/0846FW0zduoCBDO9uKpKzJPr
	e5xOwhAc25NFv722hCUaFvUj+A12zSvgeF8dI1FQKOF+fhBsVzEyyZpDfkbAVIZYl28JXSS1IpOrl
	Bu59dWUlfUAAq8eECNq7bnCzsQstoZw/6v9QzLuOURmVQjOef/USa8A4dupW/1LB91OAFz+SWLVRG
	I9wzMsGfKcSsZH2XZghg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9iwr-002LXw-SY; Fri, 08 Jul 2022 08:02:49 +0000
Received: from mail-io1-xd2e.google.com ([2607:f8b0:4864:20::d2e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9iwd-002LQf-Ut; Fri, 08 Jul 2022 08:02:38 +0000
Received: by mail-io1-xd2e.google.com with SMTP id e5so3292914iof.2;
        Fri, 08 Jul 2022 01:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=hODnMtf+5EqhbkNx2oX7wxZqY8zZUB9OLPetFR2uH7A=;
        b=I1oaVBalKTFKJVlbbTyhQWS1ol5E6FcVkwflucZasxRgPj/Kt3Y/wo+VsrsGKPfEK9
         WbRFB7uTsXHD1sjwAiU4jzq7HjI3kqUC7ZIGCdt1Ya2aFhyZdhd9sJamF8KF8keifkrl
         gjSzpl8EDPbvrNYPZM1PmW41ZfqJHD71UYrK0topX6tbCbA5um5EP9691DUMHpPE7M3O
         s1SXAw+K7y3GUQxpfyElP0H7NiPCm3RMMX7KsqRYaSl7LXLYfpmznJ4DsY+xY8hmHuPm
         QbciU7n6qBFcQnzz8dl6yyf1U2Gy+R2xx/5kJpMUPZza2PgUBSjN0FsMro5mt+B8eVzx
         0bcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=hODnMtf+5EqhbkNx2oX7wxZqY8zZUB9OLPetFR2uH7A=;
        b=io7P/xIkIft4ytQ/JM49hp7dmiBJjB9fArsoinNN7Ih5ffhXdfmARIn7bB/oYYBq7D
         +TOqbp+ob9SHeWSgSUt6JJEpqSpZHE53Ecw1qcbIpvvqCdWMJbcR5tUo+Fmk8QiRvFMW
         wYYR1e9qZnFrPBNT5boWFg/MPb3vc/LKAsZamDIuYRi9+rfbEld+QndG0Ih9Y5VIky+5
         PaVgvV1W5G2ZQG5/EyKoK/1aQLCKoLVfz1m8FZkrW+VCoQ6SughZ7bXFJpFQBB8dmwgT
         uy/2+lQIPi8Hoxfxg9cB37dEfHq2NrvqbvaNMbuD3iyaqka44MK/8F+yCt0/o5NQtPSB
         pgcg==
X-Gm-Message-State: AJIora9Ff9dncY3vdyGfUqQR1ezJgMWbqTjJwdgsuqRRSF1foBTUXple
	i7helLekrlg79Se5HTR6KAg=
X-Google-Smtp-Source: AGRyM1vbUvAEnsSVMwsqK+d3yPV/Acfg2dPnTr9AEZlB91dT5n/m3+vacP7LrXDKsxdL1C5fh2Ls6g==
X-Received: by 2002:a05:6638:dcb:b0:33e:bd5c:2195 with SMTP id m11-20020a0566380dcb00b0033ebd5c2195mr1321012jaj.312.1657267349186;
        Fri, 08 Jul 2022 01:02:29 -0700 (PDT)
Received: from [192.168.1.145] ([207.188.167.132])
        by smtp.gmail.com with ESMTPSA id w13-20020a927b0d000000b002dc33dbed87sm2642328ilc.39.2022.07.08.01.02.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jul 2022 01:02:28 -0700 (PDT)
Message-ID: <d2872f3e-1dc0-01ea-9385-29c089bc10b8@gmail.com>
Date: Fri, 8 Jul 2022 10:02:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] dt-bindings: phy: mediatek: tphy: add compatible for
 mt8188
Content-Language: en-US
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220708065834.25424-1-chunfeng.yun@mediatek.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
In-Reply-To: <20220708065834.25424-1-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_010236_045438_C99778C1 
X-CRM114-Status: GOOD (  11.54  )
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



On 08/07/2022 08:58, Chunfeng Yun wrote:
> Add compatible for mt8188
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>

> ---
>   Documentation/devicetree/bindings/phy/mediatek,tphy.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> index 7b2e1bc119be..9fd27d64aca0 100644
> --- a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> @@ -85,6 +85,7 @@ properties:
>             - const: mediatek,generic-tphy-v2
>         - items:
>             - enum:
> +              - mediatek,mt8188-tphy
>                 - mediatek,mt8195-tphy
>             - const: mediatek,generic-tphy-v3
>         - const: mediatek,mt2701-u3phy

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
