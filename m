Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69B33103FFAC
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 22:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r1WmKBSTEX6eozZ67Zn3tNYuWMd5gvk26FCP2Wt6Xm8=; b=QMRWJWOQBSGct0
	IMZKsnBka0cyTlN/PwtIA3iqLjp+MWBxpEy959IR41xxzyKOTE9YIvc8CPyvi+2F4LxZpxokbr9fc
	XelsEm5uRqI7L2hgRrgLDJUTjsdl2s2IDABFT39tu6M6zHGzziPbhv09xp7G5Hn8DxCrlpt4XG4m2
	QBSS1mGIvXTcyd37QbbZ+oHtYY0TsxdBMjHERjiUQUSc5L6JspeXCdukZY/qSERzO98rs+iFlrVSp
	BxlcNdfB91vA23PhRS3s6lyU84NTBlCw7pDcPZ6GQP0wdcigHwdsofLsFJC8peqQoo4ixZZg7PBFT
	pVvfRVubKuCMBT5bn5Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw62o-00000009Cp3-3zTa;
	Fri, 27 Feb 2026 22:10:46 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw62j-00000009CoJ-3rsw
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 22:10:44 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-483bd7354efso32597345e9.2
        for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 14:10:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772230239; x=1772835039; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HoGg4hNpbIg6brAwA6na349+CYEziC7tCob7ncYt9A8=;
        b=jT/TEjeqprBvhN8BFUNl6cM3hqomuYr8bgmq6l2Ik8LhM1vqR3caqtZcdmYbRTmVkb
         abYfpYTotKAcr6HFVXPHYUhIbWdr/qhY7AyjqySY3ZkHTwfFGy4cDVUZPrzgYTFqdKWC
         nJuvPVbAF7d9kbHjdU0ran3Zc4Lq/ZD+YsN3H1BH4jJrleIQ4LcUUu+8ioyXRn7CQUPA
         mBHIu0QXZjJtBxGq4rYXCi9lx9/30KBkYoB4tHhgezcwnNAGsXoUQNPkCkZ/XyG+4j+K
         Jt8OV47g4CWgjpsa1Q+5GgUk1WE/6pALUThXzQQDTs4MZyv+wfdiXfqXn/aoonKCV/F1
         qrhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772230239; x=1772835039;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HoGg4hNpbIg6brAwA6na349+CYEziC7tCob7ncYt9A8=;
        b=KNS108/0QiXpcGX66TP/UxqB2mCMvOwN+sKvYc2bMr8Iosth6QMKMHjaELMbW1gv8/
         yPHYvXafUb9pPMUmMrX8xwjFnqlPFcTbUcVXqIvcbNrufmAtLeGjbeZ5riYMRmZUFiSd
         lLsJFhH1vFGkcx7+B+FZSZ2zPNKUHlkOYBCaccaS3d0um2W8T6HG5lHjD71gWZJFYsRF
         jqRbzMO797hxftM7UaDlpGPoo+B/Fx/6Ymd8byzB900cPk40AmLgi+3xph1EbDu7DSiF
         98dU8ClDBv3Zk2vD6xSJpLmcQKeOQeUC6xuBjs1RRAuvhgiebFUA2YOgSNjLuzi2n59Y
         wVyg==
X-Forwarded-Encrypted: i=1; AJvYcCX/SyZS3ZX6LXG2Hpxtqc+vl0YNkZq/BB+9IZYBEsH9yjLH9r8KbfZYnLcdGX6uK8FIhMXQxu01EKo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxI6+ZZ5npnd+811LBF77p59Dt82ZEEKyrDXRrWOUaKXK1mxEP6
	/e00f7ta86yqMwBoe8WNa9LEgE2JLkTNJrtSnIeO8LbC2X4+BMbhkSJ2j6+7GHAApRg=
X-Gm-Gg: ATEYQzw2PxVkiSWJl/UKK4GqTisY84o9qzaLx3Tc8aMO07vXNSBhl83Rd4z8C7PbiD1
	ozUARxtgvWnZUpum8NPhu3QkAEC50jOMFJJ8y6Tfc3CXkeBtqiNURXSPIXPY2Uq+aJbGn8wFtH+
	uCiw80P2f4gJbKEhZ4qZCMWHRp48BzsWIKj14r04sqD/QnIBbTek67e/vG7zqqPyxq8SuihemZf
	EOwrKGq5H5i2C5FEuJWSNPsZCAxxiD5u++HPox4E8F/6uJHYoP7sTgAO95axJOToSZrlS0VN+Dz
	Ed+xfAshrmbRNpGVtX4OhKMncriR4hCevyekd3NSoGWCRoJC4wVBrLa2g67ejc2wZNY5w6jvqpC
	efJ8kfUVcktp4AM04SON90TxXzRpQHsujBdw7BiidkD4ZzT1T2+jvJ/j9cQMAeyI9IJRJkZzN26
	IIvl+9TTnzs9fadSIDajdXKR57fAkkcyqTn0RbNnudKxb8Ug58IbktDd6WICLS22lrmeE8SJblc
	bpW7dy8CcU8FbQM3KyT6a2j2+rX4vAkvaM=
X-Received: by 2002:a05:600c:8b01:b0:483:be73:9b1 with SMTP id 5b1f17b1804b1-483c9bdb186mr77479315e9.31.1772230238644;
        Fri, 27 Feb 2026 14:10:38 -0800 (PST)
Received: from [192.168.16.154] (host86-188-11-239.range86-188.btcentralplus.com. [86.188.11.239])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfb77466sm92135085e9.5.2026.02.27.14.10.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 14:10:38 -0800 (PST)
Message-ID: <c8970560b4b73f288b69380e0a1b0b944cf4baa3.camel@linaro.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
From: Christopher Obbard <christopher.obbard@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vinod Koul
 <vkoul@kernel.org>,  Kishon Vijay Abraham I	 <kishon@kernel.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Neil Armstrong	 <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vladimir Zapolskiy
	 <vladimir.zapolskiy@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Fri, 27 Feb 2026 22:10:37 +0000
In-Reply-To: <20260225-x1e-csi2-phy-v2-1-7756edb67ea9@linaro.org>
References: <20260225-x1e-csi2-phy-v2-0-7756edb67ea9@linaro.org>
	 <20260225-x1e-csi2-phy-v2-1-7756edb67ea9@linaro.org>
User-Agent: Evolution 3.56.2-8 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_141042_133062_9DF8958C 
X-CRM114-Status: GOOD (  16.97  )
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

Hi Bryan,

On Wed, 2026-02-25 at 14:59 +0000, Bryan O'Donoghue wrote:
> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
> PHY devices.
> 
> The hardware can support both C-PHY and D-PHY modes. The CSIPHY devices
> have their own pinouts on the SoC as well as their own individual voltage
> rails.
> 
> The need to model voltage rails on a per-PHY basis leads us to define
> CSIPHY devices as individual nodes.
> 
> Two nice outcomes in terms of schema and DT arise from this change.
> 
> 1. The ability to define on a per-PHY basis voltage rails.
> 2. The ability to require those voltage.
> 
> We have had a complete bodge upstream for this where a single set of
> voltage rail for all CSIPHYs has been buried inside of CAMSS.
> 
> Much like the I2C bus which is dedicated to Camera sensors - the CCI bus in
> CAMSS parlance, the CSIPHY devices should be individually modelled.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

Reviewed-by: Christopher Obbard <christopher.obbard@linaro.org>

>  .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 114 +++++++++++++++++++++
>  1 file changed, 114 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> new file mode 100644
> index 0000000000000..c937d26ccbda9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> @@ -0,0 +1,114 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,x1e80100-csi2-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm CSI2 PHY
> +
> +maintainers:
> +  - Bryan O'Donoghue <bod@kernel.org>
> +
> +description:
> +  Qualcomm MIPI CSI2 C-PHY/D-PHY combination PHY. Connects MIPI CSI2 sensors
> +  to Qualcomm's Camera CSI Decoder. The PHY supports both C-PHY and D-PHY
> +  modes.
> +
> +properties:
> +  compatible:
> +    const: qcom,x1e80100-csi2-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 1
> +
> +  clocks:
> +    maxItems: 4
> +
> +  clock-names:
> +    items:
> +      - const: csiphy
> +      - const: csiphy_timer
> +      - const: camnoc_axi
> +      - const: cpas_ahb
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  operating-points-v2:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  vdda-0p8-supply:
> +    description: Phandle to a 0.8V regulator supply to a PHY.
> +
> +  vdda-1p2-supply:
> +    description: Phandle to 1.2V regulator supply to a PHY.
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - operating-points-v2
> +  - power-domains
> +  - vdda-0p8-supply
> +  - vdda-1p2-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
> +    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
> +    #include <dt-bindings/phy/phy.h>
> +
> +    csiphy@ace4000 {
> +        compatible = "qcom,x1e80100-csi2-phy";
> +        reg = <0x0ace4000 0x2000>;
> +        #phy-cells = <1>;
> +
> +        clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
> +                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
> +                 <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
> +                 <&camcc CAM_CC_CPAS_AHB_CLK>;
> +        clock-names = "csiphy",
> +                      "csiphy_timer",
> +                      "camnoc_axi",
> +                      "cpas_ahb";
> +
> +        operating-points-v2 = <&csiphy_opp_table>;
> +
> +        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
> +
> +        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
> +
> +        vdda-0p8-supply = <&vreg_l2c_0p8>;
> +        vdda-1p2-supply = <&vreg_l1c_1p2>;
> +    };
> +
> +    csiphy_opp_table: opp-table-csiphy {
> +        compatible = "operating-points-v2";
> +
> +        opp-300000000 {
> +            opp-hz = /bits/ 64 <300000000>;
> +            required-opps = <&rpmhpd_opp_low_svs_d1>;
> +        };
> +
> +        opp-400000000 {
> +            opp-hz = /bits/ 64 <400000000>;
> +            required-opps = <&rpmhpd_opp_low_svs>;
> +        };
> +
> +        opp-480000000 {
> +            opp-hz = /bits/ 64 <480000000>;
> +            required-opps = <&rpmhpd_opp_low_svs>;
> +        };
> +    };

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
