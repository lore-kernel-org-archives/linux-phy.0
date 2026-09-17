Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D68FDC982C1
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 01:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tyGH+w3DfzD1x1x3q2BfGHq1H/MlFb3+0j/ChOyUps=; b=H1LgHOvr4xqrv/
	niSsFJWQp2xAYjeaaaX517a61Xrv0xnygi4IgyrU/Nt6swdEd0lnotfNPlliVOzkCJVUt4weXLGsd
	q6nMCQpLL6acmfPiHj8J6/Ks2n7X++2tmcotDjwVyWR+iGE+fLdx3gTfYI1ENKnNSXd9vpZKfquRm
	jUT08wncOx4EwdOSSx619+cPLzvJfkrUH70paJRqbnTKsTBBzmJ9e6nqXw0HrgC86VQe0XGHJmmPv
	WxgFffwCAbDdW+oLacANjK5yos/s61IHOQL2I6n2fZNEk0cfclZ8Qs1CsUznepATFbuhMeRoiqk4n
	FwtfEVR/z8xxFL0m+gEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7132-0000000APz6-1Z3v;
	Thu, 17 Sep 2026 01:36:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x712y-0000000APyW-2aBR
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 01:36:22 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68GHP8IT3238103
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 01:36:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=B3DU5cPahpn7psp7SjqFFTO7
	I4tqeebDWCAKEo8WiDs=; b=NIVUo31vaSU3r5pkg/JBp8KuLWVqFvUjsSv3h+EB
	3DWFFlKb7WY9iDHHqQ2kD070fenGN7oNJYpqL7kpmCdo0O90xEbhIp9hn/1cviQo
	excxG0ZR2GEQc0/2TXpl8gt7kEBMH6hNvAcadX0E5AdYpbcKKdiJq6amd+SWfwR7
	mNVxB+hCTsTU6HDS8mgopdyahWV321p5+AR5rzPB0+BhGfpmektrg1VnS+P4Qkg6
	w0sZoznkUhG1QjngKbhH2Vj9gQlckaV3CEhvBh9jWRnrpyl6xlrLqgR3DLCLN3uF
	FPbE8Ts71VfK9QAN+FRgQPO2y/wnuv3uOk3YJxRkSs3IkQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gqyga1nn4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 01:36:19 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cc18ced1a5aso555442a12.1
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 18:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789608978; x=1790213778; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=B3DU5cPahpn7psp7SjqFFTO7I4tqeebDWCAKEo8WiDs=;
        b=E6cv5CeEA24V7zsnnxecHvEy/25RLoTxlL9/SpH+xA+805x3I2OLcXjdcZdBuOxCs7
         MYkc1t2hC4EKSDkXXQ4c8PjTrv4C1WmGkAdFejcWGsRyo/3hdQpsHrDzeNvBzq6fFUZO
         6iLwVZfQOEBBT2G90cVGrmfwB+1njsiT4sJmxq9d8uy/DAQly2Ssz1NRecDZQ8NxBCaa
         lW/sYTPRFbRWtVWu8k9eKp5RNOrt4JKkTSEvP5bThWDqhWxUDYOLerCmrqPsmxAjxARx
         J9fWN/YzsVM0+3D54qWXNngougXqlfpzAfAg0rYKc7hPQQ3K7CPl0LuvE9HSoflyQ929
         +dpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789608978; x=1790213778;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=B3DU5cPahpn7psp7SjqFFTO7I4tqeebDWCAKEo8WiDs=;
        b=1gVwgbZksA1Cf43Cr+k3BRBF8TgAQrsTApI6VD8iX4mTPmYo2yGCFYrfnRKZyo15LW
         7lXzurZPAh2uAzTPsuWlFqdRleQ0/AMhYXLzFcR2NE1EFGenhrFWrny2wot2sZyIN99w
         XufqLF1sBFhtNtlkX0ujmAIJOxxv82EAnkvJFYCcafgUoebWokCBhUczwEoZ+J1vvp0t
         keqLG7Bk04SuF0M1o/frZCmuuvhDnwQQpINmwz4pQCYwXE2Gy5ojkM7Fd+yxYs0ttIW6
         8FvJD1TD7dkVzAB8iMSfsQHKdRaEs50WQ8HlMifAjgMGBLAC0VWZ/3FRoDkhQMaFudwI
         mGog==
X-Forwarded-Encrypted: i=1; AKwUvBxhBSwswR5k4ah0nqBkw/F1I13SFrjkSwM1aIfAbt6rMto4gig65InTGhljkW7c4H3LEWRSisUKZE8=@lists.infradead.org
X-Gm-Message-State: AFuF++ncRLCAC53Px6j6w8VmPlPM+n/3Ub0KUQwoMEGhqpO4UvriAkxC
	tcy3NjD79jrb3zpP90eqR95uEc0G/0hV8DBN1fGMhjg9HM95YflvyBxeMG28G4jK5M+gAwGfh4M
	wPlT05wvHqkb0et1HB6kc+8N1vraAt0RYt0Ad7uUijWEND3ZujYqVyoJa2hXMNhWTHWu+
X-Gm-Gg: AYBFou2lsZlpP+zDiknfBNe3hnCR8IsLIjUClKukMS628RRHHzHe3fL6T3ce8ULJj1M
	5fQxvlBroVwMq2FvGIPC508lP6dMghlndZ6oFT8NUq/R2c7PPeFjU10kNEs4630w0M/2kENX//X
	OSFthKKiB4Khr9047V47SjE0w+clhDbSJtW1x1A8f76XQ9GXm1iB5lwNJlXqVbuhVhtFW/mrQzp
	jTJesDiKtpiZdT8HfIm4xoiW2LoHmOR9MDEry2ES+0Oga/IqQxH86129v4CzepjDcdx038r4noR
	k+9DFnrF8f7g41Px1rPEYz5cPtkGw4REMRcCtCYc1F3rJJbLBpKO1zHPDlFinW9hA4PdI+XUdNE
	la5yuI7sQUQp/n+bfixP5QWzJNFD1p0uR94z4Hw4uk+M=
X-Received: by 2002:a05:6a20:cfa2:b0:3dd:57bf:7242 with SMTP id adf61e73a8af0-3dd5f456c26mr12096645637.8.1789608978068;
        Wed, 16 Sep 2026 18:36:18 -0700 (PDT)
X-Received: by 2002:a05:6a20:cfa2:b0:3dd:57bf:7242 with SMTP id adf61e73a8af0-3dd5f456c26mr12096582637.8.1789608977646;
        Wed, 16 Sep 2026 18:36:17 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33bfb05e604sm9699019eec.12.2026.09.16.18.36.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2026 18:36:17 -0700 (PDT)
Date: Thu, 17 Sep 2026 09:36:08 +0800
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH 03/17] dt-bindings: display/msm: Document Nord MDSS
Message-ID: <aqtECDwHPiUUZqTB@QCOM-aGQu4IUr3Y>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-3-e25c073cf1b6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911-nord-drv-dt-v1-3-e25c073cf1b6@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: S22lLf7LI-KwvmycJcJkt5SSOpIU3UgZ
X-Proofpoint-GUID: S22lLf7LI-KwvmycJcJkt5SSOpIU3UgZ
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE3MDAxOSBTYWx0ZWRfX1CjzpyfiTDWQ
 LaQYQWy8TGPF5VJV2joI6q/zJ0B3QfVyb0iFlBh9jnVNlQjavY4CqKVQCq521yY5KhcG9wC63ea
 qp5Vrm7c6EC8/PW6VgD5GzSc7C9n49I=
X-Authority-Analysis: v=2.4 cv=I9fw19gg c=1 sm=1 tr=0 ts=6aab4413 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=gEfo2CItAAAA:8 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=-8PEYfhsPDB8XfM_kOAA:9
 a=CjuIK1q_8ugA:10 a=3WC7DwWrALyhR5TkjVHa:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE3MDAxOSBTYWx0ZWRfXw+crO6smamH+
 OI3bNtVIVKumWqj4UkAQft9rKeKK/SDGdMGih8E3G5VDodQtSNC3aNC1m7FJCwTLOquPlRox7Pw
 2PmJv9+E/+ttvV6cV5cUv4KThIkP8XJAHK/GgQxfwlJy1GLFZ+c2FijC4FqQm5GOCMFvNpNYTmH
 ZZ89Rmtl6Pe2nTG+Qzmbt0sULC49g0AbxaHTg6QvQKd7eE5FhRPV+BDReh03k/fkNrYAQzKVZ/u
 cFs0dcPG+3/BNzQgn1Nj3LQRK2v1zl0vKcEQmYL0NDXL0nr156zeMZSNJkXQfWmtR18QctQUGmD
 PmFo+NKIdi4NMOuqCf76Ir4olixoqj3kgZjFWJjwOTlhEUa4+aFQE1mk+J4DUJodimd6wBlpmxi
 nG/XLCXJh1W5ZxLkVODWc7hRa3C8NF2NLC8rwfeNP3cCweyoIv3gIBtDkJvhuCxuXoMYD8VDpBc
 7hwpBsE4d+eSQ+R164Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-16_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 bulkscore=0 phishscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609170019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_183620_779390_FEA4FD29 
X-CRM114-Status: GOOD (  22.96  )
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

The DTS in downstream repository doesn't seem to agree. There is two
items for iommus.

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

Please run dt_binding_check against mainline kernel where the header is
actually qcom,nord-dispcc.h.

Shawn

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
> +    };
> 
> -- 
> 2.34.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
