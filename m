Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30876E7718C
	for <linux-phy@archiver.kernel.org>; Thu, 19 Dec 2024 21:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNO3f69dMOgnZ6TzFSzF1JvUkcSH7PoxY0H63UhZqzI=; b=h5nza1PQaulxOJ
	MlXJODMtl7+G1N930BUdQCfyNLDH1QPWSGDAi6G+Q64rZO38NtJRQ8bAHqeTITHFFocCZzoFL5lIr
	oMU/xwURrZkdxtlCXW7RHO0E5E2t1sKDLng+KlVss/tDHdsszbznP/A95zB5jPUT3GZf4qsCNxqXL
	T3k5q53wlghCdZG/BgQ636yPGcJgoltfX3xJqIjV16z9EN5bYPFqgcVYG3EmShFpprCk18WlP2elZ
	Zjxiv20xJI98q5qYvKRGwbAot+AaBSdiA+v02Zf6zMQ5D3t7OZwSPxXNurlqcIB9CWxBxgZm0DPLW
	TVrCA7mGGKBtyjmJMYsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOOAa-00000003AbG-3gzc;
	Thu, 19 Dec 2024 21:34:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOOAY-00000003AZP-196c
	for linux-phy@lists.infradead.org;
	Thu, 19 Dec 2024 21:34:55 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJLOcCP029521
	for <linux-phy@lists.infradead.org>; Thu, 19 Dec 2024 21:34:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tnnxDdh3Ddg+joVXVofvYsyNFGq/oIrBrCCuqTFAbSA=; b=StYEXxLFeccHNWFy
	y5+0OMtPgPNPInYzVqSdUq62t7Cg1MQwNDlTsihdmh9OVmxukCtyrNyTQpl7uRcX
	ofu64Sbyh5Eka7Rixcsevc8RGjrVGQ5r7zhxz9ocf40WPNof+JoDwj14y5MLww/7
	xG3U4/uHnGcUrhWYzfaLxojEZht77NcvROjaETObLQTnH5jIMXvmuwZEdHkqSI0k
	w9ujDZzOQQ2c1XVHIq6lRscI4vtwwEe7uCgNekXf7l+EUqrovO/3OIv9UTceTJsY
	RxP+L7JNhE2KOqN86mq6sBGFAz7o+c9VSq3uf15OURiP9PXxDG3xbVGndo6O27H0
	znAnPA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mu53022g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 19 Dec 2024 21:34:53 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-467a0d7fb9fso3003161cf.2
        for <linux-phy@lists.infradead.org>; Thu, 19 Dec 2024 13:34:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734644092; x=1735248892;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tnnxDdh3Ddg+joVXVofvYsyNFGq/oIrBrCCuqTFAbSA=;
        b=UZytMoTHGn/Mum2kpA17WHxrvYaJykVvOlMzKb73Xu7Etykzdz0Kd3sC+kM9srvY/Z
         Ma+BfN/9RJAOSXJWbrqIfgk30W74wLin2yREUUTwR3EwU81NwH38x4lP2SOpIchfjpvM
         lAXLwIT0VMmj3bsGCx1boUJ6nQUsRTslQwyLKU8zmnqDIJ1jpV/r5eukR4teod9UBZuF
         MrY31E7UlSM+s8cop1K0VdoTmADroimjFnLCdTZy2nqY3/tQwuhMXlgIag3PQtwGR0h8
         2/mezzUJXFkCpNv7oNLDDobEkOD+1C1ThYcQC/RVX/+QhAR2OYlGJSwrOHqepJ8nykaf
         uTqQ==
X-Forwarded-Encrypted: i=1; AJvYcCX0wPu5jQzerS2esJll5A8Wkva9SbsqXuuh+rYSTGvjiIpA3IU0Q96sg+dBLIwSl1cSrSCvr8CrndY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yze9SHHAdMWqfUCGFRrk7wq5H03rthmD73pGa45VTP/yl/Ps2YI
	kOB6f/fOFNtJAKUNQ+NBjOtS/zew0CqUrRudXBoNXGz3v94Nsz806MAWLyI3YkphzLH2SmRsikX
	hTmFoLQjF13+1Guyq6mrzJu7aY/wONxBt57B3mtIxWLLFKKEY8HuLlv0TQ1Pgj82/
X-Gm-Gg: ASbGncuQw8EIaA/WHSiVLbCcXdaFiVoL5SQQzmKVwVrGET+O+S7qYwdNeK4uWV0loFk
	esum6YYgRpcNHe/8UF8Ye2OMr9llG8W4EVeG1DTBRbWggkHcUgiOYQY87eooLLJr2RKEkxbhUdu
	q3T5feyll8IOplA40kI+ZaBaivvtxerGoh8B3pqszSEdtWJPVpLiVuI3J42DX+pN/+G2YXXIhLg
	zYUxLNAR5Qf0UHmzotMEkIimhc0myODXnNxaFjjMrw2ELA1pZ9kx6zdXICg3SwtJZV6E5JySVy1
	lot1xog9j1bjzMYhDWp3iNTCq0qVox0FUIY=
X-Received: by 2002:a05:622a:391:b0:467:6bbf:c1ab with SMTP id d75a77b69052e-46a4a8b605amr3438031cf.3.1734644091800;
        Thu, 19 Dec 2024 13:34:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEVjawbA10Ym60gE7irfkFrd/QhB0O9kTyh4GjAE2jzgSGUi1LyX7S4W/jTHrm9J8Pl6KGrUA==
X-Received: by 2002:a05:622a:391:b0:467:6bbf:c1ab with SMTP id d75a77b69052e-46a4a8b605amr3437771cf.3.1734644091398;
        Thu, 19 Dec 2024 13:34:51 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80675a6ddsm1006047a12.3.2024.12.19.13.34.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 13:34:50 -0800 (PST)
Message-ID: <a33c3da8-0f38-4194-9eb5-249cf6848928@oss.qualcomm.com>
Date: Thu, 19 Dec 2024 22:34:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: ipq5332-rdp441: Enable PCIe phys
 and controllers
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
 <20241217100359.4017214-6-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241217100359.4017214-6-quic_varada@quicinc.com>
X-Proofpoint-ORIG-GUID: spuKjqDx-aPvblYnWa6x5OfjBR36UzBl
X-Proofpoint-GUID: spuKjqDx-aPvblYnWa6x5OfjBR36UzBl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 impostorscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 mlxlogscore=999 mlxscore=0 bulkscore=0 spamscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412190171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_133454_324780_26496338 
X-CRM114-Status: GOOD (  16.62  )
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
> Enable the PCIe controller and PHY nodes for RDP 441.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v3: Reorder nodes alphabetically
>     Fix commit subject
> ---
>  arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts | 74 +++++++++++++++++++++
>  1 file changed, 74 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts b/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts
> index 846413817e9a..2be23827b481 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts
> @@ -32,6 +32,32 @@ &sdhc {
>  	status = "okay";
>  };
>  
> +&pcie0_phy {
> +	status = "okay";
> +};
> +
> +&pcie0 {

Node names with suffixes sort below node names without suffixes

Python's PartialEq for strings works well for determining this

>>> 'pcie0_phy' < 'pcie0'
False

>>> 'a' < 'b'
True

> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie0_default>;

Please follow this order:

property-n
property-names

> +
> +	perst-gpios = <&tlmm 38 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 39 GPIO_ACTIVE_LOW>;
> +	status = "okay";

And keep a newline before status

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
