Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C673606A31F
	for <linux-phy@archiver.kernel.org>; Sat, 31 Oct 2026 11:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zGG6Z1y6;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=vQFb5MLz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5GOR6s9kffdBJYoAR41UEidD8q1GSYzcQ5bYs1zyrJ8=; b=zGG6Z1y6hATxcaMbcZVJIciKhq
	C0t36uN+mYf/L9M7LYRQjM69+JtTXt2EVM73dyDQxOFLtx2ippfOCWrhLuXI6FcNRJbEuANYUgYwW
	mg/mBk726q4ON1exgQDXf19cFvN2TJWS+UBw2LSRs/JuNnd9MvpVO+IctdUrQoakHYhwpbXx3SJdk
	9Mgrd21dDyLVEslJeebYNYU7KFTl+b1G/MQIOc6s/c4wCSFpK6YrCeeDioGKk/9SpuYo8gLZkI4Ez
	Uo5tWzi/xwIotpj50XDG55C6qNNbNATarkw5W7srq+GqkNbnsDCWky//Vr9BtyLGynHfcHcoctZxW
	XvUcB+2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN7dn-0000000DHGa-1Q3a;
	Sat, 31 Oct 2026 11:52:55 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN7dk-0000000DHGD-1X7c
	for linux-phy@lists.infradead.org;
	Sat, 31 Oct 2026 11:52:53 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-3ab12c074f1so4129381fa.0
        for <linux-phy@lists.infradead.org>; Sat, 31 Oct 2026 04:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1793447570; x=1794052370; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=8zsL8Kt1CHK5vKimdMgWZmDCuo11hjQxDUYGHa0E+JE=;
        b=vQFb5MLz/XMljToIoqPVBY9+xpWBHXuI3gpABTepgSk8b0CXJz9qm8HCWM42chhvWJ
         9/vDx9EBw31aRCjnvcxnlG1p+o3oSL5rTJoeKoluZp7OS+MqBhHu9Q+Y26DXdRCihzD/
         KkWm28MBhCvS0bQXRd7332TJL9c1vcayK5/46raTGHkYaz0qjvnfk1GrGaY5mywusJcn
         UwG5acqm7qpS70GKKlaEfL8/8/E/a2omhR4gNFBBi1jjuj7ZXwxSb2ziQQMtqlwmVf8K
         a5qLQ2uV0bZAn1rOTTvVewo8+pB44zg9S0Suaj4kQuiyb5rfK3nDCGK0kLmiar3GRLzM
         V3LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793447570; x=1794052370;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=8zsL8Kt1CHK5vKimdMgWZmDCuo11hjQxDUYGHa0E+JE=;
        b=VhHqq6l59LyWY8VqkGK6kTPJzH3hHUD6vHcQCf1Cu3PJ0IRH5RJ1J+tjvTWbXtQDdz
         WXW8vf/VHzjThAeSLRY4rsvQW+uVsasnFY/Z5epEWx8V1wjv6Q24RKqHhEAByzlKYGR9
         D2MUBmuSu1OFG93W7LUj6RNPh2U+aYYv/95MXnoY8UTENAEPCW767Hvj2I9h6hGvqRxw
         gEm0ZObOnxrB13eDsIbP8cB4BuHLwQ3xNqSaqO34IHMXWjzKVbNhayelNuIvdJjpNgI0
         nr/zUoa6rlq73d/Z08EJ/N4hY0dP6QUjy3CcxRdadjAFSEr0gaiQpqbR1MTpnRV1bbLh
         bBMg==
X-Gm-Message-State: AFq9FYIZyUg+AjGotlnRSsZconnIxkwGmmvenvVc0KEgTdk+9i5Hq5lL
	bnY5c1Kl61MBGwPj1Dla2qJjImjQtTBb2dx0RffxLCMhzqNOSFCbX/gOZKKIVfQnT1Q=
X-Gm-Gg: AYBFou1cLcs5sQBBKgXa5sy1I2eWL+JVlVdkLM7tqMAglh5xs/cQ0JbtH5JdjIIIT8Q
	RA/v54Eruvo3cfRkrOI+M7hzCHVlawHwMN0gLqoIFsipClt3jYmacj7Dd9mfFsS9GqfIgDEXYUY
	JFgdqh6KyRQrBr/3yJO7EzvXFftQPeS4MEGfPeLGE6hMPLs++muFxb3z1lVt8QqhPNDDbIFQ5yd
	sncpXSXbog39F+JAPSljxDdZ5XbmvA9HQpH1ctrxxkQohyUqisqP1o9UQ+ZPffMnkhKmeI7LcPW
	YgQFESi4ztXxCTZI3x+lo+/Lt4CcrNx7hNQnEDbkj/+BM6icF0tklO42oj8u6+XSKbzXoImy+Ki
	j/Ze33DeH+eHiCsMVf88Kab6wCyY3haQ9TkOaszWBrKqUgqdQu5/zl42cZi88TGO62Hbql6Zlr7
	sAKUkwpEKFOPBT0qKBd8M4efOlLTZit7GLzPcdHBBPhRmwIvqns6spX4K6k7RrYLpHUGOVcSpNY
	W036yuYRbQ/5ADX3CZqI9iI6a4qertUR14HydZd3k30Ch0U2u9UIJL3c6e03wIexZuJrmayZnqi
	6ePKk6Wap9eUjxmHs+WgBt0YtU5F5Aj4a/RdT052WhY1WSX1zSlozbOu9P9/9PP1/yATPGybrfo
	+PMhiAGU=
X-Received: by 2002:a2e:9d8a:0:b0:3ab:1864:5004 with SMTP id 38308e7fff4ca-3acb7889256mr7975531fa.0.1793447570081;
        Sat, 31 Oct 2026 04:52:50 -0700 (PDT)
Received: from [192.168.1.101] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3acbbc07764sm9957491fa.4.2026.10.31.04.52.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Oct 2026 04:52:49 -0700 (PDT)
Message-ID: <af3600e1-fc1d-42f4-aed7-380d9546b910@linaro.org>
Date: Sat, 31 Oct 2026 13:52:48 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v23 05/15] media: dt-bindings: Add CAMSS device for
 Kaanapali
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, jeyaprakash.soundrapandian@oss.qualcomm.com,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-5-95f250b18612@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20261028-kaanapali-camss-v23-5-95f250b18612@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261031_045252_486877_24866368 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/28/26 17:20, Hangxiang Ma wrote:
> Add bindings for Camera Subsystem (CAMSS) on the Qualcomm Kaanapali
> platform.
> 
> The Kaanapali platform provides:
> - 6 x CSIPHY (CSI Physical Layer)
> - 3 x TPG (Test Pattern Generator)
> - 3 x CSID (CSI Decoder)
> - 2 x CSID Lite
> - 3 x VFE (Video Front End), 5 RDI per VFE
> - 2 x VFE Lite, 4 RDI per VFE Lite
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> ---
>   .../bindings/media/qcom,kaanapali-camss.yaml       | 306 +++++++++++++++++++++
>   1 file changed, 306 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,kaanapali-camss.yaml b/Documentation/devicetree/bindings/media/qcom,kaanapali-camss.yaml
> new file mode 100644
> index 000000000000..dec451fc940f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/qcom,kaanapali-camss.yaml
> @@ -0,0 +1,306 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/qcom,kaanapali-camss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Kaanapali Camera Subsystem (CAMSS)
> +
> +maintainers:
> +  - Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> +
> +description:
> +  The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
> +
> +properties:
> +  compatible:
> +    const: qcom,kaanapali-camss
> +
> +  reg:
> +    maxItems: 14
> +
> +  reg-names:
> +    items:
> +      - const: top
> +      - const: csid0
> +      - const: csid1
> +      - const: csid2
> +      - const: csid_lite0
> +      - const: csid_lite1
> +      - const: csitpg0
> +      - const: csitpg1
> +      - const: csitpg2

Rename it to 'tpgX'.

> +      - const: vfe0
> +      - const: vfe1
> +      - const: vfe2
> +      - const: vfe_lite0
> +      - const: vfe_lite1
> +
> +  clocks:
> +    maxItems: 23
> +
> +  clock-names:
> +    items:
> +      - const: camnoc_nrt_axi
> +      - const: camnoc_rt_axi
> +      - const: cpas_ahb
> +      - const: cpas_fast_ahb
> +      - const: cpas_vfe0
> +      - const: cpas_vfe1
> +      - const: cpas_vfe2
> +      - const: cpas_vfe_lite
> +      - const: csid
> +      - const: csid_csiphy_rx

The common name is 'csiphy_rx', the clock supplies CSIPHYs and non-CSID TPGs.

> +      - const: gcc_axi_hf
> +      - const: gcc_axi_sf

Unused clock.

> +      - const: vfe0
> +      - const: vfe0_fast_ahb
> +      - const: vfe1
> +      - const: vfe1_fast_ahb
> +      - const: vfe2
> +      - const: vfe2_fast_ahb
> +      - const: vfe_lite
> +      - const: vfe_lite_ahb
> +      - const: vfe_lite_cphy_rx
> +      - const: vfe_lite_csid
> +      - const: qdss_debug_xo
> +
> +  interrupts:
> +    maxItems: 10
> +
> +  interrupt-names:
> +    items:
> +      - const: csid0
> +      - const: csid1
> +      - const: csid2
> +      - const: csid_lite0
> +      - const: csid_lite1
> +      - const: vfe0
> +      - const: vfe1
> +      - const: vfe2
> +      - const: vfe_lite0
> +      - const: vfe_lite1
> +
> +  interconnects:
> +    maxItems: 2
> +
> +  interconnect-names:
> +    items:
> +      - const: ahb
> +      - const: hf_mnoc
> +
> +  iommus:
> +    items:
> +      - description: S1 HLOS IFE non-protected stream
> +
> +  power-domains:
> +    items:
> +      - description: IFE0 GDSC - Global Distributed Switch Controller for IFE0.
> +      - description: IFE1 GDSC - Global Distributed Switch Controller for IFE1.
> +      - description: IFE2 GDSC - Global Distributed Switch Controller for IFE2.
> +      - description: Titan Top GDSC - Titan ISP Block, Global Distributed Switch Controller.
> +
> +  power-domain-names:
> +    items:
> +      - const: ife0
> +      - const: ife1
> +      - const: ife2
> +      - const: top
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    description:
> +      CSI input ports. Each port receives the CSI data
> +      decoded by the matching CSIPHY.
> +
> +    patternProperties:
> +      "^port@[0-5]$":
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description:
> +          Input port for receiving CSI data from CSIPHY 0-5.
> +
> +        properties:
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +
> +              bus-type:
> +                enum:
> +                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
> +                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
> +
> +            required:
> +              - data-lanes
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - interrupt-names
> +  - interconnects
> +  - interconnect-names
> +  - iommus
> +  - power-domains
> +  - power-domain-names
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,kaanapali-gcc.h>
> +    #include <dt-bindings/clock/qcom,kaanapali-camcc.h>
> +    #include <dt-bindings/interconnect/qcom,icc.h>
> +    #include <dt-bindings/interconnect/qcom,kaanapali-rpmh.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/power/qcom,rpmhpd.h>
> +
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        isp@900b000 {
> +            compatible = "qcom,kaanapali-camss";
> +
> +            reg = <0x0 0x0900b000 0x0 0x1000>,
> +                  <0x0 0x09253000 0x0 0x5e80>,
> +                  <0x0 0x09263000 0x0 0x5e80>,
> +                  <0x0 0x09273000 0x0 0x5e80>,
> +                  <0x0 0x092d3000 0x0 0x3880>,
> +                  <0x0 0x092e7000 0x0 0x3880>,
> +                  <0x0 0x093fd000 0x0 0x400>,
> +                  <0x0 0x093fe000 0x0 0x400>,
> +                  <0x0 0x093ff000 0x0 0x400>,
> +                  <0x0 0x09151000 0x0 0x20000>,
> +                  <0x0 0x09171000 0x0 0x20000>,
> +                  <0x0 0x09191000 0x0 0x20000>,
> +                  <0x0 0x092dc000 0x0 0x1300>,
> +                  <0x0 0x092f0000 0x0 0x1300>;
> +
> +            reg-names = "top",
> +                        "csid0",
> +                        "csid1",
> +                        "csid2",
> +                        "csid_lite0",
> +                        "csid_lite1",
> +                        "csitpg0",
> +                        "csitpg1",
> +                        "csitpg2",
> +                        "vfe0",
> +                        "vfe1",
> +                        "vfe2",
> +                        "vfe_lite0",
> +                        "vfe_lite1";
> +
> +            clocks = <&camcc CAM_CC_CAMNOC_NRT_AXI_CLK>,
> +                     <&camcc CAM_CC_CAMNOC_RT_AXI_CLK>,
> +                     <&camcc CAM_CC_CAM_TOP_AHB_CLK>,
> +                     <&camcc CAM_CC_CAM_TOP_FAST_AHB_CLK>,
> +                     <&camcc CAM_CC_CAMNOC_RT_TFE_0_MAIN_CLK>,
> +                     <&camcc CAM_CC_CAMNOC_RT_TFE_1_MAIN_CLK>,
> +                     <&camcc CAM_CC_CAMNOC_RT_TFE_2_MAIN_CLK>,
> +                     <&camcc CAM_CC_CAMNOC_RT_IFE_LITE_CLK>,
> +                     <&camcc CAM_CC_CSID_CLK>,
> +                     <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>,
> +                     <&gcc GCC_CAMERA_HF_AXI_CLK>,
> +                     <&gcc GCC_CAMERA_SF_AXI_CLK>,
> +                     <&camcc CAM_CC_TFE_0_MAIN_CLK>,
> +                     <&camcc CAM_CC_TFE_0_MAIN_FAST_AHB_CLK>,
> +                     <&camcc CAM_CC_TFE_1_MAIN_CLK>,
> +                     <&camcc CAM_CC_TFE_1_MAIN_FAST_AHB_CLK>,
> +                     <&camcc CAM_CC_TFE_2_MAIN_CLK>,
> +                     <&camcc CAM_CC_TFE_2_MAIN_FAST_AHB_CLK>,
> +                     <&camcc CAM_CC_IFE_LITE_CLK>,
> +                     <&camcc CAM_CC_IFE_LITE_AHB_CLK>,
> +                     <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
> +                     <&camcc CAM_CC_IFE_LITE_CSID_CLK>,
> +                     <&camcc CAM_CC_QDSS_DEBUG_XO_CLK>;
> +
> +            clock-names = "camnoc_nrt_axi",
> +                          "camnoc_rt_axi",
> +                          "cpas_ahb",
> +                          "cpas_fast_ahb",
> +                          "cpas_vfe0",
> +                          "cpas_vfe1",
> +                          "cpas_vfe2",
> +                          "cpas_vfe_lite",
> +                          "csid",
> +                          "csid_csiphy_rx",
> +                          "gcc_axi_hf",
> +                          "gcc_axi_sf",
> +                          "vfe0",
> +                          "vfe0_fast_ahb",
> +                          "vfe1",
> +                          "vfe1_fast_ahb",
> +                          "vfe2",
> +                          "vfe2_fast_ahb",
> +                          "vfe_lite",
> +                          "vfe_lite_ahb",
> +                          "vfe_lite_cphy_rx",
> +                          "vfe_lite_csid",
> +                          "qdss_debug_xo";
> +
> +            interrupts = <GIC_SPI 601 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 603 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 431 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 605 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 376 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 433 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 436 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 457 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 606 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 377 IRQ_TYPE_EDGE_RISING>;
> +
> +            interrupt-names = "csid0",
> +                              "csid1",
> +                              "csid2",
> +                              "csid_lite0",
> +                              "csid_lite1",
> +                              "vfe0",
> +                              "vfe1",
> +                              "vfe2",
> +                              "vfe_lite0",
> +                              "vfe_lite1";
> +
> +            interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +                             &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
> +                            <&mmss_noc MASTER_CAMNOC_HF QCOM_ICC_TAG_ALWAYS
> +                             &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +            interconnect-names = "ahb",
> +                                 "hf_mnoc";
> +
> +            iommus = <&apps_smmu 0x1c00 0x00>;
> +
> +            power-domains = <&camcc CAM_CC_TFE_0_GDSC>,
> +                            <&camcc CAM_CC_TFE_1_GDSC>,
> +                            <&camcc CAM_CC_TFE_2_GDSC>,
> +                            <&camcc CAM_CC_TITAN_TOP_GDSC>;
> +            power-domain-names = "ife0",
> +                                 "ife1",
> +                                 "ife2",
> +                                 "top";
> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                port@0 {
> +                    reg = <0>;
> +                    camss_csiphy0_ep: endpoint {
> +                        data-lanes = <1 2 3 4>;
> +                        remote-endpoint = <&csiphy0_out>;
> +                    };
> +                };
> +            };
> +        };
> +    };
> 

In general it looks good.

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
