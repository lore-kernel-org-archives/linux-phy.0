Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC135C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 15 Nov 2022 13:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R5td5U10YNCGwT5HPrUiU3VGMqWZ1MXQwGq5FjFNJfM=; b=SYv0pnCIoWJHpe
	bH0phyZ9P4zB6A7wILD7FubYerZAxQjw5DB3WQcPhA+s/5I1zJqT8s34pnvc+qn2eDWDuc3lPz2oC
	a2tBXBaTM2orIZM98zciKtBegdTnurD5jAksxyXX26ncPpod97CMORALU2LirEjPgvaWe1+Krv1KT
	x9JUvuQRyQCBciR/FVf02dgIVa1ihKuWxJcBPe8SjrPPIpXFRL4do889hzbTB0WW9AAjT10+w/pQg
	Ad+jSUB0jOTs6kTfoCu5odNQaaGKhuSXXwRh2GySwMOafhMP6c52TE6MgxJYxcaOTtPMMGgcIiS4G
	JWt2rIKC93U85Ey/HZDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouvyy-00BRWs-AD; Tue, 15 Nov 2022 13:28:08 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouvyk-00BRSa-UY
	for linux-phy@lists.infradead.org; Tue, 15 Nov 2022 13:27:57 +0000
Received: by mail-lj1-x22f.google.com with SMTP id l8so17458834ljh.13
        for <linux-phy@lists.infradead.org>; Tue, 15 Nov 2022 05:27:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4CAGamBCwJlvXGLjsJzY/wgNzAR0V/YSmcsK0zwqq8s=;
        b=eOK41ApNBaa1GYLru+QjrijP97HhH673awTACRDo3sALtzQSYyrsfwshQB5pe/xFov
         mvDrfBKEX1V9nCTI9dovVaGRj3X5q6dcQs+aPxwrVBF08OwN+oy9Lm06DABE84im/FxT
         DSKzd+ciO7KT6G2KaLdoRYOc34B0PYts1TZBsAWmbs78ZJH2mNAXFL/3fAOBacsb6oDu
         W7y0qDdtcQ/Bho5unyaESb2EWaEg1f67d3MH7DRtPw75HDMihLJxKb+iImDSiqkLEwmB
         E/CVJKY/dnZqeY9FOxaKBte0IPJjOVxYQf7ORRb6xrcknSYI1dbuyWWk2XmgCo/tDDq+
         c2mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4CAGamBCwJlvXGLjsJzY/wgNzAR0V/YSmcsK0zwqq8s=;
        b=gJug3eno63WBc1u2YjFlaiYmfuauLG4bZaF399XeR+toMEyaj//guKPSet65bl/AOK
         h5j7VJ/2/GXHJOGiBdQ8blkbgZ4LZIZgoE4ua33gDL2PpHxci+UGOaotmD+MSek19HbV
         Vn2bzh+yR+Pfu/FjnJ+pzdr7WFEugnZA2Cb5AYiK5IIG4T2P1Jg9dvKM8yig7Wc6PwFj
         iF+OOpRX3/VpewnpXNPLpf1lMBdUiJWKzT4nfz5fXuCSPD5Hje/a7WyrePg1FVN8KytH
         wl7uEmbYC0S9UCzn6369pvmI09E19RO5smO1+DOleM9oDBfkBTgJyZoO6pJm5fjFd8tB
         6N0g==
X-Gm-Message-State: ANoB5pmUfcNjfkMSp+kqYTge9Ic3y5wlxU8h1RpUA81Z7VOwasEvkrZw
	BW/QIc2uLEQ1sURRfLtC3TaUEw==
X-Google-Smtp-Source: AA0mqf6fJcy47gcfAUV27JcgRnri6g7fOH0qrvTrYn9j65yLVWJYl+kJXAMipdsNznLO/OeMb88E6A==
X-Received: by 2002:a2e:b1c7:0:b0:277:794:cb84 with SMTP id e7-20020a2eb1c7000000b002770794cb84mr6071216lja.7.1668518873539;
        Tue, 15 Nov 2022 05:27:53 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t10-20020a195f0a000000b0049c86ca95bfsm2205747lfb.52.2022.11.15.05.27.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 05:27:52 -0800 (PST)
Message-ID: <5deca781-90e6-4f72-1abc-cb0bd4777187@linaro.org>
Date: Tue, 15 Nov 2022 14:27:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 09/10] dt-bindings: phy: Add Cadence HDP-TX HDMI PHY
Content-Language: en-US
To: Sandor Yu <Sandor.yu@nxp.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 andrzej.hajda@intel.com, neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, vkoul@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 linux-imx@nxp.com, tzimmermann@suse.de, lyude@redhat.com,
 javierm@redhat.com, ville.syrjala@linux.intel.com, sam@ravnborg.org,
 jani.nikula@intel.com, maxime@cerno.tech,
 penguin-kernel@I-love.SAKURA.ne.jp, oliver.brown@nxp.com
References: <cover.1667911321.git.Sandor.yu@nxp.com>
 <a88409e6003fbb2a57df36ef4116a2cdb1c1eec1.1667911321.git.Sandor.yu@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a88409e6003fbb2a57df36ef4116a2cdb1c1eec1.1667911321.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_052755_043380_83EEAD63 
X-CRM114-Status: GOOD (  12.93  )
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

On 08/11/2022 14:00, Sandor Yu wrote:
> Add bindings for Cadence HDP-TX HDMI PHY.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  .../bindings/phy/cdns,hdptx-hdmi-phy.yaml     | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/cdns,hdptx-hdmi-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/cdns,hdptx-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/cdns,hdptx-hdmi-phy.yaml
> new file mode 100644
> index 000000000000..c2ed17ffe6ef
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/cdns,hdptx-hdmi-phy.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/cdns,hdptx-hdmi-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cadence HDP-TX(HDMI/DisplayPort) PHY for HDMI protocol
> +
> +maintainers:
> +  - Sandor Yu <sandor.yu@nxp.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - cdns,hdptx-hdmi-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      description:

Same problem.


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
