Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 456C3F30296
	for <linux-phy@archiver.kernel.org>; Mon, 16 Mar 2026 01:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xElW3cooi4aGcXIOEOUt/EgK4fNnn27WylCAZNgpMKE=; b=Dj0ZpOq+MKKBuo
	npdyNlyMo9KNAqPDwvoAXDKw4y8/n+ZmIAHgCBb8RsP4tiFBYs79zZY53HzWJtS3IQ/LEDYSEvjRs
	LtMO0MD3fP09sQFqubxRSFSuQq6ocYQ8NzEGWO+Qlw1aY6jWVxaCnHGRFl+UAl1s+mtDaKvT0zLnn
	WklkEommQtEDO+4H9YKQXjw0glS83J+jFTWuoasOGg5WeY+5SaafP5svNX67vEqvTnuLmNCbYXklz
	GRlkppMPKIbudl3UjHd0n9wtLsjOX2112JDCD+e4XS7lov/PXPqvG47wjYN/FHXrWnzD/akx4AhEb
	MokuIhmYkCQnIORjwIKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1xDw-000000039Z3-2lDo;
	Mon, 16 Mar 2026 01:58:28 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1xDu-000000039Ya-11Yr
	for linux-phy@lists.infradead.org;
	Mon, 16 Mar 2026 01:58:27 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-5a137632c34so536363e87.1
        for <linux-phy@lists.infradead.org>; Sun, 15 Mar 2026 18:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773626303; x=1774231103; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gWl/vihcNT+qze+DwQkZ3TOdVObh3Uxnygms3P6Epps=;
        b=LZRdgyrtxEc3F6f/NBqE5KR+Wg5WLs1uyUBN8tcz6ImkV2DumB4g+DkfVBP8JNB1er
         odd1NZMXXQeegbPF3g37kc3EAoaBODVIbmbLIKg67mOtYaLq2kn00W02Du5ZkdOQPcrL
         fZZY1CKaqwpXhYzLJfAiAd9i4aAMJvt28kvDoww15EM8+thTuH8tZlo2Knw+PwkOrt3a
         3O5H3hj+7jiSWZ8FWg56LbXd2yjursBffOXFZMZvKsq+NTohFx68RyOYQRILVb4c5meA
         fLNQ3x+ChU3I/0PxMbFFZsYnPqWffL2QtB/ak6pO6fBQK0JjRVGnGwAC9mMlcRLsRL++
         IxgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773626303; x=1774231103;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gWl/vihcNT+qze+DwQkZ3TOdVObh3Uxnygms3P6Epps=;
        b=kc20SQUdCkKtE8wlXEDuC74rkr+iArqzEPvePXxzI+6O7v35VmywrxLvd06JkTxWTx
         Bp0fCcFX6vdkz8MK55RDLILNw4kaho2tEGaYtsd4JlwezABQzMvh0C5BZzx+0697D175
         YY/o40uCcZjVBituoXHQaLJJAxmXURALDOktNtg4VDVLkYWdmMmMDS1c7pZVIqrukAUE
         o7zzeQMrr0198LHjkG3JEKtfWkeyzAll3nBKA/72JgdGHfn+4aqP0twlTF6klMKs/MMh
         DAZMNjnpOfWRjKZuOgBJHrcmBQWTt4zHShv+nfjL9tI2ZKIscaSZsD/oeKeIGN8l158/
         Pp5A==
X-Forwarded-Encrypted: i=1; AJvYcCUSbyz0lMQ07yijOBU0iHgkzcIiVy3JNxhIC3pdKdSPy1UbQUSiC5SphQS/S0MkK5CL1ooPMMJE5iQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzo4rnTIC8E0mFCIWn7ztuIrT0L0/5zo5NUSKrXtmRC1KPojqyw
	SakHbzozjhUx0K0h3iLGcGtugDJJwAWQL85g7sEcYvPEQflrYkhmCZBTjQKXo7g6THc=
X-Gm-Gg: ATEYQzyxuay6uLL9BIWk9+X6tHmLAFAH9RS+bkkUlDKU50Ky2ht5NmysaDy+ufTi+tG
	KUJF+InT6ZFsifTIYh0Bg7yDw4GGaWvRcG7xLN5G6qL/MYwBEvcpmOIuwE95nInt2iaf9kwOYyC
	Z6U28IP3dHJu68pIkyyAiqrCLEo1JOL6IsCg3QS6tsLgCw2pcf6irH08G2/Xgm8VTsD6gXB8a8M
	cAXOAco1j5np+bFsfFdwgMUM5iLx7pnNMj49oPnIiqbkw63Y7ccHaxsSYIvxDD2/+UtILMuF23g
	7nX4yOnuxPu4QgXM9TX+HClNW7NiTOmF8dnIFi9qw9K3mZqmqorKEx6s6OJuZ3xWx6pyNhBhsAY
	nVCEE4y7dppuxVTr9MOWzmQsmPvJKLLSERO8rR4om1gbSdQm/GfbyIR6ADVYhLFQ0MHMbQ9DcwV
	AK0ykkqDfMSA6QyGcm/sG2J3eRC6mIBSpHvosauRt73NhDioQsAAdY8khs6YRyhMwcVx3x4WjYT
	C3oFw==
X-Received: by 2002:a05:651c:f13:b0:38a:2e66:c9f6 with SMTP id 38308e7fff4ca-38a8976d463mr16594801fa.4.1773626303262;
        Sun, 15 Mar 2026 18:58:23 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a67e5f0ecsm29971971fa.29.2026.03.15.18.58.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2026 18:58:21 -0700 (PDT)
Message-ID: <c59f621f-23a0-4c60-b8e3-5a9082c816e2@linaro.org>
Date: Mon, 16 Mar 2026 03:58:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-1-90c09203888d@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260315-x1e-csi2-phy-v4-1-90c09203888d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260315_185826_433635_373760A2 
X-CRM114-Status: GOOD (  23.07  )
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

On 3/16/26 01:52, Bryan O'Donoghue wrote:
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
>   .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 133 +++++++++++++++++++++
>   1 file changed, 133 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> new file mode 100644
> index 0000000000000..b83c2d65ebc6e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> @@ -0,0 +1,133 @@
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

Hence there should be a description of phy-type property, or it could be
specified in a cell on the client's side.

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

The description is missing.

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
> +    items:
> +      - description: TITAN TOP GDSC
> +      - description: MXC or MXA voltage rail
> +      - description: MMCX voltage rail
> +
> +  power-domain-names:
> +    items:
> +      - const: top
> +      - const: mx
> +      - const: mmcx
> +
> +  vdda-0p8-supply:
> +    description: Phandle to a 0.8V regulator supply to a PHY.

On Hamoa the CSIPHY supply voltage is 0.88-0.92, so it is 0p9 rather than 0p8.

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
> +  - power-domain-names
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
> +    #include <dt-bindings/power/qcom,rpmhpd.h>

Please sort the list of headers alphanumerically.

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
> +        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
> +                        <&rpmhpd RPMHPD_MX>,
> +                        <&rpmhpd RPMHPD_MMCX>;
> +        power-domain-names = "top",
> +                             "mx",
> +                             "mmcx";
> +
> +        vdda-0p8-supply = <&vreg_l2c_0p8>;
> +        vdda-1p2-supply = <&vreg_l1c_1p2>;
> +    };
> +
> +    csiphy_opp_table: opp-table {
> +        compatible = "operating-points-v2";
> +
> +        opp-300000000 {
> +            opp-hz = /bits/ 64 <300000000>;
> +            required-opps = <&rpmhpd_opp_low_svs_d1>,
> +                            <&rpmhpd_opp_low_svs_d1>;
> +        };
> +
> +        opp-400000000 {
> +            opp-hz = /bits/ 64 <400000000>;
> +            required-opps = <&rpmhpd_opp_low_svs>,
> +                            <&rpmhpd_opp_low_svs>;
> +        };
> +
> +        opp-480000000 {
> +            opp-hz = /bits/ 64 <480000000>;
> +            required-opps = <&rpmhpd_opp_low_svs>,
> +                            <&rpmhpd_opp_low_svs>;
> +        };
> +    };
> 

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
