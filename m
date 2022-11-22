Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F110C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 22 Nov 2022 11:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XmHR2I1ha4h0aYaxhxJd7rC6kYhqxRD7hHW/YWAju/8=; b=jnfJZH+zWANLeo
	+P8W8N4UaYWZpaimA6Lkt8mJUFbuUswwjro1VujvNc4sNITOoFmKPCgGs9MWfWgtKxc/FvYB9KfIM
	du4Wk1DyAxoNr9+ordJHcBFGw4QuXeK92KFwK0hQbY6xVl0dhdLGtlc2Ha/zeY2AkSNhoPYa6tBS9
	ohFzjUpUQLZSx2Lif9RBopldkOiFi5FjIsx2yX2nV9qmwepvDHsOphVIo2Tpz6bAbKwtKy2aZPWVO
	BLxh9K/zlHhXjtaV35d1gcmyP1nKaWCI1eSSnugjLdAcl4lsdwfX0TKU3RuScl51pVnSdD1gaTCsa
	ieW5w48zl6cxzP21tpnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxR3D-008Dxv-R0; Tue, 22 Nov 2022 11:02:51 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxR3B-008Duo-6U
	for linux-phy@lists.infradead.org; Tue, 22 Nov 2022 11:02:50 +0000
Received: by mail-lj1-x22e.google.com with SMTP id d20so17482399ljc.12
        for <linux-phy@lists.infradead.org>; Tue, 22 Nov 2022 03:02:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WLUdigsApmRK74tKDjONSTE2dMi6WHx5zi8E0wjDf2Y=;
        b=LRFka4TnsqZBKvaCuN+bPxENtgjSKcVFXnRvPHryrCPnVdt9dSHiIKcL/r/tVfsPlP
         eKtCKhwXTM/jDD/WGL546uvNJN17g7IQonRwdZPsfrGvIiHXqxYFd0IyO/KZhHpVvFmq
         K+vsDgKSkaAyNMP688NdlXI1ydEBpf4ySOkkYtV3ywxMcuLP/GWxAh0FNp5LIzbvkoyN
         p1xn5774qN4kGrygDa8ElEiz2qFF7JsHffs4q5xvB+5zwDhGNov6Ipy3uUG5wz6EcBQf
         hocpxC7y8JW1AZlUKl2FKoiNeWnVslDfPAmYz17BPHSCzEORSsHzrgOAZ1xS2NwfjNkl
         otMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WLUdigsApmRK74tKDjONSTE2dMi6WHx5zi8E0wjDf2Y=;
        b=xtP40AJWtN761oyNTiGXRFAgIOay//3bfu85mqnAMWUUmMApDKSHoSIeUj1mnD0xuP
         v3vbPUR8Llzel97tczB9f7zBQTZDHulphnT1FkrIlECTbd8hzY6OdMtWRcXFHgLlyFo4
         H4slqMQk2/e2ofnkSmHvGB+GYDnsrJnXeBgAmmiFbB0sdca+X+e5kyRmgLlwJjodtuTV
         0+MW9MKUlLCtnVHwPYiPaa+NGl8iEGHtr7lkelha2m9GOfuv9UT4BA3otn3RaFVCy6lc
         FwTzlEPY/fz1Vhdeyg+gtDXEZiEhfw3JH4UT+FbrhmCTUDJgQFJpdbS/ytFUzfA7Ak3g
         x8pQ==
X-Gm-Message-State: ANoB5pmHMF3+K/UMFVmbadJL4DaJ1SzfsqugODKddo/OF8WGVqx7P5ha
	mZI28zt9WEDJzUutg2wEhicKew==
X-Google-Smtp-Source: AA0mqf7vvF2BfXvTbPIQ/acLujnLA0PSEBSsit/7dUyYrj/tz7iYaoGNrDleBKloFAvsRnGQDkevcQ==
X-Received: by 2002:a05:651c:b21:b0:277:b04:ffe8 with SMTP id b33-20020a05651c0b2100b002770b04ffe8mr7794982ljr.136.1669114964740;
        Tue, 22 Nov 2022 03:02:44 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id 19-20020ac25f53000000b0049d83646ce7sm2410812lfz.110.2022.11.22.03.02.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 03:02:44 -0800 (PST)
Message-ID: <79831a58-0b67-920f-3c07-d304dff5af0c@linaro.org>
Date: Tue, 22 Nov 2022 12:02:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v4 07/10] dt-bindings: phy: Add Cadence HDP-TX DP PHY
Content-Language: en-US
To: Sandor Yu <Sandor.yu@nxp.com>, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, festevam@gmail.com, kishon@ti.com, vkoul@kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, alexander.stein@ew.tq-group.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com
References: <cover.1669013346.git.Sandor.yu@nxp.com>
 <5f8a3f15f744e201171c20505e1e3c47f5a27dce.1669013346.git.Sandor.yu@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5f8a3f15f744e201171c20505e1e3c47f5a27dce.1669013346.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_030249_371966_5EB0B8BC 
X-CRM114-Status: GOOD (  12.18  )
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

On 21/11/2022 08:23, Sandor Yu wrote:
> Add bindings for Cadence HDP-TX DisplayPort PHY.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> --->  .../bindings/phy/cdns,hdptx-dp-phy.yaml       | 68 +++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/cdns,hdptx-dp-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/cdns,hdptx-dp-phy.yaml b/Documentation/devicetree/bindings/phy/cdns,hdptx-dp-phy.yaml
> new file mode 100644
> index 000000000000..b997c15ff0bb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/cdns,hdptx-dp-phy.yaml
> @@ -0,0 +1,68 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/cdns,hdptx-dp-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cadence HDP-TX(HDMI/DisplayPort) PHY for DisplayPort protocol
> +
> +maintainers:
> +  - Sandor Yu <sandor.yu@nxp.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - cdns,hdptx-dp-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: PHY reference clock.
> +      - description: APB clock.
> +
> +  clock-names:
> +    items:
> +      - const: refclk
> +      - const: apbclk

Drop "clk" suffix.


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
