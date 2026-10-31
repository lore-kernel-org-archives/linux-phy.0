Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB0B3606A335
	for <linux-phy@archiver.kernel.org>; Sat, 31 Oct 2026 11:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=mOOvkXro;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=B8NBXzMG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5FzWLgwO+bBzWhbXSs+el3I77+kEeHwHNpmRF0Mm8dg=; b=mOOvkXroY5mTG+iV6cH+Tz0Ebo
	cfRCWvgeaGcmZDIvYbYacBwIwq30JosQPQjteuJw/HpSygh/t7i+cJuncCpDL/GmbzqingAZi5QJB
	yp8Oxqy5ZRQwocNY3aZ07ucYLwjnxwsLevVjcLo5acgNMNxQS+BLTTTYoczqbNwn1MzcAjlBMzrkg
	QyEA/Aia2QoffVwsbrnMiJdhdkoNiuB6bBnN44hcllVqTs9l6x5MSet60y1GDwuFE2mvAKS2HknbG
	DUaBbaLeHFiCk4VvAr2GN39GOqqbKl4ORCVZhV/fdXXfTi/saG7yBog+PlQ7Kzs6jxd9N2k7UVJ/q
	peqyWEbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN7Y3-0000000DGww-2S6w;
	Sat, 31 Oct 2026 11:46:59 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN7Y1-0000000DGw7-0g8r
	for linux-phy@lists.infradead.org;
	Sat, 31 Oct 2026 11:46:58 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-3ab43d1dbceso2759781fa.1
        for <linux-phy@lists.infradead.org>; Sat, 31 Oct 2026 04:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1793447215; x=1794052015; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=iwY05ePos+qS824cLnj8Amy3FhuXuwmHwQQSArwlNIk=;
        b=B8NBXzMGDRzVAQ85qhh06Fd03VT1bcj+1QTkqEKtd8kOm6dAefYrJsTAGvTtdebx1d
         0kVmsDZxMf9wBMIgr4jnSL45WDJvSRC2AI+mOxMYV1EJg6YEQejKeuUTKRu8g7gGhH5m
         LMJsX40dmdTRWgGs0bjt86FYvhoQ7EmHdnPwrmPpQ9gEtWGyfahAVREU/NhVam6RvM2d
         pO+/KLPolkA8tV7R2YyJotVnXR5VH4iRmwH73Z+9lRf754ZK1XeF/3mNMo/rWxZhZz6e
         hC7r6pB+7ogpS57j/WXJ+Sypd2ck8oBONpqLTlRnXBJnMcTidvxS/RwCF2cYgC5b0Z2v
         IS9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793447215; x=1794052015;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=iwY05ePos+qS824cLnj8Amy3FhuXuwmHwQQSArwlNIk=;
        b=K0CUzjf/k6FrikYu0f3sdB0zZ00vaubnGvwVlGYow/kkzPFGW1juymtYq6+6zlqnKt
         RuWujG4whazU9gJ7X1S4E4ywUC21Z/Rgn8Ra/u4b5VLqvXr+DYOVMRojHlVj991OGF9k
         QjCRk/SNf7iWStGy6O9xAS8X8viSGJ6aK89tyJFnbxdSRQaZy5v9uzHyzMTfA8J+vRAn
         1JL4bAwGkBGnTEJFPZtP5vgeSLZgbOaUnnKqXsl7xY/vPHgjF0/r/c/3rPeb9TEqa/OC
         /mG4SWPVA+CMW33puz5GgrVUedIGr0LPApMcfD4FdqnYjPeJo4l9l8e9P/V7O3OYIzlL
         QJ/Q==
X-Gm-Message-State: AFq9FYKShH1UBwsCwVD99Mid58oPpssl/r9TMx5JNX25ulmQnhcveify
	eGuQyAegbmMdjFDFn/0dZQX17EJjM+S8HT8N6UYzCWzYrOi68Ws7ZihjkTgE049gfQ8=
X-Gm-Gg: AYBFou3TXIU7naDHEAS1K7+LYMZMrqQFd5IQg9dBHZuRaHb9zKAaH0RMN/FN6j7ZccZ
	5WGZVqn5J0Aikow0pGyJokIPURPr87GXHaq//dJj2GoCGEpz5wOc5Ba5TN3185TWaBrHXvcy4bh
	uo2K67Qx0opBThdRB3Rt86DU6NEvrQ7nKrhnd7cca+YkFxr7M+cQMDLTkJnfHM6f+8m6jpQrMsX
	4zzfpfxjHTPsrRvIQcMqmeVE8OeBjd0E7hfLnpmhNvVbfd59M5+/RXZi2O0/BOtKEpwYtNCf3fh
	UX1JtYPcwR+DEawIjo/tFgJ7i+GYFOvtl3IhOb+omPdGAcdF0IqaG4QSn9vlKTy/NTxbnurd2lO
	d1xlBg7+RY7LLo//nzFeXwvHAKEQc+bxK8IVeEZ5+2Q3+BWKRVyEmyhLnlRoMxzXIqWOALyRM9Y
	QGHNJD9kSJdcXjx2aYhh9SKMhbLjYx2TR3nPVy1aKPYD0CWfTF0X6aZ9z2phuwO5lJYwFes7RGY
	e+NH6oqIbD5jvxtk3I/wGJr0XnJWmLKlMgVBDEbSzFbaxJIPA5vfvBKnuTchZrU9Ia1rXCWr7zW
	Bp/No9VnapB5t4Ofs7EG0JHSLylauauiFpj5XDLmuT62REe5joTri5kePzrPwgqTAiz6wTSyj4m
	GukUjUlM=
X-Received: by 2002:a05:6512:6d3:b0:5bf:b8f1:8109 with SMTP id 2adb3069b0e04-5bfd95571d2mr1997148e87.4.1793447214848;
        Sat, 31 Oct 2026 04:46:54 -0700 (PDT)
Received: from [192.168.1.101] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5bfe0747766sm515667e87.69.2026.10.31.04.46.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Oct 2026 04:46:54 -0700 (PDT)
Message-ID: <55aef663-254a-4d36-b9ec-3ce7f4c4c74a@linaro.org>
Date: Sat, 31 Oct 2026 13:46:53 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v23 12/15] arm64: dts: qcom: kaanapali: Add CAMSS and
 CSIPHY block definitions
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
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-12-95f250b18612@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20261028-kaanapali-camss-v23-12-95f250b18612@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261031_044657_331074_68763FA3 
X-CRM114-Status: GOOD (  12.64  )
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
> Describe the CAMSS and CSIPHY blocks on Kaanapali so that camera pipelines
> can be enabled by board device trees.
> 
> The camera subsystem contains:
> - 6 x CSIPHY (CSI Physical Layer)
> - 3 x TPG (Test Pattern Generator)
> - 3 x CSID (CSI Decoder)
> - 2 x CSID Lite
> - 3 x VFE (Video Front End), 5 RDI per VFE
> - 2 x VFE Lite, 4 RDI per VFE Lite
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/kaanapali.dtsi | 401 ++++++++++++++++++++++++++++++++
>   1 file changed, 401 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
> index e48a179d0722..0c8fd7da55b7 100644
> --- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
> +++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
> @@ -20,6 +20,7 @@
>   #include <dt-bindings/interconnect/qcom,kaanapali-rpmh.h>
>   #include <dt-bindings/interrupt-controller/arm-gic.h>
>   #include <dt-bindings/mailbox/qcom-ipcc.h>
> +#include <dt-bindings/phy/phy.h>
>   #include <dt-bindings/phy/phy-qcom-qmp.h>
>   #include <dt-bindings/power/qcom-rpmpd.h>
>   #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> @@ -3597,6 +3598,384 @@ usb_dp_qmpphy_dp_in: endpoint {
>   			};
>   		};
>   
> +		camss: isp@900b000 {
> +			compatible = "qcom,kaanapali-camss";
> +
> +			reg = <0x0 0x0900b000 0x0 0x1000>,
> +			      <0x0 0x09253000 0x0 0x5e80>,
> +			      <0x0 0x09263000 0x0 0x5e80>,
> +			      <0x0 0x09273000 0x0 0x5e80>,
> +			      <0x0 0x092d3000 0x0 0x3880>,
> +			      <0x0 0x092e7000 0x0 0x3880>,
> +			      <0x0 0x093fd000 0x0 0x400>,
> +			      <0x0 0x093fe000 0x0 0x400>,
> +			      <0x0 0x093ff000 0x0 0x400>,
> +			      <0x0 0x09151000 0x0 0x20000>,
> +			      <0x0 0x09171000 0x0 0x20000>,
> +			      <0x0 0x09191000 0x0 0x20000>,
> +			      <0x0 0x092dc000 0x0 0x1300>,
> +			      <0x0 0x092f0000 0x0 0x1300>;
> +			reg-names = "top",
> +				    "csid0",
> +				    "csid1",
> +				    "csid2",
> +				    "csid_lite0",
> +				    "csid_lite1",
> +				    "csitpg0",
> +				    "csitpg1",
> +				    "csitpg2",

These I/O regions should be named "tpgX".

> +				    "vfe0",
> +				    "vfe1",
> +				    "vfe2",
> +				    "vfe_lite0",
> +				    "vfe_lite1";
> +
> +			clocks = <&camcc CAM_CC_CAMNOC_NRT_AXI_CLK>,
> +				 <&camcc CAM_CC_CAMNOC_RT_AXI_CLK>,
> +				 <&camcc CAM_CC_CAM_TOP_AHB_CLK>,
> +				 <&camcc CAM_CC_CAM_TOP_FAST_AHB_CLK>,
> +				 <&camcc CAM_CC_CAMNOC_RT_TFE_0_MAIN_CLK>,
> +				 <&camcc CAM_CC_CAMNOC_RT_TFE_1_MAIN_CLK>,
> +				 <&camcc CAM_CC_CAMNOC_RT_TFE_2_MAIN_CLK>,
> +				 <&camcc CAM_CC_CAMNOC_RT_IFE_LITE_CLK>,
> +				 <&camcc CAM_CC_CSID_CLK>,
> +				 <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>,
> +				 <&gcc GCC_CAMERA_HF_AXI_CLK>,
> +				 <&gcc GCC_CAMERA_SF_AXI_CLK>,
> +				 <&camcc CAM_CC_TFE_0_MAIN_CLK>,
> +				 <&camcc CAM_CC_TFE_0_MAIN_FAST_AHB_CLK>,
> +				 <&camcc CAM_CC_TFE_1_MAIN_CLK>,
> +				 <&camcc CAM_CC_TFE_1_MAIN_FAST_AHB_CLK>,
> +				 <&camcc CAM_CC_TFE_2_MAIN_CLK>,
> +				 <&camcc CAM_CC_TFE_2_MAIN_FAST_AHB_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_AHB_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_CSID_CLK>,
> +				 <&camcc CAM_CC_QDSS_DEBUG_XO_CLK>;
> +			clock-names = "camnoc_nrt_axi",
> +				      "camnoc_rt_axi",
> +				      "cpas_ahb",
> +				      "cpas_fast_ahb",
> +				      "cpas_vfe0",
> +				      "cpas_vfe1",
> +				      "cpas_vfe2",
> +				      "cpas_vfe_lite",
> +				      "csid",
> +				      "csid_csiphy_rx",

This clock should be named "csiphy_rx" like on sa8775p and a number
of other platforms.

> +				      "gcc_axi_hf",
> +				      "gcc_axi_sf",
> +				      "vfe0",
> +				      "vfe0_fast_ahb",
> +				      "vfe1",
> +				      "vfe1_fast_ahb",
> +				      "vfe2",
> +				      "vfe2_fast_ahb",
> +				      "vfe_lite",
> +				      "vfe_lite_ahb",
> +				      "vfe_lite_cphy_rx",
> +				      "vfe_lite_csid",
> +				      "qdss_debug_xo";
> +
> +			interrupts = <GIC_SPI 601 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 603 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 431 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 605 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 376 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 433 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 436 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 457 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 606 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 377 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "csid0",
> +					  "csid1",
> +					  "csid2",
> +					  "csid_lite0",
> +					  "csid_lite1",
> +					  "vfe0",
> +					  "vfe1",
> +					  "vfe2",
> +					  "vfe_lite0",
> +					  "vfe_lite1";
> +
> +			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
> +					<&mmss_noc MASTER_CAMNOC_HF QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "ahb",
> +					     "hf_mnoc";
> +
> +			iommus = <&apps_smmu 0x1c00 0x00>;
> +
> +			power-domains = <&camcc CAM_CC_TFE_0_GDSC>,
> +					<&camcc CAM_CC_TFE_1_GDSC>,
> +					<&camcc CAM_CC_TFE_2_GDSC>,
> +					<&camcc CAM_CC_TITAN_TOP_GDSC>;
> +			power-domain-names = "ife0",
> +					     "ife1",
> +					     "ife2",
> +					     "top";
> +
> +			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				camss_csiphy0_in_port: port@0 {
> +					reg = <0>;
> +				};
> +
> +				camss_csiphy1_in_port: port@1 {
> +					reg = <1>;
> +				};
> +
> +				camss_csiphy2_in_port: port@2 {
> +					reg = <2>;
> +				};
> +
> +				camss_csiphy3_in_port: port@3 {
> +					reg = <3>;
> +				};
> +
> +				camss_csiphy4_in_port: port@4 {
> +					reg = <4>;
> +				};
> +
> +				camss_csiphy5_in_port: port@5 {
> +					reg = <5>;
> +				};
> +			};
> +		};
> +
> +		csiphy0: phy@9523000 {
> +			compatible = "qcom,kaanapali-csi2-phy";
> +			reg = <0x0 0x09523000 0x0 0x2000>;
> +
> +			clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
> +				 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CORE_AHB_CLK>;
> +			clock-names = "core",
> +				      "timer",
> +				      "ahb";
> +
> +			interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
> +
> +			operating-points-v2 = <&csiphy_mxc_opp_table>;
> +
> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
> +					<&rpmhpd RPMHPD_MMCX>,
> +					<&rpmhpd RPMHPD_MXC>;
> +			power-domain-names = "top",
> +					     "mmcx",
> +					     "mx";
> +
> +			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				csiphy0_in_port: port@0 {
> +					reg = <0>;
> +				};
> +
> +				csiphy0_out_port: port@1 {
> +					reg = <1>;
> +				};
> +			};
> +		};
> +
> +		csiphy1: phy@9525000 {
> +			compatible = "qcom,kaanapali-csi2-phy";
> +			reg = <0x0 0x09525000 0x0 0x2000>;
> +
> +			clocks = <&camcc CAM_CC_CSIPHY1_CLK>,
> +				 <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CORE_AHB_CLK>;
> +			clock-names = "core",
> +				      "timer",
> +				      "ahb";
> +
> +			interrupts = <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>;
> +
> +			operating-points-v2 = <&csiphy_mxc_opp_table>;
> +
> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
> +					<&rpmhpd RPMHPD_MMCX>,
> +					<&rpmhpd RPMHPD_MXC>;
> +			power-domain-names = "top",
> +					     "mmcx",
> +					     "mx";
> +
> +			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				csiphy1_in_port: port@0 {
> +					reg = <0>;
> +				};
> +
> +				csiphy1_out_port: port@1 {
> +					reg = <1>;
> +				};
> +			};
> +		};
> +
> +		csiphy2: phy@9527000 {
> +			compatible = "qcom,kaanapali-csi2-phy";
> +			reg = <0x0 0x09527000 0x0 0x2000>;
> +
> +			clocks = <&camcc CAM_CC_CSIPHY2_CLK>,
> +				 <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CORE_AHB_CLK>;
> +			clock-names = "core",
> +				      "timer",
> +				      "ahb";
> +
> +			interrupts = <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>;
> +
> +			operating-points-v2 = <&csiphy_mxc_opp_table>;
> +
> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
> +					<&rpmhpd RPMHPD_MMCX>,
> +					<&rpmhpd RPMHPD_MXC>;
> +			power-domain-names = "top",
> +					     "mmcx",
> +					     "mx";
> +
> +			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				csiphy2_in_port: port@0 {
> +					reg = <0>;
> +				};
> +
> +				csiphy2_out_port: port@1 {
> +					reg = <1>;
> +				};
> +			};
> +		};
> +
> +		csiphy3: phy@9529000 {
> +			compatible = "qcom,kaanapali-csi2-phy";
> +			reg = <0x0 0x09529000 0x0 0x2000>;
> +
> +			clocks = <&camcc CAM_CC_CSIPHY3_CLK>,
> +				 <&camcc CAM_CC_CSI3PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CORE_AHB_CLK>;
> +			clock-names = "core",
> +				      "timer",
> +				      "ahb";
> +
> +			interrupts = <GIC_SPI 448 IRQ_TYPE_EDGE_RISING>;
> +
> +			operating-points-v2 = <&csiphy_mxc_opp_table>;
> +
> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
> +					<&rpmhpd RPMHPD_MMCX>,
> +					<&rpmhpd RPMHPD_MXC>;
> +			power-domain-names = "top",
> +					     "mmcx",
> +					     "mx";
> +
> +			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				csiphy3_in_port: port@0 {
> +					reg = <0>;
> +				};
> +
> +				csiphy3_out_port: port@1 {
> +					reg = <1>;
> +				};
> +			};
> +		};
> +
> +		csiphy4: phy@952b000 {
> +			compatible = "qcom,kaanapali-csi2-phy";
> +			reg = <0x0 0x0952b000 0x0 0x2000>;
> +
> +			clocks = <&camcc CAM_CC_CSIPHY4_CLK>,
> +				 <&camcc CAM_CC_CSI4PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CORE_AHB_CLK>;
> +			clock-names = "core",
> +				      "timer",
> +				      "ahb";
> +
> +			interrupts = <GIC_SPI 122 IRQ_TYPE_EDGE_RISING>;
> +
> +			operating-points-v2 = <&csiphy_mxc_opp_table>;
> +
> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
> +					<&rpmhpd RPMHPD_MMCX>,
> +					<&rpmhpd RPMHPD_MXC>;
> +			power-domain-names = "top",
> +					     "mmcx",
> +					     "mx";
> +
> +			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				csiphy4_in_port: port@0 {
> +					reg = <0>;
> +				};
> +
> +				csiphy4_out_port: port@1 {
> +					reg = <1>;
> +				};
> +			};
> +		};
> +
> +		csiphy5: phy@952d000 {
> +			compatible = "qcom,kaanapali-csi2-phy";
> +			reg = <0x0 0x0952d000 0x0 0x2000>;
> +
> +			clocks = <&camcc CAM_CC_CSIPHY5_CLK>,
> +				 <&camcc CAM_CC_CSI5PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CORE_AHB_CLK>;
> +			clock-names = "core",
> +				      "timer",
> +				      "ahb";
> +
> +			interrupts = <GIC_SPI 89 IRQ_TYPE_EDGE_RISING>;
> +
> +			operating-points-v2 = <&csiphy_mxc_opp_table>;
> +
> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
> +					<&rpmhpd RPMHPD_MMCX>,
> +					<&rpmhpd RPMHPD_MXC>;
> +			power-domain-names = "top",
> +					     "mmcx",
> +					     "mx";
> +
> +			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				csiphy5_in_port: port@0 {
> +					reg = <0>;
> +				};
> +
> +				csiphy5_out_port: port@1 {
> +					reg = <1>;
> +				};
> +			};
> +		};
> +
>   		camcc: clock-controller@956d000 {
>   			compatible = "qcom,kaanapali-camcc";
>   			reg = <0x0 0x0956d000 0x0 0x80000>;
> @@ -6548,6 +6927,28 @@ pdp_tx: scp-sram-section@100 {
>   		};
>   	};
>   
> +	csiphy_mxc_opp_table: opp-table-mxc {
> +		compatible = "operating-points-v2";
> +
> +		opp-300000000 {
> +			opp-hz = /bits/ 64 <300000000>;
> +			required-opps = <&rpmhpd_opp_low_svs_d1>,
> +					<&rpmhpd_opp_low_svs_d1>;
> +		};
> +
> +		opp-400000000 {
> +			opp-hz = /bits/ 64 <400000000>;
> +			required-opps = <&rpmhpd_opp_low_svs>,
> +					<&rpmhpd_opp_low_svs>;
> +		};
> +
> +		opp-480000000 {
> +			opp-hz = /bits/ 64 <480000000>;
> +			required-opps = <&rpmhpd_opp_low_svs>,
> +					<&rpmhpd_opp_low_svs>;
> +		};
> +	};
> +
>   	thermal-zones {
>   		cpullc-0-0-thermal {
>   			thermal-sensors = <&tsens0 0>;
> 

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
