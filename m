Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95FCDCA0EE4
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 12:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=isYNG6aIfolLHLdUhKv5yOAibv1THyMjMHyCLu8LU24=; b=mYwhl0MiNljLK6
	c3Z8UAF0hEN+cVK/AgvMbLHm0DnkVpZHSHO/lY3E4lfjN8npuyiEntOKBvbxRb/3VKVFPxkaDnrb+
	ILYCuH0pY9mzZ0Qqt25i9PgNSZ1AfcGN0t7DCM90c2uwPGSTPDBNJrB3rYu/bMSRoXIOeEImQUs8j
	9WQaeLhnsgH49GMnTG/s9OyiT5uT1zfpLsvKxWmxLLWTf+KbKBE7sc+oTSUN9zIzLaWHuN0PIpkUw
	UYy0jDz9q1SdovxlGOEYqg51ICVFxecXTqk+Gko96LELLe5SZfOYM+KTmqz0cixFbemJIq7UzNiux
	2LzKNU5QHTVS0Ws/A4xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohUD-0000000DUXn-1PdU;
	Wed, 20 Aug 2025 12:00:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoh7s-0000000DRCe-0iiS
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 11:37:09 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K9tEIE019724
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 11:37:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kG5EvtRUaQfCBV/YBpEi6527
	Mm9dhLGyA7HIWyFmk/A=; b=I/khliceukaDzXQ4a8TO8U8d64C7c9DcfnKPgEeI
	MMsXt7NdF862BBfRS+lSt2wt+/vskLgWr1umAzOsSxswVBPai8z0YCfJYyvnOCT9
	Ypygujq0WaGH8GRWYcmBe9HZeySZTPrQ/DjBhYRdAHf7alncQvu3s3OXFDmRIPhS
	0sfrPgtsH7V4ng8jaxFIqTUfdoY3lvQjdZjMHkvB5kNhUmnbov2elZvLSBaWY0sH
	dSudDwJQwoL99/4IT9IVXYTcisHes0jI2f7FtdbS7JZf0lPoqWCvl0X9bCVS5yP2
	OnxWbSZ8bXMKzmhFnEFdp8LsbChMmrv1TptxzocLl9jQAA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n5291j15-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 11:37:07 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70a88dd04faso222862226d6.0
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 04:37:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755689826; x=1756294626;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kG5EvtRUaQfCBV/YBpEi6527Mm9dhLGyA7HIWyFmk/A=;
        b=luyY63EJEEwNw3BsTqLOqgPBi2zT4Rm/NPUOUIVfH+QF7x9lf4nKRmGMGTakz+XQBO
         WdOOmUGu12/bPJZbvgvy7iZc5wvZjSJ7xjcP/luWZ88W8b0HfKsXd74jNWTuIMtPWgwL
         e1X/+XEInmcntHAsdPL563a2PDhjkIgpU0787whLpnIHTJSMEYtvqu/WQfrInBQdhT/q
         Kt60iYc8yGmXma7izaE0w09Ode2T706xDUy5ZkoI6eInxU9ya/g5o96bbqODASZIXj98
         zxQODNs49Ykh8zPn96EM5XeO9YCFLAn96aSvKWeZuGzpeSNOOrnlZwpvBCj4gfDO+awG
         zvYw==
X-Forwarded-Encrypted: i=1; AJvYcCWlVf2zQfT8pt6mDzKzcp4z+SBgkVFOGGl7MPPISeGiCxHDkyg6VLjXVVEwOXqKaYnb8hdtHlrAK84=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZKdYqVr3uoP9Rc44IeZivTU82b+Xz9P5z7z2t3U2+Jt6MsH3F
	OY5J9v9WolJ8zcXznHvsJXJkDyiDaGulYrdIo/OHxhKjLAUmcymUZ+ylFPm26DvFgIaUjBFP7Rw
	7DCUPv8n94+yz9x5X7y997/3n7zD6CXotcZTf4gcMHbQXWAZiTl8jVSHKn/1uEzpla36J
X-Gm-Gg: ASbGncvTLOb59a6PxhpdXVCJSP22ZsBwkp0PYzqr6ye4Bv05RsMe8ICrnPmGsFpLFnq
	USkM2+my3WiuqYl9XS5vcjVDVVOJZMdkQ/JnWUQdNiSAWAGQVX7TUby4iWD7IVtn5dNXfAqHN9A
	WjaPxOdFOomnkIzWR4j7wXN63h5VBH2PtUuLsGOUAkUBi9xFEbZrLhxZxwZnO5Tx/6bcTgwfmM3
	EPj1xu6Kd6Nh5IIPWnFUlp036YGGwShyUlyPUZ3tTjJ8GCspte3xjvuYmr4zruRR+wdnENUBg2u
	PtEBnEIIhjaYZ/wiz5zendGDy2XoguNRR4ieLyKzitMSSIi3mTDCvh8u13oKc48fjGpTFsdj0Fo
	4RBbjWd35l33toe1qYKqBjvjzVYNb8BnfSiQnAOywZK/eccV4y0wy
X-Received: by 2002:a05:6214:c28:b0:70b:af39:8596 with SMTP id 6a1803df08f44-70d76fae59cmr27615686d6.28.1755689826215;
        Wed, 20 Aug 2025 04:37:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHF8uDY/KF39ETwmmHdeKUKsc98VcWiJ/Iu9zjHm6WFS5DWcH3CpZlDmrVqK45d2lN37i/9GQ==
X-Received: by 2002:a05:6214:c28:b0:70b:af39:8596 with SMTP id 6a1803df08f44-70d76fae59cmr27613786d6.28.1755689823518;
        Wed, 20 Aug 2025 04:37:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a41e3cfsm27543291fa.6.2025.08.20.04.37.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 04:37:02 -0700 (PDT)
Date: Wed, 20 Aug 2025 14:37:00 +0300
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
Message-ID: <tlilctwavwqw6oy46l5fote2pa6f4hdy2im6meo56cjaawba3a@a42bwbbfnsuw>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-2-a43bd25ec39c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-2-a43bd25ec39c@oss.qualcomm.com>
X-Proofpoint-GUID: 6tK_ZeUOXeR1KJ7mkBzFHbmIlCtOWp1d
X-Proofpoint-ORIG-GUID: 6tK_ZeUOXeR1KJ7mkBzFHbmIlCtOWp1d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX5DjSL4Tc6jeu
 xTF17dpV87xwqSwmhySNMkFY6NQ+QaLgkdXLkG0CUo6uUn+36J396pgM2/xY/4gbsFJCet3FSD+
 +jEkl70+IQRp2Hl8/x/3oCDqRWIh+1CxQqTJFEu6cv76WhuBD3soyKG9zkHOVciVpbOey+Lst9D
 O5I37gw5daRqETOZNAFFKuLbpvIvnDzXRv3ubOmusEsPg47ZVG8HFgtj5yiU3uwcXwzQY849zkw
 wIduMEPdxoJQvsSKQsqCc0EOrs+UGZeD7MzsdHhPKPucZSfekWm3ho6kKezgXfKYZzf/gOJtNxl
 RoVaWEPomwtS6x1lQYiLgB9RffpXlscOwGs/bGGGdjleBIAx3StFBk1kTdVvDriPKdtC75JHYOI
 AKr+1+humNDF1GgDO6fWMdm1ItBABA==
X-Authority-Analysis: v=2.4 cv=SPkblOvH c=1 sm=1 tr=0 ts=68a5b363 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=7souUVsdAZ2KeZQVA08A:9 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_043708_217098_D6BDA093 
X-CRM114-Status: GOOD (  22.49  )
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

Missing GCC_USB2_SEC_PHY_AUX_CLK and GCC_USB2_SEC_PHY_PIPE_CLK

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
> +          - description: offset of the DP PHY mode register
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
