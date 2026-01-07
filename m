Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F2F8CE9D48
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jan 2026 12:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=60kPDLp/UYj3htLM+9v0lv9tUJbVbAYmEkds8tt4eKI=; b=EIjj/t7+f/jnV5
	dGkSRBmTS2BjWaDy8lWt2O5iVwkcrImPrKHSoKwmCNt8p1zTLuayhNh5ijNI3xx+Rcs09EcfIvEJP
	4gEoGWS27Ucxgt2OCP+aJ+NioENQcaENS7W/I23Hl2pI+NXccLIXIvnrUQ8UD6jStABLamDRaE4CS
	/tvpvH313Yx2hAFYxWXeDB3+tHsEutklHxGT+GwXXYS2lsA1ZoMzZ0uPwftn3puV0jTiCDnJmSKJ0
	ZtAurptPOAERYGUIpKTwErxb4dLMVngY6V1wVTMyH3PxY06vn9ydZM4U3f+Tnt84VW86RWQYmJNyu
	NiX4b3q8vOphm9aJbDgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdSGD-0000000Erzk-0gUv;
	Wed, 07 Jan 2026 12:03:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdSGA-0000000ErzM-1wnT
	for linux-phy@lists.infradead.org;
	Wed, 07 Jan 2026 12:03:31 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60791VPd1979976
	for <linux-phy@lists.infradead.org>; Wed, 7 Jan 2026 12:03:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5OYIuWlfNmnER+pgxQN0927vrOsdUT6g48em04i5dIM=; b=H839W9pnQG6eZ8c1
	HTH66kEY0wsIqHxHKei1nAj7N3xuiARn0lGM1HgyVtqsGtfy+GSFpSnFPjy/GH77
	jdbitQjZyhKAVp1OEK3jtcRdJ4wdu74J9zHSZ96EadBezXuqkIQCvCTieRp5HIVD
	n2H5U5QRR1rdD/T84PwDQrP49Q6evMGf+hbREh7S+mY5i1r/2rsWw5O+CC7fP+7n
	faf3i4D569aMHHIg9WRsFLZW4fwQ1wDqo4V702ZeXT+vTGN+RCUxnTISkthLi2aw
	mhK/bpjw4DCo4LZ9/NlJ4kpQhDIEu+jNfDvLBYxklJezx1uM3x8m0tDjfMnI/5sJ
	59+J8A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhdavhy7b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 12:03:28 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f1e17aa706so8014701cf.2
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 04:03:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767787408; x=1768392208; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5OYIuWlfNmnER+pgxQN0927vrOsdUT6g48em04i5dIM=;
        b=aZbge13RpmAgfsoKeZuu/vOb6YorLw3tLJwMtCgXxpkTaMkRfcNoS23RD31A0uNYZv
         BS+t1QGHHHpzKb8jztTfFrT5hW8gsmVgiiwbxNtjEbUO7AEoXFzOIX4XF0KlPhIM4f5b
         sfaC75+IaPZR8JqMvaqfq2dLus0VFEHqx121afqd6fSuZKmEVeVGTE0j+DfOVfq/K6O/
         3ORileCFqec/d5UeR70GSjG5K9UDbVBPpft/bPxbUVxqCoR7eG/MkLMiMijQ2TB9f/W8
         T0Jjf5811P5VIp35NEynfgm5i41qHLmKaiSQe/ot6W4REcdn3Mikv7ZgaLq6HUIcevwk
         AErw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767787408; x=1768392208;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5OYIuWlfNmnER+pgxQN0927vrOsdUT6g48em04i5dIM=;
        b=DfmM3s9zC4xYgtyfr1Qg0zxeph18sAPzkCynZUSSRbL4JlTdxvJ0oH3tzJ75rw5leg
         7x1wMq3W9qXsm5kxFEMtZNqGZTslgbi0nVIU+DFCJbKQEMjy0RUVdag+jtW6oVbQSJ6e
         ZedZtqiHedNFpLHZ7zL1nRMvqpU6UYANrUhSJHvXZP6D95J7JHrMszubusiIHEvgaNGt
         T1hUB9lukgzLvv4yNiFUuG+apc0fhwrA1qhWK+8Wb1ROZihqIgCE78L6bFyDJMcELlBZ
         VpfpXhDYLHXXpCHJnaabEdFLsMCy0SFREUmVv2Q4IpBdbBIJIYTfAUsrtR7167Bp2GK1
         mZrg==
X-Forwarded-Encrypted: i=1; AJvYcCVmC9UzDR+LTZtMonWnSSRsrLol8hN/L+ICzYTlJIzixWOqf6pxiIlaVnHC9SXPc2mk8G40/wNUfpU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw52P5IAJWhJwdkxHVFJrZjdczAKqP3++qFP3IwApCQSs7OJGjf
	U5pRIUidgP44Ivu3mc+CGGQ058Z1nspdEZpvJKbbcFlLmaxTvbDSyO9e4HVa+3kHAy7SoxInKHi
	pim2AKR65CILDFe8/3W4RMJAdRfgnCMoEwj15KBbO000qMjDcGtJZ24pRttLu3brjOYMY
X-Gm-Gg: AY/fxX6RW4wksP8Iu/mDDiIPLuaHjC9E3ou9yUWTom/8GnBv21OqYvRox92uBWsk2gT
	oGd6qweqSX2jGmwStoPydAG+ehqezEybKbAgDzWzrDWMRG+xU8s16Mqk8mog7BTowAbq0zxp/1w
	QHj9gi/J2j6d97MTiXxNXzwBD/GxCjxqV+O4dxwtzcotf8A/MhYXFj6PJ+9LjOCRUN62tt/r6Pc
	pHu7m0Y2AUM7Nth36ZEZZCfSWuLLcQldKxAP1W2dutiDkvFNyPQyQumePZqsp7NTIFxgds4HWDc
	t5uPhve9GMex7lpNlyRbKvCvuhtxqeC/U0jHofbu9jKovHHT5kEuvWRdzwZNVX3HgeJkHiSV6Q9
	65Yvv8eEWs3pBVESxpRz7cjiCeYqu8Ayv98ER4RaySFyWj1mZOirZFRLlnO9zUuRBEAU=
X-Received: by 2002:a05:622a:8a:b0:4f1:840a:c90f with SMTP id d75a77b69052e-4ffb47e3b0dmr22957241cf.2.1767787407865;
        Wed, 07 Jan 2026 04:03:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHIUGxjnQgE4PgHsYyrjWsDHfJ6IeypN42Z/YRU+rG2QsfHWIVu19VW4NAlWcg80kdk86FAHg==
X-Received: by 2002:a05:622a:8a:b0:4f1:840a:c90f with SMTP id d75a77b69052e-4ffb47e3b0dmr22956801cf.2.1767787407325;
        Wed, 07 Jan 2026 04:03:27 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a23432dsm482678666b.11.2026.01.07.04.03.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 04:03:26 -0800 (PST)
Message-ID: <84799abd-3b30-4772-b716-37f97a28a8f7@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 13:03:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: milos-fairphone-fp6: Enable UFS
To: Luca Weiss <luca.weiss@fairphone.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
 <20260107-milos-ufs-v1-6-6982ab20d0ac@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260107-milos-ufs-v1-6-6982ab20d0ac@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA5NCBTYWx0ZWRfX/Gk89/nKv4j8
 57XMerDlv+Eg3+idLZe5/Jk3fcwwBLc5pQ5Cx1P/nCWEu/CYPWGqWi2ZudY92kE71J66+8Uvj1R
 wZISTziQ9rPE2G7z2OFTuaZ0vn9gS2EV5ptu32vsPipg83OS7RO+1onMxffPFkU5T3bRaYbMb+u
 BIzzTfTXXDT/H0h3gXc2ro5mPz89RnzVT7lpMu4cesN8uS+wBhkEtHrcRcDeoBftdfXwelG0aIm
 ZX4E0WkwOibu2LMaaF7pj8YqDNp5uPnvL7lbLL9+T7/aZPLvEGpDfZpsNUaPaAf6mLqEyziTD4/
 rLyAVa/hYzJNjXqakNH7dhljqrixScKObwAG7t3J5CF/0/uWsLru0sGSId5FTARZSoFqJobmmCg
 yBH+/gOc88/zyNDgaR68NYBY9+QXQ4XNVKgx3Td5mK8m+KCYJXytgZYdwFFpz+tOA4/O5SiD5L4
 n4sAd2EZi/gDHF2cpkw==
X-Proofpoint-ORIG-GUID: OAbviDg4fJPuPE1LXM9sJzFCM05EZRHI
X-Authority-Analysis: v=2.4 cv=comWUl4i c=1 sm=1 tr=0 ts=695e4b90 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=STFXn1ACf7ZPQ-DneOQA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=kacYvNCVWA4VmyqE58fU:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: OAbviDg4fJPuPE1LXM9sJzFCM05EZRHI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501
 phishscore=0 malwarescore=0 bulkscore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_040330_644420_448D6837 
X-CRM114-Status: GOOD (  14.09  )
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

On 1/7/26 9:05 AM, Luca Weiss wrote:
> Configure and enable the nodes for UFS, so that we can access the
> internal storage.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
> index 3a7f2f2b3a59..7629ceddde2a 100644
> --- a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
> +++ b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
> @@ -819,6 +819,24 @@ &uart5 {
>  	status = "okay";
>  };
>  
> +&ufs_mem_hc {
> +	reset-gpios = <&tlmm 167 GPIO_ACTIVE_LOW>;
> +
> +	vcc-supply = <&vreg_l12b>;
> +	vcc-max-microamp = <800000>;
> +	vccq-supply = <&vreg_l5f>;
> +	vccq-max-microamp = <750000>;

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
