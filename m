Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0080ECDB46F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 11:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jraqRiNq7ip09UrcBOvp6FBDju2PMQxQKMXsWsZuwjc=; b=lqQwf13GFkTlMZ
	Z1AP9etydeSueE2aRRO6f7N2cHuJaAoSEquwmX2lvMA35OteBxyN+KsH7XRblc8QKXNnuOVJ0AQG4
	8nPR+ELO9QGDGVPEhilN/vIOqO6cXdnb+zc6Z49VRNXbPVZMPc1o+VN681Hr3LXTLVow5xwdkiZ+f
	EvV9+WR8hhzd5BE2z2p6L4R4GVVPEn3Do5pDrPPC0o8Pya9Ti721bJTQJyhHgUa++i38UE0m+SPeK
	NnEGPF9gXWwFD1iCq7nxyGy/ijlHG54NEFTSSoBQrBh/Xl13IGo5NBTfGLmsFSrRL4+mbV4BYSlbC
	1zh5ipfHp4kcw2WwSIMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbyu9-0000000690X-2yVq;
	Tue, 23 Jun 2026 11:02:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbyu4-000000068zd-0VXj
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 11:02:55 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65NAsHwd4134303
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 11:02:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/3Bur5W8WIf69VnzHiI+arDhtZRA4HK1lbpmUhai2O4=; b=iZvUU46GibMAwNkz
	AoK7VQzXe+5QNe2NDKKB/mgDiLZOo5GlZXwA/ce67JAiyVLIDN4WwaqOHLLQYnab
	vBvCZ3Q57JQwnF3JshLMTYyR5HF5NGIzzMJR8TWC0N3NYhPMFUx2EqA7l1FU9dU/
	pE/LJoxOVj7x+BnGbz8TfH44/R/DMg7zLiyMOoQRA32bUDzWZk5OtUyWaNw3eKYU
	NgJRdeZH158uWFnqlLx8WmF415Gz2na1sFuj6vDNC8UOplKUTMJStLdbfZlvJDV/
	I5V3KoTsvE4S1ZFmAaijS5B02SRmfvlhsOw6zr0k2+KJfCEwCdUBW0vIlHeZVjAe
	fnjmFA==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eyqe68euh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 11:02:51 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-6c9239a1dccso365037137.3
        for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 04:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782212570; x=1782817370; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/3Bur5W8WIf69VnzHiI+arDhtZRA4HK1lbpmUhai2O4=;
        b=do+g+odq+B+LBTJaXKLrg/PSccB3z6UF2yLCRu3bUtkIFZ+D/aAwISH3L9c8PRprwv
         5U16Fv8Bxhw6DlYMw/gKt2Lo64gkbtk0qEq1n/f6IIYHGCTPC34HAg/yhXOPnbC1ukjS
         97XluuJU3iGAQH6bpxqn6X1N4hsggVF838EAsg/qKPzX9luSOh8aFGgQ+hlwTEZZNIRs
         z7nyrCVk8nlFXPejpAlPUsOCUm1AcS0sjdGeDofd8Qu0VbeH/7VOvoPrOapCOgKCpVzA
         gSqbTHtxY5uqh7OfuEQk4NEXoTD9Td3MsHEkQvWVtnheaptofJekv9CIyPnDfkdAmYwB
         sI+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782212570; x=1782817370;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/3Bur5W8WIf69VnzHiI+arDhtZRA4HK1lbpmUhai2O4=;
        b=baGG3vLGu7UwbeEXrh2JJsrvwTiITpj6ZIKrYAjP5oYLVCJLPs5hPyxcojWzWyzFPi
         5rMqP3sCVILIVa6CQqKgWLhgRKwHrpecdeYBlmHuzowwBOcH52yjSuSIhRTNsGkUZQjh
         tm0WMgThJ4pbrnic9ZytrHs5brhFatzOWVPDZ69dPz6b1BpWE/Nkr8h+OvXhMlqoy8mQ
         AdmTVk0eTat9Ebse6INWTszGHf+H89gV8BYAoQ15Stv9QUlX6eH90FgvfA4NNIYhZ/pZ
         pi3+yrUF8IgJIVz5EboY88N02SX0+UmEcpqA3OwRVfqq67dIk+lcr50tdQ1y7qzu7Mva
         2iwA==
X-Forwarded-Encrypted: i=1; AFNElJ81BRCFBnj5Ak3nw3hzdSPHzV8osDoSun/FTrTDaYSw2ZpP7qgx/Vn6PlwQ+c/nPArriW0oqi3pLHk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxCDE2s0LSxB8oVm56vKi7HyKFwoaZA1GwKhxZJS+fMOkWoe4L1
	h6i72i40E5lkQoAliz5oo8HpHDhIlz3fvknqIWwPiO8d/28x27+iNKIOofYHaYf85y8ZAgq7YIf
	IvSCxUgDIO0kGPuFWFU0R/9NXwgf2MgO/NfmQMQOHRA5wSpD+6Ctf6AHX4fvnMFB4ua3j
X-Gm-Gg: AfdE7ckTRWofDfhpKrnTgPvcMH7preycnEI2kHCFFNbHRYbDtZLLa4Lru3aHX4boDVU
	yof3Z2gnBkN5LfTThz7E86JV/HHLVq3P22SfErFjFoX6lpCvuPdcky94D5TBOZ3RVxfTvtbZ3xM
	KznuWoaQ3R8svzTmStvcjrtmdbm69YdXJnPEBPXloUKDQbW8NeMeI2nWLg2r+zPA6M/oxWrqK4e
	1rHVTuKMtsPVPlEKwxr0HD5cLzQdGf+eLLR90CPvejHmA4QyM6PDImvvl7O8Kld8qvHDeEWWQk1
	O6ezMRrWekIj1zT85i/HZ4M5rAUnGr35I2i5tcGRhvkb4BgBKM7n0BzDb/qBg6ePsbyxRLjBVBs
	3Wd3cN9kbu3I4Wlg1yRvQf+8GlJFz9RFFiUI=
X-Received: by 2002:a05:6102:3f14:b0:720:2ba:5299 with SMTP id ada2fe7eead31-72f3ac9650cmr1080745137.6.1782212570274;
        Tue, 23 Jun 2026 04:02:50 -0700 (PDT)
X-Received: by 2002:a05:6102:3f14:b0:720:2ba:5299 with SMTP id ada2fe7eead31-72f3ac9650cmr1080720137.6.1782212569762;
        Tue, 23 Jun 2026 04:02:49 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c0c5e498cedsm491816166b.4.2026.06.23.04.02.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2026 04:02:48 -0700 (PDT)
Message-ID: <e1e492ab-884e-442b-8410-cc100c54fd5f@oss.qualcomm.com>
Date: Tue, 23 Jun 2026 13:02:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/8] arm64: dts: qcom: sm8450: Remove unneeded reserved
 memory nodes
To: esteuwu@proton.me, Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org
References: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
 <20260622-sm8450-qol-v1-2-37e2ee8df9da@proton.me>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260622-sm8450-qol-v1-2-37e2ee8df9da@proton.me>
X-Proofpoint-GUID: Qb33weWUq4DHXUTlAmHc7EeayynYEGSb
X-Proofpoint-ORIG-GUID: Qb33weWUq4DHXUTlAmHc7EeayynYEGSb
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDA4OSBTYWx0ZWRfX0rMGa49+K5H4
 9qPfCkJjmZ/GhH11V9LLqZWXII47yra4YteLt6jEYKeV86Tuav0KRSnABbYrRxViiWYywSXe/qd
 KRX5T2eFWaZebBoZ4yLFnsgQcbxMqRY=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDA4OSBTYWx0ZWRfX5cdI0oE3l2qV
 KrdcYE74fOlLJkmWvyhXNKgTrATD5ZEIi1uyz5SLRp8bImYQxAHj4l+iuQwAXlhKwTZW2udGN9b
 fhccLmQ1x8XYVlPS8U3QdIXENweFlC81qb6l/VQnIBVSq+u7iGK7qj6260RoUdgT0CgFm3xU2As
 prb/HQTB8+YY0X8fy8w0ez2hr13hlPtyeN+8uV4pIDmEBwqJYC2v4NU7bFilIbSjodf2WblU1Pn
 7SKgnTnxjZP0hrBWonrn87JX/azS2/XSI0qiKbbrToJn+pDe4Mp+hyIoS6ZHq8phIuhaWDA+TjS
 IYEjBb39v+/KLWBgdjpmzuMpvxssZQYnuvVPHvnsUO/8CMvZrHJbD20oVYhHHJXHmoGsSzJs8ld
 zCX6M2eUuWQ3+FAlLmb5F5WmMzezn9LvZUygqJ++7IR5V6Mck0I6Zy3KtPOjCxmF/T64o5Jw0mg
 VkBCjBHHJxhCb4me6QA==
X-Authority-Analysis: v=2.4 cv=OeKoyBTY c=1 sm=1 tr=0 ts=6a3a67db cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=dk325V_gTbMn8ZHce38A:9 a=QEXdDO2ut3YA:10 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_02,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0 adultscore=0
 suspectscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606230089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_040252_270584_508FE66F 
X-CRM114-Status: GOOD (  18.60  )
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

On 6/23/26 2:54 AM, Esteban Urrutia via B4 Relay wrote:
> From: Esteban Urrutia <esteuwu@proton.me>
> 
> These nodes are not present on downstream device trees and only take
> memory away from the AP.
> No crashes occur without these nodes, so remove them.
> 
> Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
> ---
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 15 ---------------
>  1 file changed, 15 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index 56cb6e959e4e..e34e3c05bf74 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -752,11 +752,6 @@ oem_vm_mem: memory@bb000000 {
>  			no-map;
>  		};
>  
> -		mte_mem: memory@c0000000 {
> -			reg = <0x0 0xc0000000 0x0 0x20000000>;
> -			no-map;
> -		};

This is mentioned in the memory map description, but is not part
of it.

I booted up a 8450 HDK and it doesn't even have MTE, so it's
probably valid

> -
>  		qheebsp_reserved_mem: memory@e0000000 {
>  			reg = <0x0 0xe0000000 0x0 0x600000>;
>  			no-map;
> @@ -806,16 +801,6 @@ qtee_mem: memory@e9b00000 {
>  			reg = <0x0 0xe9b00000 0x0 0x500000>;
>  			no-map;
>  		};
> -
> -		trusted_apps_mem: memory@ea000000 {
> -			reg = <0x0 0xea000000 0x0 0x3900000>;
> -			no-map;
> -		};
> -
> -		trusted_apps_ext_mem: memory@ed900000 {
> -			reg = <0x0 0xed900000 0x0 0x3b00000>;
> -			no-map;
> -		};

These exist in the memory map, but I'd guess they may be unused if
you don't load any trusted apps

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
