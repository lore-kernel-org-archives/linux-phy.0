Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10F6DC282EC
	for <linux-phy@archiver.kernel.org>; Tue, 11 Mar 2025 09:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X01yZ1JyopOSaVVffP9d979e59fd01ednPrpGfmOf7M=; b=rIlge23RE3xoyF
	4icI2P2ytNY1MnbDa6YyDw1IALkCgG9Dxz13Op3G/b6hWFLJQ+Bet5YrfMdUs0eIcYXoZxZJ+wVuK
	z6W9MFDd8UeJTVexpcS8nY73i188p+3qXAdsIyoM2YEps1acFZPaviOWHIT8teUHgA6RDdh8NJX2n
	yvziUB3DG5aaUYZTPiTDOj5KiQqaBjppoNCOq/0hrwJmVeZZqDGLXEve49kYZc3mSRSaCxPAQvYvq
	aOMwTU4sv20KelZLQVs1MNXRb5O+FdLlyGrfbJJ67cmtkxKSKpaJSPTAOKZFfMJaEiK0mQljLoXnR
	ZiGAOw5YoqJcgy9Zxwpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trwFy-00000005Ccz-1kpv;
	Tue, 11 Mar 2025 09:50:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trwER-00000005CHg-1VRT
	for linux-phy@lists.infradead.org;
	Tue, 11 Mar 2025 09:49:04 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52B18up4014307
	for <linux-phy@lists.infradead.org>; Tue, 11 Mar 2025 09:49:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rACPdSRNkmLMa1e1/sG0V0Fc6/zQY9hUNWp6hfkkYkc=; b=iqbfHnBvvs3iKmg3
	5W3K/kuvep5q3Srax8A+jcHFh0yuFAdBS/jm4SZg34dyfDbPEHxId1f8IshI/7lG
	rWTPwSCMZdCFEAu+/8FYDDJiFjqpcdfAYVl3/sRHaB2bNDeo6ddPYpw2A+73Q1sG
	UDUIGlMNwLsqg4dyqLg+Woss3dMJ8GAaaBKSBFq9nvOGXa05HV1DN+JDeBBlIeGW
	wdpcYjNKrffIBJXoesNFXTaKRiUqbuL6HUm3aEC3bYNqQZhtUyC8Dik3pFNFRXRB
	FaHM48cbXs25xCsLiQQSg3cQ0Q6f1kAqlxjMD4pz7NwyjgVfLcT9ZChzb/0UXfs3
	UEazuQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ab8m1bxv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 11 Mar 2025 09:49:01 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-46e78a271d3so11175781cf.3
        for <linux-phy@lists.infradead.org>; Tue, 11 Mar 2025 02:49:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741686540; x=1742291340;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rACPdSRNkmLMa1e1/sG0V0Fc6/zQY9hUNWp6hfkkYkc=;
        b=W2yhszxrMEVUr/tNebdq9foOZNWrne3G0Adc/ejBj91SMnHrn4auB5xjxGlBu3lgm+
         aUYRpppkRsAzxIqnOaF+4ODiXBhr5tKiF+JHzW3dppLnQjY3JZFe3/ngeUhaoSMXaLL3
         InyEgWnGdn8at/ubHmJ5ei8hJOGZR89yHLiGWJ0TcLmYQB+IBtZM+Zakq0RVPhD3iiFw
         iGY7JXW9i0MdHHENw1IlAI7iryk/dxapVfgPbY0tMzoVoM0e0FTZM2AlTh0sANqmTRMF
         GTPAtYyK0j56oJikyrk7CCmxIrWk9CNmIMyitYHoIVqgXcu82na7sQpGsPxtsdbPvLZw
         NVCA==
X-Forwarded-Encrypted: i=1; AJvYcCXJTAp5pN0QCM4FfI5MEOQV6/gyLBf5nb9w91tvO+0ZI3X8KI8OezaeGI2OURwAHSEZP8/mLcHqGvo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1wyQ7a0hnFSy2d73LLJpOFHgh8XegdGA/X/xV6QdiYz78yOP+
	VmgUsG38uC35r+ybDaDp6RbK34eIfg4iFnqtKarKHMOYYrkDaP/RhZywraz+dTcgDthWIqyIvbr
	ufDDi7coopb/yekBWzy2Lmq0atp1nXqJC/+GBaBhZuGEy0ROJkWz1ufLmpT8z+lVs
X-Gm-Gg: ASbGnctFf9Jc09krPV70aa8tyBdeWzy7M++sC9byBKjOPUhMIGOaUAyR4lKRe17FFUm
	3oKSPVsimQ8j5z4DcCl6G2XXN45sqRKOqc0Uu+REuF/ugmcOiekXW6Dmszfa7OUWuGKjUvycvM8
	7p9HI7F0H0mkZGQHtuj7FVmXNazX35DTGr8H7fo6lPPJIE7OrdwPCXUglu2hqj4CXLT0R/rzMWa
	LVygNVZ6RGfL1mYDBVFwV8iO/R9gFD9FLrTVBfejA1t+Xv1DhO2TrkU4e83W0DiAmnRVuLJ6+g6
	wy/htfBqpKlTo1zMf/LaIdm4/2RLwhr8zCYHypj51ye7ROSOVuBFEMvuYMdhsXVAbuvheg==
X-Received: by 2002:a05:6214:5298:b0:6e8:ef41:a0eb with SMTP id 6a1803df08f44-6ea3a6ab16cmr14275766d6.11.1741686540326;
        Tue, 11 Mar 2025 02:49:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRkM5w4WJD3Nr9ntbEIn7Wwi9dnArODouwKFMmnpnNNkFao0uXEHwZKLKOV5etn/T2WBM7HA==
X-Received: by 2002:a05:6214:5298:b0:6e8:ef41:a0eb with SMTP id 6a1803df08f44-6ea3a6ab16cmr14275466d6.11.1741686539894;
        Tue, 11 Mar 2025 02:48:59 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac2a6c9a537sm257191266b.71.2025.03.11.02.48.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Mar 2025 02:48:59 -0700 (PDT)
Message-ID: <ccb736ac-d629-4fd4-ba02-a42e4d4daaa2@oss.qualcomm.com>
Date: Tue, 11 Mar 2025 10:48:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] arm64: dts: qcom: qcs615: enable pcie
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, bhelgaas@google.com,
        lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, dmitry.baryshkov@linaro.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org
Cc: quic_qianyu@quicinc.com, quic_krichai@quicinc.com, johan+linaro@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250310065613.151598-1-quic_ziyuzhan@quicinc.com>
 <20250310065613.151598-3-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250310065613.151598-3-quic_ziyuzhan@quicinc.com>
X-Proofpoint-ORIG-GUID: IEqS82lk_s5dvNUdxqpdLwKPQ4aaVqQL
X-Authority-Analysis: v=2.4 cv=K9nYHzWI c=1 sm=1 tr=0 ts=67d0070d cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=6X6hr80gjlHG-dsRnmcA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: IEqS82lk_s5dvNUdxqpdLwKPQ4aaVqQL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-11_01,2025-03-11_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 impostorscore=0 spamscore=0 mlxlogscore=999 clxscore=1015
 priorityscore=1501 mlxscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 adultscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503110066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_024903_414183_E251CFC3 
X-CRM114-Status: GOOD (  16.01  )
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

On 3/10/25 7:56 AM, Ziyue Zhang wrote:
> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> 
> Add configurations in devicetree for PCIe0, including registers, clocks,
> interrupts and phy setting sequence.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 142 +++++++++++++++++++++++++++
>  1 file changed, 142 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index f4abfad474ea..282072084435 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -1001,6 +1001,148 @@ mmss_noc: interconnect@1740000 {
>  			qcom,bcm-voters = <&apps_bcm_voter>;
>  		};
>  
> +	pcie: pcie@1c08000 {

Please set your tab size to 8

> +		device_type = "pci";
> +		compatible = "qcom,pcie-sm8550", "qcom,qcs615-pcie";

This is saying "this device is a SM8550 PCIe controller, which is
compatible with QCS615's PCIe controller - should be the other way
around.. Or according to the bindings you added in patch 1, this
should just be "qcom,qcs615-pcie"

> +		reg = <0x0 0x01c08000 0x0 0x3000>,
> +		      <0x0 0x40000000 0x0 0xf1d>,
> +		      <0x0 0x40000f20 0x0 0xa8>,
> +		      <0x0 0x40001000 0x0 0x1000>,
> +		      <0x0 0x40100000 0x0 0x100000>,
> +		      <0x0 0x01c0b000 0x0 0x1000>;

[...]

> +		phys = <&pcie_phy>;
> +		phy-names = "pciephy";
> +
> +		operating-points-v2 = <&pcie_opp_table>;
> +
> +		status = "disabled";
> +		pcie_opp_table: opp-table {

Please add a newline before the subnode

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
