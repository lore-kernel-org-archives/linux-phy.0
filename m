Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7D1606A325
	for <linux-phy@archiver.kernel.org>; Wed, 18 Nov 2026 04:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EDhLrGuP;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Ajvgn8ep;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=fE9Xn227
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=NtddbT6LzzCz/pRfcybqWnNbNjpuZjuFtyQASe+QwwA=; b=EDhLrGuPrX0kmy1k+7J9OpKJts
	wHevvTN0US7Jq20lfs5vVT5NhNBwsTX54RldKhCCCadp5fkijkH6cXT+7DBiObhCJnacoGPFdVita
	E/2k2ZYJVXM9kbREUb2aszHE/tbU9jUIMkoQ5VUgMDzd57dsJbjQgGoonrOzg+TNxzs5lbvFsk+Sk
	K25sBSilZcXdb9T8X+M2h4JHf8V0/OCv3QAwaUnkx0O/KpLLFFpXT4CHqYHjkOAF8Hs4Xv0sVs92Z
	1xHwoa0tOxnql8wHxNyUF8sz/gJq1XncmpmZdDGSqSw8FRA+G/8yne2OZXE0qeBxoKbeWIJEfsIYf
	ftUAb6ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTXdu-00000007itZ-1rpN;
	Wed, 18 Nov 2026 04:51:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTXdq-00000007it9-3Db9
	for linux-phy@lists.infradead.org;
	Wed, 18 Nov 2026 04:51:33 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AI2V2ef1959902
	for <linux-phy@lists.infradead.org>; Wed, 18 Nov 2026 04:51:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2gGNj1mVMGkwLJSC+d+QVQha
	JGEVdPV98C71LrlbtbU=; b=Ajvgn8ep+yB01x9i7q1pwbVGU5q7rcSCVHEiUlXd
	y56DFUnQYoGIPf9BaE95BVAzU4Rg3RsIbuOBdsV/A6Ddrr7BCO/bqTFNImwPRdFb
	OU8FfjfC2sJRlO9G5rBn7Nw5bVaNDwRCp9+19oY24Lzey7vJ63UXvPj8DTs3iZRM
	/5ee52kIT3vbQrD/fSYlRuDUk1g8LbaIDNWk12XbxR+WVsZssQqlA7yJXbPUUSic
	V2IwhwgZ/MmaC5vf9Oj6T4iVQT/wNGi7b25OWA2nvEy4DPMKsdraM3cO7ptrDeZb
	vmRjJ6hDsAnFWByCYY/FIobyUJh/cj4l9xW31sCnHR0DOw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j0yv9h80f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 18 Nov 2026 04:51:29 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93f32050e72so165078885a.1
        for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 20:51:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794977488; x=1795582288; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=2gGNj1mVMGkwLJSC+d+QVQhaJGEVdPV98C71LrlbtbU=;
        b=fE9Xn227xdKb4RRn9IgKmyPDqsyeM5x1jLiiFRRQwKCVECPolvTPBYLxo4ttMDL1qk
         /Ny67OWumzHIpqFP6M6oDWNwi8tshAIPiGa05Gck8F596rt09hSO9mNUG4+1aM7X7hvb
         QmeNh8hl4aU0nULZB8g8ifFb7kM+uptWQDyZveK5E0snJbyqaNsWuPqz41h7tF/R+NPT
         pevo+T5UdVp6WPGCpySluOpJVIuCJbT+wLLJ224jCLOn9KNSDC7K7dAHgzOtpk1EtPIB
         y3F4OC73YPEQqzwPGKOY3jASmFp8VpvrPiwBuv0Rl5COthpOKwzcvRiehdqWpuTQ4trS
         dsQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794977488; x=1795582288;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2gGNj1mVMGkwLJSC+d+QVQhaJGEVdPV98C71LrlbtbU=;
        b=AfniR7+nZLrHkbfOcwReZjOMg+A3I9K7c10mWp0249ZdCgA6+Dd94K2UwUeizGXqRq
         uEjx6ho40xCv88hIVrMmcONlG52/KUFiG2AJf0gu1Gwwg7i/4625aMdN4WP/CZvqe6RM
         IxczHFPp+QdBNXnBJKR02txhG9G2NcXnTFz+de2vd/mrZa/nMkxr5p/jsGeRhm7/rjxp
         VCBBXyhQuDHResEGVs3JE2wW3g8AZQPyf91jUG3kSfCxa4Cc2OPlIb62tFCsUiM0BY0F
         aykss85ORb5F2IL3yKB6WiTrV+fNJt6zUgOdecD39jrHS7xtVjEVCwYiwdDgVw8Go1Ap
         EVow==
X-Forwarded-Encrypted: i=1; AL+hErG0uX2ADwR72YLlejWOthAtBqyYXM9iH1YEUjs/Nm8fcpzJAgpxBZrbU8/QVFLlu4ZH7LhmsOBzeKQ=@lists.infradead.org
X-Gm-Message-State: APuU4Z9zAR8cAkz/ApssMFLdmQjbxtj5mL2CnaD9rolch2ECr5EpfFAe
	u+/9XpWj9ddO7ICYxOJtKc6mSTm0zJzxaWndbq3Q5p3lZ02NMReLavTTXHZod25VZAYLZdhKBU9
	1FUgaklJb+dBh54WBykWqrsSalUBqwGYC3FPPSUQbwaMkuAj5Zr8/uPp93e6iHCisSwi6LFmYEa
	yQrQI=
X-Gm-Gg: AYBFou244SEC2CTwNxeUV8m3ilzBad9zjrNfRync32496xCYIhp1IbZq4qDL1jQze3Y
	jc55VlVVbpuubwtE5jld/KUZM59wNQpcmUlRTealnOyXsKjAW1yUAdktPnN2wCHu2R7ZgiygMP8
	GFmcRSi/sGPmxfeRGpG3beRaGXDiGJVY7R7jevxhSJo7iu0UXsWG26kbxrQPNzHetNE7dBVjSk4
	VkjHmb5rGEw6LkHTWkAw6XPVAIshCW5EDUCt6hApepy7LtvIg86ZFezcfVozti+OPxNmtYmtYYH
	fWOtEQRfwXhGttGLaQ4g7GKKJqVoHdTosr61buLCrZ5AOOTonrLq1hpDyyFdly5S/I3as+hF9Nc
	QoaqumI0lR/AwrnuESI8xnF02pkMz9Pfk2LSfdYbEIRD2SdVZJaDSn6JtN8p2Xo9KSATmBm5hiu
	MCauLTDpTQ9Y0=
X-Received: by 2002:a05:620a:4729:b0:949:61a9:5a6e with SMTP id af79cd13be357-949995a8479mr320831485a.31.1794977488118;
        Tue, 17 Nov 2026 20:51:28 -0800 (PST)
X-Received: by 2002:a05:620a:4729:b0:949:61a9:5a6e with SMTP id af79cd13be357-949995a8479mr320825585a.31.1794977487465;
        Tue, 17 Nov 2026 20:51:27 -0800 (PST)
Received: from QCOM-aGQu4IUr3Y.na.qualcomm.com ([195.50.164.66])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4a650d2ecd0sm2742959f8f.8.2026.11.17.20.51.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2026 20:51:26 -0800 (PST)
Date: Wed, 18 Nov 2026 05:51:23 +0100
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org
Subject: Re: [PATCH v3 03/11] dt-bindings: display/msm: Document Nord MDSS
Message-ID: <av0uy_Cq9iaTZn4c@QCOM-aGQu4IUr3Y.na.qualcomm.com>
References: <20261116-nord-drv-dt-v3-0-e3d3bf0e2c49@oss.qualcomm.com>
 <20261116-nord-drv-dt-v3-3-e3d3bf0e2c49@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261116-nord-drv-dt-v3-3-e3d3bf0e2c49@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=QenzLcbv c=1 sm=1 tr=0 ts=6afd2ed1 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=Jk2/TV77q6/E6wQq2oQJxQ==:17
 a=kj9zAlcOel0A:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=s44c23SdAZ6jS4fPfVAA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: o4ZF_A-P1tMlHDHTDv4AGqQMnL-OhiJF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE4MDAxOSBTYWx0ZWRfXxYPNKWtkJpoM
 lY/qQGpy3Jncj+759eE0gBR39LFKqz/NMJEUSWLDe1B47w1T8GIs0hQ6d1WA8IXliA2ubuT619O
 9zZzt9s5F6R4zdZ1g1QnLiL5jSJJJYxfMewjV0JRUrK5QDiltOlMKKxh/sdrGElpfUb9uFzEZb6
 tsfT/qJyxt9jKNogDvI+UmAFF0/FrzBfzE1t+FqDbTMaQYMuRRvyz4F8awJPyU9KbdxrCw1RW23
 Bel7LtCUifD/kEnoTLPHBsY3C714K1VtpCtJ5mbvN3cU/MeHvvl8rZ0FU+S7hQDEtAhLEQJ78X8
 IfNcRSg4IoZj7azrIQGEzZ3Ja/vAY+KDhhT+jExfep9erLQKtPDtmE2Xx4N8bsak9NiM10qYOYM
 cwSYTKDRhEFulFkvaNKl7BxhELHQGd0hpvoOc2xK1Tm/F5vZfIC3vJKqkh/7eyrFYIUoN2bKE/9
 0Hs9pG1g8zbihQkOHAQ==
X-Proofpoint-GUID: o4ZF_A-P1tMlHDHTDv4AGqQMnL-OhiJF
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE4MDAxOSBTYWx0ZWRfXxDKK2qpKzq+Z
 r3cWRwM7+8X023bdWSP+MNxctplVQW6LbyZVPWpEHs50f0I7kRYkpiQISp5/HDyadlr659PBRma
 Ir5sCgS1ukLLxwJq/1nUeJPpDzz1Dwc=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-18_01,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 clxscore=1015 suspectscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611180019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_205130_845777_1232F420 
X-CRM114-Status: GOOD (  21.19  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mon, Nov 16, 2026 at 06:46:42PM +0530, Nabige Aala wrote:
> From: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> 
> Nord has a new MDSS 12.1 revision with DPU 1499A and two independent,
> DP-only display interface controllers (no DSI), which no existing
> schema describes. Add a dedicated qcom,nord-mdss binding to document.
> 
> Assisted-by: LLM
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  .../bindings/display/msm/qcom,nord-mdss.yaml       | 396 +++++++++++++++++++++
>  1 file changed, 396 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,nord-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,nord-mdss.yaml
> new file mode 100644
> index 000000000000..abd80dae4e7f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,nord-mdss.yaml
> @@ -0,0 +1,396 @@
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

This is now contradicting with the dp-controller bindings which documents
"qcom,nord-dp" with a fallback on "qcom,sa8775p-dp".

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
> +    #include <dt-bindings/clock/qcom,nord-dispcc.h>
> +    #include <dt-bindings/clock/qcom,nord-nwgcc.h>
> +    #include <dt-bindings/clock/qcom,nord-tcsrcc.h>
> +    #include <dt-bindings/interconnect/qcom,icc.h>
> +    #include <dt-bindings/interconnect/qcom,nord-rpmh.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/power/qcom,rpmhpd.h>
> +
> +    display-subsystem@ae00000 {
> +        compatible = "qcom,nord-mdss";
> +        reg = <0x0ae00000 0x1000>;
> +        reg-names = "mdss";
> +
> +        power-domains = <&dispcc0 MDSS_DISP_CC_MDSS_CORE_GDSC>;
> +        clocks = <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +                 <&nwgcc NW_GCC_DISP_0_HF_AXI_CLK>,
> +                 <&dispcc0 MDSS_DISP_CC_MDSS_MDP_CLK>;
> +        clock-names = "iface", "bus", "core";
> +        resets = <&dispcc0 MDSS_DISP_CC_MDSS_CORE_BCR>;
> +
> +        interconnects = <&mmss_noc MASTER_MDP0 QCOM_ICC_TAG_ALWAYS
> +                         &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +                        <&hscnoc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +                         &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
> +        interconnect-names = "mdp0-mem", "cpu-cfg";
> +
> +        interrupts = <GIC_SPI 930 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-controller;
> +        #interrupt-cells = <1>;
> +
> +        iommus = <&apps_smmu_1 0x3e0 0x2>;
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        ranges;
> +
> +        display-controller@ae01000 {
> +            compatible = "qcom,nord-dpu";
> +            reg = <0x0ae01000 0x8f000>,
> +                  <0x0aeb0000 0x3000>;
> +            reg-names = "mdp", "vbif";
> +
> +            clocks = <&nwgcc NW_GCC_DISP_0_HF_AXI_CLK>,
> +                     <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +                     <&dispcc0 MDSS_DISP_CC_MDSS_MDP_LUT_CLK>,
> +                     <&dispcc0 MDSS_DISP_CC_MDSS_MDP_CLK>,
> +                     <&dispcc0 MDSS_DISP_CC_MDSS_VSYNC_CLK>;
> +            clock-names = "nrt_bus", "iface", "lut", "core", "vsync";
> +
> +            assigned-clocks = <&dispcc0 MDSS_DISP_CC_MDSS_VSYNC_CLK>;
> +            assigned-clock-rates = <19200000>;
> +
> +            operating-points-v2 = <&mdp_opp_table>;
> +            power-domains = <&rpmhpd RPMHPD_MMCX>;
> +
> +            interrupt-parent = <&mdss>;
> +            interrupts = <0>;
> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                port@0 {
> +                    reg = <0>;
> +                    dpu_intf0_out: endpoint {
> +                        remote-endpoint = <&mdss_dp0_in>;
> +                    };
> +                };
> +
> +                port@1 {
> +                    reg = <1>;
> +                    dpu_intf4_out: endpoint {
> +                        remote-endpoint = <&mdss_dp1_in>;
> +                    };
> +                };
> +            };
> +
> +            mdp_opp_table: opp-table {
> +                compatible = "operating-points-v2";
> +
> +                opp-300000000 {
> +                    opp-hz = /bits/ 64 <300000000>;
> +                    required-opps = <&rpmhpd_opp_svs>;
> +                };
> +
> +                opp-417000000 {
> +                    opp-hz = /bits/ 64 <417000000>;
> +                    required-opps = <&rpmhpd_opp_svs_l1>;
> +                };
> +
> +                opp-532000000 {
> +                    opp-hz = /bits/ 64 <532000000>;
> +                    required-opps = <&rpmhpd_opp_nom>;
> +                };
> +
> +                opp-650000000 {
> +                    opp-hz = /bits/ 64 <650000000>;
> +                    required-opps = <&rpmhpd_opp_turbo>;
> +                };
> +
> +                opp-710000000 {
> +                    opp-hz = /bits/ 64 <710000000>;
> +                    required-opps = <&rpmhpd_opp_turbo_l1>;
> +                };
> +            };
> +        };
> +
> +        displayport-controller@af54000 {
> +            compatible = "qcom,nord-dp";

The example needs to be updated for the "qcom,sa8775p-dp" fallback
as well.

Shawn

> +
> +            reg = <0xaf54000 0x200>,
> +                  <0xaf54200 0x200>,
> +                  <0xaf55000 0xc00>,
> +                  <0xaf56000 0x400>,
> +                  <0xaf57000 0x400>,
> +                  <0xaf58000 0x400>,
> +                  <0xaf59000 0x400>,
> +                  <0xaf5a000 0x600>,
> +                  <0xaf5b000 0x600>;
> +
> +            clocks = <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_AUX_CLK>,
> +                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_LINK_CLK>,
> +                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
> +                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL0_CLK>,
> +                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL1_CLK>,
> +                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL2_CLK>,
> +                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL3_CLK>;
> +            clock-names = "core_iface", "core_aux",
> +                          "ctrl_link", "ctrl_link_iface",
> +                          "stream_pixel", "stream_1_pixel",
> +                          "stream_2_pixel", "stream_3_pixel";
> +
> +            assigned-clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_LINK_CLK_SRC>,
> +                              <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>,
> +                              <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL1_CLK_SRC>,
> +                              <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL2_CLK_SRC>,
> +                              <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL3_CLK_SRC>;
> +            assigned-clock-parents = <&dp0_phy 0>,
> +                                     <&dp0_phy 1>,
> +                                     <&dp0_phy 1>,
> +                                     <&dp0_phy 1>,
> +                                     <&dp0_phy 1>;
> +
> +            interrupt-parent = <&mdss>;
> +            interrupts = <12>;
> +
> +            phys = <&dp0_phy>;
> +            phy-names = "dp";
> +
> +            operating-points-v2 = <&dp_opp_table>;
> +            power-domains = <&rpmhpd RPMHPD_MMCX>;
> +
> +            #sound-dai-cells = <0>;
> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                port@0 {
> +                    reg = <0>;
> +                    mdss_dp0_in: endpoint {
> +                        remote-endpoint = <&dpu_intf0_out>;
> +                    };
> +                };
> +
> +                port@1 {
> +                    reg = <1>;
> +                    mdss_dp0_out: endpoint { };
> +                };
> +            };
> +
> +            dp_opp_table: opp-table {
> +                compatible = "operating-points-v2";
> +
> +                opp-162000000 {
> +                    opp-hz = /bits/ 64 <162000000>;
> +                    required-opps = <&rpmhpd_opp_low_svs>;
> +                };
> +
> +                opp-270000000 {
> +                    opp-hz = /bits/ 64 <270000000>;
> +                    required-opps = <&rpmhpd_opp_low_svs>;
> +                };
> +
> +                opp-540000000 {
> +                    opp-hz = /bits/ 64 <540000000>;
> +                    required-opps = <&rpmhpd_opp_svs_l1>;
> +                };
> +
> +                opp-810000000 {
> +                    opp-hz = /bits/ 64 <810000000>;
> +                    required-opps = <&rpmhpd_opp_nom>;
> +                };
> +            };
> +        };
> +
> +        displayport-controller@af5c000 {
> +            compatible = "qcom,nord-dp";
> +
> +            reg = <0xaf5c000 0x200>,
> +                  <0xaf5c200 0x200>,
> +                  <0xaf5d000 0xc00>,
> +                  <0xaf5e000 0x400>,
> +                  <0xaf5f000 0x400>,
> +                  <0xaf60000 0x400>,
> +                  <0xaf61000 0x400>,
> +                  <0xaf62000 0x600>,
> +                  <0xaf63000 0x600>;
> +
> +            clocks = <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_AUX_CLK>,
> +                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_LINK_CLK>,
> +                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_LINK_INTF_CLK>,
> +                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_PIXEL0_CLK>,
> +                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_PIXEL1_CLK>,
> +                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_PIXEL2_CLK>,
> +                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_PIXEL3_CLK>;
> +            clock-names = "core_iface", "core_aux",
> +                          "ctrl_link", "ctrl_link_iface",
> +                          "stream_pixel", "stream_1_pixel",
> +                          "stream_2_pixel", "stream_3_pixel";
> +
> +            assigned-clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_LINK_CLK_SRC>,
> +                              <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_PIXEL0_CLK_SRC>,
> +                              <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_PIXEL1_CLK_SRC>;
> +            assigned-clock-parents = <&dp1_phy 0>,
> +                                     <&dp1_phy 1>,
> +                                     <&dp1_phy 1>;
> +
> +            interrupt-parent = <&mdss>;
> +            interrupts = <13>;
> +
> +            phys = <&dp1_phy>;
> +            phy-names = "dp";
> +
> +            operating-points-v2 = <&dp1_opp_table>;
> +            power-domains = <&rpmhpd RPMHPD_MMCX>;
> +
> +            #sound-dai-cells = <0>;
> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                port@0 {
> +                    reg = <0>;
> +                    mdss_dp1_in: endpoint {
> +                        remote-endpoint = <&dpu_intf4_out>;
> +                    };
> +                };
> +
> +                port@1 {
> +                    reg = <1>;
> +                    mdss_dp1_out: endpoint { };
> +                };
> +            };
> +
> +            dp1_opp_table: opp-table {
> +                compatible = "operating-points-v2";
> +
> +                opp-162000000 {
> +                    opp-hz = /bits/ 64 <162000000>;
> +                    required-opps = <&rpmhpd_opp_low_svs>;
> +                };
> +
> +                opp-270000000 {
> +                    opp-hz = /bits/ 64 <270000000>;
> +                    required-opps = <&rpmhpd_opp_low_svs>;
> +                };
> +
> +                opp-540000000 {
> +                    opp-hz = /bits/ 64 <540000000>;
> +                    required-opps = <&rpmhpd_opp_svs_l1>;
> +                };
> +
> +                opp-810000000 {
> +                    opp-hz = /bits/ 64 <810000000>;
> +                    required-opps = <&rpmhpd_opp_nom>;
> +                };
> +            };
> +        };
> +
> +        dp0_phy: phy@fc3a00 {
> +            compatible = "qcom,nord-dp-phy";
> +
> +            reg = <0xfc3a00 0x1d0>,
> +                  <0xfc3200 0x128>,
> +                  <0xfc3600 0x128>,
> +                  <0xfc3000 0x200>;
> +
> +            clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_AUX_CLK>,
> +                     <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +                     <&tcsrcc TCSR_DP_TX_0_CLKREF_EN>;
> +            clock-names = "aux", "cfg_ahb", "ref";
> +
> +            #clock-cells = <1>;
> +            #phy-cells = <0>;
> +
> +            power-domains = <&rpmhpd RPMHPD_MX>;
> +        };
> +
> +        dp1_phy: phy@fc6a00 {
> +            compatible = "qcom,nord-dp-phy";
> +
> +            reg = <0xfc6a00 0x200>,
> +                  <0xfc6200 0xd0>,
> +                  <0xfc6600 0xd0>,
> +                  <0xfc6000 0x1c8>;
> +
> +            clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_AUX_CLK>,
> +                     <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +                     <&tcsrcc TCSR_DP_TX_1_CLKREF_EN>;
> +            clock-names = "aux", "cfg_ahb", "ref";
> +
> +            #clock-cells = <1>;
> +            #phy-cells = <0>;
> +
> +            power-domains = <&rpmhpd RPMHPD_MX>;
> +        };
> +    };
> 
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
