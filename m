Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C9A8F53D9B
	for <linux-phy@archiver.kernel.org>; Mon, 16 Mar 2026 21:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cGDhEq7GFk3UnanI1Ktu5FZq8vUY45DCjBGe4Q5kbAs=; b=rPwUfmQ+fIFn+9
	dPlfTbnjLu9pXDQseFBee5zpu/bFN7PGu4K9J0IxaPtaFScsJf27bxUbKlrWchUjDS/Y+svsrDgCb
	9InHQ8g0HTPFHBhPSufg3noJ5eJZG81V0e8OlXS0lPrBhM/l0Zxx9xSH5ZMBkoKkFu9ULtWvqoyA6
	m9zgco1ttOHliawsWKbzrdmt7hyChXpx5EN8ofSl9eNwCJDgBO9SxuKX7gOXrFDX6JfzFrlWA/qRW
	rBgTzE9EdjjpWqkh4FsOZTpgvj1oimR9K4l7H/aAWPUFrhCxFsguARLZEbg/lbQhSmrWI7O9qwaFv
	QTb6V8o2x/thGMmK+/Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2FXN-00000004wwg-2pJx;
	Mon, 16 Mar 2026 21:31:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2FXK-00000004wwJ-28Rk
	for linux-phy@lists.infradead.org;
	Mon, 16 Mar 2026 21:31:44 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62GGN1nU3102089
	for <linux-phy@lists.infradead.org>; Mon, 16 Mar 2026 21:31:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	84M66G2PwCIzVdx//9IgiXr4vtMOe8kaOEGL8EAmpMs=; b=Lj6Vi201pnCKOst3
	zmxGLVXvQypnr/F0TuAuo2fO/PHOzPv94HYyUBgFkbAoyvG9mObHExmVpD0TgMkT
	t2Yi7yasZLj3x5as70v3MYRWX5QqyCN8FrcSK3h6BEzpLiac4VDTWSivAwOiVFWV
	FlukTOkhJqFNpwsvNzBUDV0IPshHY6RjFrMkz0iEFN5bUic6kxU7Vc5K5gXEm6dW
	sQ7X7cMshIZBGwSr13eTBTdc/ibV6y0CeYrvWDkNwR28ot4HWsX0UN5Vfi+JvVvh
	3MmJfOshQl9tvb+muQ3R1Gal9dQN7f7fm/1TYlzS9X7o+EtDJ3tY4WIhLs3GgTf5
	tAXJPw==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxnb791b5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Mar 2026 21:31:41 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2beabdd96f2so4509969eec.1
        for <linux-phy@lists.infradead.org>; Mon, 16 Mar 2026 14:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773696701; x=1774301501; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=84M66G2PwCIzVdx//9IgiXr4vtMOe8kaOEGL8EAmpMs=;
        b=Y1XLZwLiRJkJAfpVSaxXx29YRA85CSGfidtQi41zusKdIkZfTsCr5VypgCLx5Yr1s4
         pLg1IVgM5gLoI42Bp/pdsnuMe4+U4DryjPZl/ypLo/cFLApsK1li6ST3Spj1xRlmAdgw
         4qybAE1PYSnBPwAurRasnpl0Cb5hIcO6Ad7+3AVjRGw80+rw53tajGlKkrJ/eyI3L/s8
         mPXsQURpxghOkMkAHwI5B0R9+Jz9atdhqeV/qZ6PbI0PKC5PqV0qdx/N9l4Q0Hv6qhiq
         o8ReQUTt+FC3sO5qyfMC3bO4HKLmLj/Qm8TqeZbwxMc34tJsuIwqmdSjq+W5el/m8yOX
         Dh8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773696701; x=1774301501;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=84M66G2PwCIzVdx//9IgiXr4vtMOe8kaOEGL8EAmpMs=;
        b=EjY5UuDxRTlUQm6mh0Dho3FJFclUF+eQcRsOuUBuaJ5Z+S+qnx3xvLRheXgMzV7WfQ
         Z/VBoWWnWdVHib7NRVLdo21vO8Dfwr/AR4jbrCpDB9+pIIVWGI4FpMcwgu6FhAd7mHjG
         ZciA+gJdpxmagT0oy7CPXdGw1MkyJCrcotY4IDGFokChXWkgImouKMON4INgrVANFSHj
         XLTn8wpssFuSKgH3z9bkLK3u9SBabwdUTVmi5pINnSCum5gmF1cK69vPxK6nvNl1PhMj
         fHTaDfUJFm5XOsHO6E6imtam7P6N5f2ZHpF/w5f2OV7GUyVFsBgCWwoqC8aMcuW+STxC
         DW1w==
X-Forwarded-Encrypted: i=1; AJvYcCWhd7pIROp3FpL0ZH3ZUAGfFvGCWoBp8JQg9flr+A+2l3jtdKjNMOUV2e2REpxId01BnO2qfDaUEd0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwqyidGkiimh3MQ74qrDFGHPznNknAgG/ySI2Q4zbtef8HSJwn3
	WHzLUxgUgb4JJ2axaCyUpZRj1E5wOgWfxpixsNCSmwV66FujyvLdG+MMLP3q7eGnRziu+J2nYZ5
	69bTnD3zoYuxBMTC0MnerTR+Rt6PEZO0cncm6RQaxOs+DUUzFo0DjTlMdm4enCs6a89k1
X-Gm-Gg: ATEYQzyJWOhFCm9mCIyY8oc7uER7Fb2sarPVAw5nM6MBpeL9fv6zbkjE7yy5bv0e4Y+
	TmDkNRIKeqCcx2x90pYAp/Cf0NQ8oi2u+LjVKuq6ZmKveBCrSdxEOQzCBQhzpzeYBE5S1SmcrF7
	Ln6X/OdOPmxZJqad7HGHxi7YWNJQpAoXHbD7ltYDZR4wtLDB1enVh5Me2VRBbjbiH5DbEX1vwfK
	to5kNaRqfd+fLmMu2Oj4GSVTEVT4Nd9k68i9cAp1EvOFa2tUERGfmSsLijxuyKMnT6kLnvet8UA
	0s4bipJVYkMddraD6b2eDPq3u+bamz1hwMg+6FcroJtfVVfS3EsuujZkGMs8/HKIUn2KntgrjsT
	iF/pfJ6xLWyjIqP+dmQcclVeN0oeEeMSI2lSw0iipGgQVj1WJDo//n+8wgGt92++F5dm5Dje7Hk
	5hMg==
X-Received: by 2002:a05:7022:6299:b0:119:e569:f615 with SMTP id a92af1059eb24-128f3d35f47mr7010895c88.14.1773696700819;
        Mon, 16 Mar 2026 14:31:40 -0700 (PDT)
X-Received: by 2002:a05:7022:6299:b0:119:e569:f615 with SMTP id a92af1059eb24-128f3d35f47mr7010861c88.14.1773696699781;
        Mon, 16 Mar 2026 14:31:39 -0700 (PDT)
Received: from [10.62.37.228] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-128f62991c7sm13756734c88.5.2026.03.16.14.31.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 14:31:39 -0700 (PDT)
Message-ID: <5705b48a-fc24-4c5f-aa6d-40952f0070d9@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 14:31:38 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-1-90c09203888d@linaro.org>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <20260315-x1e-csi2-phy-v4-1-90c09203888d@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDE3MyBTYWx0ZWRfXwEF9vMAQJsHd
 q7E1g8O7MJ29yITFQHYuVQT156Lm7B8RvqHVP88Y/p3FOVarx6tnxW2eRUggr621iCU0a0J3Ly8
 vdezTSW+wVB67LxF5ua4aykpBAMo1PJUuxTc+U85ZJMymvA4zrm7b9Wpi8e7KbOfC50dG13P5vf
 SRLjwIRtt4WEyBHjihoe8roQDbfsNxbpOW3oKQcqQ/gnLFgWuwuENHXXP/6xBEi0B44B9Cb86Pv
 z+8tyiYTwLAHZfay6S5xVqC5KuS5lgdLpaAfvEkWHsDmW1oPf/XKqCYpIePmZoVkgFzgxPltgkA
 /o53AYMMkFkLOboHesBrWkd2I+8uQSOCqCkWhZqE4EMzPYEgqQyu32n4y/ltRfhiPC2lG9FPtEd
 UK3u+5rfnYPAG46u+8hnYszTbPwAuODTgptRZfi22f8EkpqXgsh8CMEHwnV9tOqKqyEODliUndX
 Aw/sen+o8cLpSoWgrDQ==
X-Authority-Analysis: v=2.4 cv=D7pK6/Rj c=1 sm=1 tr=0 ts=69b876bd cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=gEfo2CItAAAA:8 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=FiKLMzvizoLJB3YtxsEA:9
 a=QEXdDO2ut3YA:10 a=bBxd6f-gb0O0v-kibOvt:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: y2bPJWi5fRd_esn5wAjF0TxmFMw9H-3J
X-Proofpoint-GUID: y2bPJWi5fRd_esn5wAjF0TxmFMw9H-3J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_05,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160173
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_143142_569130_D50F3A38 
X-CRM114-Status: GOOD (  24.76  )
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

Hi Bryan,

On 3/15/2026 4:52 PM, Bryan O'Donoghue wrote:
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
> +    items:
> +      - description: TITAN TOP GDSC
> +      - description: MXC or MXA voltage rail
Would it be better to provision MXA or MXC as an additional optional 
power domain? I see 'cam_cc_cphy_rx_clk_src', the parent of all CSIPHYx 
clocks, need all three power domains on this chipset.
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
Although it's not a concern from my side, just want to be explicitly 
sure that everyone is happy with the clock names, just to avoid any 
changes later on when other modules are separated out.
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
480mhz should be svs?
> +        };
> +    };
> 
Thanks,
Vijay.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
