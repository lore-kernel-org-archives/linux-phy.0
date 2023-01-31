Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2098C636CC
	for <linux-phy@archiver.kernel.org>; Tue, 31 Jan 2023 17:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+LQN/kQIWhZSakT6UuqC0s3nXj9kzHwkSd6ODN1rf4=; b=CPl4JChNSSbhvC
	y21VJxPG2yOAPdEGFZh2hZzP81PJgXy2TTsBTdfwFR1tz14Ugzvuh6oP8cVQ64b2hZN9HPfpg6HFF
	nIeiyI6czNmop+NqDwfGFm349K144uUcvZdTG7EpIgLR606wlTG5ZAYFfTwLfF0c8zGvI9SWueBUV
	u1uJvODmTs1YnoEC+5m1SQaZa5gck0ruotaIiPFrOK99vCP2aY3FrPeazAVYj1LarMJGBWfDI4j9q
	yWNvUGQA0iE1PGWNNXdXsHIlTYL73FokwbligV9HzvbyrGRyXj1JH+vylmFVVB69cI+iixGNTdOwO
	Ri/EygHdpqHV5HVXbHWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMuUY-008rN2-7D; Tue, 31 Jan 2023 17:32:22 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMuUO-008rL1-6A
	for linux-phy@lists.infradead.org; Tue, 31 Jan 2023 17:32:13 +0000
Received: by mail-wr1-x436.google.com with SMTP id q5so14982003wrv.0
        for <linux-phy@lists.infradead.org>; Tue, 31 Jan 2023 09:32:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9CuHKps70Th0JGwhWBmGqTShgEX6rGAigmrTuj9OLyU=;
        b=q5rHNABBlkdhViPW0OuYkpf6eOtoWTpfUk7Ka4ALSx978K1Mhc99XVzE9YfJG3JaTT
         Eeh6e6ZMxaXJn4cIU+KnxSQG5O4ek7y6gmv3BrjQCLPIqpo5g/fE6y81H9de/UsNE38v
         YksWjO8LSaOb1GQjTdFg6tvdjvDml897KbL1fs+XwpL+gTZCdORr8RMQwbBSDY6XI5nv
         hpWBhhedi4YdlUCg/i6cvkS+RVkBN6fmKVVtXcQrzhqyYLLeWz4MXhrORZX4NHVil9hc
         BA+OjWESMp0WUR75LZkmNhsT2btJwUWI+Yyg7MjJhI8oZq0SfHS61CTaxRuiuGm628Dc
         A/qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9CuHKps70Th0JGwhWBmGqTShgEX6rGAigmrTuj9OLyU=;
        b=HKGfRorYiPqQOqpXoda6vvaq/Je1yDqMCJXRe1Ys14bliyhEpPyg4AVGsWsv0p/tTp
         zJvHuKC8HN+vv7VARp1Zp2fqDQ+z/2xEmXSFl0Ljsty2AvGJdY9kB2rRoQ0Iek1TP2iY
         JU+kT9NNZ1toSLDKvQLnBubfDsbCjOzI5PHD2lHbAnyi7eCusxcWQJbaQpofZoaKaxj1
         TJAFx86AdEa6rJW0HRF/NE4Xam5d6FH4ajr8rYEU60mj/6LBD5jq+djvXPX0Klt3O6UE
         IoIeBSrZuOdYbpPD6f27+BAQ4loIm7E6mpOffTNSXtYijv8Szkq686zLQkV7kPlOlT3m
         6aJA==
X-Gm-Message-State: AFqh2koh0bGgDVLq6Gq5Srx32MoIHWqqBAD6fulh0SUchypwlwHyLBvc
	SPPz1Kkhu7hA0TmeSQoVhfXiBw==
X-Google-Smtp-Source: AMrXdXv8k8Tg3vIs2xhUZQj7w1uQ9ulfgatRSOVAT/xBwk1bew0zK3kfBW/5yEUINCGGSH/H+7iinw==
X-Received: by 2002:a5d:6a47:0:b0:2be:64bb:1d84 with SMTP id t7-20020a5d6a47000000b002be64bb1d84mr34046276wrw.24.1675186328393;
        Tue, 31 Jan 2023 09:32:08 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id c13-20020adffb0d000000b002bfd190fd60sm14563771wrr.108.2023.01.31.09.32.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Jan 2023 09:32:07 -0800 (PST)
Message-ID: <a3fdb1a7-0585-6282-0b84-27c82a35244b@linaro.org>
Date: Tue, 31 Jan 2023 18:32:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 2/8] dt-bindings: phy: samsung,dp-video-phy: deprecate
 syscon phandle
Content-Language: en-US
To: Vinod Koul <vkoul@kernel.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 replicant@osuosl.org, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, phone-devel@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 =?UTF-8?Q?Martin_J=c3=bccker?= <martin.juecker@gmail.com>,
 Henrik Grimler <henrik@grimler.se>, Chanwoo Choi <cw00.choi@samsung.com>,
 linux-kernel@vger.kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>,
 Rob Herring <robh+dt@kernel.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
 <20230127194057.186458-3-krzysztof.kozlowski@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230127194057.186458-3-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230131_093212_280642_93AD5857 
X-CRM114-Status: GOOD (  10.45  )
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

On 27/01/2023 20:40, Krzysztof Kozlowski wrote:
> The DisplayPort phy is actually part of the Power Management Unit system
> controller, thus it should be its child, instead of sibling node with
> syscon phandle.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/phy/samsung,dp-video-phy.yaml        | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)

Hi Vinod,

It turns out, my previous patch (1/8, which I took via Samsung SoC)
actually depends on these here. Without these here it causes warning.
That 1/8 patch is already in soc tree and will be for v6.3. Will you be
taking these for v6.3? If not, could you Ack and I will take them.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
