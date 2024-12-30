Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E04F9E77188
	for <linux-phy@archiver.kernel.org>; Mon, 30 Dec 2024 15:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v+jP25f9wrNk95K0KCASnvW/Hp17yssAJyUATRS+yKg=; b=L+iQLTeOJ5X3JH
	7AMcpavsEr7v5YceipAfbDMc30Mj4bWaXUXTpYNqSzgGuM8kU+ZZ7AgIwgVUg1983wE99gkjLiuGJ
	v5Gjp0AidCKU2TygwTONUeP3sOREzvwVVAnBeMzEMML1lybkXS1FnfKqYpnDisVLKaM0MeN5KG2kM
	evbwDCGxZX24OcCqQVkA2yj1BUuhvDk7ynOwfMGtXk5rXvJbGT4880ar5b3NPGtPfT7XaNDz6WsZs
	FBVCns1Bn+nouGrbqlLkepBsgUwfRdTEQlHyhsCIT55XCQH8WzFp0FaRzFt77x5EVyzsRkImZWQFn
	fi1F9BgP9od6WIpif9+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSHRd-00000005Q4C-2aMp;
	Mon, 30 Dec 2024 15:12:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSHRa-00000005Q3I-38Bm
	for linux-phy@lists.infradead.org;
	Mon, 30 Dec 2024 15:12:35 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BUE5iZo025494
	for <linux-phy@lists.infradead.org>; Mon, 30 Dec 2024 15:12:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KxPy1tKzJ8uIr8HXQOcjhmV2KQFpKWLKxWXseSf5kdk=; b=PacZnASeU2iQ/Gy0
	GcI2jCJRu+ku3RoyPyYbtOzLyeZQxg5LH7i+kYGnYpbTgIQmVozAYNfJmvE8OlxM
	mPZVYbq7dZSRyA3Kuaboe7j179XysWD1h30ih8yguJ4M82Q3ohfHe2ss2MdvJ71E
	4RlHH1rKwF9lXPtUws1y9mPUNPlsfA9wfFWfpG1qiRDw4nAUpcv7VNV1P4oLz8tx
	ZS3w4PmUPXtHJrBPW7hbVrjDNHJDQxEclBUU1+s9VED52JoZli6LXXWm0iKfuV+J
	no1UMM3DJ6JzxRurFvEQSUwhSyQWHFD+rJzvLTk+pNICssR5eg/54VgvF1GdL/19
	S4ICLQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43uvyt053g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 30 Dec 2024 15:12:34 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d8824c96cdso32470666d6.2
        for <linux-phy@lists.infradead.org>; Mon, 30 Dec 2024 07:12:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735571553; x=1736176353;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KxPy1tKzJ8uIr8HXQOcjhmV2KQFpKWLKxWXseSf5kdk=;
        b=cCiBH5VUPcSENjT/GVaG19D3Dylekf2Idz+9vsMWDpiUpLpJhrxTppiBvkohWIn8UH
         8vB+FmHSzI4slRUEVpcG30Oeq+rOMjeoke5Ld5Uel2GLNnGIsr/JaiXoteiJdesCEiNX
         C6jg+B+hKlchTjr68Z20lpaqEnCMW9OT8xInWNfccp3N7s9bob4o/tZPgI5ijp6EXHUY
         5PFXN1EY7OD9+fTXtnVdCAwIqqpZJf8EOrhLvu5qPQzNE7GYSoQHQDcCFFw1301UzNET
         pJ6yFAawzc7P9F7dM7TF2igK6DL7zzq3EQyCNr1x3zPbUDZqAZQ8HhYGplG5GS249Z6U
         s7Yw==
X-Forwarded-Encrypted: i=1; AJvYcCV4JPpLlxaR4rg268/+P4BR+eH5HaNjJjLSRc06056SU+9v1XgH0O9q34j1Qh0aAvE8VC2KmjPA1XA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5UORFRGiZLTFLkfq60kvmWspAp1MHAfdX5a6Ahc7qw7xDSOYu
	dp8do+lN0oehMsb1VmvC0bKWDiq4TYm4w1gMh1QDiA+dJ1IWNae0nbsvNuZYAaVughtuDoicXQj
	ZRpwkkzPPJEnBtzxRTSapf1ITLmEixslpVUkx11JZvGq4GMXjgm3zuW6ApmOVSXT6
X-Gm-Gg: ASbGnctWGCdpYf0zIgNI4IgHSkI0YyyMrsHmB7DXcv3acYh4dFz3qraMKgaJaEbUC3D
	/FFSriKfUfZ0UDuyt4xsYPVlvPMzyvMFek14gGp1wX4StxF9oJDN5Bkl4+Y4ECOAgGD4IK4VrCc
	1ALO+vcHAUMfAR1FfPCuQnBJAB1akI7G/m3oJWXqdL3rpHYY0MGt+vuUtD2JIG0TDj53tiJxcW2
	loixzQRA9o0EpFu+Tg5CbndGxrTGNSgcA+f9zL9W4XEx1athriQ/StQO6Dga2PDAqueLU8qH3Ky
	vKSl2N8bIvqwaixFyiuWGjnjzITVXWNO0Gs=
X-Received: by 2002:ad4:5b89:0:b0:6d8:8db8:43a8 with SMTP id 6a1803df08f44-6dd2339fa9dmr194613826d6.9.1735571552765;
        Mon, 30 Dec 2024 07:12:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFG3gcOXUpXBlRITqHpbNhdWdg/dwPgdjPlg4vgy6CoDdrxMBf3eiunItm35w0CjVX1HiH9lA==
X-Received: by 2002:ad4:5b89:0:b0:6d8:8db8:43a8 with SMTP id 6a1803df08f44-6dd2339fa9dmr194613506d6.9.1735571552339;
        Mon, 30 Dec 2024 07:12:32 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e894781sm1459731966b.44.2024.12.30.07.12.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 07:12:31 -0800 (PST)
Message-ID: <32921286-cf46-4c8c-8244-f840b6605dd3@oss.qualcomm.com>
Date: Mon, 30 Dec 2024 16:12:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: qcs615: enable pcie for qcs615
 soc
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
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        Krishna chaitanya chundru <quic_krichai@quicinc.com>
References: <20241122020305.1584577-1-quic_ziyuzhan@quicinc.com>
 <20241122020305.1584577-6-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241122020305.1584577-6-quic_ziyuzhan@quicinc.com>
X-Proofpoint-ORIG-GUID: x-O-HeNTWXAUZWM0S39DWdRnWyxovvqP
X-Proofpoint-GUID: x-O-HeNTWXAUZWM0S39DWdRnWyxovvqP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 bulkscore=0
 spamscore=0 priorityscore=1501 malwarescore=0 adultscore=0 mlxlogscore=999
 suspectscore=0 lowpriorityscore=0 mlxscore=0 impostorscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412300132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_071234_797483_E32436E9 
X-CRM114-Status: GOOD (  15.99  )
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

On 22.11.2024 3:03 AM, Ziyue Zhang wrote:
> Add configurations in devicetree for PCIe0, including registers, clocks,
> interrupts and phy setting sequence.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 158 +++++++++++++++++++++++++++
>  1 file changed, 158 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index 868808918fd2..c56cc30a59f3 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -678,6 +678,164 @@ rpmhpd_opp_turbo_l1: opp-9 {
>  		};
>  	};
>  
> +	pcie: pcie@1c08000 {
> +		compatible = "qcom,pcie-qcs615";
> +		reg = <0x0 0x01c08000 0x0 0x3000>,
> +		      <0x0 0x40000000 0x0 0xf1d>,
> +		      <0x0 0x40000f20 0x0 0xa8>,
> +		      <0x0 0x40001000 0x0 0x1000>,
> +		      <0x0 0x40100000 0x0 0x100000>,
> +		      <0x0 0x01c0b000 0x0 0x1000>;
> +
> +		reg-names = "parf",
> +			    "dbi",
> +			    "elbi",
> +			    "atu",
> +			    "config",
> +			    "mhi";

Please match the property order/style to x1e80100.dtsi

[...]

> +
> +		interconnects = <&aggre1_noc MASTER_PCIE QCOM_ICC_TAG_ALWAYS
> +				 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +				<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +				 &config_noc SLAVE_PCIE_0 QCOM_ICC_TAG_ALWAYS>;
> +		interconnect-names = "pcie-mem", "cpu-pcie";

Use QCOM_ICC_TAG_ACTIVE_ONLY on the CPU path

[...]

> +
> +	pcie_phy: phy@1c0e000 {
> +		compatible = "qcom,qcs615-qmp-gen3x1-pcie-phy";
> +		reg = <0x0 0x01c0e000 0x0 0x1000>;
> +
> +		clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
> +			 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +			 <&gcc GCC_PCIE_0_CLKREF_CLK>,
> +			 <&gcc GCC_PCIE0_PHY_REFGEN_CLK>,
> +			 <&gcc GCC_PCIE_0_PIPE_CLK>;
> +		clock-names = "aux",
> +			      "cfg_ahb",
> +			      "ref",
> +			      "refgen",
> +			      "pipe";
> +
> +		clock-output-names = "pcie_0_pipe_clk";
> +		#clock-cells = <0>;
> +
> +		#phy-cells = <0>;
> +
> +		resets = <&gcc GCC_PCIE_0_PHY_BCR>;
> +		reset-names = "phy";

Please add the NOCSR reset too

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
