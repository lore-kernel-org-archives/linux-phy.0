Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FC8CC7619A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 13:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YGBA09SP53Opo5m7Ix7pyAqZig4CtswA5zaf+u4cKs4=; b=aywjT6F3Zir+Yn
	6rGkExvSG9sugHoykV0wp0wezuEA8CM68FMxEbtPYbrVBNTOoGLrtFFT9wkW8ezg7j2ICy6cggrUV
	H/nSSbgaoQYT1SgivdI4jpDlGuV/xJJ5xAe4P+UtMoeuB6tX/MGJOU4jmv8s62oyP3wQJ0y3lXfw/
	qg39SaDithkqwIiaA2Ms98TpyaRCpIPQvml/GCKq9V2bLKplDLRc0wy/J48MJ00i0hMtjfwEtJFLt
	IfsKNA9MEBUAw4idlgOXrQ6dttXfSBnv4hm0bTX4K4RqaXlUvX/OMOYOJtF2KQ0n5nwDJ7pU2wPMi
	05amKhsUv0hsej3YKOZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmaIS-003IGz-34;
	Wed, 12 Apr 2023 13:14:00 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmaIR-003IF4-0O
	for linux-phy@lists.infradead.org;
	Wed, 12 Apr 2023 13:14:00 +0000
Received: by mail-wm1-x32c.google.com with SMTP id gw13so6505414wmb.3
        for <linux-phy@lists.infradead.org>; Wed, 12 Apr 2023 06:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1681305238; x=1683897238;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hxbSg03sNJ6CHBcwBXEqQmDmhcD81dI/Z44z6aEkv9E=;
        b=iqlCaO5Meyq2KhSfObg54+ntFwmYyox7N0vs4ZwWfI0b8iXJr0zQjqeXgKZzI53SNP
         H31oK0eqoOHMwt+5dGPEyyfyj5cCrmT5nybL0zAhK41cdxm7B3v4igvA4k5lkuqtJTW9
         YOk64/8nobsuhdmuQNuTaGP9MgpNq48Y5POxZ1YyebohKwSsby8TdHV0GlDBEww3LEh0
         2eUjyyHh4WW4Z8X5/MZhtfQE/wqsOnwifvlJjM0Xg519oHxY4uFIG921zK58kcuajP3z
         gKHR1kDoH1eyRYuywA/OWUs1WJekpIDISpjEIxG8O9cEx1CttcP/zZFWWWJCQnmYiTzu
         Lgtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681305238; x=1683897238;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hxbSg03sNJ6CHBcwBXEqQmDmhcD81dI/Z44z6aEkv9E=;
        b=utlayWDvMdrPNKQEHSfIr2b3TpNM08FgGRPSNOKGHZKbZaSjAahoNNaiXHoncjyOc1
         2Unh8RG5Df2QdFEJU3uQrwjLEwfUH5VjStsJEjqy6+s0jhmM+VQ8Y4B2QYTi6kN27VJJ
         33n7Jw4iS7p7pBSJyIFtvWE/QcdWzmcg/cKdEKqyqJsNqiZDbod0wKClQoPlgP/VRSYC
         tewsRLyEYITRSRengozlZTl2VeyroJSLw3Nv4u1dkihyyHcsTxtJ/XxwksoMy8DY5Am2
         NZa1rFy7+6puo8b9l0mbeF8/1jP49MQf61lPZzKE4ZcyFhIOSoFqTtUzY6b7iTd6mQWz
         0AFg==
X-Gm-Message-State: AAQBX9e8dX1BZZJY3ITyNwAdxFVK0ng4Q+xcQ77Su7UiGRrylNdvsp3N
	Oy5Ei7wFsyE736T0Tw8QDUZitA==
X-Google-Smtp-Source: AKy350ZNRAG/3MPGjxbC9J3m06khEHCcasXR6FH61xJ832WlKtAzUSM52+gCptxIy0mOHHJs36cd2w==
X-Received: by 2002:a05:600c:2316:b0:3ea:f75d:4626 with SMTP id 22-20020a05600c231600b003eaf75d4626mr4566131wmo.38.1681305237744;
        Wed, 12 Apr 2023 06:13:57 -0700 (PDT)
Received: from [192.168.1.172] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.gmail.com with ESMTPSA id u25-20020a05600c211900b003f09fe8312csm1351510wml.20.2023.04.12.06.13.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 06:13:57 -0700 (PDT)
Message-ID: <abc4c188-0ba8-8104-2c1f-39865f01353a@baylibre.com>
Date: Wed, 12 Apr 2023 15:13:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 03/27] dt-bindings: display: mediatek: dpi: Add compatible
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
 <20230412112739.160376-4-angelogioacchino.delregno@collabora.com>
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20230412112739.160376-4-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_061359_155178_4F7AFC10 
X-CRM114-Status: UNSURE (   6.46  )
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
> Add a compatible string for the MediaTek Helio X10 MT6795 SoC, using
> the same parameters as MT8183.
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
