Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 775DECA0EDC
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 11:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=brSEW0rltIKuKWbD4ymW5vZCC1yJEiYwPh5XFxvqHiA=; b=uFalrTJLHfZM5e
	BYWX8O14gbOYouQdQfzqC7/VVyIfZsteCyW0wmjaNLUAW/forZu/ZMmTGIoUyLHsJ7h6nh00esmrQ
	/nmqkAgrWdwqLt3TRWL6P9MnzuN5CUX0STxCKNbIF5P8p6raPp4gIsFwVVQWQ908DPDpu/OHu+9Pg
	0GhHiiL0XVhYUHbMQQkbTK328UD8JtyvrmfZrdwVec3nBGCLZWxQ+3SboTge4XrmFmLOa9gpiqgSM
	q6BmFkYwdu6IPHQKJ8YNzR4iwmcGFZ0LFKJLeDKVs1grBKk4NDBg1aXNiiwEZKh0vC98lZOrgwQU7
	xoMPAXH4gpu2M/JmbsRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uogZd-0000000DGaH-0faR;
	Wed, 20 Aug 2025 11:01:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoflF-0000000D64L-27Uk
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 10:09:43 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57KA2Fmb010893
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 10:09:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZzyoXjeixwKONwz/qTB0oBJK
	sSvE0kt0Ll8kNycredI=; b=YmwPi891MF9yI/eE9XHNxDGzZXiEBlcE8USI/+mj
	sJuh4fyQf9+6VxY40cJQnz7OCMH/t2x+K7wS4rBP6rcOzkxzzt9BSskD5T6g9EHC
	HuuDdUJBnAlYeTsNlJr6NdwT1gnRYaum6Pf/RRs/JsNNR3ruQe/pP4s3quHbescH
	2uijlbvytgVZ/ExVCW3neaiKd9Uz+mvfH06/Otw1bUck/7TvlPbHH7JEjIrg7a2D
	97OweyxTjdKHhqOdbWkpAD/g+PMI6HxqozGdt9pFJ9FID06rTlGbMGeoe3MSwPfE
	xhfjtdomv2rcZNr+u8jgyixSQuRrNGXiYi4LKlp/pZPcbw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52bhbfu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 10:09:40 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b10ab0062aso169324471cf.1
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 03:09:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755684579; x=1756289379;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZzyoXjeixwKONwz/qTB0oBJKsSvE0kt0Ll8kNycredI=;
        b=LGOdl0kSw/vYl1PBlH73vTpD0N6dYeXtnFoS4VuDFzpPCLDXp0P2bo0u276I11hooG
         Yht5Wu5JivFwJAx7t4m4Lxkfhr0BWUWK2LuLa9FUIMxmO4Qh54QDlzq9luKliEifzpxj
         zPL1WNFJfEK/ZRibzvzG4fFMXNbODoeiCaWvNyadYLqYlPhZf+4kmvtG6PJrUKSZxLWU
         FIm1Ox2M/u9d/2MyYLMIZROf8VFvsX81ByO2lc3lj10PYfv1bFHGdc3UfLhRE797QMtD
         kJsxVx6O5FNOJC3ErQpa+9YUj0pJreujrNktR7V11RZ4RciTeSyNm0sjGvhWMoXgjFwd
         Xj2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWkc6yz669dVWrpbkd+wPEPbZqyzRTPXdyr2Q8igql5c7VYsSnqnInESpmWdVWUEwLqFpBK26I6tn4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwXYSC9QCZgS/MrBmPSlEA6d8uC1KePcn3oCdThLzw6yOY/cYX1
	7gDQzBRgXnxVC2aDLYnTFlkHez5+59T17OUmMfOOJQN5sW9yPO4zGK0wX1hJbyLf87nkNJXZfhU
	Sg/pqMJ7SczE0tMmQVDVBhTCQTd8DF0cMIq4e57yS6tOkkcd4EfPWmRBFjktmmXDShulJ
X-Gm-Gg: ASbGncsaujTWKCXrQmfPQ8QlhnrVI76VfxOXSXPR+h1+3dTke25LrwsiuTMFUYGVwtW
	JTZBwaV13l2SM8xy0EdmIS3cpd/AJIQ1o0CCUgXGnyCOyKkEnjguuJ4Ct7S05lbfWEAkWYPCRGa
	LlSOxhgPSvna5icTDxtiEJNUfRg3cEexY6vatMdYwdpMEwH/myXo/bG6NYSF+iey3E8q7cKuJvM
	scsGrd18+PeXXihYqqhDrcTYfuiW5C2QOPedP2k6aBqf6rc0Ih9MdzQFYQxb5y9gu+4++70vumM
	94DSU5sCioqyBWQrsLOKPjPuw5mo7xhOXxY3w/hxkxkchH6zmtqkz5G6YldzLEr8VVpzyEuGT0j
	Y9ojHUgic3iXncBMwpnJzTIhPnjZWQvbX6mx6IjWL3Iidy8Na4b8R
X-Received: by 2002:a05:622a:4c8a:b0:4a4:2c4c:ccb3 with SMTP id d75a77b69052e-4b291baeb33mr28831681cf.38.1755684579204;
        Wed, 20 Aug 2025 03:09:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFO+07cDalcclEJz4U7wwfw/PcTiuXWte6zf1fXyIS6NX7XUcddZp81APEIdTIESPROsNMifg==
X-Received: by 2002:a05:622a:4c8a:b0:4a4:2c4c:ccb3 with SMTP id d75a77b69052e-4b291baeb33mr28831181cf.38.1755684578661;
        Wed, 20 Aug 2025 03:09:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef35f11csm2524249e87.51.2025.08.20.03.09.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 03:09:37 -0700 (PDT)
Date: Wed, 20 Aug 2025 13:09:35 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
Subject: Re: [PATCH v3 02/14] dt-bindings: phy: Add QMP USB3+DP PHY for QCS615
Message-ID: <3lodaz4t72vsxnstfe2msooo3dnwbqy6hxzdshcmyrgb3fbjnv@2afo5atezt24>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-2-a43bd25ec39c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-2-a43bd25ec39c@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX+w3UIVbMy//K
 iGAiLqc1v2A8LvcS9GkDmpQBmWHhQcEYWxcPH9n6tbWBwVqHyZTbTwcsi81VQCXFj32J8Jipi6l
 FRrXya0Jdf14E6l0xJQGuO2ifZ88ZF1m4SRTyaVu7BTFX/Y2VprEugvWZX3u0ZIUj79yjmxU5Z/
 vYaOshejA8bqq2mg2mAGfDYzO9Zdn5zlG5M3WYLmUtXFSOhkYWXQcGlQLnKou1to0I6YUseEO56
 Xlhe71k9D8zQ+UWAJ2r7KCYMJH371hh4RyVNV5GZ8qIFmRaZAzy3qSp/TZOxkBWItg8Ve92UKiQ
 OWwC9vLHGZ3YVFSSKuO2HWwEY5f9zBj1IaervRAE6SUO0qUhg/uVwZIeQG3TqcC5ovTN0wOBlWh
 yD/W35EXQjbr2kR3De/HTXOUlpVOSw==
X-Authority-Analysis: v=2.4 cv=cr3CU14i c=1 sm=1 tr=0 ts=68a59ee4 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=x0hJR-vgZ_cmirHItZUA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: R1K-zXp94Dkpbb2XiazgsAwH-7Z3YCNy
X-Proofpoint-ORIG-GUID: R1K-zXp94Dkpbb2XiazgsAwH-7Z3YCNy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 adultscore=0 phishscore=0
 malwarescore=0 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_030941_552405_07EA3C4A 
X-CRM114-Status: GOOD (  22.35  )
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

On Wed, Aug 20, 2025 at 05:34:44PM +0800, Xiangxu Yin wrote:
> Add device tree binding documentation for the Qualcomm QMP USB3+DP PHY
> on QCS615 Platform. This PHY supports both USB3 and DP functionality
> over USB-C, with PHY mode switching capability. It does not support
> combo mode.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml   | 108 +++++++++++++++++++++
>  1 file changed, 108 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..c2b1fbab2930f0653f4ddb95f7b54d8fe994f92d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
> @@ -0,0 +1,108 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,qcs615-qmp-usb3dp-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm QMP USB3-DP PHY controller (DP, QCS615)
> +
> +maintainers:
> +  - Vinod Koul <vkoul@kernel.org>
> +
> +description:
> +  The QMP PHY controller supports physical layer functionality for both
> +  USB3 and DisplayPort over USB-C. While it enables mode switching
> +  between USB3 and DisplayPort, but does not support combo mode.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,qcs615-qmp-usb3-dp-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: cfg_ahb
> +      - const: ref
> +
> +  resets:
> +    maxItems: 2
> +
> +  reset-names:
> +    items:
> +      - const: phy_phy
> +      - const: dp_phy
> +
> +  vdda-phy-supply: true
> +
> +  vdda-pll-supply: true
> +
> +  "#clock-cells":
> +    const: 1
> +    description:
> +      See include/dt-bindings/phy/phy-qcom-qmp.h
> +
> +  "#phy-cells":
> +    const: 1
> +    description:
> +      See include/dt-bindings/phy/phy-qcom-qmp.h
> +
> +  qcom,tcsr-reg:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      - items:
> +          - description: phandle to TCSR hardware block
> +          - description: offset of the VLS CLAMP register
> +      - items:
> +          - description: phandle to TCSR hardware block

Why do we need two phandles?

> +          - description: offset of the DP PHY mode register

s/DP PHY/PHY/

> +    description: Clamp and PHY mode register present in the TCSR
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - vdda-phy-supply
> +  - vdda-pll-supply
> +  - "#clock-cells"
> +  - "#phy-cells"
> +  - qcom,tcsr-reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,qcs615-gcc.h>
> +    #include <dt-bindings/clock/qcom,rpmh.h>
> +
> +    phy@88e8000 {
> +      compatible = "qcom,qcs615-qmp-usb3-dp-phy";
> +      reg = <0x88e8000 0x2000>;
> +
> +      clocks = <&gcc GCC_AHB2PHY_WEST_CLK>,
> +               <&gcc GCC_USB3_SEC_CLKREF_CLK>;
> +      clock-names = "cfg_ahb",
> +                    "ref";
> +
> +      resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR >,
> +               <&gcc GCC_USB3_DP_PHY_SEC_BCR>;
> +      reset-names = "phy_phy",
> +                    "dp_phy";
> +
> +      vdda-phy-supply = <&vreg_l11a>;
> +      vdda-pll-supply = <&vreg_l5a>;
> +
> +      #clock-cells = <1>;
> +      #phy-cells = <1>;
> +
> +      qcom,tcsr-reg = <&tcsr 0xbff0>,
> +                      <&tcsr 0xb24c>;
> +    };
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
