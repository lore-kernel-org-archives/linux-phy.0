Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E48EC88E5C
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 23:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCITQLEPXY+LYajJoZ7p6GBX7bbZNsPPVv9qjsiaN1o=; b=CVjB4pIENhLg5m
	0wn3Rtc0bL201nh/x/fCi5snRxJOUpulHB8JN11FfaQwo79+Rxmdz+jQgefXyPAoCjQD1CpBThYqT
	502EALtJgAW/N8RazS4OlZMAg3lpUpM/jaDhqeUQnWYwM81J26t02u4YvZGOt45aYZO7oPJJQUzLz
	Fapa6e0ndNr6bkPSRX/sYZd1jba9/ajQC+8AZdvxq/2j+UDshlqCZmWewzjj3TZErn9Oz9bDKVJbw
	Zvg2XY5R75BxZ+wjxu86ja73kIqyZmP6YEpF6xWRc6O6KGapFHDXkrWrfpvsre85IWxXFRsxvYOen
	6cru+4X1r6OBQxkV/ofg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5tft-000000026G6-3HGr;
	Sun, 13 Sep 2026 23:31:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5tfq-000000026Fd-2dKk
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 23:31:52 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68DJxfpa2526950
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 23:31:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8Yheiyhi3WlnjH2Jpbi31UKC
	puZDDkybu8z16cN4/BU=; b=JtbwsMPsJmvf+dZsFgRQcBsixwMCVlMrCEY3J5ca
	q0y0pjULPeXwoZm6Oroee7nNFfYyPr+68ohuacU5QvFbGYxiqvM3JV0DF9KrTMLr
	IY9F4Q7mmneVaEoKmhXO6dYaFokLpHwj0FWy9wtOxZ/MZMfGqBmrlKJF6bRBtUbl
	sBi5rZxM4o5qOAPVPJ4fiQNi26iApO5D2fm3QDHXtczwlJ8T80EbIUjVRFDpQrw9
	wjiRRYj9sr9NunZbXNkhpmToMdfK5YD3ZVnn55eQ3FUKoOY4yTqGfMZGYM91oCE+
	nRo6nbTHk1zOJr6GV0vVp7DHqPjuKAjAt+KXA4RRUkFwOQ==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmy9dcatj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 23:31:49 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5c8337b12d0so821698e0c.0
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 16:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789342309; x=1789947109; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=8Yheiyhi3WlnjH2Jpbi31UKCpuZDDkybu8z16cN4/BU=;
        b=OOcSYBH+FasFL7UpfmF9y5iJtZIdViDZG/ffT3V7dqUFG906OgrEmIuLAEDrRz6da7
         usnatVy+Ov4ycp98QIfvhnBv45V0p9sfJL1R6xf/p3QxYYbtYCrXCPnKvNT/ZrrQ6Buu
         6lIRX3AXMzXLB8Bi9Ol8tq+2ycjWwFItyF1Mhy2cs9BIPP/ji213w+R/GslMMiCeCd8c
         G2gm/BdmuYJ5ak0Idn1dysIopQVQs2iqKMSVKPupVbEPXHgErnoYrT5mhV0zoNMZ3ZIs
         jhWvqEfJXd0eqztGaZ/sFRbAWh/rogP+lhbiI69Ws4mdfowGnzfx+h5nGnrKwzS6LOK7
         W+QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789342309; x=1789947109;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=8Yheiyhi3WlnjH2Jpbi31UKCpuZDDkybu8z16cN4/BU=;
        b=QoVB+n/y48zBdFymBg53MusJRvP9c0qjmyz3cGLTLzudy1m5wXHnh7PQH9A10TNMFw
         qL7hSlfcrjT6QiRG/VY8D2sqRAumnRIkbNBJTsbQC+F8W7dzUpVvUeWJs9dqk1YuE3xN
         UMqmlnqcZ23Y54Bo6L7Iw+QIKuDGEvlLL/ja49Fg7J8poVGswEipgtJns2neA5CDU4aV
         dlHPaMtFcVNCNPQy4JGhHggRC3KvgPW/bOghkQ56WCvP3Qwy3PVYqFSHt9xVm/pVuv2f
         AUTuHSovYId1vhyZRZSuMmhqYB1bPRjgCaPCFiBbv3HSfiK9D4R953MBIUmv0J+KzZko
         zgew==
X-Forwarded-Encrypted: i=1; AKwUvBzQu8pu6y9yRaMf3DT+5vPkf+abK/N1ELCV8pXl2nLij2fmRZJowllEr0LBRp5O8KIcEiEJQRXsR2w=@lists.infradead.org
X-Gm-Message-State: AFuF++l0l7M2GYj8YUAmNZILeEUm2nMpqTS3o/GxQZl0jTjqGXHdTKGN
	WWPd26sTy6EI0UC2naIzOegLgneL+vdTM9G7/L8dDaigsE9MqsFfBUkjLzA8b/6EaHsEONEmYqz
	hPUkpgqbyaQCX4ED8h+gFEZcufEIfqRuUYETi8cu6Iz5BeJ0Fe6roO2F2UPXvoC4yH4DZ
X-Gm-Gg: AYBFou1/p+zSaf+BYN2mfdVze1ZligXu8Ocpzu3Zn7nLepOzz7qZT65r5lj0rC3HvkQ
	BglWfK1oC7qsurfHdlpLnJbmiOL3GZBrh21vao+v4LtQ4aVdzPTJX12YLG+CDuAwXpZQaDE6bMY
	+huQhNEzNM5ynQ3pYRoK6SLhJP3tdzjk9anhV5ONeUa81L48afXyj3jZxMAOU4qusRmfu/O7ZJM
	QLpvFHubWk1Kdi4HAS3VPtW870bHSTi8H+rphH1HNICdwIa0ZsEg6+e9uJDztkWkMm4SA9IEAb2
	h2dcwevrEg7/b6GAZoEGptep+vFs01UNzl6TNKMnLug/foYNP/Mfd0tf1V2fC2fhmTnmWgqMtrz
	OkhQuKJFIhJk6n6AxakRv0cmTWwHICv7kH6Zwsyl/jbCxe7bcB8h6aG+c50L8DwP86dKEWQ1Rcb
	VGtwjd4/zDUmQk
X-Received: by 2002:a05:6102:50ab:b0:784:b6e7:cee0 with SMTP id ada2fe7eead31-79b56df0dfamr17574137.3.1789342308689;
        Sun, 13 Sep 2026 16:31:48 -0700 (PDT)
X-Received: by 2002:a05:6102:50ab:b0:784:b6e7:cee0 with SMTP id ada2fe7eead31-79b56df0dfamr17547137.3.1789342308261;
        Sun, 13 Sep 2026 16:31:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b8a046c5fcsm1989692e87.52.2026.09.13.16.31.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 16:31:45 -0700 (PDT)
Date: Mon, 14 Sep 2026 02:31:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH 03/17] dt-bindings: display/msm: Document Nord MDSS
Message-ID: <gfqmo7exo363iyg2q32s7iczl3ctt7yjejtekehbirbkrtmfdl@pui6tpk5c443>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-3-e25c073cf1b6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911-nord-drv-dt-v1-3-e25c073cf1b6@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEzMDMzNyBTYWx0ZWRfX1E7FHqwtBfUG
 PxwSnnlssis7SaRlV4dRg1AewIpvDoSHV9A8Oa0OlCCV6ytksZwl0NP2IX1rDYzs1GyyAST7DD+
 SeUjAEyrnzZ5gwQjRYmLcN5MLyEPluo0/8UqBC8zTwUsAVt8D3FxTk9tD1ULwtVktn9xzLi6bbo
 9tjdaoneEsILENNYlzG0d/bAAY95e9fE2kmmPCR3RVV5OfU1jBO6HBOoBM9IooOMcioY0ixwaU9
 vkux+eLGgPA3VA/f684s8WnjWkHKWKGRl9d/1/LR4BTXAyeTDwEmVacvW1jEnBEmBdaeZd4XjTh
 Z0HkHqAuNUzHgMy+hlph0X4VNEOIwrVFmlAOV6vm26dTsYGF4d3bDevIwyVm10uA5No51uXI+k0
 fzpHzgSVNNUklfF8W/3M/2EKufcOIUfiqMwCSxbDSf/RJiF1k6JKS9j0zYofgPYsSOqO3EUsUR1
 Lpiy4bsuYYdJZRntzwQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEzMDMzNyBTYWx0ZWRfX0cfqHvpE6GzU
 08iFHPuFaN/sx+D+vtiIS0z6/S4Y5WgbnHi1g1WjCgKN2aIMll1Htjoxv4r0wfsKK4i1MiTUhIl
 Q1uZpMY/N38uqJmnj22cHGHzXi7Mk2M=
X-Proofpoint-GUID: dAoCx8N1wmSJUK4R2Xx9e-xJILnnFYZF
X-Authority-Analysis: v=2.4 cv=OeUNnRTY c=1 sm=1 tr=0 ts=6aa73265 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=gEfo2CItAAAA:8
 a=EUspDBNiAAAA:8 a=jN8BCOdiAmMTBh1ippcA:9 a=CjuIK1q_8ugA:10
 a=tNoRWFLymzeba-QzToBc:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: dAoCx8N1wmSJUK4R2Xx9e-xJILnnFYZF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_07,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 bulkscore=0 spamscore=0
 priorityscore=1501 suspectscore=0 impostorscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609130337
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_163150_794906_13C078CA 
X-CRM114-Status: GOOD (  21.97  )
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

On Fri, Sep 11, 2026 at 09:06:34PM +0530, Nabige Aala wrote:
> From: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> 
> Add the binding for the display subsystem (MDSS) found on the Qualcomm
> Nord SoC. Nord is MDSS 12.1, DP-only (no DSI), with two independent DP
> controllers.
> 
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  .../bindings/display/msm/qcom,nord-mdss.yaml       | 98 ++++++++++++++++++++++
>  1 file changed, 98 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,nord-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,nord-mdss.yaml
> new file mode 100644
> index 000000000000..0b0cacdca9db
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,nord-mdss.yaml
> @@ -0,0 +1,98 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/msm/qcom,nord-mdss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Nord display subsystem (MDSS)
> +
> +maintainers:
> +  - Mahadevan P <mahadevan.p@oss.qualcomm.com>
> +
> +description:
> +  Nord display subsystem consists of MDSS (display controller), DPU 1499A
> +  (display processing unit), and display interface controllers (DP only, no DSI).
> +  This is MDSS 12.1, DP-only, with 2 independent DP controllers.
> +
> +$ref: /schemas/display/msm/mdss-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: qcom,nord-mdss
> +
> +  clocks:
> +    items:
> +      - description: Display AHB
> +      - description: Display hf AXI
> +      - description: Display core
> +
> +  clock-names:
> +    items:
> +      - const: iface
> +      - const: bus
> +      - const: core
> +
> +  iommus:
> +    maxItems: 1
> +
> +  interconnects:
> +    items:
> +      - description: Interconnect path from mdp0 port to the data bus
> +      - description: Interconnect path from CPU to the reg bus
> +
> +  interconnect-names:
> +    items:
> +      - const: mdp0-mem
> +      - const: cpu-cfg
> +
> +patternProperties:
> +  "^display-controller@[0-9a-f]+$":
> +    type: object
> +    additionalProperties: true
> +    properties:
> +      compatible:
> +        const: qcom,nord-dpu
> +
> +  "^displayport-controller@[0-9a-f]+$":
> +    type: object
> +    additionalProperties: true
> +    properties:
> +      compatible:
> +        const: qcom,nord-dp
> +
> +  "^phy@[0-9a-f]+$":
> +    type: object
> +    additionalProperties: true
> +    properties:
> +      compatible:
> +        const: qcom,nord-dp-phy
> +
> +required:
> +  - compatible
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,dispcc-nord.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/power/qcom,rpmhpd.h>
> +
> +    display-subsystem@ae00000 {
> +        compatible = "qcom,nord-mdss";
> +        reg = <0x0ae00000 0x1000>;
> +        reg-names = "mdss";
> +        power-domains = <&dispcc_gdsc>;
> +        clocks = <&dispcc DISPCC_MDSS_AHB_CLK>,
> +                 <&gcc GCC_DISP_HF_AXI_CLK>,
> +                 <&dispcc DISPCC_MDSS_MDP_CLK>;
> +        clock-names = "iface", "bus", "core";
> +        resets = <&dispcc DISP_CC_MDSS_CORE_BCR>;
> +        interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-controller;
> +        #interrupt-cells = <1>;
> +        iommus = <&apps_smmu 0x800 0x420>;
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        ranges;

No subdevices? Not even a DPU?

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
