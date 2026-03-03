Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDB57EB3649
	for <linux-phy@archiver.kernel.org>; Tue,  3 Mar 2026 01:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YAjpvgmMaXZHy2KMuDSxXjf8AymsOcCW+duvpCDUkX0=; b=WGvgvn97W2JfFm
	0loopSVX0tkkNXV+bbTm98tNzskxuZoOYKa9MaAVF1o4IWH4fwrZ4L3mp8Nlo1IrxuHt9OAU0uRWa
	wmEnd6pOiSeIdyYckbbwtUhuj/73bsG6i+lG56tjfLkbH7TeiiwN+WXCWOdaG1pCDjx7QvgfeQGKN
	iIbEM8ZsXn2oeWJpxZq08Zqr5ur9KWGyzFtk7vtzluHAhxOiJm7hLnO33YqxJjc/2tqNoke9L6RUZ
	houClPjx0TH2jhE84YW0HNhzkOXOxB3OYA47cjxhsfTyMJOcZetIY1wxGXNO3ozcQphXq2IeklXFL
	rKv60yjQ9/y6ObUkl6lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxEvC-0000000EN7c-3ir9;
	Tue, 03 Mar 2026 01:51:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxEv8-0000000EN7B-38yP
	for linux-phy@lists.infradead.org;
	Tue, 03 Mar 2026 01:51:36 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 622LVskd662249
	for <linux-phy@lists.infradead.org>; Tue, 3 Mar 2026 01:51:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Pw3TuhYPeUpbqxCk25aiSvVfe7dHHnXwYTLUytizRcI=; b=IcH7eM4X5rHy90TW
	yE4dWPRzQCb+I1V4pP0eMQy1iZSdagLEHDzznU96ZPe5CHGVpsTRScYiI2cmRRJM
	DGxnMb3QmpAuEl9Bm1x0awCvAyWJTzh9MnLgNObyfQaatIoXvltbB+N1iu9dc+1I
	CUpd0NlGmBRbJaoZqP9NUH77N1N+IbVHlO2DgoET/CYIpzZQeIGTWpfX/nhKUoHi
	KNarwrrvQdfcc1cF79pYqKBGEfupHDJzp/HUn3OPwMPnf1B87EYX/InptpqP43xA
	L5C85UO7JaggWAjmDmTS0B20/2ZI1LW4Pouwx8GVf59bltWiPn42Oj2HO7uDwCic
	fWSLIA==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn6r2ucgr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 01:51:32 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-1275c2ae713so12297609c88.0
        for <linux-phy@lists.infradead.org>; Mon, 02 Mar 2026 17:51:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772502692; x=1773107492; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Pw3TuhYPeUpbqxCk25aiSvVfe7dHHnXwYTLUytizRcI=;
        b=gFLDXVwIlsmNqgbrsQFbBCm9QDrzRY6SAwmQQNKdEru4WGfhl6C7fKkCo7ovLWsWCa
         6RXpLSXC4VQ3InAYtp9MhsjX8fWsy/4OHZa6toJsmejnriUUwEQEOlwpYHnhCMsCeZeY
         VOddBBr7gFHssPdA7wPO6c6BQjqUM9zTwu0A6E5PaahbatRiViDNdYW/Z7ZRy8wsIFDS
         GCwb5rhtb3hUl5q7+ogCEujoV7AaH3pmj2/xugLU3QIQQVWEEsnpKfJhr0N8mdg/bjJx
         eWhpoVbWmLszNsdF+vHJ6knaZJjtCNIFVAnOeZbV//mMEYfOcYkNOwQhMHfAfmauUCtt
         M38Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772502692; x=1773107492;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pw3TuhYPeUpbqxCk25aiSvVfe7dHHnXwYTLUytizRcI=;
        b=Nc7MLUXaHUxa/Ujmv57ofO3Oa5PLL6yaTkkzI4kOvF8ERLahAMo/NuU/nNQmDXzwoz
         WhBuc+8jJEeZ/aeDrLqV/TzoEtMvgPK9Zvr+vDVMsj1yPCdVsZ9JINwiEhLyS3Pnd5Zt
         kpk44O+YUm8/4cxFoHV3CJpvvPPKATkTxMF9xsO0qAX16IEQvmKSDaVcZbKaHVkVzP6I
         Rj7DY2cvr+ZObo+f+gYJRNYoU1WPC6xbtvUGeYbXr3N2lop5TfDaybJ3ANe+d5y7nTUu
         T87jhZkKO+mHBhQi1STwx9rDkXexnVGWvtzAEBr2DAYn7HKXsSbNIzk/rL/8BZdFXHvf
         jjcA==
X-Forwarded-Encrypted: i=1; AJvYcCUPU9bkj5Qfqz8Evvp0Tqn95EzwYdOeBH1mcoL/zh1Kq6ibsKe0OBgNvwXZv+7rebdMeN5cdwgQ5PQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz884BdMappH2nPpZNG4Wrc9ogOzctoDvQeYRbWT0X8LbTFmpuH
	2N0nqRtVxJMMTnAXkGA82Xt2Z18xTqNs0YfUSvi+g8N4Yr6KrMu8uZ6ArQr0WOK437OFZn4qu+p
	VIQQc4IwHbdtcyOlvB5n8TQ7ixCNHNpUjQ8DHG8bNC4Kcec+XDuLmty89i9qIG7H7ywlm
X-Gm-Gg: ATEYQzyfAz61gHnTVe4hLuMJsTGEOyXlzSoy99YbYYJG4jcF23Fj+gXQnBQT+S+JqAH
	48awVTD8kA8TjW1KvO7hFgQNNSorNjS4n73acGaJgqmUq6hw4R1Z+HcMDH8Q1wUSlaD77XyUDjt
	vc8B/3dZgnudhsZYuv0GLE9fLcrUSUpFIRORbpDC9fVu5n9hScZhvciD4c9O2S8ET+lObVItY7x
	kijx1iiU06/3mJxSHkhU4aSBSBsCp6sgZ0Ei4FTcLXj0+gqdPca8myXIpkkaQVdX6KUVKrmPf75
	HdyZbvvmOhqgVRupGhECnPfb6QUM2KAuThKhL1/5K0oGW/twZhOURqACvGSda5YZusBJd+lL3Qk
	8bWZCXN+Kb6VNC/TL0B+0iQjcKc9zRLdorwMOy5UC+F3DZbD6X4lZ
X-Received: by 2002:a05:7022:4584:b0:119:e56b:9590 with SMTP id a92af1059eb24-1278fcf8749mr7790462c88.21.1772502692024;
        Mon, 02 Mar 2026 17:51:32 -0800 (PST)
X-Received: by 2002:a05:7022:4584:b0:119:e56b:9590 with SMTP id a92af1059eb24-1278fcf8749mr7790446c88.21.1772502691373;
        Mon, 02 Mar 2026 17:51:31 -0800 (PST)
Received: from [192.168.1.57] ([98.148.145.183])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1279cbd1993sm6629621c88.2.2026.03.02.17.51.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 17:51:30 -0800 (PST)
Message-ID: <c85fe457-c140-441c-93ed-342dce32e604@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 17:51:24 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
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
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
 <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
X-Proofpoint-GUID: 5IcavuL4E5LFU2zqHm2CdG3ZPAXqvm3O
X-Proofpoint-ORIG-GUID: 5IcavuL4E5LFU2zqHm2CdG3ZPAXqvm3O
X-Authority-Analysis: v=2.4 cv=Hpp72kTS c=1 sm=1 tr=0 ts=69a63ea4 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=BiHMn5M11h/vNwziJwzFrg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=gEfo2CItAAAA:8 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=ZuF4YGRwA1bEcIVO1K4A:9
 a=QEXdDO2ut3YA:10 a=Fk4IpSoW4aLDllm1B1p-:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDAwNiBTYWx0ZWRfXyENf/v/bVoKT
 Qlv7V4AQ9iFu4FOv8pQ0H/xqS6Zb1os8FPg7R245rYQt63J/soTBy1TbQQxBBY/9RO/YGfI6f9o
 YxN+kBHWQlYlDn1mj1pW7iX+Qs3nzNHgNTCFS/gbgIkFAYhbM9hu7NEVmBOVpUVXF4kx2m03yDW
 agu80i1bW1HNCaPCHYQE29dABZKbv7k7SLUq4XJVgCXVSJ/gq0KYXp4dJlcli+gNgvVYagbyyZi
 6SLGb+4fa7Y1if8uNJ7I+dcUxM14e3AvihsN0w+A5jJQ2V3Jz4DjdX5KVld1/rhsGprJzBL3GRv
 DsdnzEmi3io8991fIYcX0bHtCZtwe5HVtCslr/xZfX+IWc42vteAINV9ucyMCXrUSZXX3js6uO1
 yX2aZBVua+YJtheGe0eX4+20OUaOhANp2iMNi4NEiZ53+SauiAX/8VKk4iRFfbbbGTaC3M/XI17
 vPp0y67RLaZ6fK6QOOQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0 clxscore=1011
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030006
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_175134_812869_CC5241A3 
X-CRM114-Status: GOOD (  25.73  )
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

On 2/26/2026 4:34 AM, Bryan O'Donoghue wrote:
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
>   .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 114 +++++++++++++++++++++
>   1 file changed, 114 insertions(+)
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
As we are cleaning up the PHY device nodes, we should consider fixing 
the power domains as well. Although TOP GDSC is defined as a power 
domain, it is not the power source for the PHY devices. Rather, it is 
the MMCX, MXC and optionally MXA based on the architecture (Refer to 
'Voltage rail' column for PHY clocks in IPCAT). There is no
parent-child relationship between the TOP GDSC and these in the clock 
driver and it was just working as the required power rails are getting 
enabled by/for other MM devices.
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
> 
Thanks,
Vijay.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
