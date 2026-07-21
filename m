Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C17D5C4452D
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 21:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kByZWyFbog+AwFVaspJsGmKM3RM6BvtpqWqQF3AgIQo=; b=KbxZU9mSfAWGoE
	DopYQipFjzjpfLE5CnePwbnUJSoszHZoriJDQ6sG0i2hwpkT9xufvZBMp8jtEJpDI34X7rbzmd6Ia
	k3J2jzhSLwNh1RFBr186HisTtKgtkGKWJ5zyXwJWGA7N6zF/aC9+x7pIVKEw+Morkd+diFWNYHrJH
	yDY5spkASLP/+Haq/dN8kKdi2tALR6KDQ0zlGf66NOAvCcKDLdkaQz4kKgZTJFffkURaRjqf5iSSp
	uLhwqlQxobW+24DPI4AazSoh0Nn8hQWcIxQJ7T0lQH9ZzVfPL6SyCyhVEUAg9/XhiX4XQvTnkq1hE
	5XwMlXGuYu8P1ll9rmtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmIL2-0000000ATsr-17rs;
	Tue, 21 Jul 2026 21:49:20 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmIKr-0000000ATmO-1rAB
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 21:49:18 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-39dbc0de4ccso5627231fa.1
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 14:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784670547; x=1785275347; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=jJPK6WsZUoetFgU5n/OkwtbmgnvsORPlU3I309PYPVI=;
        b=Trp56cWLmUbwo1Mwlp3VyL1tGCe2QzoKV+hPwJX0np4TCiwEGXBFm1FErrkmEC9GHg
         KX0JB6wkM6h+AjS3RLfgkV3yqdV6D6ZMsKHhIDDeoPGBeJRQLxBwQ0NyCA8JTxAs4QY4
         OXowC8nfI3VD5AW6w6U0Zdjd/EM1dh3jkSdlhB6KXGE/sJlcLbJ1XUh7Hdc+NsIXBn3a
         GDdBb/Y+D8d+QT+e2ZYFB6QjAYr1Hsm9sbEvqtSo8gh/5+wD4gsfaINM+SKhCosJjZ4z
         gTainyBqJZgzSYmNj8Z6FVokU36bPEhJLUdDfYTq9vsrl/tyeeg8ffhfZ95TnJAWItIC
         MB3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784670547; x=1785275347;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jJPK6WsZUoetFgU5n/OkwtbmgnvsORPlU3I309PYPVI=;
        b=EPsVG/CLasgEc3qHdckO5JkmrfmDV275FtH/0nWS7CA/wzHdeni/x3RwMufqhxr/q4
         RKMFq4LJtOuquklsRCseAqoBThCVHDGst/M2NBsIsi2qZ5nFQN+/wrXMWKOwryMP103A
         stmPMfmDkawSRsBwBabSIlYnjilk66Lxd5WaVCmSW2REd+ZGrO9vcGSarNquyEQ/IC+I
         4jeRGb1+PC394T0ZnmrshvnObYYDBwoIGPESE6gA9HZZyw3AgYTzIE9jCepfLnZVuS6H
         1+NS3la1+2uPz5+c4OVK7itWhk0BMxIyuJ3sX8GfGNppyoRta5dYMjdRr9O6d3y9scXP
         HtzA==
X-Forwarded-Encrypted: i=1; AHgh+RodfDZpBuheO7MgU3jlS7hjv4jti2eI4eDmvLUyLv7a6947Yv/2U6m2OB2EQvFhjVPsFAMOBilDW/c=@lists.infradead.org
X-Gm-Message-State: AOJu0YwyunuF6XfXG+68+aHfT2aAEa8WE8zLl18YvNdIsz1ej4M/adOG
	OZknuzptig0vWvlfNb0Sk+B7TI9AO2oN5Xo7gPFac2DcCDdQkzd45rv5OubUUq7Jq+g=
X-Gm-Gg: AR+sD13kXSOdTuvxuuvBAlkXp6D66IpfUmx4Kow3ratbqcRHkKSMy5vBTUvFLquaoQk
	L5G9/jXlbcU/AVwFgi5kVjwxgz+wGmVVgdm2AdcnLsAQCISu+Bvuuuq5ZiGQRuMciew/+0KEjOf
	oHs365879Rv8FX76qhNKaBhcU4nLcTIXnBhlxnTzGZAKP6Wfmg9xjXalHe485xdxzoBziXA7p6X
	1Syj5ON6NY1taxhMeI6bWv3d71TBgmpPGg+y7zgc1KnqYRpqB4VTm62yi7Z/F+LXbw6WVrfqivN
	mTlrsDcOyW0o0F+eNtYqp+wbnsc27hOQA8fzfxpyEsWxyEklhRd3UqMGaourCjVx+JLqjkzb1X0
	DqEkVZehcbgUgW47wcNLleoH6Mw4LCtLi1eoPLn46KuaXm0gBkEfGWe8hkmTaT4f2vp0xtFRLB6
	hWVRB4yQnWTgTN600qPyfNF6Cda0pCn10mba7s8llgJfy6URD7w+IybZ0H
X-Received: by 2002:a2e:be28:0:b0:39c:6e71:8332 with SMTP id 38308e7fff4ca-39eeb6a2bf5mr5917561fa.1.1784670547167;
        Tue, 21 Jul 2026 14:49:07 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39ef6d558d5sm1317761fa.30.2026.07.21.14.49.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2026 14:49:06 -0700 (PDT)
Message-ID: <b974f1be-b802-40a3-a54c-f7e3c8fbbece@linaro.org>
Date: Wed, 22 Jul 2026 00:49:05 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
To: Frank Li <Frank.li@oss.nxp.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260720-x1e-csi2-phy-v13-0-160c31958863@linaro.org>
 <20260720-x1e-csi2-phy-v13-1-160c31958863@linaro.org>
 <al_BEUNJOrqVPQWw@lizhi-Precision-Tower-5810>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <al_BEUNJOrqVPQWw@lizhi-Precision-Tower-5810>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_144909_606699_91F50660 
X-CRM114-Status: GOOD (  17.12  )
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

Hi Frank.

On 7/21/26 21:57, Frank Li wrote:
> On Mon, Jul 20, 2026 at 02:11:34AM +0100, Bryan O'Donoghue wrote:
>> Add a base schema for the MIPI CSI2 PHYs on Qualcomm SoCs. This PHY
>> supports both DPHY and CPHY operation. A special mode of DPHY operation -
>> called variously split-mode or combo-mode also allows for two sensors to be
>> connected to one PHY.
>>
>> The submitted binding here describes the DPHY modes of operation only. CPHY
>> is left to future work.
>>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> ---
>>   .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 195 +++++++++++++++++++++
>>   1 file changed, 195 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
>> new file mode 100644
>> index 0000000000000..880fe602945cb
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
>> @@ -0,0 +1,195 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/qcom,x1e80100-csi2-phy.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm X1E80100 SoC CSI2 PHY
>> +
>> +maintainers:
>> +  - Bryan O'Donoghue <bod@kernel.org>
>> +
>> +description:
>> +  Qualcomm MIPI CSI2 C-PHY/D-PHY combination PHY. Connects MIPI CSI2 sensors
>> +  to Qualcomm's Camera CSI Decoder. The PHY supports both C-PHY and D-PHY
>> +  modes.
>> +
>> +properties:
>> +  compatible:
>> +    const: qcom,x1e80100-csi2-phy
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  "#phy-cells":
>> +    const: 1
>> +    description:
>> +      The single cell specifies the PHY operating mode.
>> +
>> +  clocks:
>> +    maxItems: 3
>> +
>> +  clock-names:
>> +    items:
>> +      - const: core
>> +      - const: timer
>> +      - const: ahb
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  operating-points-v2: true
>> +
>> +  opp-table:
>> +    type: object
>> +
>> +  power-domains:
>> +    items:
>> +      - description: Titan Top GDSC - Titan ISP Block, Global Distributed Switch Controller.
>> +      - description: MMCX voltage rail
>> +      - description: MXC or MXA voltage rail
>> +
>> +  power-domain-names:
>> +    items:
>> +      - const: top
>> +      - const: mmcx
>> +      - const: mx
>> +
>> +  vdda-0p9-supply:
>> +    description: Phandle to a 0.9V regulator supply to a PHY.
>> +
>> +  vdda-1p2-supply:
>> +    description: Phandle to 1.2V regulator supply to a PHY.
>> +
>> +  ports:
>> +    $ref: /schemas/graph.yaml#/properties/ports
>> +
>> +    properties:
>> +      port@0:
>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>> +        description:
>> +          Sensor input. Always present. A single sensor is described by a
>> +          single endpoint with one to four data lanes. DPHY split mode,
>> +          where two independent sensors share the same PHY, is described
>> +          by two endpoints; endpoint@0 with exactly two data-lanes and
>> +          endpoint@1 with exactly one data-lane.
> 
> Sorry, jump in so late. I have questions about this design
> 
> why not model each lane as sperated phys.
> 
> csi1 {
> 	...
> 	phys = <&phy 0>, <&phy 1>; // use lane 0 and 1, connect sensor 1
> };
> 
> csi2 {
> 	...
> 	phys = <&phy 2>; // use lan 2, connect sensor 2.
> };
> 

Such design has a number of flaws and in general it looks overly
complicated. From the beginning it's unclear how to distinguish
a clock lane from a data lane, how to specify lane frequencies etc.

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
