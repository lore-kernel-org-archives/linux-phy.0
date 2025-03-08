Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93D6CC282EC
	for <linux-phy@archiver.kernel.org>; Sat,  8 Mar 2025 14:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29qMxkOH1DfCpjpQcMWGosKKP0Bilmcu5NrNJtDuMd8=; b=GSUyBsx05vLfV1
	ARbzpG7ffFNtPkHtrtOQARPvLNtQUZ952uDGkx/tnBbTAQdM+bW3boqotM6BSWjxV4wH5hoxJCPjA
	fm6PBqL/Wnmp4NdapHjN+CuNlKz8MN+KiW3D8hobbB9BUXy/gJ/UQrxHHXSs3+4E+jW71/em4AUIn
	ZXvPwCpGwu87EoAli0J/1g4SK+jaw1LB1JQSC922iDhB9rD7ckM/zRHg+UXIQCAoU0P4rKFx11LUt
	KloCjFwgfYCzYeofiv0aRpbDGRS8bbKsMhB2AuNlmM8ypGK8FwJ/jbB2NYgrey19jl0oM10ZJMaca
	X4ZYE4BJeF4O9IGUhccA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqvHK-0000000GjiD-16Ae;
	Sat, 08 Mar 2025 14:35:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqvFC-0000000GjQP-3ScR
	for linux-phy@lists.infradead.org;
	Sat, 08 Mar 2025 14:33:40 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 528DEHoT020152
	for <linux-phy@lists.infradead.org>; Sat, 8 Mar 2025 14:33:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ksfv3EfjOI2GzDAtuyZf4+GHBAlf/L+797z5FEAT+XU=; b=RZoN4OB0VGzLP8dn
	1+FixeVlC6fBdYYsZLA3TmXiSeYcWoTj2pLVLKydWvgbLlb8kd4FDjvZ8CioP9aK
	9OOgEVl29SdfwVVoJIpUKp4g2cobhlkH+5eZtwN/nFcKNnTJ7Vj6QwJwZB/oyuG+
	/NixhdV1uJMGvSj8GW614VYdiEpv8F75D/SxjzzD2ljjUUjZrdWxAachRD8sRAxH
	CQ8uNyOv0ISzrvwzueRHNZX1Zj6eZidM8I7h3rk2L3K6FYj7UhAGTwRF21CsNhzX
	WSiceM3IUgRPaG03jIf7ezQw61EVG2D0+I1XxAgOfs2kiFDfZtXeuw1LLtUgHhtj
	jyHswA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458eyp8pf2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 08 Mar 2025 14:33:38 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e8fb83e15fso7169576d6.0
        for <linux-phy@lists.infradead.org>; Sat, 08 Mar 2025 06:33:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741444417; x=1742049217;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ksfv3EfjOI2GzDAtuyZf4+GHBAlf/L+797z5FEAT+XU=;
        b=T/P852cKlcMqcp0lDU+LC7f8rTgH1W43Y3QHMFFU9M7pxmml+jdVeH5/Hyki5Q2j9u
         GShkiW5JViJoYP5YN8sSvPbKwx7tmT/jWWW87Mg78rAq/NNazNo0KVxyrxiRN4qYV3tz
         rBcuT8Gfy/2LCKCAMe77G4B1JB49yMyLqgC4tzFF/KsZXw/C3hCXaxtJvENJNtNdn9Ei
         sYc3GKCeW4mfk8M3soKa8xT++xw16BgAOTPWKw4ma1SnrQ6tyeCidvy/oY3NlR9gNFU8
         0vyc6NDisaiqXQ/Gb7E1gh/XeGKFWzQWtcwbm0zWI71t52A7PfbU3qqT6CO0uQUOjN0b
         V90g==
X-Forwarded-Encrypted: i=1; AJvYcCUMQKDUNVeHBnu+lc8gP1ZmSiGSPEuRYz8d/K0F1cYzQ6T8wt84XI0Xg1Okdwc7IoHIXcFy6lN+xa4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw9wgfcyv2d3YGeSSxowkFiqPgbQA1ZRlHhl7mdinldnh0v2rTG
	c63m05DZ2wceIaBDJbbFSZ7ktHD2kI5hL4DxGKAYu+RRizApcqQrgfE9+G5B5HURFtsAt/jWi6m
	grR2Uwvl9gOc0+N7Ciz6awBTj59WQJu3yfEmqSUnESoA0l7XBKg3RSN5qLwv9UZ5r
X-Gm-Gg: ASbGncvkrl73KgS8LeDZPJuHblpaHUy+LGbEF6yZhiYNOz7PHB7e7GWKSvSjAAXj0i1
	G0ffmckxmrX1A/EfnePJHrLRo7YuPu7n7MfXBrrTplaZyJ8DcHyPf9U26dsEO0BOpe5bIHBLUt1
	5CR22eAuTiYK0ULXlOMsoM1zQOChDuuUdmHwqxDrJjWj4Z8AK0Ay4ENwttnxwSDcZm3E+wmrS8x
	ck+BENQ/OUPlBbSfJwa4ddERhGhlRRI+ZlxpbLqKTegcejNLdZz9qgxmfi9uzWrNDRUQrAxN9nz
	868uCpG7kczMvHtlB6fbZ5LUSmpmdJRwPLUSUnh1sJSEpE1cen7lMFpXqPnUM4uFXTMNiA==
X-Received: by 2002:a05:622a:88:b0:474:f9a1:ffb8 with SMTP id d75a77b69052e-47666f7bc60mr16609721cf.10.1741444416820;
        Sat, 08 Mar 2025 06:33:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFyEFW0H2hxCyi2WwfzN3+z4dl5ktT+/35092XkyZuW2tTKE2+hX9TWmWLNewQKFMc3jZEcnA==
X-Received: by 2002:a05:622a:88:b0:474:f9a1:ffb8 with SMTP id d75a77b69052e-47666f7bc60mr16609591cf.10.1741444416516;
        Sat, 08 Mar 2025 06:33:36 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac2394399aesm443169766b.30.2025.03.08.06.33.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Mar 2025 06:33:36 -0800 (PST)
Message-ID: <d1fdbbcf-f3dc-4233-b2b8-af5102c1feb1@oss.qualcomm.com>
Date: Sat, 8 Mar 2025 15:33:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/9] phy: qcom: Update description for QCOM based eUSB2
 repeater
To: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250304-sm8750_usb_master-v2-0-a698a2e68e06@quicinc.com>
 <20250304-sm8750_usb_master-v2-5-a698a2e68e06@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250304-sm8750_usb_master-v2-5-a698a2e68e06@quicinc.com>
X-Authority-Analysis: v=2.4 cv=A9yWP7WG c=1 sm=1 tr=0 ts=67cc5542 cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=d_B6GAGhsxUSwkCc-B8A:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: elXNm5Nb_evAShP4jd9nNzenY7mHYhim
X-Proofpoint-GUID: elXNm5Nb_evAShP4jd9nNzenY7mHYhim
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-08_05,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=999
 adultscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 impostorscore=0 spamscore=0
 suspectscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503080109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250308_063338_879044_02DA211C 
X-CRM114-Status: GOOD (  20.76  )
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

On 4.03.2025 10:56 PM, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> The eUSB2 repeater that exists in the QCOM PMICs are utilized for several
> different eUSB2 PHY vendors, such as M31 or Synopsys.  Hence, the wording
> needs to be updated to remove associations to a specific vendor.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  drivers/phy/qualcomm/Kconfig | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
> index 846f8c99547fd5132feaa1e41093b8eab51714f9..f281e3b7f3f20b4a4bb1602be94b8a1b041a876f 100644
> --- a/drivers/phy/qualcomm/Kconfig
> +++ b/drivers/phy/qualcomm/Kconfig
> @@ -135,12 +135,12 @@ config PHY_QCOM_SNPS_EUSB2
>  	  on Qualcomm SOCs.
>  
>  config PHY_QCOM_EUSB2_REPEATER
> -	tristate "Qualcomm SNPS eUSB2 Repeater Driver"
> +	tristate "Qualcomm PMIC eUSB2 Repeater Driver"
>  	depends on OF && (ARCH_QCOM || COMPILE_TEST)
>  	select GENERIC_PHY
>  	help
> -	  Enable support for the USB high-speed SNPS eUSB2 repeater on Qualcomm
> -	  PMICs. The repeater is paired with a Synopsys eUSB2 Phy
> +	  Enable support for the USB high-speed eUSB2 repeater on Qualcomm
> +	  PMICs. The repeater can be paired with a Synopsys or M31 eUSB2 Phy
>  	  on Qualcomm SOCs.

I guess the repeater doesn't really check the vendor of the PHY, i.e. if
someone took a SMB2360 and hooked it up to any other eUSB signal, it would
happily crunch through them..

That said, I'm just spitting out words and this is probably good to inform
the user about the actual real-world usage

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
