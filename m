Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA369D68B03
	for <linux-phy@archiver.kernel.org>; Thu, 14 Nov 2024 13:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YeL9tmOZQMUVK++kvxDasp7zMqOfBaeDx9NAeWBcdh4=; b=wRIs6Fx7w1m+1D
	FkVBQ4Zk6cn3/VPg/WDmhvoZ4LIsBDBoBdgppIIrlFzieg6JHAHE4EqI8K1QxLmg5U1JgnJ7BrdJa
	4kEZVYcJpI80BVKFLW4Phc9+CQ6RBRaBG8X10UyaVVooxtCdClG2FZaE+QiZDbWAm6ygmsn0RPjvI
	aW2BU8bhG1O3Iy37202zdlJuCXIirFqBwbrXtOEbgiME5Upn+3gMu54XWx7Iq0wG/YAGUdvQSzK06
	vDFSMgZTOzQfJ5zSVEn5ufVEzNBslZVACCNuMf7wu1hY524jE+eAKVjEkH+KeFRfy7aMTAYutaHhu
	ZTMSTyI6LNipRWLT0GaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBZWJ-00000009zy4-3wZ6;
	Thu, 14 Nov 2024 13:04:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBZUu-00000009zib-190f
	for linux-phy@lists.infradead.org;
	Thu, 14 Nov 2024 13:02:57 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AE406C8022395
	for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 13:02:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QP2OORrJCqh4d/rWOsnd4tkvUDI8ltC0YswJYfXH6lg=; b=BDOL3MU3H3PD/qxI
	ZUIh0iZBQeQ1GWyjgc67L+Rg7fKp7N+dm4HZ8jJJgr2oYY6Cg/1bXBFqOwIH/rcF
	/eauzYhszRS4sAvFSzyaQhJFmRpCYuePAxCc+Eb57ZbqR2ciSBVu79rp64TuEmJU
	hyfbW1X7Jqx372hb0er+qJEGqiUua8S/E0ZPqkmWNJlS4hWjxMEPK2ne3QSsYoSB
	GP3eeVrW+9GzN0NGqalsWfXGpUwTHcSWl57/E8qAfSsszUC46+F+JhxMA+h2b4tU
	7FOmShb1J+ZT9WbYDfbjKnvx65r+St+3BCXdUOkPf8fVBwLim6eKUOu0R7TnX4bO
	jsh9ng==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42w9sv2cj5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 13:02:54 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4609b352aa9so1323941cf.3
        for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 05:02:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731589373; x=1732194173;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QP2OORrJCqh4d/rWOsnd4tkvUDI8ltC0YswJYfXH6lg=;
        b=ZfzsRAyqUS1DY4TaThRtYyR2O9KPx3vXQtFamMgMTPq2R1IMjo6TQ/L7/cngQWmq4A
         mjLzUTVhxzoDiitGIRX+VQrkN2Pr8mdy9Z2RMTDODaRYTeOGZhWZf7m/kxWrLs0eh3ai
         b4SpScurMiksBpzfbGAmVi6s4yUujiahw1n0YRC4LiZy8Qv4Di4nyG/S1DbqyiOXovKz
         eLou5u6HvTPqoMWjlpY9FurOONnRcKlkC0MslFmNrepzYjrGwPuXqGx58+qf8y8jx+CU
         /f+XvrgOKqZDLLNHl6KRSC6F/7jXQ0wBL923EgCCm7n4YbOZqY+qYylcdmIK1tVhspsP
         ho+w==
X-Forwarded-Encrypted: i=1; AJvYcCWExV70KhiEJxdXGg1z2XFbRUvuU5qlsRvPDJ0C2HkROLSv33+BLVVuN77Kvrea+byKSnycPk1q00k=@lists.infradead.org
X-Gm-Message-State: AOJu0YxrAdLUDwHQQcKKtY/R68Z5ccwsXz+VmRVwL0lBQQnFUm5S7mJs
	+Cyxa4cdjgWmnLAu9MTfh+xH7HSE4BVXxE3X75hCgK8FxjaZy+gThR0ONiZD/MGaGiv4mLWDDoj
	nH6WL92Zn7QxQzyNEtwx75gRLSpjpJssziwcTlmhq0eqRvFBStdoJYIyoAJ+OEqSr
X-Received: by 2002:a05:622a:13ca:b0:462:fb65:cdc5 with SMTP id d75a77b69052e-4630937948cmr149938271cf.8.1731589373581;
        Thu, 14 Nov 2024 05:02:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGz5OO7uv5yCAm8X+yScUZ4xyIfrQ/1g7/Ukf8j7FpRrAROqzLOvWj9RwVnZUICeZpIufZ+nQ==
X-Received: by 2002:a05:622a:13ca:b0:462:fb65:cdc5 with SMTP id d75a77b69052e-4630937948cmr149938091cf.8.1731589373227;
        Thu, 14 Nov 2024 05:02:53 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20df27068sm61531966b.8.2024.11.14.05.02.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Nov 2024 05:02:52 -0800 (PST)
Message-ID: <a02925d7-2d09-4902-97e4-5e7f09d7ef21@oss.qualcomm.com>
Date: Thu, 14 Nov 2024 14:02:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: qcs8300: enable pcie0 for QCS8300
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, robh+dt@kernel.org,
        manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com,
        lpieralisi@kernel.org, quic_qianyu@quicinc.com, conor+dt@kernel.org,
        neil.armstrong@linaro.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: quic_shashim@quicinc.com, quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20241114095409.2682558-1-quic_ziyuzhan@quicinc.com>
 <20241114095409.2682558-5-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241114095409.2682558-5-quic_ziyuzhan@quicinc.com>
X-Proofpoint-ORIG-GUID: d_v0Poas4fOX1V8PjUI7PhWxbfqC1N2L
X-Proofpoint-GUID: d_v0Poas4fOX1V8PjUI7PhWxbfqC1N2L
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 lowpriorityscore=0 impostorscore=0 adultscore=0 bulkscore=0 clxscore=1015
 mlxlogscore=999 priorityscore=1501 phishscore=0 malwarescore=0
 suspectscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411140102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_050256_358729_CE9B8965 
X-CRM114-Status: GOOD (  15.95  )
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

On 14.11.2024 10:54 AM, Ziyue Zhang wrote:
> Add configurations in devicetree for PCIe0, including registers, clocks,
> interrupts and phy setting sequence.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts |  44 +++++-
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi     | 176 ++++++++++++++++++++++

This implies this patch should be two separate ones


[...]


> +&tlmm {
> +	pcie0_default_state: pcie0-default-state {
> +		perst-pins {
> +			pins = "gpio2";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-down;
> +		};
> +
> +		clkreq-pins {
> +			pins = "gpio1";
> +			function = "pcie0_clkreq";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		wake-pins {
> +			pins = "gpio0";

Sorting these in an increasing order would be welcome


>  
> +		pcie0: pci@1c00000 {
> +			compatible = "qcom,pcie-qcs8300","qcom,pcie-sa8775p";

Missing ' ' after ','

> +			reg = <0x0 0x01c00000 0x0 0x3000>,
> +			      <0x0 0x40000000 0x0 0xf20>,
> +			      <0x0 0x40000f20 0x0 0xa8>,
> +			      <0x0 0x40001000 0x0 0x4000>,
> +			      <0x0 0x40100000 0x0 0x100000>,
> +			      <0x0 0x01c03000 0x0 0x1000>;
> +
> +			reg-names = "parf",
> +				    "dbi",
> +				    "elbi",
> +				    "atu",
> +				    "config",
> +				    "mhi";
> +
> +			device_type = "pci";

Please try to match the style in x1e80100, it's mostly coherent but
things like newlines differ, which is tiny but mildly annoying

> +
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000>,
> +				 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x1fd00000>;

Looks like there's a bit more space in there
> +			bus-range = <0x00 0xff>;
> +
> +			dma-coherent;
> +
> +			linux,pci-domain = <0>;
> +			num-lanes = <2>;
> +
> +			interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 309 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 312 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 313 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 314 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			interrupt-names = "msi0",
> +					  "msi1",
> +					  "msi2",
> +					  "msi3",
> +					  "msi4",
> +					  "msi5",
> +					  "msi6",
> +					  "msi7";

Please also add a "global" interrupt.. looks like it's GIC_SPI 166, but
please confirm

> +
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0x7>;
> +			interrupt-map = <0 0 0 1 &intc GIC_SPI 434 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 2 &intc GIC_SPI 435 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 3 &intc GIC_SPI 438 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 4 &intc GIC_SPI 439 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
> +				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
> +				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
> +				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>;
> +
> +			clock-names = "aux",
> +				      "cfg",
> +				      "bus_master",
> +				      "bus_slave",
> +				      "slave_q2a";
> +
> +			assigned-clocks = <&gcc GCC_PCIE_0_AUX_CLK>;
> +			assigned-clock-rates = <19200000>;
> +
> +			interconnects = <&pcie_anoc MASTER_PCIE_0 0 &mc_virt SLAVE_EBI1 0>,

QCOM_ICC_TAG_ALWAYS

> +					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_PCIE_0 0>;

QCOM_ICC_TAG_ACTIVE_ONLY

[...]

> +
> +			pcieport0: pcie@0 {
> +				device_type = "pci";
> +				reg = <0x0 0x0 0x0 0x0 0x0>;
> +				#address-cells = <3>;
> +				#size-cells = <2>;
> +				ranges;
> +				bus-range = <0x01 0xff>;
> +			};

Are you going to use this? If not, please drop

> +		};
> +
> +		pcie0_phy: phy@1c04000 {
> +			compatible = "qcom,qcs8300-qmp-gen4x2-pcie-phy";
> +			reg = <0x0 0x1c04000 0x0 0x2000>;
> +
> +			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,

This clock goes to the RC, it should be _PHY_AUX (which you put below
as phy_aux), please replace it.

> +				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +				 <&gcc GCC_PCIE_CLKREF_EN>,
> +				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
> +				 <&gcc GCC_PCIE_0_PIPE_CLK>,
> +				 <&gcc GCC_PCIE_0_PIPEDIV2_CLK>,
> +				 <&gcc GCC_PCIE_0_PHY_AUX_CLK>;
> +
> +			clock-names = "aux",
> +				      "cfg_ahb",
> +				      "ref",
> +				      "rchng",
> +				      "pipe",
> +				      "pipediv2",
> +				      "phy_aux";

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
