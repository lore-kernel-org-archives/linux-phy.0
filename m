Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ACF7C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 15 Nov 2022 13:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rOl6tmd7TChB948ktdQCnCfI0J2L+YJvcs6kY9jBjcw=; b=BDKXBAbcsbF2eP
	LZcCdLzJQRPxSY1anENDXpHnyOkS6t16H7fnJZejRRDrJ8WU+z8id822nz3Jdk2pNYErQlSCpRZ4p
	UQo0B4VuArljtPwveSaV5NIQ3iEU8+7SjOMG++jmSy8k/wQxaXTBzGkhMRaQBFKkkQ2eOAF+UZ8ZQ
	VPi/wJfhgC//GY3Et3FTOpZt2rWhAf7eR41Ly/uDP6AYrG48q5tBbrbDi7QMcou0lCWu+pXF10ttA
	62rNVc9zOj6vNE3dT4AxwvwMDrKfko4fGGWZPGXFoit/0gNvnJq+FU+Ip/qZxt2IGqzgp3k86C5Az
	mpk5qVOwfMBPS/RcqiJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouvy8-00BRIe-Nk; Tue, 15 Nov 2022 13:27:16 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouvxv-00BRET-PJ
	for linux-phy@lists.infradead.org; Tue, 15 Nov 2022 13:27:05 +0000
Received: by mail-lf1-x12a.google.com with SMTP id p8so24379836lfu.11
        for <linux-phy@lists.infradead.org>; Tue, 15 Nov 2022 05:27:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c1ts3WN+RK4DUBdlD4M3Bwnl561dvzeyCNo0CvSc+zE=;
        b=uVQaMXfcVvgl6dY7WMPggsTDm0+KfwTZI7cWciTCNUSEZCUs+x6piaaNQwsxTfhwRh
         uOWKjHFFg4Re5C4G/wRe/7enXuo39uj90ALGEWMAySjuuu1eCEi8AQihRFil8jxymSvn
         fKWpCGoULpMN074yjNjTRMZeeYISUzf8+MctxAOQJIC+jAmQz/T8RRZT4teiLCGzH7fN
         d9oU4p6M5d6+ySdmSXQ3XR4vdls4MHZJghumAxwG1OsgOBEl3zvIN4VLX2flTpRMKlCs
         BKMPWKSNQM5dHDPqry+lg3kYW2d8Z90X/th4rvGxQdtLbTPCFPHnUNHJugm47Cg2diOy
         IOmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c1ts3WN+RK4DUBdlD4M3Bwnl561dvzeyCNo0CvSc+zE=;
        b=Z1D8F6dN3NBjHz349WQWT38Ts7H5+zJRAW3xDMwYE9kU+nwF1Ml6CdJ1y1Gy9nHzNC
         fd10Iy2maK10vfb/N1vp3gvj8+56i2q/Bw2vU0r1jSpuH76Q6D58RFr+LjuLH/DwxpkC
         zDM3/NdWRdf1tdU/CEx/ZGkC9EErMhB1/rdgX7cnq3Ab6luMR9zeP0tQKHA30k1oBDhQ
         763akpo7x6d3A6aNUb+n3BcXcfk0QiUDW9NO+NO649cNfCFoz1Ez7H0m7PXW2w6FPHXq
         jW84sTMKVXk4egVcSQniTePswoZtgEZ78Uzywhe287T9sTrY6+0Hk81luroevkf7fRyE
         LkRg==
X-Gm-Message-State: ANoB5pmmWUCfiDhARfrDdhOXTli9rgdWqP9sTHrKIkw8gGt4DiaGPCys
	1EVf/4hwpnrSoTc5+Q+jjqeXGw==
X-Google-Smtp-Source: AA0mqf7Fu+p+QJN27fSwZXLyKZi1beoLQadBDtK20wEhdBa9hUNak27U2LuRZwAIe1ezmM5grv/amg==
X-Received: by 2002:ac2:5fce:0:b0:494:8b3d:bb84 with SMTP id q14-20020ac25fce000000b004948b3dbb84mr5257707lfg.48.1668518820123;
        Tue, 15 Nov 2022 05:27:00 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id s2-20020a2eb622000000b0026fe0a052c5sm2499675ljn.129.2022.11.15.05.26.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 05:26:59 -0800 (PST)
Message-ID: <9af79043-09b9-91dd-60d5-6dc41c197763@linaro.org>
Date: Tue, 15 Nov 2022 14:26:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 07/10] dt-bindings: phy: Add Cadence HDP-TX DP PHY
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
 <31ddc1508e01618db62bb9421d15745d525a6d10.1667911321.git.Sandor.yu@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <31ddc1508e01618db62bb9421d15745d525a6d10.1667911321.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_052703_861273_AA1240AC 
X-CRM114-Status: GOOD (  13.19  )
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
> Add bindings for Cadence HDP-TX DisplayPort PHY.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  .../bindings/phy/cdns,hdptx-dp-phy.yaml       | 66 +++++++++++++++++++
>  1 file changed, 66 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/cdns,hdptx-dp-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/cdns,hdptx-dp-phy.yaml b/Documentation/devicetree/bindings/phy/cdns,hdptx-dp-phy.yaml
> new file mode 100644
> index 000000000000..8f9b8ba7d1c6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/cdns,hdptx-dp-phy.yaml
> @@ -0,0 +1,66 @@
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
> +      description:

Missing -

> +        PHY reference clock.

Join with previous line.

     - description: foo bar


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
