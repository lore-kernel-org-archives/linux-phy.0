Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F5BCC77B70
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 08:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tCBFPShJ9PzFBOLhlW0j7J7jBEoHv6s+yIzEVeKyl6o=; b=fcnu944cPI47Jy
	Z6XJYCJ9tl1wuBCYVNnt1quKtZFwE+wNth2llKR+6YHtuQdIC+TSuuMEFuQh/Fbp1zvFpv5qSZlnY
	xTqYo7mHidnFzrDCLu2I9zSO8BhuXKYRjEOuUAykQBJqr+qTOuapQB4w/RrE9fNG1tuvMMWWzYno3
	LXHSU2SssUNHhWTkAvY8fOY9Dq3DUZASLLG63ynE2MqFpGq9ycqWovc0lJLogL2nMJpTApyUyoA3z
	06WABPOHKqV4u6aJocY1CEPtO16P5LuAgGKjy0HDLX3sRWrvUHxe5BaDw1gxVJKc4ia4eobqp0wXD
	lGn+eGVeCnVCnIxdfavw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnEj3-008frf-2d;
	Fri, 14 Apr 2023 08:24:09 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnEj1-008fqZ-1w
	for linux-phy@lists.infradead.org;
	Fri, 14 Apr 2023 08:24:08 +0000
Received: by mail-ej1-x629.google.com with SMTP id j17so34059085ejs.5
        for <linux-phy@lists.infradead.org>; Fri, 14 Apr 2023 01:24:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681460646; x=1684052646;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B5WD2gH3v1xh1o9givBu2e0w5swNPvhe4afXVRz+MMM=;
        b=oL2AVZdFWoDex9JkWRqff2ZD9V1chGSVX2PbXu8xygcwfNgaAECi+J/jq4IvngaZ7y
         PXGFg2oWbN+6Ti1aDMNflhZMr4aeTCV3Fn7wAS84QyfBZGasr5mGwO0KpsOsSl3yllKq
         a5Kgb8EnYyMQ2TK5voW/kOf2a52ATwrGmt455naheGH5rx3rVv/nu3hCSVmeLvah5YN3
         09EKjCFWOrlStNsycYRXmax28GtewTPwjDFXqtd4ViyFL3W44QWTbc3Qp7XrRfwjFI55
         1F7nc9TR5jfSu3SLXYSajVg9nGUKOBP1By4Ju0iluU9P8Lg0Gd8VGmCVHAI4Mg3ZEjdm
         vUlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681460646; x=1684052646;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B5WD2gH3v1xh1o9givBu2e0w5swNPvhe4afXVRz+MMM=;
        b=eSrVmpAMM0GogKqqbJDmkKassWetWJ22AavlhqI/3WYj8fzrijx8FvU4SfgP+IFhRw
         Gxj0IMHmSVpHZg4OOBygfTg6Ez15XO/1Z6kIsuU3davpJHhgEdSu+oFVkbFRcQ5TQnbS
         SGxX0xU51rx7r00V2wgI6YJXiw4SB+52dueBUdbCE4tNtMH8OSb/jhIxZPUokARmg2HW
         XngKs1P565ydl8wPkNfRdxPrLJ9ScfAmu8bOm0b6QgZ1tLSDiwYEjUf2apXjU8rm3MTr
         BhasY2OCUsto843lO071iTh/W9EGYs70f6Htqqel7P9KozIftERSCf11ZRmtQEgoKQu5
         qtFQ==
X-Gm-Message-State: AAQBX9dG+G2ujgluDbHXvIXeTBvD48noUOZrlcze+1nI8mPDIyCDAcgU
	WHhJwh+25u3+A0nFHz9+59xDMw==
X-Google-Smtp-Source: AKy350Yyst89FsoZKHfvDoqzSjH2OZKJJ8WXXeFSuUX3l3Dk4pEzIM0gMQIP9wV/17aCQ0jwNMC+hg==
X-Received: by 2002:a17:907:1191:b0:94a:4875:262d with SMTP id uz17-20020a170907119100b0094a4875262dmr5997882ejb.67.1681460646226;
        Fri, 14 Apr 2023 01:24:06 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:8a60:6b0f:105a:eefb? ([2a02:810d:15c0:828:8a60:6b0f:105a:eefb])
        by smtp.gmail.com with ESMTPSA id p8-20020a17090664c800b0094b360a281dsm2094426ejn.123.2023.04.14.01.24.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 01:24:05 -0700 (PDT)
Message-ID: <1ef0beda-9608-d73c-bab6-a07a971f939e@linaro.org>
Date: Fri, 14 Apr 2023 10:24:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 04/27] dt-bindings: display: mediatek: aal: Add compatible
 for MediaTek MT6795
Content-Language: en-US
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 matthias.bgg@gmail.com
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
 <20230412112739.160376-5-angelogioacchino.delregno@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230412112739.160376-5-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_012407_636276_D1B482B8 
X-CRM114-Status: UNSURE (   6.42  )
X-CRM114-Notice: Please train this message.
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

On 12/04/2023 13:27, AngeloGioacchino Del Regno wrote:
> Add a compatible string for MediaTek Helio X10 MT6795: similarly to
> MT8173, this SoC has the gamma LUT registers in DISP_AAL.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
