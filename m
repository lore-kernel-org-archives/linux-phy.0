Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BB56C4332F
	for <linux-phy@archiver.kernel.org>; Fri,  4 Nov 2022 13:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+WKX9INGG0QT8oLyEsBXuyzDLe/2piqK4K9RS5s6W+U=; b=AcZvVfZs0RyY/g
	CLXYfrNKGRRWb87zWNRsHwHj36mEAUq+psycFLq9/hw4OjC9wzqFzIaAg6H2oLP8nvjNB3susXFec
	0ZuScAB5u2sNFgIhBBjBMgPXX8/MgzZAOBSILf8nGVjudLyIELGMg56i5ohNx7WXkZn1UlTkT4q4r
	7BQ3j/3dyy0j8J/GiJyXcA4ox/6Pd/TdFDdfZGp4JMgtqbCBrE5u7YN3TynYBpGGLD0pLkYBBPaH4
	LmDrZvNvFZC4RdHkz981vmofLmUzJsIIuZVZ4aUZl/CdQGeb4NPZVvlCFVivWVhA/BRNdvZremlP7
	gr03PWLIcIBLFXFcg36w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqx1E-003md1-J1; Fri, 04 Nov 2022 13:46:00 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqx10-003mYn-BY
	for linux-phy@lists.infradead.org; Fri, 04 Nov 2022 13:45:50 +0000
Received: by mail-qt1-x82d.google.com with SMTP id a27so3011421qtw.10
        for <linux-phy@lists.infradead.org>; Fri, 04 Nov 2022 06:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vavmHFdy2UqqtSaeoQXAprIbQNUxvGgL2a6sfjfX8bo=;
        b=iAwllB/irUDcT6SbXQoW5KiHw7T62PcFpUyb6zPCWHLco9hXoKvpnr7HPeLKGHupX0
         EFbxZluDtrNTuq0mMuGmqKbVVHtPW8mmg/BLLQaY8neKBSp+ivsalguEathuGmeiVmhv
         MALOVfW1deKpH440RYNHLHhpzVaF8kpwV6+5bDFBFWGKSK6S258syC5PTfDGsfXulUIf
         CaqoE2c2lP4fgCywLW3DKz2n8Vhff7/MejTJcm/PSeSwr8+0+s8dVHMTBKFiuKidhOze
         I5SSKyj/zlAZNjs3lwrfRgKEJPfZ5CXMN2+UKq2D8OJRTx7wy/Y5nMezey8TZFmp3+e7
         YiqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vavmHFdy2UqqtSaeoQXAprIbQNUxvGgL2a6sfjfX8bo=;
        b=pzED3j4yZhg9bxAEyGBfpSEAOWCNCFziHmGBkgdoY02oCz1FIVDW2QfPWDxVwl5MX1
         k8XbLcMp6TVHzhVSK4sfNwFAEPvsbtyYqATHCOBsm+qQyvEvJkgE7xC7HaUHdLZGHtp6
         j6gySMbLlyw9fc6YhfPqwEMHEtmLYJ3O5ksnpTiQSZbPdkzQS49Nl+/hR0xFiWJH6QLi
         WBtX9GrtBktu/VpqrswAReueeAppvMZc1ffuWmubdyWTnqsuzH+38ZdkBj4e7ZuRykbT
         JVKt+ZMi5bgGS2JuY3/HaIA9y/6ZNsPnzyt1riPyk9zYsyhokVnkSpUIfZt9xuYaiT7v
         P88w==
X-Gm-Message-State: ACrzQf2Gs15ykNqPmIXzCH9XN7R1bkB6Yjy/xwFj0PNmpbDEyRzXg0Oc
	J+p09hPt3AJkF/dWHvGSpX1dqQ==
X-Google-Smtp-Source: AMsMyM5zQlLo8OgUbaae5LuaNGlR9OiqXZ/GlpPgTSOHs/IrBoDuUR7UyTkOWYg4+o9aO140bphOxQ==
X-Received: by 2002:a05:622a:1c15:b0:3a5:2602:7b99 with SMTP id bq21-20020a05622a1c1500b003a526027b99mr21380164qtb.127.1667569545298;
        Fri, 04 Nov 2022 06:45:45 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:aad6:acd8:4ed9:299b? ([2601:586:5000:570:aad6:acd8:4ed9:299b])
        by smtp.gmail.com with ESMTPSA id b1-20020ac87541000000b003a56d82fd8csm603940qtr.91.2022.11.04.06.45.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 06:45:44 -0700 (PDT)
Message-ID: <e2ea63b4-3be1-0a5a-9618-8495026ccead@linaro.org>
Date: Fri, 4 Nov 2022 09:45:42 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [v2 07/10] dts-bindings: phy: Add Cadence HDP-TX DP PHY bindings
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
 <bea6eb888717e1c0a3efc58761b0e75e4104f737.1667463263.git.Sandor.yu@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <bea6eb888717e1c0a3efc58761b0e75e4104f737.1667463263.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_064546_487912_3709FEC1 
X-CRM114-Status: GOOD (  15.04  )
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
> Add bindings for Cadence HDP-TX DisplayPort PHY.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  .../bindings/phy/phy-cadence-hdptx-dp.yaml    | 70 +++++++++++++++++++
>  1 file changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-cadence-hdptx-dp.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-hdptx-dp.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-hdptx-dp.yaml
> new file mode 100644
> index 000000000000..ab6f4e25c425
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/phy-cadence-hdptx-dp.yaml

Use filename matching compatible, so cdns,hdptx-dp-phy.yaml

> @@ -0,0 +1,70 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/phy/phy-cadence-hdptx-dp.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"

Drop quotes from both lines.

> +
> +title: Cadence HDP(HDMI/DisplayPort) TX PHY for DisplayPort protocol binding

Drop binding

> +
> +description:
> +  This binding describes the Cadence HDP-TX PHY for DispalyPort protocol.

Drop "This binding describes"

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
> +    description:
> +      Offset of Cadence HDPTX APB configuration registers.

Same comments as usual.

> +
> +  clocks:
> +    items:
> +      description:
> +        PHY reference clock. Must contain an entry in clock-names.

Drop "Must contain an entry in clock-names."

> +
> +  clock-names:
> +    items:
> +      - const: refclk
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  cdns,num-lanes:
> +    description:
> +      Number of lanes.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [1, 2, 3, 4]
> +    default: 4
> +
> +  cdns,max-bit-rate:
> +    description:
> +      Maximum DisplayPort link bit rate to use, in Mbps
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [2160, 2430, 2700, 3240, 4320, 5400]
> +    default: 5400
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/phy/phy.h>
> +    dp_phy: dp_phy@32c00000 {

phy
(and no underscores in node names)

> +        compatible = "cdns,hdptx-dp-phy";
> +        reg = <0x32c00000 0x100000>;
> +        #phy-cells = <0>;
> +        clocks = <&hdmi_phy_27m>;
> +        clock-names = "refclk";
> +        cdns,num-lanes = <4>;
> +        cdns,max-bit-rate = <5400>;
> +    };

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
