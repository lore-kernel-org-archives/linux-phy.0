Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2330D606A690
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 14:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iO+8rRVH;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=gDT5FnWp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zL8bJ50cBibpfZuKd0KoRRlv9C8qmO/P+7icH6UBbEg=; b=iO+8rRVHEXO1JzKBMvx5/PbjuF
	dBRTBfXsgRaUXWzpscoRm3dxN/2AWIdrnaw7J/KIvZcSrPnWmjk3sfnJqutA7P4S0i8WzP5+p4fMl
	qaBcb0HV1hYfQWqDoP/7iDBJIwsqaD98p1OZKhi+ju8zrljoZeYSqPPBRY8BiHeAkaZ6ObjRv/13u
	zMygXiTk1w7M0yyPlubVh02Y4Zqe1FdnbvDEfPn6DM8gvVJOiFdrRmU9IXLi25KC4ASsgpkoCfFMv
	E/vEqNfpWUoEESsjxSX5qEwJegp3VqL/96+LyomwUqYSsXjCZdsw21gSmmqgiPBiUz1TDyxnvdTo+
	rXym0R4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWE2Y-0000000AAhB-3W5R;
	Wed, 25 Nov 2026 14:32:07 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWE2Q-0000000AAfR-47zE
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 14:32:05 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-3ad3ef75223so3956671fa.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 06:31:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1795617117; x=1796221917; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=zKfRowNSGjVA87CJ4mW494zsgUl/v5ojHBz8f5BNf/0=;
        b=gDT5FnWpNcBIISrFrndX1IY0AOS+YycuThD6Y0kqm+AOckuEIpIL2daLEQ1/L922LJ
         NZeFwFCDVrIY20DfaBNAOyf/S88Y/qhF35nGe8VhX/1nH8FWK3y+1h+OvASwTJxrdfMh
         Kx5rLIo3rcloZ5PtaVqbnRDhvOb98atwx/UkcXmdFvuGjwN92woWu5p73FdNgYvrvNn1
         NhmO+0JUXwQPzyFuI+zBiViFzbTvdP3F9NVyrrf8mTq0CKjlf877Yc4H/LJ/u3sW9g5a
         bF7JWWkjad4zXMWOr2Ge2BTaYmhY1XPrZCGuyCfZQdasJT6Dkkh8oTK82ZPWGBMdsrl/
         pz3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795617117; x=1796221917;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zKfRowNSGjVA87CJ4mW494zsgUl/v5ojHBz8f5BNf/0=;
        b=wojY8bdNseOOtvlmcHNdnSOmTil6do4EEOaWXI4+7x69g/6RjloIxB357aB1rsBWbB
         iR+L1HpHgyvSD1ootnFVylm0qKZ4K53ZjZdU9PCpJxCOwN57NmML7c86vMUQOoXk7HKs
         Aci6NqELrj/mMtuJBAAj0KitzCCx9Fmv42dJTJVFMOrj9NI4Xb2DmVh5o2tYzzVcsWJ4
         qFrFk7CApXy5g2I9buSUGksEBFL5Uasypn74/AJvAIoMQxjFWH4X6p5Wa7l33nBqFYsR
         1KuySky8g9XLMGNx3iVabrDiHxYVbZ2scUBtzeDPLPbBNhiLYqmd1FmNIxrOH/nylB51
         eWyw==
X-Forwarded-Encrypted: i=1; AL+hErHfzQakXcj4VfITnYHXx/gbkuHEHF4jhTSsD/kihhypRfKwthzpdDZYSWXrGdMzrXMuLNRIE+1BSeI=@lists.infradead.org
X-Gm-Message-State: APuU4Z9OLc/zRiiTJiG+/0Yv6aZOgrilIHoEYac6VJQ022hjG/1W9YPt
	t1i3d/IJIAwQJfUaDGijdJseEIPOJhAzoVHoavZdA9GEAmOdrFMabCOlsnCSsq7YN3w=
X-Gm-Gg: AZFdTZctB4Kf4HNiva6JPF26DPohJHrGThMVUMfnlrcyJAT581ei5LY9V7j4vUolXpG
	gpyFheihgDIyKfYOQzvTM0OsKMNPiPIjurzNTkSYWBss5JnLLx8fEIYB3TjnW5524fKoaRn7mqm
	0l5n2sUiL46kBEhuV8q2Xsee0JUggf2hBxlBHms+zM7DeUwA65j8CQ/k1coslmv+NXXEw2Kj6ZT
	oYVuDcJg8K6jev6ZQOlIyij0FKgR6+gJPSkpliB4Cc4D/beXnepuBBzigwSiRZuOkxhRw4T2qq8
	dr2Webqm/OwgL1TtAztJQIHaxpHhd1RnHdqkI6rzKBZdWYZnGQj8QgBJNAo/b46HnQJYzEm4C2/
	04QqbqAsnfS2lF+h+CQy/2vRXadgXuR5JFrW4DtJ0wNQ70Edkbq8f65qGx535NG87HSacK9uxbn
	juadGXtoLhcx3Cw/INBB8jQROYHQEnUoy2aU8RzlFNWSZs+sWo+HwvsSt7nnupcz9WhEscPB0aj
	0pagSibTXyY4Eg87qXhiuXnQVQecteOWTlUk7pfKS30kIaE4JU1CD7YOJX44Tq3CY3an/21qc6j
	XA+N9UjL0JMAid4RogIntEgLvwYC7Y5/+d35SstMN1f34ps0M5XT2lfaN00dHjj5n8SnYmo+3Q/
	eWmORrac=
X-Received: by 2002:a2e:a28e:0:b0:3ac:dec0:158e with SMTP id 38308e7fff4ca-3ae7f9f3418mr40722721fa.2.1795617116747;
        Wed, 25 Nov 2026 06:31:56 -0800 (PST)
Received: from [192.168.1.101] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3ae8053568esm50069981fa.25.2026.11.25.06.31.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2026 06:31:56 -0800 (PST)
Message-ID: <bac87368-6a84-4c75-ad25-b2fdea432b72@linaro.org>
Date: Wed, 25 Nov 2026 16:31:55 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] dt-bindings: media: qcom,glymur-camss: Add Glymur
 CAMSS
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Suresh Vankadara <svankada@qti.qualcomm.com>,
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260925-glymur_camss-v4-0-d7c2983d6d7b@oss.qualcomm.com>
 <20260925-glymur_camss-v4-2-d7c2983d6d7b@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260925-glymur_camss-v4-2-d7c2983d6d7b@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_063159_116814_D3F6D692 
X-CRM114-Status: GOOD (  16.73  )
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

On 9/25/26 08:48, Nihal Kumar Gupta wrote:
> Glymur uses only the new PHY API via standalone phy@ child nodes,
> so per-CSIPHY clocks, interrupts and supplies are absent here.
> 
> X1E80100 has four CSIPHY instances while Glymur has three
> (CSIPHY0, CSIPHY1, CSIPHY4).
> 
> Co-developed-by: Vikram Sharma <vikram.sharma@oss.qualcomm.com>
> Signed-off-by: Vikram Sharma <vikram.sharma@oss.qualcomm.com>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> ---
>   .../bindings/media/qcom,glymur-camss.yaml          | 300 +++++++++++++++++++++
>   1 file changed, 300 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,glymur-camss.yaml b/Documentation/devicetree/bindings/media/qcom,glymur-camss.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..a0b77edc212319fad69113f3d55ca24f184d4b23
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/qcom,glymur-camss.yaml
> @@ -0,0 +1,300 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/qcom,glymur-camss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Glymur Camera Subsystem (CAMSS)
> +
> +maintainers:
> +  - Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> +
> +description:
> +  The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
> +
> +properties:
> +  compatible:
> +    const: qcom,glymur-camss
> +
> +  reg:
> +    maxItems: 13
> +
> +  reg-names:
> +    items:
> +      - const: csid_wrapper
> +      - const: csid0
> +      - const: csid1
> +      - const: csid2
> +      - const: csid_lite0
> +      - const: csid_lite1
> +      - const: csitpg0
> +      - const: csitpg1
> +      - const: csitpg2

I believe CAMSS on SM8350 and before has TPG as a CSID IP function, but
since then TPGs are seperate I/O blocks. It might be more appropriate
to give "tpgX" names (like it's done for sa8775p and qcs8300), and I do
understand that "csitpgX" were selected just to get a compatibility with
the reused X1E TPG names, which might be not a good enough reason...

> +      - const: vfe0
> +      - const: vfe1
> +      - const: vfe_lite0
> +      - const: vfe_lite1
> +
> +  clocks:
> +    maxItems: 20
> +
> +  clock-names:
> +    items:
> +      - const: camnoc_nrt_axi
> +      - const: camnoc_rt_axi
> +      - const: core_ahb
> +      - const: cpas_ahb
> +      - const: cpas_fast_ahb
> +      - const: cpas_vfe0
> +      - const: cpas_vfe1
> +      - const: cpas_vfe_lite
> +      - const: csid
> +      - const: csid_csiphy_rx
> +      - const: gcc_axi_hf
> +      - const: gcc_axi_sf
> +      - const: vfe0
> +      - const: vfe0_fast_ahb
> +      - const: vfe1
> +      - const: vfe1_fast_ahb
> +      - const: vfe_lite
> +      - const: vfe_lite_ahb
> +      - const: vfe_lite_cphy_rx
> +      - const: vfe_lite_csid
> +
> +  interrupts:
> +    maxItems: 9
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
> +      - const: vfe_lite0
> +      - const: vfe_lite1
> +
> +  interconnects:
> +    maxItems: 4
> +
> +  interconnect-names:
> +    items:
> +      - const: ahb
> +      - const: hf_mnoc
> +      - const: sf_mnoc
> +      - const: sf_icp_mnoc
> +
> +  iommus:
> +    items:
> +      - description: S1 HLOS IFE and IFE_LITE non-protected
> +
> +  power-domains:
> +    items:
> +      - description: IFE0 GDSC - Image Front End, Global Distributed Switch Controller.
> +      - description: IFE1 GDSC - Image Front End, Global Distributed Switch Controller.
> +      - description: Titan Top GDSC - Titan ISP Block, Global Distributed Switch Controller.
> +
> +  power-domain-names:
> +    items:
> +      - const: ife0
> +      - const: ife1
> +      - const: top
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    description:
> +      CSI input ports.
> +
> +    patternProperties:
> +      "^port@[0-3]$":

Reading the commit message, I develop a feeling that it might make sense
to change the regexp to [014] or something like that.

> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +
> +        description:
> +          Input port for receiving CSI data.
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
> +    #include <dt-bindings/clock/qcom,glymur-gcc.h>
> +    #include <dt-bindings/clock/qcom,glymur-camcc.h>
> +    #include <dt-bindings/interconnect/qcom,glymur-rpmh.h>
> +    #include <dt-bindings/interconnect/qcom,icc.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/power/qcom-rpmpd.h>
> +
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        camss: isp@acb6000 {
> +            compatible = "qcom,glymur-camss";
> +
> +            reg = <0x0 0x0acb6000 0x0 0x1000>,
> +                  <0x0 0x0acb7000 0x0 0x2000>,
> +                  <0x0 0x0acb9000 0x0 0x2000>,
> +                  <0x0 0x0acbb000 0x0 0x2000>,
> +                  <0x0 0x0acc6000 0x0 0x1000>,
> +                  <0x0 0x0acca000 0x0 0x1000>,
> +                  <0x0 0x0acf6000 0x0 0x1000>,
> +                  <0x0 0x0acf7000 0x0 0x1000>,
> +                  <0x0 0x0acf8000 0x0 0x1000>,
> +                  <0x0 0x0ac62000 0x0 0xf000>,
> +                  <0x0 0x0ac71000 0x0 0xf000>,
> +                  <0x0 0x0acc7000 0x0 0x2000>,
> +                  <0x0 0x0accb000 0x0 0x2000>;
> +            reg-names = "csid_wrapper",
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
> +                        "vfe_lite0",
> +                        "vfe_lite1";
> +
> +            clocks = <&camcc CAM_CC_CAMNOC_AXI_NRT_CLK>,
> +                     <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
> +                     <&camcc CAM_CC_CORE_AHB_CLK>,
> +                     <&camcc CAM_CC_CPAS_AHB_CLK>,
> +                     <&camcc CAM_CC_CPAS_FAST_AHB_CLK>,
> +                     <&camcc CAM_CC_CPAS_IFE_0_CLK>,
> +                     <&camcc CAM_CC_CPAS_IFE_1_CLK>,
> +                     <&camcc CAM_CC_CPAS_IFE_LITE_CLK>,
> +                     <&camcc CAM_CC_CSID_CLK>,
> +                     <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>,
> +                     <&gcc GCC_CAMERA_HF_AXI_CLK>,
> +                     <&gcc GCC_CAMERA_SF_AXI_CLK>,
> +                     <&camcc CAM_CC_IFE_0_CLK>,
> +                     <&camcc CAM_CC_IFE_0_FAST_AHB_CLK>,
> +                     <&camcc CAM_CC_IFE_1_CLK>,
> +                     <&camcc CAM_CC_IFE_1_FAST_AHB_CLK>,
> +                     <&camcc CAM_CC_IFE_LITE_CLK>,
> +                     <&camcc CAM_CC_IFE_LITE_AHB_CLK>,
> +                     <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
> +                     <&camcc CAM_CC_IFE_LITE_CSID_CLK>;
> +            clock-names = "camnoc_nrt_axi",
> +                          "camnoc_rt_axi",
> +                          "core_ahb",
> +                          "cpas_ahb",
> +                          "cpas_fast_ahb",
> +                          "cpas_vfe0",
> +                          "cpas_vfe1",
> +                          "cpas_vfe_lite",
> +                          "csid",
> +                          "csid_csiphy_rx",
> +                          "gcc_axi_hf",
> +                          "gcc_axi_sf",
> +                          "vfe0",
> +                          "vfe0_fast_ahb",
> +                          "vfe1",
> +                          "vfe1_fast_ahb",
> +                          "vfe_lite",
> +                          "vfe_lite_ahb",
> +                          "vfe_lite_cphy_rx",
> +                          "vfe_lite_csid";
> +
> +            interrupts = <GIC_SPI 601 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 603 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 431 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 457 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 436 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 271 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 458 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 860 IRQ_TYPE_EDGE_RISING>;
> +            interrupt-names = "csid0",
> +                              "csid1",
> +                              "csid2",
> +                              "csid_lite0",
> +                              "csid_lite1",
> +                              "vfe0",
> +                              "vfe1",
> +                              "vfe_lite0",
> +                              "vfe_lite1";
> +
> +            interconnects = <&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +                             &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
> +                            <&mmss_noc MASTER_CAMNOC_HF QCOM_ICC_TAG_ALWAYS
> +                             &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +                            <&mmss_noc MASTER_CAMNOC_SF QCOM_ICC_TAG_ALWAYS
> +                             &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +                            <&mmss_noc MASTER_CAMNOC_ICP QCOM_ICC_TAG_ALWAYS
> +                             &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +            interconnect-names = "ahb",
> +                                 "hf_mnoc",
> +                                 "sf_mnoc",
> +                                 "sf_icp_mnoc";
> +
> +            iommus = <&apps_smmu 0x800 0x20>;
> +
> +            power-domains = <&camcc CAM_CC_IFE_0_GDSC>,
> +                            <&camcc CAM_CC_IFE_1_GDSC>,
> +                            <&camcc CAM_CC_TITAN_TOP_GDSC>;
> +            power-domain-names = "ife0",
> +                                 "ife1",
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
> +
> +                port@1 {
> +                    reg = <1>;
> +                    camss_csiphy1_ep: endpoint {
> +                        data-lanes = <1 2 3 4>;
> +                        remote-endpoint = <&csiphy1_out>;
> +                    };
> +                };
> +
> +                port@3 {
> +                    reg = <3>;
> +                    camss_csiphy4_ep: endpoint {

Here is a mismatch between port number and link name, please
double check, if it is intended.

> +                        data-lanes = <1 2 3 4>;
> +                        remote-endpoint = <&csiphy4_out>;
> +                    };
> +                };
> +            };
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
