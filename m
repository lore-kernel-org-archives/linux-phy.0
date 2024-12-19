Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4355E77184
	for <linux-phy@archiver.kernel.org>; Thu, 19 Dec 2024 21:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vGLFTaJLALd5URJLSTzeQrU/zIAFnGtQOpEFCi2e/As=; b=0fJjwKhhc//4qx
	oFGm+3ZZDYPYUrx2uOiV+JrIULJM/h03LpwO/rRGGFUDfWRWu/gWyVhUP2+tOwqiMf5wGsGxE6Cj7
	dPCS8LpTpojdwkftGv1ZFdWquetuS1G7ksQHoIoxKrgHi9tf2Iuxn7FMKmYljVf4xARUOSULv0ciQ
	npapl85/3pqK7MUP26Pg3vkBtU322GUhg53GDayvnz5xIgjIL5o1i6+Bg+El24GtEWodWf2Z6ZFml
	NOyx1j4pvZ8gDdHAOGv6N3RxEWK89htJL0WokZMka6d2n5lMmRe4BkX7Ex7URt4cbo3E0m/S3HSFz
	jNszl8R0DJj0acblRbQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOO8R-00000003A8b-1eCK;
	Thu, 19 Dec 2024 21:32:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOO8O-00000003A84-3oYp
	for linux-phy@lists.infradead.org;
	Thu, 19 Dec 2024 21:32:42 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJGIf7q005361
	for <linux-phy@lists.infradead.org>; Thu, 19 Dec 2024 21:32:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ENDa67ziS+SSPznKUdTsfN1hFPAlsjZ38yLEsFtRxl8=; b=TmDxdn66JKwWwn2w
	tL7GSdgutvXv1AqHQLJyKJQG34w4nlSO3e0Oc7i828ZGBIyeqRGWAn+vPi/KT1fB
	snoQmka0PFqCH7vVbYEwfiv+eQVxEKOIoomG3DaNg2/acDDAIjoNU73w9WcYSS92
	3jmbeO39Z/ABCPKCwB3P18Ezci4zHSpPToMc9fgTMFVXyCGOGQIrXwk8wlhpeIUC
	PZUYO4MX3dIs26QNdCbUloF6cKF5g/FShlQqpu2ZAnxfE5WPm1kwKXorttb0K0RD
	1gMXlKQNk8gKqMAENJtUXhlvtxNZGVje10AnWkxv0d2F2lf8nQBqHa/jUwv3gInW
	UZuB+Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mpw60r9k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 19 Dec 2024 21:32:39 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4679d6f9587so3150301cf.1
        for <linux-phy@lists.infradead.org>; Thu, 19 Dec 2024 13:32:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734643959; x=1735248759;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ENDa67ziS+SSPznKUdTsfN1hFPAlsjZ38yLEsFtRxl8=;
        b=tQehbU8HIqXFz/ax01a0GFlOST8Sdx12QwJAukz6RSqDIMGaaBsuZ88fS5zAWOSm9k
         73ut9VyAOptiv8qjMXgji3s8bSJ4OmUX4A8AFkaUBRfbVpwLmbYI+xDhkZOzhP1t8GWF
         QmaxjT/w+E0MfoCVi1QpBNGMS7Io6nf6SblbMlSfZNDn6AR0OAV/msK1buWI1vxhRjik
         i9WK2lwKxmVWJd8dWFs7RA8lqdVcIU07ADED8BB8MzJfIW5hHU/6AYiSZINIA4gMVG5V
         zQ2NsoEUrPLnmwpF5z3yyieA1OYS3NdVZHgr1P/x29GGYLqUq/CpXznXF6WXTSVdNHQc
         K26g==
X-Forwarded-Encrypted: i=1; AJvYcCUMzgWzd/4CuK0FVup0Kto8gNx6wx7EWeZid/NLWr0L0r2g01taV/WiHEicEN/SBjKAzuYLpdMa2ig=@lists.infradead.org
X-Gm-Message-State: AOJu0YzV5Kac7+BsM4MZBUcznZTXd+KC2YFNfIOpFuyeDCxTNrRg6Hyu
	2QC1yNBzlecsCOhHER2HZD20fV7C68vk4BU4wejUXwoLpAiDIHweT8vT4x5fZPUWXRpGoVVrbt9
	JHvY0czwt5tWtptHxKIIWwxkf21a8xQxC5eBFgG50hysfy+z3JwmBC3Pc0XSj+siq
X-Gm-Gg: ASbGncuepBrhzPMybSzVyZaRtI5ieuQKbZ2iJQqLorTtz/Ocl4xZ5Rx075r1IW7lKa/
	KQNRnZ6fNudJS+ULPxCCG63azYLwsXaUSmn47Yen3yUc9QtU7DYJVDsq2XnT2Fqm/QPlA9MP4l4
	S+YQr32AWg31z3q9hrecAniz/9KQhdYX2/YYE4W68JjWAQl0mFkusWxIyyGiAkq9Z6l+RZwJmt0
	XgHQ3jbeRvf3jjknImMXCBq4uP491FCjqLFe9isNfDnMlqGITz6cgirqJjTzaV8ZKxwidnBuVbb
	olMA1Jj1xpH7awd8Si1COSx7N5fJSIDZWMw=
X-Received: by 2002:a05:622a:1794:b0:467:5715:25c8 with SMTP id d75a77b69052e-46a4a8b81a9mr4279741cf.1.1734643959001;
        Thu, 19 Dec 2024 13:32:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGL7kIua1ME/KQ6yQ6AkFeUfGEOYYj5b7vNMMfXbL3E/2Y15gg3BULYhJ5K9xraAyOzcK8vUg==
X-Received: by 2002:a05:622a:1794:b0:467:5715:25c8 with SMTP id d75a77b69052e-46a4a8b81a9mr4279411cf.1.1734643958545;
        Thu, 19 Dec 2024 13:32:38 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f066130sm104401766b.183.2024.12.19.13.32.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 13:32:38 -0800 (PST)
Message-ID: <366e9b11-d253-4907-9cd2-3781a127b79d@oss.qualcomm.com>
Date: Thu, 19 Dec 2024 22:32:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/5] arm64: dts: qcom: ipq5332: Add PCIe related nodes
To: Varadarajan Narayanan <quic_varada@quicinc.com>, bhelgaas@google.com,
        lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, p.zabel@pengutronix.de,
        quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org,
        quic_srichara@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: Praveenkumar I <quic_ipkumar@quicinc.com>
References: <20241217100359.4017214-1-quic_varada@quicinc.com>
 <20241217100359.4017214-5-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241217100359.4017214-5-quic_varada@quicinc.com>
X-Proofpoint-ORIG-GUID: rlY7khou0sQIu-yAPobYNuJg9qON1lDy
X-Proofpoint-GUID: rlY7khou0sQIu-yAPobYNuJg9qON1lDy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 phishscore=0
 clxscore=1015 spamscore=0 bulkscore=0 impostorscore=0 mlxscore=0
 adultscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412190171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_133241_080915_C4D67F26 
X-CRM114-Status: GOOD (  19.43  )
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

On 17.12.2024 11:03 AM, Varadarajan Narayanan wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Add phy and controller nodes for pcie0_x1 and pcie1_x2.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v3: Fix compatible string for phy nodes
>     Use ipq9574 as backup compatible instead of new compatible for ipq5332
>     Fix mixed case hex addresses
>     Add "mhi" space
>     Removed unnecessary comments and stray blank lines
> 
> v2: Fix nodes' location per address
> ---
> 
>  arch/arm64/boot/dts/qcom/ipq5332.dtsi | 212 +++++++++++++++++++++++++-
>  1 file changed, 210 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> index d3c3e215a15c..add5d50b5fb0 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> @@ -186,6 +186,46 @@ rng: rng@e3000 {
>  			clock-names = "core";
>  		};
>  
> +		pcie0_phy: phy@4b0000{

Please add a space before '{'

[...]

> +		pcie0: pcie@20000000 {
> +			compatible = "qcom,pcie-ipq9574";
> +			reg = <0x00080000 0x3000>,
> +			      <0x20000000 0xf1d>,
> +			      <0x20000f20 0xa8>,
> +			      <0x20001000 0x1000>,
> +			      <0x20100000 0x1000>,
> +			      <0x00083000 0x1000>;
> +			reg-names = "parf", "dbi", "elbi", "atu", "config", "mhi";

Please turn this into a vertical list (both controllers)

> +			device_type = "pci";
> +			linux,pci-domain = <0>;
> +			bus-range = <0x00 0xff>;
> +			num-lanes = <1>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			ranges = <0x01000000 0 0x20200000 0x20200000 0 0x00100000>,
> +				 <0x02000000 0 0x20300000 0x20300000 0 0x0fd00000>;
> +
> +			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "msi0",
> +					  "msi1",
> +					  "msi2",
> +					  "msi3",
> +					  "msi4",
> +					  "msi5",
> +					  "msi6",
> +					  "msi7";
> +

[...]

> +			msi-map = <0x0 &v2m0 0x0 0xffd>;

And move msi-map a line above interrupts (like in x1e80100.dtsi)
plus keep a new line between the last property and status

The rest looks good!

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
