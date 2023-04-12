Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCC73C77B6E
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 12:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9leCV7tTnB4x6N7+AVVK/hfVkmP+YQjA5WTaztdHTig=; b=Ks0L/GZGkZ+4Qs
	11KliuSl7RaTB3G2x60PyRsU6DiD6dMgU/Y3+CBzn0CDtWU7+Flwwp7NtI08pXI/bWjr7ZkqaDFKg
	1WYImXpwQAjUWmMZqLYQYGp3A3XHJAPgLZ8MeNOvP42fsESKWwPJd7gb5ciDJNb4iVpQnlqGKlWLa
	Caxj993QuTMVMIyOelLyXqzvqhCoqHrtwOrUeiCeECU3yWbtvnHZEsfjpiDSPSlsB8cPgua++EKu2
	EEtnol14pNoRKvHrYLWaZYDWahW+/LqXsvmhyfzuoXimAz2eoOQrvwIgqORFStcqMYes9hqEInyNP
	uTlEa5qZYgqjfkyop/Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmZkA-0039aT-0i;
	Wed, 12 Apr 2023 12:38:34 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmZk4-0039Rp-1Q;
	Wed, 12 Apr 2023 12:38:29 +0000
Received: by mail-wm1-x32c.google.com with SMTP id hg25-20020a05600c539900b003f05a99a841so14021062wmb.3;
        Wed, 12 Apr 2023 05:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681303101; x=1683895101;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qrfSreIyYVzZ3y5IG1fr+KWAIr+UCJ0I73Dqb0W+8F0=;
        b=hKnB8rVVvWL/ZJVDH+5nnQup1V2zH+GXfSRvRjUwuxliSYmoOFCJYXpxVmdryKI5Z6
         em1bkjoymu8mUq+z0MMoyyqrcS+ggayxUSXiP9PeGUq3mZZolACfXxqRl9fshlGGPAFD
         Vkn8DAxLw+V9u8UTvs6/XjsZnQzXSTajc7QEVBBricagogLZ8T6SLB8w2LkIvy7fUNlo
         i5BFX0Abej8aMb/TM2bcwTGrZkLkNmZ6/s4uPq0g9ySPiufO2mj7uIebq3BMVV4pMOrE
         ZSfERzWfVLg4yCjn4pHkcURAMPmIsuND0L0K2xfg4HxUIjLL7AjNyC3IHq8/QR3EfDtj
         wkYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681303101; x=1683895101;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qrfSreIyYVzZ3y5IG1fr+KWAIr+UCJ0I73Dqb0W+8F0=;
        b=cCJHOgFXtB2GyWT7r2Ul4mtt2p2eqIUUdPKGzIlRCwp3fy6+NBWnQdEdjqP74dkEEZ
         gHU5JsW4cjwYzgXx4mjVj4xygduBumjVYkQbNiX7mgJT8TmZoDsgv5M9dgLJGsBIeyLU
         nXE5lclYyLrgmfDRqHvq4wjQcHg4jk8HAK2KzeUcF1wQNFNILVz02PHtX/gzeaseuII2
         LGxRVU2i/2MSvjwbsi+SDjQ9C4AW/Qv729l7vJZNSCj2w5tMKEv+SUXc6Sj6scBZvRUP
         phkG+P+GzTnbgioset81Pp2Y8cldS5ra7HXMuCMg+ptmbgg9pJuzxjzApDruzzjXmswx
         ciQQ==
X-Gm-Message-State: AAQBX9c8Myu0sEJv2NpjbzJjTDtRKDKFdUUTp5Pjoxlw5JVIswRUli6y
	rmFM9IWB4B8XwOvUwnmVokk=
X-Google-Smtp-Source: AKy350b1vX5xNQp4/w0RoaPw15e4jwJGSLVJZU+94BcA1FM+NfcERa2O3p1GtJwdJ/T8GfM77hbaig==
X-Received: by 2002:a05:600c:1e25:b0:3ed:24f7:2b48 with SMTP id ay37-20020a05600c1e2500b003ed24f72b48mr1859483wmb.8.1681303100769;
        Wed, 12 Apr 2023 05:38:20 -0700 (PDT)
Received: from [192.168.2.177] ([207.188.167.132])
        by smtp.gmail.com with ESMTPSA id c9-20020a05600c0a4900b003ee6aa4e6a9sm2381574wmq.5.2023.04.12.05.38.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 05:38:19 -0700 (PDT)
Message-ID: <9b5a0ad7-bd94-98be-273a-7a2f9d53ed36@gmail.com>
Date: Wed, 12 Apr 2023 14:38:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 14/27] dt-bindings: display: mediatek: od: Add compatible
 for MediaTek MT6795
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
 <20230412112739.160376-15-angelogioacchino.delregno@collabora.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
In-Reply-To: <20230412112739.160376-15-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_053828_482164_CBCA5672 
X-CRM114-Status: GOOD (  12.60  )
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
> Add a compatible string for MediaTek Helio X10 MT6795's OverDrive (OD)
> block: this is the same as MT8173.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>   .../devicetree/bindings/display/mediatek/mediatek,od.yaml      | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,od.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,od.yaml
> index 853fcb9db2be..691a3644504f 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,od.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,od.yaml
> @@ -25,6 +25,9 @@ properties:
>             - const: mediatek,mt2712-disp-od
>         - items:
>             - const: mediatek,mt8173-disp-od
> +      - items:
> +          - const: mediatek,mt6795-disp-od
> +          - const: mediatek,mt8173-disp-od

Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>

>   
>     reg:
>       maxItems: 1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
