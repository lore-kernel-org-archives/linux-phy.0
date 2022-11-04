Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E6BEC4332F
	for <linux-phy@archiver.kernel.org>; Fri,  4 Nov 2022 13:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yr2vvHSkmY4q+bsDZEJWRdmO+0Odc+8H7kPnT6xdd0c=; b=RmXeclXhD6A3li
	Yk+WBtQJFzHhwe0lfPoKYS6EjCSwaiRIbNzGYC7s2ecg0lkO+MHidSsflzs2zhXsyI/p4ecYn2ytY
	Xmpoj7TwI5SND5AFg6dDxUBMoFiwxHAEQBSH7fWTZfNx5v8RhuVMVPquDnQAba9MonDv6oFLStwfT
	cvhNkk7GKqisf/8Bzr+PSmtjrD2E5TK/a/QtfaAGaMC/Ne4wnGU9dfSdkfWv1OlChhg8RIMx9e5/m
	iRK8oLVVeWWJA/GnCxxK1ZVl3+oDV42lCaE4SM6lE3R8u7hWmsPt33VhesCNsqVc4vv2AMcjJLyLr
	s+U4l1fPOzl6B5W2sObQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqwyY-003lnF-Lh; Fri, 04 Nov 2022 13:43:14 +0000
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqwyV-003lmA-TT
	for linux-phy@lists.infradead.org; Fri, 04 Nov 2022 13:43:13 +0000
Received: by mail-qk1-x72e.google.com with SMTP id g10so3039076qkl.6
        for <linux-phy@lists.infradead.org>; Fri, 04 Nov 2022 06:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7aFvSvKZV6J4j21H0wqTwTzV7dfZuRBIYj/wdHuln8A=;
        b=GaMee9e2GzV8cLSut9QKldsYQBEDoZfjIgBJdR8+LfWuj4/JzhrzKVSfN1KAXap1O+
         1KJpue8Xyhld3zHiktciY9r3VG3Lq0aCNDXL0/iYG8EDhQfHauzvuSOtRJzsIYfxkfNp
         eeJUnw+S51V8Lnh2BVryNy6s2Mq2AB0O41Z1mPVBqgegcqjqMDLnHu0xHBHAZfhpUplD
         MrEOloMQnAdHlZfQnu54tuPdjXNnsGavUEkBGNklZCS1Yxsj068ndfxvda/AeNUcv4Iq
         CjTo0LhZxPFNG41mDhTD+v0sLuiaLTHwLzc/2sVydKfe11FDM4dtTpZHzW/JyoaVeFIm
         FbZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7aFvSvKZV6J4j21H0wqTwTzV7dfZuRBIYj/wdHuln8A=;
        b=ghkdid+1rbrlE3gBbhZYAluIkCtjBj11l8ugq5ZVeNVN2TFl+6xhwMho2/5dYKf2da
         OzB99ec5SG4G3+v0b3gDXbN0ghhM5ad3qFYyjno77mjg0htNogmRJI1lSKpXsisvgeYl
         7ORAdd0wUole7YTNKsUpM0N5yZGQ+cIw4rSBqxAz//lEYmtElyARuLdcJKr7yTc1Htrd
         oCr+A6TYF1QuLz8MJAvmMRax9HNPrGSdVI1kXTi7XQ9Oof86CNsMSDk51g9mpyoHb5yS
         8jy6KqFtqBg5N6fE6UHo4chADSWqAckt0hn46Z7a9XofW08QHgQosCil5IwMQNzcFIOv
         xcdw==
X-Gm-Message-State: ACrzQf15UqjFM6Nh5oJubYaBErgLtf1hEWXWVJ6oxz9MWJInRZtjxC5H
	7AEi/w6TD/3D0z7JghFPtmKgWg==
X-Google-Smtp-Source: AMsMyM5h2Jt7+jT0RAOVbn0CG1cTAgwDsfRgt0Uidh3TtbGhH9wXo6gIn09S9DeruASfBxpjxXvjuw==
X-Received: by 2002:a05:620a:1256:b0:6fa:2370:a7e8 with SMTP id a22-20020a05620a125600b006fa2370a7e8mr21569937qkl.374.1667569390902;
        Fri, 04 Nov 2022 06:43:10 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:aad6:acd8:4ed9:299b? ([2601:586:5000:570:aad6:acd8:4ed9:299b])
        by smtp.gmail.com with ESMTPSA id fa3-20020a05622a4cc300b003a4f14378d1sm2461421qtb.33.2022.11.04.06.43.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 06:43:10 -0700 (PDT)
Message-ID: <6babddd0-13d8-0f55-1981-ac5cfed8e5ad@linaro.org>
Date: Fri, 4 Nov 2022 09:43:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [v2 05/10] dts-bindings: display: bridge: Add MHDP DP bindings
 for i.MX8MQ
Content-Language: en-US
To: Sandor Yu <Sandor.yu@nxp.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 andrzej.hajda@intel.com, neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, kishon@ti.com, vkoul@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 linux-imx@nxp.com, tzimmermann@suse.de, lyude@redhat.com,
 javierm@redhat.com, ville.syrjala@linux.intel.com, sam@ravnborg.org,
 jani.nikula@intel.com, maxime@cerno.tech,
 penguin-kernel@I-love.SAKURA.ne.jp, p.yadav@ti.com, oliver.brown@nxp.com
References: <cover.1667463263.git.Sandor.yu@nxp.com>
 <aa8e5153d0ad12a2039ce44039f9ecf39e4a39d0.1667463263.git.Sandor.yu@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <aa8e5153d0ad12a2039ce44039f9ecf39e4a39d0.1667463263.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_064312_008056_2B3BA324 
X-CRM114-Status: GOOD (  15.32  )
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

On 04/11/2022 02:44, Sandor Yu wrote:
> Add bindings for i.MX8MQ MHDP DisplayPort.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>

Same comments as for HDMI bindings patch. Everywhere.

> ---
>  .../display/bridge/cdns,mhdp-imx8mq-dp.yaml   | 67 +++++++++++++++++++
>  1 file changed, 67 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml
> new file mode 100644
> index 000000000000..06ed881247ea
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/display/bridge/cdns,mhdp-imx8mq-dp.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Cadence MHDP Displayport bridge
> +
> +maintainers:
> +  - Sandor Yu <Sandor.yu@nxp.com>
> +
> +description:
> +  The Cadence MHDP Displayport TX interface.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - cdns,mhdp-imx8mq-dp
> +
> +  reg:
> +    items:
> +      - description:
> +          Memory mapped base address and length of mhdptx apb registers.
> +
> +  phys:
> +    description:
> +      phandle to the Displayport PHY.
> +
> +  phy-names:
> +    items:
> +      - const: dpphy
> +
> +  interrupts:
> +    items:
> +      - description: Hotplug detect interrupter for cable plugin event.
> +      - description: Hotplug detect interrupter for cable plugout event.
> +
> +  interrupt-names:
> +    items:
> +      - const: plug_in
> +      - const: plug_out
> +
> +  port:
> +    $ref: /schemas/graph.yaml#/properties/port
> +    description:
> +      A port node pointing to the output port of a display controller..
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    mhdp: mhdp@32c00000 {

dp@

> +        compatible = "cdns,mhdp-imx8mq-dp";
> +        reg = <0x32c00000 0x100000>;
> +        interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
> +                <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-names = "plug_in", "plug_out";
> +        phys = <&dp_phy>;
> +        phy-names = "dpphy";
> +
> +        port {
> +            hdmi_in: endpoint {
> +                remote-endpoint = <&dcss_out>;
> +            };
> +        };
> +    };

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
