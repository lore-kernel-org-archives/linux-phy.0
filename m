Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71B9DE77179
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 17:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CQuu4vCrs0ilUAXVNz8GzqvoGDS/pB1xbKxe1UQ+ZJ0=; b=lNe1g6GP52/VSK
	VgHjseRWzZQEEzNWkgBOfXAgoE3QaJ+nlPthKguRb6UFhhpiLynR40UzLGFfsFYWUiyu0fCjr66Ef
	EKYFkPPYKpJobttWebi6aEDRYDDxdi3oEDwC/dZh6OzuRkf19+namQx4YhAy3A2MEPk0tet/DKbYx
	TntkTIorvwSFBqgqE0zB65Rj4F+oESOt3B2n1KhL0XtPCsy3lTjAg13JAFos2ATAah888TFr85v1d
	obeNbVOzqBzZOz/JEHVqZwyp+LnSlbW8IcEKzmQMALJ8ficvlG509xGCde4ecketcy291BTY6yIXX
	qhJPSV9CR+S3qQpu21pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJFqV-0000000GzER-0rFh;
	Thu, 05 Dec 2024 17:40:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJFqS-0000000GzDN-3wyg
	for linux-phy@lists.infradead.org;
	Thu, 05 Dec 2024 17:40:58 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5HaXR5005176
	for <linux-phy@lists.infradead.org>; Thu, 5 Dec 2024 17:40:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pxRS51Suc6OUIFzAQyfiTLH8+Lzze/3+tENj2XDyYYs=; b=SPInPO+9r2DrX+KN
	sxxq1KwPxsePy58Kqp4BAhxOK377nS+q3KPPLWiFsUaRO5JqfVArMBtfeaXKa/AR
	WNo8BoRYtwu4O8kPjefkKAHAqJ2PYqY2nTNBlXQQOqZhVR4taXxYTNuFDM9/ymTe
	MCXf3lvBqcE4lLUXFYUNhd0324A+dpoNIRwtDx+GSWN0MftnRlN+LTI+7mf8aPXV
	FXaEocFYeJL/gsYVHGTx2wF5vcogr0ZV7u7EmqOdVFz2k1pEGbwQ+XVxdOC3kcob
	lUbX/UiFXCfcgaa6zyLf6hnRjSQv1TG5l2G48jGTGKsCC5bA2mRimYVd5lzTMI80
	DfX2hw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43ba14193v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 17:40:55 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4668a6d41a5so3258351cf.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 09:40:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733420455; x=1734025255;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pxRS51Suc6OUIFzAQyfiTLH8+Lzze/3+tENj2XDyYYs=;
        b=XGBHT8OtixLqYGjQmfRfIBaMAeLi2OP2+su2iD8AIlLUMGOr/YIeqObKpGCwuiJ2jO
         qdJ+I6HwmXYq/zgW9H7qvaeuRAYVVjUE27nrGwi2fgMttJlIIFgzqOsFz8+A9FRMrOok
         lMhl+Fvk/PWUjudzNKSEPur1ZHk1it6h1xF6kQHL+hB2u5+t1DYiSlrD+GbCC0XdkFTj
         FzwzLCems5ht2fWC4u3AF5UOciDx/fyhlNLLmpRXxB/OIjaXDrVaip7J592l3EETh2jC
         vAayJsJIFLbgGok1RAnQyGYgMiVY4NR43pfOYCKwskQHwJXGt8TxrXFwSthlGqSCI9YV
         jQ2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWUvzO6RKTDzmcjHbhmK9+nqhLh1eAL2oC2/dC4k/dKFEp0LTw/sCxKT0U/hN3SFpyQQkd+xb0Bxmc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwL57Ijzr0k/ZLsru56WaR5/5YWx+uMqiPR1YlVzu2iQVibCDGS
	fwVGXoILD0FZi/3uhXDwycI44P6NLXDgbifSVi53uhaM0KEaf1j9X5OWBiI4i2vf+CaZItZBMCW
	nL+dp/5FvL4IM2Plc3QppmkGE3lJVi1zN2kRq/i13L6iIwny8mZNLuNPpsof35UyU
X-Gm-Gg: ASbGncujVCPp0Ii4rNaBqE8DmuKjTdLXTL0FA9rxdCD6PL04mSl354b+JMaTOhoQMTX
	ORr4hxKjC0NOUaYXL7seXifhxIbkrsxqDaIjkDz7YBGVU14nxnasB/fivR/em1v60ctICbWMvSS
	97zkmuPEMooG19guh2a1kKt0Yentf9Q/PHFv7LLsXn9nNiyg42yIrPSMh8grVaw85VLRiXx5FTm
	2E0Jw2qJSt1nk86hyG01I/UXHmD5WuR506xNIm7RVi9Gb/MCOpl+ct83f+zK0A1O/MtJYx8Av9B
	rgJDsd7px9M7hFl3lVpxiX7SOarzNUo=
X-Received: by 2002:a05:622a:15d5:b0:461:4150:b302 with SMTP id d75a77b69052e-46734cb4124mr278651cf.5.1733420454778;
        Thu, 05 Dec 2024 09:40:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGbUWXj36RCgpIRMVaMXE06jjwOgeBib3xKOjPLVWZuPgNWjgkf/YnS35LVeI9TXrP7QdkxkA==
X-Received: by 2002:a05:622a:15d5:b0:461:4150:b302 with SMTP id d75a77b69052e-46734cb4124mr278381cf.5.1733420454392;
        Thu, 05 Dec 2024 09:40:54 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260891e4sm120870066b.144.2024.12.05.09.40.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 09:40:53 -0800 (PST)
Message-ID: <a5fb36b2-c118-468e-9163-b84fff065542@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 18:40:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/8] arm64: dts: qcom: qcs8300: enable pcie0 for
 qcs8300 soc
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, robh+dt@kernel.org,
        manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com,
        lpieralisi@kernel.org, quic_qianyu@quicinc.com, conor+dt@kernel.org,
        neil.armstrong@linaro.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: quic_tsoni@quicinc.com, quic_shashim@quicinc.com,
        quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20241128081056.1361739-1-quic_ziyuzhan@quicinc.com>
 <20241128081056.1361739-7-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241128081056.1361739-7-quic_ziyuzhan@quicinc.com>
X-Proofpoint-GUID: bF0b5YHhwp3EEDZEySymMkFQR7yJmO3M
X-Proofpoint-ORIG-GUID: bF0b5YHhwp3EEDZEySymMkFQR7yJmO3M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 phishscore=0 clxscore=1015 mlxscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 suspectscore=0 mlxlogscore=999 malwarescore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_094057_104042_52D84514 
X-CRM114-Status: GOOD (  15.36  )
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

On 28.11.2024 9:10 AM, Ziyue Zhang wrote:
> Add configurations in devicetree for PCIe0, including registers, clocks,
> interrupts and phy setting sequence.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 175 ++++++++++++++++++++++++++
>  1 file changed, 175 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> index 2c35f96c3f28..952a84b065c3 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> @@ -637,6 +637,181 @@ mmss_noc: interconnect@17a0000 {
>  			qcom,bcm-voters = <&apps_bcm_voter>;
>  		};
>  
> +		pcie0: pci@1c00000 {
> +			device_type = "pci";
> +			compatible = "qcom,pcie-qcs8300", "qcom,pcie-sa8775p";
> +			reg = <0x0 0x01c00000 0x0 0x3000>,
> +			      <0x0 0x40000000 0x0 0xf20>,
> +			      <0x0 0x40000f20 0x0 0xa8>,
> +			      <0x0 0x40001000 0x0 0x4000>,
> +			      <0x0 0x40100000 0x0 0x100000>,
> +			      <0x0 0x01c03000 0x0 0x1000>;
> +			reg-names = "parf",
> +				    "dbi",
> +				    "elbi",
> +				    "atu",
> +				    "config",
> +				    "mhi";
> +
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000>,
> +				 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x1fd00000>;
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
> +				     <GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH>,
> +					 <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>;

Weird indent
> +
Stray newline
> +			interrupt-names = "msi0",
> +					  "msi1",
> +					  "msi2",
> +					  "msi3",
> +					  "msi4",
> +					  "msi5",
> +					  "msi6",
> +					  "msi7",
> +					  "global";
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
Ditto
> +			clock-names = "aux",
> +				      "cfg",
> +				      "bus_master",
> +				      "bus_slave",
> +				      "slave_q2a";
> +
> +			assigned-clocks = <&gcc GCC_PCIE_0_AUX_CLK>;
> +			assigned-clock-rates = <19200000>;
> +
> +			interconnects = <&pcie_anoc MASTER_PCIE_0 QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +					 &config_noc SLAVE_PCIE_0 QCOM_ICC_TAG_ALWAYS>;

QCOM_ICC_TAG_ACTIVE_ONLY for the cpu-pcie path, both endpoints

> +			interconnect-names = "pcie-mem", "cpu-pcie";

[...]

> +		pcie0_phy: phy@1c04000 {
> +			compatible = "qcom,qcs8300-qmp-gen4x2-pcie-phy";
> +			reg = <0x0 0x1c04000 0x0 0x2000>;
Please pad the address part to 8 hex digits with leading zeroes

> +
> +			clocks = <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +				 <&gcc GCC_PCIE_CLKREF_EN>,
> +				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
> +				 <&gcc GCC_PCIE_0_PIPE_CLK>,
> +				 <&gcc GCC_PCIE_0_PIPEDIV2_CLK>,
> +				 <&gcc GCC_PCIE_0_PHY_AUX_CLK>;
> +
Ditto

> +			clock-names = "cfg_ahb",
> +				      "ref",
> +				      "rchng",
> +				      "pipe",
> +				      "pipediv2",
> +

The same for pcie1

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
