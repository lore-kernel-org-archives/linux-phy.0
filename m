Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69F3ECCD184
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 05:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ejGJ6bsTjSW+GrMBSOEpT5kR1RObH4iWeTGWz3WTZCM=; b=e0E96q28stVF6U
	h/6/HHMbGMydActat/Td4wWBXflXgddzzzSQ6VP0t5ucGZImv+Zyn2bYEeXR8sUzRsBGBBMvIWPvc
	nwKMoHuJJeH/GyFYTgkrCZ5pHtV18NIHRl0XTws3UVfTA++sSHymJQaKN5H647G86I5ANES+YdX3A
	rgALivb1mnO74dEE/p2fyM2T1UIj0COxXl4PtVndfa3Fgte82HUDv1uhl2A9OdaWiHkw1njK4cIyd
	yI5UuiTKzcfwT9bbDG/cvnvJzE9MCa2WA+s9s30PuyoKqOPz+nLfOXTJfz1URQXnfSyNtDQofwurE
	Zxe7PHDc79SAHkqc73xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8XpF-0000000FEMP-0kfN;
	Tue, 14 Oct 2025 05:43:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8XpC-0000000FEM3-13Bo
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 05:43:55 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DHDS3D003995
	for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 05:43:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9D4EEKufXMXkKelCHysJYJduF8pemtJ6oblHi3EHsuE=; b=TouYZXAULvQYEuTq
	NdqyM1jsslyIuxM/et06k9vIoAeQw3vETY4vbTQ1+SKOlmVQXk/ZJ33Bl9+fE1H4
	HWyMgO4vyqIukO6Dc+hPMmQlJpefIpwcHz/Cn04vCQTqOwTUcWb5zt7TxrIueYre
	RDJtrBAiZfxY6Us3A9QSslwzyqXlzYf46LSd/xFTy/5bF7S04Mdv6y+fB/5C3JEz
	kYsngKLZvXkOmiGcKK3nlCh2oI/7f/qIyg6lddLh9PJ2BIC5PxT0646Cv38KnvMa
	XJnzuHUbw6JtMJtKkD0cBrroOz08VN8Rh2REMp6fZ1/er8oybTwuJWjFlcwCgGm4
	UuN/Qw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff0q8ag-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 05:43:53 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32ee4998c50so9209477a91.3
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 22:43:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760420633; x=1761025433;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9D4EEKufXMXkKelCHysJYJduF8pemtJ6oblHi3EHsuE=;
        b=H/aR7SO0qVI7DiihPWk6Zqoaj77L/9dgEwOpNQfHZ/Bao9AtAOBMHUelEKPTDgvRcb
         eARHhFvsyagM43CpYMDY16zUcq9C7xCX558YRX+lfWk3WpE6gyrKW2KIw74lnGmVOGp2
         rm9jHcgzcIwmA6+Cmnc3elI9+ZGZVveZy1X3F6mVLtLchT06Gf4wC/z530IGM630Iwqq
         rh3pBcdxMFgkIz5hxJxZZkiJLNeANWs4LFKL//K5sJdzC9nmUos++/3qVkt1qWmQYqM/
         qGY/nOxC6DSxsGigCi+bXsaVwdG7Dg7PD0DWh3elLvouWYRVl3wQ7BB8kjxeX0Adkh1y
         GeWw==
X-Forwarded-Encrypted: i=1; AJvYcCXyoxNkJg6A4n0hVZa7FcVlct9lZoNYqf2hTjXs8IZ7/Sz+PnVVTKIe3kx55Am2WKbtbS1t1LvrkZ8=@lists.infradead.org
X-Gm-Message-State: AOJu0YzHkfRCcFhU/CNQWejxRcZG2K0X8505iDpqnHG1EPOtrm2UXcHj
	O4Ji/pkn1yuXeUEXMVpRz/qnuLg57n/wXeU/QIkHy3F7y3x0cop+WnVsj7n/f8Ao+TMU5TlbDWk
	oSagZykcWA719OV3cKzxhwNiXmf4pAOM5XAbDTCXTIfBC8xEaSeaCk02/vr2bV5k0HEo/
X-Gm-Gg: ASbGncsomjqZRGKVK7dEnO0QvYr5ISubZSfQBVnnoJY42FRUZ/x8UoZaegWtA9SO0H8
	+cUNtG6ezf7oLtgtdfJCRoKjbjbJGvWIFIHoIXGZRYMq9Jp8wSgipjp3hBblOIKzgC6JA5EBclX
	vCLUCz8YMMn3trxGET8PhfQqZnZuPKYmrQvK/3sfpQwhb8tRJi/5R8B/GCRHJC+IjPomECAQjgb
	U/ioa67hGWYLQvBOe+aG9g0eyUW/wRGbNS2/xEeeeGre02Pkro7uaF7OAsEDYPDOrFuIGY/SE3A
	s0EhMnNmQZrkCTWXvRrrM3Q7tG4AQ/Ic1PWLQ41DGMuUicD43NA/R8wGUgrCIeVLPQiuItb39g=
	=
X-Received: by 2002:a17:90a:e7c7:b0:32d:601d:f718 with SMTP id 98e67ed59e1d1-33b51393502mr30831456a91.31.1760420632511;
        Mon, 13 Oct 2025 22:43:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH3trdEiZsOPClRk6Dsifi/viN4KHN7PYNnvGAEG9JdzBt9jMbgdpd2Oj5WQlapWC0s77Wzcw==
X-Received: by 2002:a17:90a:e7c7:b0:32d:601d:f718 with SMTP id 98e67ed59e1d1-33b51393502mr30831433a91.31.1760420632058;
        Mon, 13 Oct 2025 22:43:52 -0700 (PDT)
Received: from [10.218.42.132] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b678df48a83sm11470944a12.31.2025.10.13.22.43.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 22:43:51 -0700 (PDT)
Message-ID: <cd84f10e-c264-43fb-9e3d-20338d85de19@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 11:13:42 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/4] arm64: dts: qcom: Add PCIe 3 support for
 HAMOA-IOT-SOM platform
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org,
        lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
        johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250922075509.3288419-1-ziyue.zhang@oss.qualcomm.com>
 <20250922075509.3288419-4-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20250922075509.3288419-4-ziyue.zhang@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX0baZw049+Qkj
 vH1yIsFQAsCHASK8RrwstdUYNlnyq/0ShOd3cy499q9mM/7FMks/pwtDFBh7I+IWcrpnCFhup7G
 CciTVPQqdloIzXLwZAbRz245WvweNPAhb4l1Wn6sHgxKmd+aBW2j0hd0DwIYv2uju1F5YpOi4mu
 hhl0aum79zR5LZmKol0m2IMLK0TyDD6EqFSHg47pOtbKsoGoWd85PUhFG8OFUA1iSLL8El/aeGw
 iCxz4khPYbVEN/trZIkykwaCbORqR9c+q9iUfuihdgHq2uiOjsL18e/PAxW99eaGaqrhUk0RM2g
 2PPxaZeDuX++gMKlHe1+IyyFgbBqW3dnVVkcSeQ/QWNblmTcIZd24jvJ8aB/tQwXYYv/NTlVmw4
 QSShSg7j+u/cREOVcBdX3kaPNWT2uA==
X-Proofpoint-GUID: g59IL-lxMLPYkUs0NCw-ooUzFBxUW9d1
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68ede319 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=kM70mR4GnouSU5tgWfoA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: g59IL-lxMLPYkUs0NCw-ooUzFBxUW9d1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_09,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_224354_298736_CFA64872 
X-CRM114-Status: GOOD (  16.97  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 9/22/2025 1:25 PM, Ziyue Zhang wrote:
> Update the HAMOA-IOT-SOM device tree to enable PCIe 3 support. Add perst
> wake and clkreq sideband signals and required regulators in PCIe3
> controller and PHY device tree node.
> 
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com
> ---
>   arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 70 +++++++++++++++++++++
>   1 file changed, 70 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> index 0c8ae34c1f37..7486204a4a46 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> @@ -390,6 +390,53 @@ &gpu_zap_shader {
>   	firmware-name = "qcom/x1e80100/gen70500_zap.mbn";
>   };
>   
> +&pm8550ve_8_gpios {
> +	pcie_x8_12v: pcie-12v-default-state {
> +		pins = "gpio8";
> +		function = "normal";
> +		output-enable;
> +		output-high;
> +		bias-pull-down;
> +		power-source = <0>;
> +	};
> +};
> +
> +&pmc8380_3_gpios {
> +	pm_sde7_aux_3p3_en: pcie-aux-3p3-default-state {
> +		pins = "gpio8";
> +		function = "normal";
> +		output-enable;
> +		output-high;
> +		bias-pull-down;
> +		power-source = <0>;
> +	};
> +
> +	pm_sde7_main_3p3_en: pcie-main-3p3-default-state {
> +		pins = "gpio6";
> +		function = "normal";
> +		output-enable;
> +		output-high;
> +		bias-pull-down;
> +		power-source = <0>;
> +	};
> +};
Either squash patch 3/4 with 4/4 or move these pin configuration to
patch 4/4.

- Krishna Chaitanya.
> +
> +&pcie3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie3_default>;
> +	perst-gpios = <&tlmm 143 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 145 GPIO_ACTIVE_LOW>;
> +
> +	status = "okay";
> +};
> +
> +&pcie3_phy {
> +	vdda-phy-supply = <&vreg_l3c_0p8>;
> +	vdda-pll-supply = <&vreg_l3e_1p2>;
> +
> +	status = "okay";
> +};
> +
>   &pcie4 {
>   	perst-gpios = <&tlmm 146 GPIO_ACTIVE_LOW>;
>   	wake-gpios = <&tlmm 148 GPIO_ACTIVE_LOW>;
> @@ -471,6 +518,29 @@ &tlmm {
>   	gpio-reserved-ranges = <34 2>, /* TPM LP & INT */
>   			       <44 4>; /* SPI (TPM) */
>   
> +	pcie3_default: pcie3-default-state {
> +		clkreq-n-pins {
> +			pins = "gpio144";
> +			function = "pcie3_clk";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		perst-n-pins {
> +			pins = "gpio143";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-down;
> +		};
> +
> +		wake-n-pins {
> +			pins = "gpio145";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +	};
> +
>   	pcie4_default: pcie4-default-state {
>   		clkreq-n-pins {
>   			pins = "gpio147";

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
