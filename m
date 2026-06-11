Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69CA8CD8C9D
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 20:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pcDhX2J5Xwu9NuSKZYw0B3lfwsMnWTnMzN54dzTuH+s=; b=ou/xCRgSRsZU9g
	OxAzAScubz8dt0enjbybHyK+Dz+AfgzQXBAP/gWtCjHzn6OPR5GAJqPXOYzGoUg8NGuRPPAgbiJv1
	le2RmBjFcERWXPyAJvh9yV97X4Km1fyIGqB44qjf13zhL/EMBeEqtVYM5Rx9N24Tnyn2K56XZHIk6
	BRwxcyMEwyMPlJYXxXDDIk9u9UiEiqtGZ98Fv0ekbI7WjOKb0jBpGWz892C+iiUm47IXQ7/85az2F
	LkihOj0pNlrZ5GnlBEOP6OVnRqpe1/hYg/J4p9TR8Ewk36BcCL/5d7hOQAKQ9BdWFs0SBbhUFLTrQ
	jxpc870NRVm/JQjyUbog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXlpi-0000000A26G-06ZA;
	Thu, 11 Jun 2026 20:16:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXlpf-0000000A25j-1mSj
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 20:16:56 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65BJ3F851510355
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 20:16:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6SCinHMjZ2J3w4Roqcjw2GQM
	ab17NAGCM+R3vMfhRW0=; b=WGPd0WPCoAB2KyheGqY3gMf6zT9oH5krcp4I+rwP
	09iHgrfa9eA381ElIqjMhyJJQSW8yisxrLMi0h+lyTErbPgKUtz4TZrNDlHy1NvJ
	aLv3xrqVhoVbrD8lVDaMqU1wtW/RWh9oPZV0FQgPddWSUXzY9mWio95mvLpp7//3
	m0yiBi6q1/rHqPdJMTs93UuOmc0kskgNtZM2Py8t2ZJOyGKvwS5XaeQ6vNODzKjm
	yW6Ou4qlAwYMcatqRYSxPxzYBpsXC91PcnutgIo5gRAvr7EPxMUzr5fDobnvqiJZ
	SCyead6hSu91UABaRt/ypq4GYKqRWZNp/SrIG5fR7K8VMQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er2u40846-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 20:16:54 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51775f7b2afso24897691cf.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 13:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781209014; x=1781813814; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6SCinHMjZ2J3w4Roqcjw2GQMab17NAGCM+R3vMfhRW0=;
        b=VA6SfSMzLtIBSk/9/5YyEmcGIGUmexUfq0nEZgoWgTQaCrmj8pPe5HMbFx3qsVAHZM
         Ff9K/cx8g98vbP6yF5Mbatd6FkSQyoIqp1Hzd29sMTpB99NXrf9eEU3ZoYt7HOShLLcN
         xbWlLcQmE2OlhDjn4udcxCj37k0+HqXizFaw7sP2FULZSi0KLr7vKOhJrMtYJYuio35t
         9BTbBlunCfYV75ngdcRXBMIzDi+oBgnf/cU4zxWu2PmXrdvmFIkgq14XxMq0caP7y2IY
         G5LbwRXjlewnTjj845qE4ANNSLCv2pAROeXWI9Llu/zkYoclXifLDs+H8+WxEQmfQ5Ao
         I4ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781209014; x=1781813814;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6SCinHMjZ2J3w4Roqcjw2GQMab17NAGCM+R3vMfhRW0=;
        b=LTZPR5St/uwcEtCDKKpMdSoHt8hrUhqJB3vauhZiOOmGTznxbuSzESJ53zm+hI5XRu
         /3+VMN878JmJbM94AIxpeQmc25TRFvK9d/IZ67U4ej9ixsyd8/6INoN/lrbmCe0yKLtt
         P1w9yP7N0wsQqW66nhOhabZKzJio8Dxkhfo+3swGs/ZR3szwd1gxrulm7QwOf30h3f+A
         ZdLWvJ0LI71C5KTGiY2g8pSx7dlPaEv6JMtWUx6vqMbLW5n2ll4GgmH0HcgabTZdMr6U
         UuNkVCHNjYxDERcbZlNXqOQmfjmkin1ZwOpCw/HMSvy+HGWsNP5c05WiAFTC2zop1lHx
         iu9g==
X-Forwarded-Encrypted: i=1; AFNElJ/bOOXZKp/YaHi4cbVnAH9G+MfKH59DomVUyBliZmuuiQGkLgL9iUbVTcrL7U+AxvWWJW/NhNRBRXo=@lists.infradead.org
X-Gm-Message-State: AOJu0YyQ9xENA2kQ8IPdztNKfSPLRCkqycm3T+TQmRVRRNvrjNctKHDm
	82FJVw0up15MdGsekuNxdTHPrrLjs1RxKyWsLcwwilxVrYJKLK9tb1ijYb6zijZg2Ay6F6LmP9I
	kdOMnfkCAhumSTVsXcg3beKK7R9etDZ4wDXx4jqP2balwy74u6Ym26L+5HNPw8Qb5Gxy7
X-Gm-Gg: Acq92OFmlUrImWUrVC0wodNI8l8IykBFnfphI1+0hET05TCfx5yo3MFxUMzBpMNDRQQ
	uXDCfnt5SDKGETvR+2kTUKN9mFeQ2BW9JDf6tLWFt7FMfIGC0qYx04mVS4MaMfLgP10RBC9Opzw
	SVf7OAygxRk6iKoomGJDfjmz7Iqr2M/aLJ0eKJKxQW3bwk3bAU7WbLH+khJ1pwqVhVJ3Hzki+hS
	nYzxdBpAqGUZ/fbtIdtbqXzcRHUyBE6xahiftYvNV5F3Xg6GuCgW1ypH6GmMj90yNSIinrlrmxD
	8hvynedmXM2iFPhL2XjTqY7NhCqHVWCCO/X7Jp1/9mGE+0seea5Td58QIH4drRahOCX2VyUAR68
	2eQDdFiUKcU9GOf/gyfSLN2V09icrjSi1e1CYoq5/D3YjpwQci6SjHc138FCHbgO9MX3vMu49sQ
	FmFgrsa+eQ4VbQOjUgZ/q+qpFeFibmj7VHin4=
X-Received: by 2002:a05:622a:138d:b0:517:9407:5c38 with SMTP id d75a77b69052e-517fbe61614mr3716051cf.24.1781209013568;
        Thu, 11 Jun 2026 13:16:53 -0700 (PDT)
X-Received: by 2002:a05:622a:138d:b0:517:9407:5c38 with SMTP id d75a77b69052e-517fbe61614mr3715471cf.24.1781209012969;
        Thu, 11 Jun 2026 13:16:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5ad2cd97dfcsm114395e87.73.2026.06.11.13.16.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 13:16:51 -0700 (PDT)
Date: Thu, 11 Jun 2026 23:16:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>,
        Xueyao An <xueyao.an@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5 2/5] arm64: dts: qcom: Introduce Shikra SoC base dtsi
Message-ID: <zzveallrfaeaclkes4dvexcxacyyew6mjgar5ctmhevh6ld4c5@caxx3gdr6g6v>
References: <20260611-shikra-dt-v5-0-103ed26a8529@oss.qualcomm.com>
 <20260611-shikra-dt-v5-2-103ed26a8529@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260611-shikra-dt-v5-2-103ed26a8529@oss.qualcomm.com>
X-Proofpoint-GUID: tCVrd616XjiIQ8qyLEinIlcewl1Xi6Ej
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjExMDIwMyBTYWx0ZWRfX3hBrg54KX1ig
 nrcxul8eJptETAkZlAOOpDt8BpRZzfviYpNiX/bkGdPP6FXrhsl3rbIfh672sJ1MUVflJ+qNrKv
 gVvzd2WT79UUcmgugL1OcFGH4T58lXA=
X-Proofpoint-ORIG-GUID: tCVrd616XjiIQ8qyLEinIlcewl1Xi6Ej
X-Authority-Analysis: v=2.4 cv=N94Z0W9B c=1 sm=1 tr=0 ts=6a2b17b6 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=nLTNWNGuSljmtZLY6HsA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjExMDIwMyBTYWx0ZWRfX6G2vW+2+pDtH
 BzhfpGZ4nWCpRQy7+mZkGTe5Xeny534uxu+WLjuym53QKTEyzo0fs1q7hNQS94+2F3bNATtK2l4
 G60nLJsFLr+X4FwQK+SR5XF58/ZdplWBxJoe8OOiQ03NKBdIyqN1HYg3bziKty/BIbzA9LZh7Q+
 s9I55XXSWcw+Werf1wBX1NPVMKVUOXgbI9xzuTv2VROLX4Ml9aGizSi3j9SGMPUnQ5elHPmXwfW
 9/Gkgh1qcx1SqOTTkFrx+l2IQqhnlcPLUQKyrOT9+bjb4HB/rFS6AZAsv/XlePLeQ3CGmYT3Oqo
 08CPoYOPrpSrY5I6kZZKBPeRt8aEOUdTp+De+Z4U7c4jSIieacZs88ikvmwPJzXgDiHnVlOEE4n
 v3Jy4w0mJadjcZtyVV8HTDHzMMzLbCT8QHItQ1Tv0+l1nApmKwsfc6byJD+GVCLpJG2yYAGOe7T
 X/96M31t60VCh6cMn/g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-11_04,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 suspectscore=0 bulkscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606040000
 definitions=main-2606110203
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_131655_604846_93C0DE22 
X-CRM114-Status: GOOD (  14.78  )
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

On Thu, Jun 11, 2026 at 03:40:09PM +0530, Komal Bajaj wrote:
> Add initial device tree support for the Qualcomm Shikra SoC,
> an IoT-focused platform built around a heterogeneous CPU cluster
> (Cortex-A55 + Cortex-A78C) with RPM-based power and clock management.
> 
> Enable support for the following peripherals:
>   - CPU nodes
>   - Global Clock Controller (GCC)
>   - RPM-based clock controller (RPMCC) and power domains (RPMPD)
>   - Interrupt controller
>   - Top Level Mode Multiplexer (TLMM)
>   - Debug UART
>   - eMMC host controller
>   - System timer and watchdog
> 
> Co-developed-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
> Signed-off-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
> Co-developed-by: Monish Chunara <quic_mchunara@quicinc.com>
> Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
> Co-developed-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> Co-developed-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> Co-developed-by: Sneh Mankad <sneh.mankad@oss.qualcomm.com>
> Signed-off-by: Sneh Mankad <sneh.mankad@oss.qualcomm.com>
> Co-developed-by: Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>
> Signed-off-by: Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>
> Co-developed-by: Xueyao An <xueyao.an@oss.qualcomm.com>
> Signed-off-by: Xueyao An <xueyao.an@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/shikra.dtsi | 842 +++++++++++++++++++++++++++++++++++
>  1 file changed, 842 insertions(+)
> 
> +
> +		rpm_msg_ram: sram@45f0000 {
> +			compatible = "qcom,rpm-msg-ram", "mmio-sram";
> +			reg = <0x0 0x045f0000 0x0 0x7000>;
> +
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges = <0 0x0 0x045f0000 0x7000>;

0x0

> +
> +			apss_mpm: sram@1b8 {
> +				reg = <0x1b8 0x48>;
> +			};
> +		};
> +
> +		sram@4690000 {
> +			compatible = "qcom,rpm-stats";
> +			reg = <0x0 0x04690000 0x0 0x14000>;
> +		};
> +
> +		sdhc_1: mmc@4744000 {
> +			compatible = "qcom,shikra-sdhci", "qcom,sdhci-msm-v5";
> +
> +			reg = <0x0 0x04744000 0x0 0x1000>,
> +			      <0x0 0x04745000 0x0 0x1000>;
> +			reg-names = "hc",
> +				    "cqhci";
> +
> +			iommus = <&apps_smmu 0xc0 0x0>;
> +
> +			interrupts = <GIC_SPI 348 IRQ_TYPE_LEVEL_HIGH 0>,
> +				     <GIC_SPI 352 IRQ_TYPE_LEVEL_HIGH 0>;
> +			interrupt-names = "hc_irq",
> +					  "pwr_irq";
> +
> +			clocks = <&gcc GCC_SDCC1_AHB_CLK>,
> +				 <&gcc GCC_SDCC1_APPS_CLK>,
> +				 <&rpmcc RPM_SMD_XO_CLK_SRC>;
> +			clock-names = "iface",
> +				      "core",
> +				      "xo";
> +
> +			interconnects = <&system_noc MASTER_SDCC_1 RPM_ALWAYS_TAG
> +					&mc_virt SLAVE_EBI_CH0 RPM_ALWAYS_TAG>,

Please align on '&'.

> +					<&mem_noc MASTER_AMPSS_M0 RPM_ACTIVE_TAG
> +					&config_noc SLAVE_SDCC_1 RPM_ACTIVE_TAG>;
> +			interconnect-names = "sdhc-ddr",
> +					     "cpu-sdhc";
> +

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
