Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43ACBC77B73
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 12:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LkKW/sNYx+a1nyKhwJTK+KtCUPAhXI78Es6wL2wy5b4=; b=RBrdK/JgdL3xvs
	9vI/lu4KCR5ZItGf0l/KFpb/APppT5z3E9ClcUJIeFbCnKo3XAnooS2gZMeuFMjNmKsfV5OEdMI5r
	LHJJ4A3X/ItgnCyOrByRmYVX673fGkCsoOPasPr6j1qvwDaEpauIF3AT7CiRdEIuvNdNyzwOZPML0
	LHJdLWVvUEQmrFCZ4FseI3e5x8vYuW/vL+d4dpASpYW0WKNNPyLSfgz2rbKv7aSb+ycSl1q8NhAOD
	bnNTbDnjBYkdHupljcOgWs8CnLrM/UOPREMeV3aZX6QPdvcgV5b8tV6w1fa0Q3Z2/NeAvzmJTj+8e
	w7sujLmxxw7nBy3PPYVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmZis-0038jU-2p;
	Wed, 12 Apr 2023 12:37:14 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmZin-0038fn-2y;
	Wed, 12 Apr 2023 12:37:11 +0000
Received: by mail-wr1-x436.google.com with SMTP id s2so7475037wra.7;
        Wed, 12 Apr 2023 05:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681303028; x=1683895028;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QebsCGR48dQEN2uFXsUDxTq2kX2uFhujVCCTxx6X6sY=;
        b=MqljV6uGnNg0RpDoTvPQA1io/EHrpJzhs7XUBX2amgvCE5Mzgp0AJmVxhKaRDXenLJ
         WJ43jNPRyGo4GWUp6O7mhRMQfxFhfcDiYlJCPa0iyf8WNWWv2tEgky4QWGIwxGO4CBC8
         9GEalqJsu/HUaZew2t7MzNMvYL5oKgKBI2+a6QwvXGiWrKKedhxzil1CDMCSjdZxCXm+
         kWY6LayVxs7VmFTs5zTc6pNhAX3Q73bD0WEU55BNrpbvoAbhJC+Q37dC3HpfGO8zNmOf
         2hulNe2wp74teE0V74njHy1PitX9XXI0EQ1Dyq7+WnkPBXHWkoB3w3n0CGJlpkR5G+xS
         l+vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681303028; x=1683895028;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QebsCGR48dQEN2uFXsUDxTq2kX2uFhujVCCTxx6X6sY=;
        b=Zzy3WsT8j58WtE4gLkBqYXAxOvxGT142Rm/6RDcfUfCbIIvcxWnGn1hSmUDo77kaW6
         hlWuw5WxFZs7j+muc+96MDJNS0QCvCKBMolMC8JRRc3Y65zMJcHeQHIXxLlE7MtK71NU
         k5JaIo9TBawGWI95fxd8UTiX2RV1Ve+M4ybnftKMYZ+cbClruTnRaBxoIEa3ClZoAznm
         4+8RaKIqct+2vmgKzFmrWwHU7cMnDXzFBH7IzH4HIcjd67TqqX+HEs7ALJs28pe9WTt9
         8nnFfSaih0L3gyUZnpu+9w0GjxCtcNRzWWITGG/dQL2KkUSQ7yfTbwRzmq4CCKafAc3+
         SiUQ==
X-Gm-Message-State: AAQBX9f4ZanabOw7/srL6cFsp+wg6Fb3S3LFNqBXdetZas6og4bghrX9
	rx1/fCFqvW8uqL357odg7qQ=
X-Google-Smtp-Source: AKy350bWhA2Bil03ULejXNLxks5rc0fhv1cWCYAwy/T1bRJDjG13T7QQBhah4FiuPHT0Czkz7Wlp4A==
X-Received: by 2002:a5d:4a86:0:b0:2f4:adca:6f42 with SMTP id o6-20020a5d4a86000000b002f4adca6f42mr1182963wrq.21.1681303028356;
        Wed, 12 Apr 2023 05:37:08 -0700 (PDT)
Received: from [192.168.2.177] ([207.188.167.132])
        by smtp.gmail.com with ESMTPSA id o2-20020a5d4082000000b002f0e1181a20sm8625307wrp.34.2023.04.12.05.37.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 05:37:07 -0700 (PDT)
Message-ID: <801c8013-23f9-a031-5432-32dc2ee222cb@gmail.com>
Date: Wed, 12 Apr 2023 14:37:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 09/27] dt-bindings: display: mediatek: color: Add
 compatible for MediaTek MT6795
Content-Language: en-US
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 jassisinghbrar@gmail.com, chunfeng.yun@mediatek.com, vkoul@kernel.org,
 kishon@kernel.org, thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 chunkuang.hu@kernel.org, ck.hu@mediatek.com, jitao.shi@mediatek.com,
 xinlei.lee@mediatek.com, houlong.wei@mediatek.com,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-pwm@vger.kernel.org, kernel@collabora.com,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
 <20230412112739.160376-10-angelogioacchino.delregno@collabora.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
In-Reply-To: <20230412112739.160376-10-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_053709_963006_C2B8E65D 
X-CRM114-Status: GOOD (  12.56  )
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



On 12/04/2023 13:27, AngeloGioacchino Del Regno wrote:
> Add a compatible string for MediaTek Helio X10 MT6795's COLOR block: this
> is the same as MT8173.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>

> ---
>   .../devicetree/bindings/display/mediatek/mediatek,color.yaml     | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml
> index 62306c88f485..449b37c7560f 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml
> @@ -35,6 +35,7 @@ properties:
>             - const: mediatek,mt2701-disp-color
>         - items:
>             - enum:
> +              - mediatek,mt6795-disp-color
>                 - mediatek,mt8183-disp-color
>                 - mediatek,mt8186-disp-color
>                 - mediatek,mt8188-disp-color

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
