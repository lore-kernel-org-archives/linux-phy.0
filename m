Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77DF4C77B6E
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 13:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBvscY6jNvhQCUAA9aJMu21u4qOmOoIQ4N/ocxcbF0w=; b=bJ7kNzYaaEojtR
	oAccOtz7tg0dYAiZIKuv0Ez/jlZlphyp3NOxMCj9zDqv2S6bX/h3ARsmSSZy6/NL8xuZpsHk6bO4a
	o7ZVSJGnpRuLjCqMvDWe/cKKJEchqnUbvD8CA4IQ1lKJEbdPINMEwtXNVNAeWb1BCCVRtFv8Ige4H
	gPviQK7Iy6oSKkV5ExTPKiXbvBgI2dPV97/3xiTFQDV8/DNHU6fHqDepKXk/oxxqcReZ5vQ5bIWtw
	7yAJ9czhXlg1WaKhslOMQiewRmU1X1cbtU301xaZx4kM/8oh8XqPwsBSAy9vngRj5KMAmw+rHlwOo
	B2+oPcIp05+r+fi3rDqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pma86-003Fng-0S;
	Wed, 12 Apr 2023 13:03:18 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pma83-003Fn1-1z
	for linux-phy@lists.infradead.org;
	Wed, 12 Apr 2023 13:03:16 +0000
Received: by mail-wm1-x32c.google.com with SMTP id l10-20020a05600c1d0a00b003f04bd3691eso17104883wms.5
        for <linux-phy@lists.infradead.org>; Wed, 12 Apr 2023 06:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1681304594; x=1683896594;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yjIdUq4Jsx9/GasEwdm41tjYbvcUo9h/pUwit0AG0qw=;
        b=I+U9p2RUdQ0jma7vWiMjgOivywGBJsk9WNavQzLUEh/9XwD46/PWdCmz2jtHMZlyPh
         IJR47kFbuS2krTR8D8TwAoya05XsgHSzcDXHIKFJzmddiFLXTOi+ZU/7tUJOrDz/yILl
         SIXsvKy2gl0NfWrtKgHqPiamvl5ngUisfT9GXgEKfhhEJvyICrgLJbZ3lPLJT7BHpfo+
         OSGfbwxEm0Np0ji7Ls9mAhsRxdI+nrPhkMNNSp2Nx/v3JKn9KszmNHXabkT74hCnStwN
         NBB9zEfXfbjr1st9ZZsooom9HhGVRXK1j0XWYSO1zD6vifKgxUFKlHowMFXVEnUTh0NE
         pq4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681304594; x=1683896594;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yjIdUq4Jsx9/GasEwdm41tjYbvcUo9h/pUwit0AG0qw=;
        b=K37Ev9gOIPP4A7+Sa/R2QWxqIjcKfjgvGwFtwv1D/zUQQJadGGt1UaexIsRjpD4kxc
         bhRqwLepm09oT0YDil9vJR5LC0++5IRqJSkK3329LG59+M/f9n9PsYeM3ZzN5tWKaUUy
         SvS5pqrmgI2gYOHDvkSyHFdUOlFJnu2RmyoEzLqimGFftz/2DM0JJCU/KI5/ALSohq5D
         VyTRrZxGGH0sKAJpWY2CZrYGailqz0DGT/I0QRbr90070PmxfbfVlMGOEbshBVsBwgUt
         JWDg+nFhcKfqP5hJaoHAXSC/PE076IXYrygN18ahj46aM+7FpDeUvV8b7+GAF3t5qhz/
         ufLQ==
X-Gm-Message-State: AAQBX9dvLmeQWVzL2VUWtF1CjhmTzlbXK/wogV0rVeyZsg3G8i/6Is8m
	0Ad9UA5L4YGWc0KEAjK5joIOrw==
X-Google-Smtp-Source: AKy350bDmpM+Lm/AqJiXBxAL4RoNuLKnffa2b9rPXFmlseSpOQ7ouXWDEFlId84sgS3bp9uw+f9nsQ==
X-Received: by 2002:a05:600c:292:b0:3f0:a137:90d9 with SMTP id 18-20020a05600c029200b003f0a13790d9mr218544wmk.3.1681304594013;
        Wed, 12 Apr 2023 06:03:14 -0700 (PDT)
Received: from [192.168.1.172] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.gmail.com with ESMTPSA id h15-20020a05600c350f00b003ee9f396dcesm2439248wmq.30.2023.04.12.06.03.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 06:03:13 -0700 (PDT)
Message-ID: <c2b4cc90-9dd7-60b5-66f0-56a4d19d63e3@baylibre.com>
Date: Wed, 12 Apr 2023 15:03:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
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
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20230412112739.160376-5-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_060315_655586_03C110AD 
X-CRM114-Status: UNSURE (   6.53  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 12/04/2023 13:27, AngeloGioacchino Del Regno wrote:
> Add a compatible string for MediaTek Helio X10 MT6795: similarly to
> MT8173, this SoC has the gamma LUT registers in DISP_AAL.
> 
> Signed-off-by: AngeloGioacchino Del Regno<angelogioacchino.delregno@collabora.com>

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

-- 
Regards,
Alexandre


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
