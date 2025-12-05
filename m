Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2FD4D2F7F1
	for <linux-phy@archiver.kernel.org>; Fri,  5 Dec 2025 13:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/zCRQdFCUK3b0nL9R9YQJ0ImTES9jiGOJoqCF1mKPU=; b=kDiLye9GiXaeyA
	kN/3YwwFSnj1gN3+rCRhTKC1M6PD4YISF44lV4LDrNLTqcqxA1jfaDskFMeqVf8V190aNbvYnHSU/
	bpuJYW+4xXhQUG/Arkr4sgIBmTK16VojBfXXSZSk75SB1QOYp53JtxCbFfW0MIw9v0yXVxu4Qkx62
	qVvty8FXg5duFkNbUynRV8g5OQZuzSko17uEhe15AaMftEK/jnC9k+zUf2O/q8dMrv0uYAV2WwMQQ
	QkRgK/1cAUOLRRP1J4dHmEvOYiIv231S8tD4cTGNlo1SFx1RFf8qn5n7jJiwpfT8i2mnODH5b+GzC
	xMiR6h/Sjff+yz4nY/wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRVvu-00000009Wun-25xN;
	Fri, 05 Dec 2025 13:33:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRVvr-00000009Wto-3QXi
	for linux-phy@lists.infradead.org;
	Fri, 05 Dec 2025 13:33:13 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5CDpjO3643843
	for <linux-phy@lists.infradead.org>; Fri, 5 Dec 2025 13:33:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NEilRw3Pm5b/R4XVm3+IxDimgP8gvCmGMXBVBgylipQ=; b=cSda8SHG0x0quEaG
	GAWtydV3y9Wbp+lRLauKv7Uy8mxi1yFesPQxDhZWN9ukaS+i30X4xo1nOb5qWnRz
	nddeVyN32tEWqBvBGDtfMULci74mKkMYDe2xjgGp9B2bFCw2qrvnaZzu//2Agluz
	uDlV4B55DvULh/eGItnhnr40UiODJdiGkb9ZN/QQj9774GyxsTlZLJiHB+JnDmgy
	J/opFDtW22q4AQcA0Ycu7Pz6joaGCR+bLmF/Bckmt7fU9DY5vI2ds8I6mumZoAi2
	AihT6GucHRk7pPojt9Q3RI3+S55HiiXl/8IkZuLaEaz4VqtkcQ1tgSSv0WRWspfV
	CE3rwA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aur9asewa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 13:33:10 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b10c2ea0b5so67792085a.0
        for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 05:33:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764941590; x=1765546390; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NEilRw3Pm5b/R4XVm3+IxDimgP8gvCmGMXBVBgylipQ=;
        b=EcnD7tFrgwIzyQyVl61NamgC4XJB6vveH04QuQK2ETQPBLGWMMZLazSZhIGrre3pmX
         a7pSX7LWKy3SuXUc6QTYYsJoRajtkDN4/6zVWsoAMHbiEpZTpOK61fMI1XksRzFe+E3I
         S2GR3o4C2yj0NDSjDGVmY9Gi23glwAQqUqu1J2FWC7oL3KFr6U1zm4n8wu6pIJx47eVN
         kS4dJtn2d4YdLXyXCbH+SuKagkDWaPaIuxYf1bGEXjTOy1Lwr7ykRpaXv4eZ7miZj6qB
         gJQTN0HM8CNGGtBM2B8FXWiYeSadTtlMNGxwX2IutrDxUroNih73zjQxfANR46rOb09t
         Cctw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764941590; x=1765546390;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NEilRw3Pm5b/R4XVm3+IxDimgP8gvCmGMXBVBgylipQ=;
        b=mcuwwJ5wr9tMb3TZQwj38uOQaJkMHkX4MeD5jaUin3GfagtgiRihUq6TMQOa9KhoUy
         q5RHCbHvAc1Yi3DQU68IRxji6dICAtvgTWxa7ylo1hnqgd0EVThjNPVtAdXfWMm487DD
         X0bUrVooL+riaqFfReYZqdS/azZdekgYHJv98WQUEWLdljhwar6x1TVuUWIW2XPMzaMC
         ns5Yef6aKziVuyh0+8IgdjO8K/g5sgZpxRozvldqv2gD9QzlI6f+RrY0QAkRQMrr4y/F
         nsimkGav1oEuOg5jrs35of8Vpg2LIg3AFUibxd4G6TQV0OX1dVdAgYTwyCg3TecGLMMp
         +m9g==
X-Forwarded-Encrypted: i=1; AJvYcCVWDvWjYswokHAhPsz1D3IHYo9WpMnf2mEPS976Ru1Dj2h+SB05oCyXFJTO27bYj53VyRLSWysrXb8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyNYkCFOLJLa9uEKRQTql7Hbby6t7y9LFeeD6KYZGMi5rzdXRWW
	T7+Wp+M5KXp9MtEPnt3qE20NCrCIqjekcSumwpW7f4/7iu4A5qs/podHY57XvE10sUPh+FNXu7m
	GXiTJ0ioQS5IdY0IE33Xtup8FlxiY3uNF5g5H4902vG9Dxok7Xh9AVe6DqrhpxjhkgVPj
X-Gm-Gg: ASbGncvHF19XX56HkCH4uz84bbRjk0tZO1GEGoqmz6Q+A58qTqsAOELq1UBNLGneQQ2
	QWEXsoPeuP1HaDzC91VSQmiVE33E9vqS7lv3qfiM5cZStlU2p+FS8WO+KouMScoADzjVOldF9RG
	c6gm5yQBDXG/TDy+IZf6BbvmJlFuo2TzRFPqlffSntDStgRSXMjt4kPw/1hYv8M3jG5pKd5t0gI
	4MO4R5bNdu84wLF/b7qivFtH/XKE87hIyCaXQznRaFBOYOkMnT+C4/e9sV8SPp/aM0DS9k9UkZi
	uMqYBWfNb6F6fhRvTof5WbC03Ffu21Oit6BpcJ1hkTGBBTxFMI9Z4MDnZK9vFrY/QPS5xDruJ5S
	Vf0VaeP2uIJ0ydXitBtwuNPFtoydnjhOnwbMzuCvCVZWo4SRA/OR/msvtG+k1Y/jjJw==
X-Received: by 2002:a05:620a:1a9c:b0:89a:7d24:f5eb with SMTP id af79cd13be357-8b5e6e8350cmr974020785a.9.1764941589788;
        Fri, 05 Dec 2025 05:33:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFTjTKXrFKkSK/V0KfZ7fy94EAD0Cg10uR1dF7MXrkT0U1GkoASZlYw6J8tBsUcuJVDIGH08g==
X-Received: by 2002:a05:620a:1a9c:b0:89a:7d24:f5eb with SMTP id af79cd13be357-8b5e6e8350cmr974014885a.9.1764941589261;
        Fri, 05 Dec 2025 05:33:09 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f44d3d9esm357996666b.30.2025.12.05.05.33.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 05:33:08 -0800 (PST)
Message-ID: <2190ecf7-5dc3-4264-b2b9-e8a20d099b40@oss.qualcomm.com>
Date: Fri, 5 Dec 2025 14:33:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sm8750-mtp: Add eusb2 repeater
 tuning parameters
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss
 <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
 <20251204044644.3072086-4-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251204044644.3072086-4-krishna.kurapati@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Veb6/Vp9 c=1 sm=1 tr=0 ts=6932df16 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=7xTNHD16rym9O0bEjTgA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: OMu9XsQeEeYU6rxB7nLEj0bdycZHFEsW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDA5NyBTYWx0ZWRfX0UFxf1TLhq4D
 DSbD8LQi5+3EJnUAvg89mO4zpcDNsl23dASSzLN1UO5aglOxgkkC0a5aut7SZ1D128fpAAEg/V2
 oOiPH5P6YvcBj545PFL6BE94OkB32zNHGt3yTFwPipMXeYWrTlEl4pLh3PoF4Bsw0fkgh/U/o4R
 rjY0tJL1tXcRSXdi9+8AekrGsAJzcpGWBp+W75FKpYjz9RWlqIvDb/t2wF+YtAgywXDs8p0gnAy
 minUilSyI7oI8o6I4oxxgzEWPM6DCNaDdcwivkM98C1FjwMSnIRu3B3R0O1WTHgsaiMciy1gOOC
 tYOsE6gY0MMjtY0u5OgjsOJ9HGXIGMsOLLp+kzXEo+LvrxGfc2tbtFqYcOM204HvUij1HSL4SXy
 KynrZiNQAL/YeNdqi98T2VL+RjLrzA==
X-Proofpoint-ORIG-GUID: OMu9XsQeEeYU6rxB7nLEj0bdycZHFEsW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_04,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 adultscore=0 suspectscore=0
 spamscore=0 malwarescore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_053311_993047_89505124 
X-CRM114-Status: GOOD (  13.86  )
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

On 12/4/25 5:46 AM, Krishna Kurapati wrote:
> Add eusb2 repeater tuning parameters for MTP platform.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> index c8cb521b4c26..b9a4d1c99816 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> @@ -1041,6 +1041,10 @@ wifi@0 {
>  &pmih0108_eusb2_repeater {
>  	status = "okay";
>  
> +	qcom,tune-usb2-preem = /bits/ 8 <0x3>;
> +	qcom,tune-usb2-amplitude = /bits/ 8 <0xa>;
> +	qcom,squelch-detector-bp = <(-2000)>;

This happens to be the only(?) node in this file that has status first
instead of last. May I ask you to fix that up, since it's even visible
in the diff?

Also, does the QRD also need a similar update?

Konrad

> +
>  	vdd18-supply = <&vreg_l15b_1p8>;
>  	vdd3-supply = <&vreg_l5b_3p1>;
>  };

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
