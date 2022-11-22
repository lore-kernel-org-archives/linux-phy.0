Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2BCFC433FE
	for <linux-phy@archiver.kernel.org>; Tue, 22 Nov 2022 11:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i3vDfeQWwwp8+rNR8AcbGNc/2v8oUVPeK6RDv6YW8bg=; b=v3ZntFn37lTyZs
	bTg9xEtNpiC5X4QSeM9WDyfpqmn8SV4+UE2HqYZTArWkgUIL1yXE3PQVBEBP9LbdvOKBaRtMpeWT8
	vagg2Y+6GGjywm0+BBVnX0lltxlwMJlcZUUuL1NDThdBI7FlT6PrzcGLBQ1VwNrMq2YGz18y8dmAT
	EiMlaX3NcOPZ2Wp6J4jwtCx6XdV2aFgJyu9IVNEOdhThh1ZK3iD7/xLLfxIHnQXjFUk6ukGQD3WwF
	dxus2pMYxwtVcYIyjnJn1dwOzP+jBS7FkQ1M55BeXWETUM2yKPdC2Z0LGHsbC9oXXIDWF3XwhyBXN
	1EiIN9IVqQVgAa8jVBow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxR4W-008EVJ-7I; Tue, 22 Nov 2022 11:04:12 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxR4G-008ENG-Qm
	for linux-phy@lists.infradead.org; Tue, 22 Nov 2022 11:03:59 +0000
Received: by mail-lf1-x12e.google.com with SMTP id be13so23051768lfb.4
        for <linux-phy@lists.infradead.org>; Tue, 22 Nov 2022 03:03:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zcinWTUxzmlD4ETHKdNfDgH3HuvcezRo5wS9GT3LS6U=;
        b=VK+gZmXqaDrn/uu3zDv9bml7Bq/CdP84f5gKch5vTxrzFx0j4BF1qx5rzxGApvrIsA
         5Eu7PO9kyK0VwIqazcJxh2hYz7i2k8jEEBSlkpVTryuIZRc+zdiP654jBspBaGwmlwky
         5XyO2IKbwxQFsOHAYo+cKtAPwbnQjQZnXzWYCB3K9N0Hn4HIYtI/Eq/yVhCysKjCZbVl
         cXuuet/YXxh1Hw6v29pwAlo2Z8vk/9Uy0aKFIWwbpOQVPFAEwqTE7AfILmhvnZVok35Y
         +BCLX8hiXgBjwWfjZy0cgkvgczMFCqY8LWjPFSQh2DX2XnReiBmIpLGVtX6v4jSV+dt2
         zM8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zcinWTUxzmlD4ETHKdNfDgH3HuvcezRo5wS9GT3LS6U=;
        b=Fbge7x0OJva2h3qPIYFlBmp6FTlrccWiN7gt1QL44H1xRW/ohQAl2k/CY34obKunmv
         A54Nqivv3U6g2uKsgqbZ239hYZkBOV3G7I0ZpuqciPvJzQ0iVG5T41fQ4It0N8v1obiX
         Et5iCzce2LgkzSEFMmApjFWtJWXlWlaWuoE1XDruRa1AI85930jVuRMQGUQPFYvc6t5R
         R02kIWR/Cp4vuuhND/wDpjaGUKy1xZDAuRxQWhdZPrnJD0LLDfvG4vCc5y4FjFyEJHh+
         yFm2VK6SXl7atjvgOcH9g+MNXtbK6NLccLHrND7ae0pHvVIlGeUoz4Vrxrl5WMZU9JG2
         AD8Q==
X-Gm-Message-State: ANoB5pnV7zkr5zEQn4uqGzy26tO9mNOICzcdnkBx0j5ICoK++DRyyXDo
	KGiuusZCpoOQbKWHFkNqSa63zQ==
X-Google-Smtp-Source: AA0mqf5e0DuqvZwYG6CYp8J8pYkWb7Fa/PJ9p3aq6DrglvSC6J24tlD1cUzaZ9rzXnecRgt0Ah/ddg==
X-Received: by 2002:ac2:5618:0:b0:4a2:455c:622a with SMTP id v24-20020ac25618000000b004a2455c622amr998103lfd.508.1669115034440;
        Tue, 22 Nov 2022 03:03:54 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id d3-20020a05651233c300b004a0589786ddsm2431100lfg.69.2022.11.22.03.03.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 03:03:53 -0800 (PST)
Message-ID: <bea11c30-09a1-2b13-db7e-25dadc6e43ec@linaro.org>
Date: Tue, 22 Nov 2022 12:03:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v4 09/10] dt-bindings: phy: Add Cadence HDP-TX HDMI PHY
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
 <2c5da069419541e22b29079467887f1a1bd3cc69.1669013346.git.Sandor.yu@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <2c5da069419541e22b29079467887f1a1bd3cc69.1669013346.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_030356_873821_4AFEF435 
X-CRM114-Status: GOOD (  12.46  )
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
> Add bindings for Cadence HDP-TX HDMI PHY.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  .../bindings/phy/cdns,hdptx-hdmi-phy.yaml     | 52 +++++++++++++++++++
>  1 file changed, 52 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/cdns,hdptx-hdmi-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/cdns,hdptx-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/cdns,hdptx-hdmi-phy.yaml
> new file mode 100644
> index 000000000000..99352e655eec
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/cdns,hdptx-hdmi-phy.yaml
> @@ -0,0 +1,52 @@
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
