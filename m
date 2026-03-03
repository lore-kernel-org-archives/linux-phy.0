Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A2B5EC1432
	for <linux-phy@archiver.kernel.org>; Tue,  3 Mar 2026 11:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/ND2873NQWcf5EGDK5CPYghqJ9383kC496OVUInpck=; b=nC3IKgNOt0uO/p
	ZeXB1KwK612qlW5GvzSD+f12U19gnxOOM5AOrCtLJRN7fuOk2R+lcd8J32zWc1i9uuGM9V7kCbIs4
	f4fRF++mgcsHq2Olj3BwahPdIGm27DAtZC8yRHpmjrvygAqHrVofDULIFf+ICKBzeRDBX+qvlLc2M
	5dogQZhfJLR6I8mZibyf+4ZIRNrLT2juidq25cFqyNqbEG5HFV2KQJGMxU4prWPnRcK/vm9S42T4b
	fAYWjhIVPNpMtZmDlu/VkU3a6G1qNmLDIPsxVwmuMow+aC1gOQqJgJqQ2Mm4X/ANZ+dVM9sqYtpPu
	ozSVMF59+FawPRAH+r3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxOEy-0000000F6ND-3mA6;
	Tue, 03 Mar 2026 11:48:40 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxOEw-0000000F6Mo-0lFV
	for linux-phy@lists.infradead.org;
	Tue, 03 Mar 2026 11:48:39 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-8cb3bae8d3eso510187285a.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 03:48:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772538516; x=1773143316; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BW1Va6sWvPgNlKNz67u0LUyNkUVwjA4Z8vSpPvXtvgs=;
        b=ZitCCkGNT3N5IMND+k2M6i5MXBDLpPgXpOVRHM71yxaR4Wme3FYtNHgrvEjCV5OrGs
         z4dxyEQ4z9qmmogRgu/O4tf/HA/9y/w5XJGOLqPcV0woTG6dZgskjw4w74na73Pfp9UR
         8kdfyWwAZEBcuXfkQ1OG+gkAlVU18j8TWxKBdufzTOT8eFW8kPDN7JGzD5BKOqeCt7R/
         rROmKoM67ThHd0YyKsVqdzjkz/pItXtaxOmJTL4ui3bqoBSboqDd3NBk93qXZBVX7okm
         cZO8OKBAUbJM/pD2MXT48I9HHn8P7jeg03tqnlkulSNQolNAV6c3oRm24R6PtcmYp9Ep
         hK9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772538516; x=1773143316;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BW1Va6sWvPgNlKNz67u0LUyNkUVwjA4Z8vSpPvXtvgs=;
        b=ujiyTcs96WXwJEZm0vYkh76J2hzXeST+LV5RfLF311mp/r7Ngds4DxnsFJ/Txfioy/
         B8LqbOh8zTTwoAeCTFPCLLAjq4Q7HBXpg0ikKEzKZGASyr8dsMj1HmgEpA7yvSMRrG+E
         TisUBnDjHhLv2nqHCEkGDCAWKOQzlHngkYqcrI0qDZdJuTsk4MEa6tJQUyLKX+YISiBp
         IiDrCtNUOAGRATyD2QQ4al935EYRNLoHyzqIZVd8PhIpH8rq6WYrTNHYu1SdNhW+QMJe
         hI3RInXKU+De7pGFF007/tsPIg48bk8gsg3WcAILcP1l49WcZtniy+3ssnzv4Cplwd8N
         YKDA==
X-Forwarded-Encrypted: i=1; AJvYcCVzmzYqOGAI5UwALd5G7wKK8Vb3yE0bmKowuFbYFO6er9h8NX/l8s/CqDa+x8x5XrmXULVtnNiSTm0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwhOZ7DV4dRsucVQv7XvAU6A6gD079Tu0vlpXOZgIPW/6j7U/qY
	1uYRtxHlJYaeX54JlujtWsR6n/EdY4Yq5wm5GRvxrH6XV5EAagNuzEAI
X-Gm-Gg: ATEYQzydG5Wfg0ho4/YdVwnD+Q8UtJy3LU1PV5cbv1JdwZPdkLfZZ7W1te2BK1FfFcO
	d0h2NDWYagX9J+AEiL1Sks2CnRazsffGNrKHx41dvnoC3SI7ZTF3BsbosceuBzQ+D7QULxKftZe
	XARqFTvum+KnWdMDB6E+MYIJ0dvJ/pFbcho++mJN/DjtMpShzWbaWbej1sK8g5ruExUnvRPPjKU
	vZHyUwnixEfGaK5Cc6Kt9bZfA9mXgIJi3ahDBMplUlyXN8KDcYvdOCzzsfCySxVCOy1XEx3HMXe
	1cGr9PIV1Lv3w7Y05H/+zk/5nD1kTeYAJxWZaiw14F1uV5T3cNvJJHThVfSJ+otjDQLwtRGPE+s
	4DHP06E2Ee/kftphofOt4oreyVeEhduAH3OaDdJ4XsxEFQGMKqvw/98VTMdNnECx/1cHh/xvoPD
	K9KWmuBn7/s+MdULGt5VCfEJmp
X-Received: by 2002:a05:620a:3952:b0:8c9:f8e5:9f0d with SMTP id af79cd13be357-8cbc8d9f948mr1901267285a.32.1772538516212;
        Tue, 03 Mar 2026 03:48:36 -0800 (PST)
Received: from [192.168.0.13] ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cbbf71ae8esm1341419185a.41.2026.03.03.03.48.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 03:48:35 -0800 (PST)
Message-ID: <5116340c-4702-47d0-87f0-9399937f0e64@gmail.com>
Date: Tue, 3 Mar 2026 03:46:25 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 1/2] dt-bindings: phy: eswin: Document the EIC7700 SoC
 SATA PHY
To: Yulin Lu <luyulin@eswincomputing.com>, vkoul@kernel.org,
 neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: ningyu@eswincomputing.com, linmin@eswincomputing.com,
 fenglin@eswincomputing.com
References: <20260205082009.1780-1-luyulin@eswincomputing.com>
 <20260205082129.1482-1-luyulin@eswincomputing.com>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <20260205082129.1482-1-luyulin@eswincomputing.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_034838_241782_991A2304 
X-CRM114-Status: GOOD (  14.41  )
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

Hi Yulin,

Can your team share the dt and driver for &hspcrg? I want to do some
testing with your latest v15 clock patchset on my P550 w/ SATA. W/o
&hspcrg, the SATA phy can't be enabled, hence SATA drive doesn't work.

Bo

On 2/5/26 00:21, Yulin Lu wrote:
> Document the SATA PHY on the EIC7700 SoC platform,
> describing its usage.
> 
> Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>
> ---
>   .../bindings/phy/eswin,eic7700-sata-phy.yaml  | 92 +++++++++++++++++++
>   1 file changed, 92 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml b/Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
> new file mode 100644
> index 000000000000..fc7dbac77acf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
> @@ -0,0 +1,92 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/eswin,eic7700-sata-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Eswin EIC7700 SoC SATA PHY
> +
> +maintainers:
> +  - Yulin Lu <luyulin@eswincomputing.com>
> +  - Huan He <hehuan1@eswincomputing.com>
> +
> +properties:
> +  compatible:
> +    const: eswin,eic7700-sata-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: phy
> +
> +  resets:
> +    maxItems: 2
> +
> +  reset-names:
> +    items:
> +      - const: port
> +      - const: phy
> +
> +  eswin,tx-amplitude-tuning:
> +    description: This adjusts the transmitter amplitude signal, and its value
> +      is derived from eye diagram tuning. The three values correspond to Gen1,
> +      Gen2, and Gen3 parameters respectively.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    items:
> +      - description: Gen1 parameter.
> +        minimum: 0
> +        maximum: 0x7f
> +      - description: Gen2 parameter.
> +        minimum: 0
> +        maximum: 0x7f
> +      - description: Gen3 parameter.
> +        minimum: 0
> +        maximum: 0x7f
> +    default: [0, 0, 0]
> +
> +  eswin,tx-preemph-tuning:
> +    description: This adjusts the transmitter de-emphasis signal, and its value
> +      is derived from eye diagram tuning. The three values correspond to Gen1,
> +      Gen2, and Gen3 parameters respectively.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    items:
> +      - description: Gen1 parameter.
> +        minimum: 0
> +        maximum: 0x3f
> +      - description: Gen2 parameter.
> +        minimum: 0
> +        maximum: 0x3f
> +      - description: Gen3 parameter.
> +        minimum: 0
> +        maximum: 0x3f
> +    default: [0, 0, 0]
> +
> +  "#phy-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    sata-phy@50440300 {
> +        compatible = "eswin,eic7700-sata-phy";
> +        reg = <0x50440300 0x40>;
> +        clocks = <&hspcrg 17>;
> +        clock-names = "phy";
> +        resets = <&hspcrg 0>, <&hspcrg 1>;
> +        reset-names = "port", "phy";
> +        #phy-cells = <0>;
> +    };


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
