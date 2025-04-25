Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F6E9C369C2
	for <linux-phy@archiver.kernel.org>; Fri, 25 Apr 2025 20:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gl/jpWRteXObUHe93G3IcDWk7xQPpJ91ZphEghfDVKA=; b=e1fi5h72chnvgs
	TdNR7ruA7pZMG+gO6ljhaL8eKmSHAp4BFHA3wNgNYiOaTn/fRgfGt4eoNnPXJotzSeRecpi9LXa+6
	IDVG1jprKKT/otWUkCGt6EvJvN4DCAGVS83VQ89lo5mRAMSxWoWGnI0zGJjNfP0aaI+SuE0Cjxadf
	Lzmdy+rIw3W9yCPU5zowmrWXjho9fZuwKTEo6VOVLACA+nipzXxcc5juIvTeMyFoXCB15ZLz/02BM
	2Kp4bBpBMxedyrD7UJfTh/kdeDICFuX8bLu2dLYhCZQ+duEf1W3V7xEcAjbK8YUfnRBj1vZ08SINK
	Iw0tgx7E5SiE5y70B4rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8Q1o-00000000r18-3Cvc;
	Fri, 25 Apr 2025 20:52:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8Q1l-00000000qz2-2UzX
	for linux-phy@lists.infradead.org;
	Fri, 25 Apr 2025 20:52:07 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGK2BR004881
	for <linux-phy@lists.infradead.org>; Fri, 25 Apr 2025 20:52:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	khW+OjIu3QFmUYnH4/qhhaS7xRKHn2LSxx6Dexoku1Q=; b=TNgYJy8YLl6+dENP
	8ww9i+7XwieZ6kWucsJqjvRHXJPliQhHagU1H74m1RGdoSQLbLJEYkt50EA0s7aq
	lgubZPZe5PrKt0qvh7h/G8wwL/zJUa0WIJmcdug5dD6Bg+saz/f1Og2LngVJV0Nu
	iFTCvk/YFMcMSobQcsyYapjWNXkf2Xw547VIyCxTFicSeLbjIKF2pZQWfyBCZkO7
	32poQt/HJQIhLJnkMer/vUfno0zw4cUno0vCP904TTBHVErCSwr2AbwRaOxQLXs5
	+fw4MRlxchyg1ZGPbrmoEDsiVDU6uT4iLWqnSQDEigF8OYiW9oRRg+BPAOaouPb1
	ZDU6DA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh0a9pa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 25 Apr 2025 20:52:03 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8f3c21043so6444006d6.1
        for <linux-phy@lists.infradead.org>; Fri, 25 Apr 2025 13:52:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745614322; x=1746219122;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=khW+OjIu3QFmUYnH4/qhhaS7xRKHn2LSxx6Dexoku1Q=;
        b=w+WZzTYS9V8lr4xpIavTF4Lqy5kyOEFaCJW0Sg15gCFRn8DkkTnU+4bVCdgNJFQNsl
         f75LYh8FvpfIyCvohjlrHnlTz4++lN6qq3VTuODjrJJz3mzLRWyHR0iDKDWuOLm3/mDD
         VXNQAuUyEIv/XWKTCY4HQSQh7IYWd/1e1sIY4P4ewdvXEfUy6WyMoMVTVdiVZ9xLLcVM
         PqhST9fFOrRvy9l/xyWyss6VaQwfQDw4eAJQ0BVgC+IH1cvCFo+SQlcnNNy6Bmh8VqCc
         isKTihN0zIJGXGIHdC1qLVLfGi2gc0PNGp9ZOQ0uzIApl8FI4FQJHSY7IOeGjah9ET5l
         /pqA==
X-Forwarded-Encrypted: i=1; AJvYcCX5Mf/yA6pQ+ixhpewdPglNzcAypMfZlGpxdKDJGRbKLTBc44IFX0pLwk72qBC7a1lwb1H2qPxPtkY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyKAqT9YKR9iCEmw7pBJotCnCh69nBuq4QZ5pyfE2L9Xvw72zn9
	Og7yFx7TjYCLntpHLOblcCHxtIMPi9EbYHo2xBluHUgwTm678NR/2cA8p97fTN2VOUhSqvCaiki
	HuRO/UHcz5UyRKcfISyxVslmEU+6THLbDu332z6QsGlb1IvIUHUWkgD0Po4Wo/BUD
X-Gm-Gg: ASbGncuhTJlsMILQH6CAXN5HGeJXLRrCMG36hulbhViSmBMpGKsQ8+r4nkNtId5CtKd
	E9a4RPSBWSxbC9Cbe3uDPo6LL9S/4RSd45d0Tzn6u8ShWXRLAybyuw22u8XdwSCpzwPPmRhpXBn
	5DVIoJ0uq9U7s8wH0wW2GkLmpko3IZNFZrgvuh+pPFaXXYE+61TVGPsNlISHaOUVbIkTUfnx3Lr
	4NUS6sJYruDtj8pjTHluoV4qtjJLZjVY5M6Mtt/PnDazQam1tjiNNi3KEZgyBYbs/3S21dJFmOO
	ITvD48DjqfUUyDyOZfg5AjG+5umu49pMediTBtAuyLM6VVrPz2CCdmS739vy7P1UwkE=
X-Received: by 2002:a05:620a:1a04:b0:7c3:d3a0:578d with SMTP id af79cd13be357-7c9607ce29bmr234168185a.14.1745614322379;
        Fri, 25 Apr 2025 13:52:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELNiJdwRrt+X3+ZmBmj8ToCx5SguQhymg571V2ufzv8cclkQ1COqWoTRaO72k8xjo3W2vT0Q==
X-Received: by 2002:a05:620a:1a04:b0:7c3:d3a0:578d with SMTP id af79cd13be357-7c9607ce29bmr234165185a.14.1745614321971;
        Fri, 25 Apr 2025 13:52:01 -0700 (PDT)
Received: from [192.168.65.156] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6ecfa354sm185152266b.120.2025.04.25.13.51.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 13:52:01 -0700 (PDT)
Message-ID: <04201672-3d7c-4994-bdbd-959ec7a697a2@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 22:51:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] arm64: dts: qcom: ipq5018: Add PCIe related nodes
To: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        20250317100029.881286-1-quic_varada@quicinc.com,
        20250317100029.881286-2-quic_varada@quicinc.com,
        Sricharan R <quic_srichara@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250425-ipq5018-pcie-v8-0-03ee75c776dc@outlook.com>
 <20250425-ipq5018-pcie-v8-1-03ee75c776dc@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250425-ipq5018-pcie-v8-1-03ee75c776dc@outlook.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDE1MCBTYWx0ZWRfXxMdvxb8hOVjL FTJ9gFWUeHDktr3fvZZ0kMv7SnuRhYNwBd8WloghL/jpT2A5pF+r9OJhYXQ+rPlgxPYTSbDIoeB OrEgzqt9XxSxMGGyXqB+wSnzRqIyv0BQX0RI6nfEjMlBlNPZC75lZj95kUq1OS1texOjzI0TXhy
 UC1u1Zm/iIGZSfdd9gYfYZreZl700r5D3kQjNLOasG0N+fYUe8S3F0xuS/4nxas4JjMdBBfQPOY oAZECwlZ7OP5+tY1H2G99O+vIWN5JbVKTX0wn20cG/biz6zzCPP5gsYHPakDgTBLI0xpTfy7z6I 0Sm87hp2lTkIpHROsRcI2QZlFYaT4cxfOzv7fp9WcryWptXJjiB08uvIojCTGFX7+QQp/+lZ5oa
 RiC9awzlz+hulOl3Lq5NFczJvkSv2Vks84TVKqGdl8n2sYJvTwBULqN+bf8qkp1daelDclDT
X-Proofpoint-GUID: lbNxuc8csKNJGA0yD6J8WH0n1ccM6Uu7
X-Authority-Analysis: v=2.4 cv=ZuTtK87G c=1 sm=1 tr=0 ts=680bf5f3 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=UqCG9HQmAAAA:8
 a=g69xjaZfg-qW7mxf-08A:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: lbNxuc8csKNJGA0yD6J8WH0n1ccM6Uu7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 mlxscore=0 adultscore=0 lowpriorityscore=0
 mlxlogscore=790 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250425_135205_759728_84223F2F 
X-CRM114-Status: GOOD (  16.69  )
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

On 4/25/25 2:00 PM, George Moussalem via B4 Relay wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Add phy and controller nodes for a 2-lane Gen2 and
> a 1-lane Gen2 PCIe bus. IPQ5018 has 8 MSI SPI interrupts and
> one global interrupt.
> 
> NOTE: the PCIe controller supports gen3, yet the phy is limited to gen2.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan R <quic_srichara@quicinc.com>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 246 +++++++++++++++++++++++++++++++++-
>  1 file changed, 244 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> index 8914f2ef0bc47fda243b19174f77ce73fc10757d..917c6eb7c227e405e9216125cff15551f57839a5 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> @@ -147,6 +147,40 @@ usbphy0: phy@5b000 {
>  			status = "disabled";
>  		};
>  
> +		pcie1_phy: phy@7e000{

"@7e000 {"

[...]

> +		pcie0_phy: phy@86000{

ditto

[...]

> +
> +			/*
> +			 * While the PCIe controller supports gen3,
> +			 * the phy is limited to gen2. Hence, limit
> +			 * the link speed to gen2.
> +			 */

/* The controller supports Gen3, but the connected PHY is only Gen2-capable */

and it nicely fits into 1 line!

With that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
