Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9AABCD4851
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 15:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HCh6JEIbms/BJw+1c0cY/ClMhghluHN/DbbESNA/zFc=; b=fA8hrk4UMUAnoD
	9QrrzJ5+B1gDKCw5BjjD4IEXJr42cTF1JFAjWq1U7O24ndBDs/83WPwwuIzG/G1wok6KvN4ngKWKZ
	Kp60NxCq5NCU5F4EJV4SQan15vS/d+TkQWY0w5IsfgpOdPRkPnm4jTaXzRESSNUl5+SKMiAaLNqjz
	ounjL0UQs+ouv3OUQdEVGhGfnpzDQUFpfWRjz88ktCZPKH+guYmdSbAisW75QyqN4IwzGbe4l1fra
	01lKP9hiFp/o0xJI5Iki8XOTWIoGsOnaVW4Oxs8jmHW1KXr3Vt0Xw9859RZmSsw46PKlQ0na/huN/
	nIGf32c6wmGFNdQ2Tvyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNBI8-000000032Xx-2nAR;
	Wed, 13 May 2026 15:14:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNBI4-000000032Wr-1hfy
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 15:14:31 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64DF2BJs4082487
	for <linux-phy@lists.infradead.org>; Wed, 13 May 2026 15:14:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HO7Wlq2B2SPXIMNALx+ptMXqmAC5pdgtVTRF4xlMpRI=; b=M2JhHYCyn5lAOr3R
	n4UHLY03f7KpqCz0UFUF/L231DZ79ATU7TsN2F69dnFm/NzCBpYFW3YC+rT9tkvg
	eSTT2pp47Bq/1EtOWpJQ90jTS1/awM5ogZ/l6nX2x3G1m+8GAgqeEq9p1kS7KIsd
	7I/TzBorh2sE18uF+TWeq772WfVS4Uo0tnYC3MZl5LeN1qITI5xkD96R9o+LjNxf
	xNs+mu4Hfi/lARFJ29x+RmtqeXGO+IiOrwr4Y83qTDx/DPrC2OAw+pAWbpv3umIG
	+/TPZSvTCffuyKlZ14UHQtfDFfjuj3IKGqtREpHey4j90llAQgxHFSiQM4e0lG/4
	GNOfEQ==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e4p6e1ftt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 13 May 2026 15:14:27 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-95f615f4cb0so1379263241.1
        for <linux-phy@lists.infradead.org>; Wed, 13 May 2026 08:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778685266; x=1779290066; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HO7Wlq2B2SPXIMNALx+ptMXqmAC5pdgtVTRF4xlMpRI=;
        b=OSjRzMgDbdmnaYR+GNLyaMYz/PO1f/PtYSQXhLE2dYqq8+24DAM0FwN9gZM8W39RWE
         W0XqORxOudZq/gTqe9psk5KFAWGOCC56HlDDoVglxNnDeKgIA3g7WeGip62zv/hKcfsV
         gjgQpeq5A1/pXgMrrLw9RXFOMEl/ecaDpm9tXn6yG/74Pig+gxzfKE3KNrd4RdxTqcVV
         y2LHFd7KrEPp4c1u+GUnxfeietqd4S06YzNqYudME10UN3gnSHG/oZulhv8vJcZIRLar
         kHIrHdeRKcayY+3BPODHOnfe5shF418Hh8HQnZVMpDYXyj5o17oTxfrfG2fSNNXv4LZ5
         ZIDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778685266; x=1779290066;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HO7Wlq2B2SPXIMNALx+ptMXqmAC5pdgtVTRF4xlMpRI=;
        b=CKVehW5jiOgAQCzFzCt/9KrEhyV8wv30xUU/b2fIDveNBtZYu/lNny2dcJDNLKTQVF
         5dWd6jzlK64U37A2yHd2HwO8LtbXn8bzoPbmQEO5XSeVa5/m9uFfeMXfOSOt2UL2s3G4
         BIxvO2GcFBjXn5IDfTI38VysyWq+eVIGwlv6mowe1VxNp86wJuQcf+A4j3gYk7VTs/un
         EotfLHeSWoWUaB/9pvyV2pEUG5uISVggPfTAxGnAAfHQB+GV13bSZJ8pLWAEzlZ+xlkv
         HzjtzNQ+4AOIjf+tyxGlVWrZum8z0ophosa6WH0iJgAMsJLXCZk7MJWU+zjPr2W6aXzf
         ZUUA==
X-Forwarded-Encrypted: i=1; AFNElJ90IPFMro47zT0ZZTVR6gNOPef1m4Jfc0PH3y0ztnxBYOdmVC+n2Fe7FbiWxR1H7a/Nxi3y+LTaUCQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwMZqoVg2+/meX7gOBe1V8MZa0yttlbc21uRVUWWprSQUZGfeMm
	DJFR1L5LmKkr1h5naz8+5k9ms+uYHZdWcP+LSJ8ZKM+NtPyM6JiUjYoRAxYPZ0m/UVkoR/Pm7+S
	p9NxpeRF4rXY2Xnja8aMChUUXh9BpVkHna6fryVUQGkqEgoblVm4c+j92dik3TRgqzpe9t11mow
	WG
X-Gm-Gg: Acq92OEtGY+vQ8ACPUROj3Sf0VVGg972cQEPe9Zkn3bGoyE2sYns1xIzb8VxWWbvJ8Z
	Z7/+9H1L+dlacUaNOV2MDv7QxpZWcYnaJ7tid4U7cY5+umeCUMr3fU3af8QubRKpCPpORM4kDqU
	LJvDU9NDY/2+txTQiEr90Z3wbi+IWP6dHobv34zUo4pgcuZfjnrSXREQxcuJOL57IeKTdHK1Tc6
	HfgrQMo9NnRHY6B/i/drQ+1PtOqBH4JqUd/rNu0z9MD1OMAtjIiO5dZCrvsI3hjz6H6Lc8Kiwv+
	Iu6fDoG+DOFu2ISC3BiKw0prqSz1nhZcHNTyXRP0BqCJId673C92RTooroO6VvKCUFKuqWZ5Q9M
	X5dcV1I4Snqsd3B7uajjqopVRG1BxOwtM5BRAW3/qpTDzKRD+XagmEeRulK+feBqqsjdOVl0x5y
	VM2M3cBvPlm9CM6y3ACOgAr6rjcLBi0HhbElCSBFderG35Vv5ojkz9mVoW6/azrQ==
X-Received: by 2002:a05:6102:b10:b0:631:5ef5:8325 with SMTP id ada2fe7eead31-637a7973223mr1260295137.8.1778685264864;
        Wed, 13 May 2026 08:14:24 -0700 (PDT)
X-Received: by 2002:a05:6102:b10:b0:631:5ef5:8325 with SMTP id ada2fe7eead31-637a7973223mr1260208137.8.1778685264069;
        Wed, 13 May 2026 08:14:24 -0700 (PDT)
Received: from ?IPV6:2001:99a:252:3300:d706:9b57:5996:15b4? (n2i9bzmlzk2z87merp0-1.v6.elisa-laajakaista.fi. [2001:99a:252:3300:d706:9b57:5996:15b4])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a8a95661aasm4088965e87.68.2026.05.13.08.14.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 May 2026 08:14:21 -0700 (PDT)
Message-ID: <0ac665bb-1a21-4077-aa9e-97162f7f4784@oss.qualcomm.com>
Date: Wed, 13 May 2026 18:14:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add Shikra CQM SoM platform
To: Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Cc: sashiko-reviews@lists.linux.dev,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>, robh@kernel.org,
        linux-phy@lists.infradead.org, neil.armstrong@linaro.org,
        vkoul@kernel.org, olteanv@gmail.com, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org
References: <20260512-shikra-dt-v1-3-716438330dd0@oss.qualcomm.com>
 <20260513042836.073F9C2BCB7@smtp.kernel.org>
 <t2sw6owdxy5iyodjqsldbw6bfaqnezhgvc4hhylxuyrrbjkjto@iwf4dr5nmot3>
 <20260513142936.kauwa3czigfs7qs5@hu-kotarake-hyd.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20260513142936.kauwa3czigfs7qs5@hu-kotarake-hyd.qualcomm.com>
X-Proofpoint-ORIG-GUID: 1k8klRU2OsnCxQ2fQYmIVCX8_q2alazd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEzMDE1NSBTYWx0ZWRfXwmZi8qWbUfMg
 hkfZCxMcnUw8cKaSZzkKP1bRST4brGViKIPz+cDaGCDcfFK9OhhvUvMvH2i1qxTBhk1koiLk+Im
 +HxBiNW9FbGeBRgwzJbXdwqnOsrp/BE0jYj7dybsfCa48Iy0DiTAF0ZMm+c+zLiXmkJ5zpZjXKS
 XLqTIPuivqy+UsDov8OU+WXl3cnAFVUnkVOl+g0pV05DsQ2t9wyhB97t0/OaEsn1vGitULjX0v3
 i6W7q9dyeW6JU5uMjGIBGTd0mJXEQFD2gXlQAliYBGObpNk7UDW+doNiVqw3dqgWVSsGBDjR23A
 0tgZYXkFdMcfMOD6bStPenCFsyvya/9B75AiiwVamLCBiVDl0oiJx/9x8ZzSJn3ZWRrveeSm0X9
 2HovcfJFCDBlHWgP0uSEsd+WvK5p0YAPY8BXvVu+Rqov50LOatC9WYaz9ScqjlolF9ZAhw21MtR
 MxQoqcAqdel3K/eEATg==
X-Proofpoint-GUID: 1k8klRU2OsnCxQ2fQYmIVCX8_q2alazd
X-Authority-Analysis: v=2.4 cv=Wukb99fv c=1 sm=1 tr=0 ts=6a049553 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=G-sZjMlHS12s_U-QxDAA:9 a=QEXdDO2ut3YA:10
 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-13_01,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 spamscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 phishscore=0 suspectscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605050000 definitions=main-2605130155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_081430_087409_11EE3F1F 
X-CRM114-Status: GOOD (  17.07  )
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

On 13/05/2026 17:29, Rakesh Kota wrote:
> On Wed, May 13, 2026 at 03:01:47PM +0300, Dmitry Baryshkov wrote:
>> On Wed, May 13, 2026 at 04:28:35AM +0000, sashiko-bot@kernel.org wrote:
>>> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
>>> - [High] The PMIC regulator definitions omit their required input supply dependencies (e.g., `vdd_s2-supply`, `vdd_l3-supply`), breaking the power hierarchy.
>>> - [Medium] The device tree inaccurately hardcodes the `compatible` string to a different PMIC model (`qcom,rpm-pm2250-regulators`) instead of explicitly identifying the actual hardware (PM4125).
>>> --
>>>
>>> commit 457abf6e7ac410430c866842e08e602ec3daaa51
>>> Author: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
>>>
>>> arm64: dts: qcom: Add Shikra CQM SoM platform
>>>
>>> Add device tree include for the CQM variant of the Shikra System-on-Module.
>>> This variant integrates the Shikra SoC and PM4125 PMIC. The DTSI includes
>>> the common shikra.dtsi and adds PM4125 PMIC regulator definitions.
>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
>>>> new file mode 100644
>>>> index 0000000000000..401e71720519d
>>>> --- /dev/null
>>>> +++ b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
>>> [ ... ]
>>>> +&rpm_requests {
>>>> +	regulators {
>>>> +		compatible = "qcom,rpm-pm2250-regulators";
>>>
>>> Since the commit message indicates this is a PM4125 PMIC, should the
>>> compatible string include a specific identifier for the actual hardware?
>>>
>>> Using a specific identifier like "qcom,rpm-pm4125-regulators" alongside
>>> the fallback allows the kernel to apply specific quirks if PM4125 errata
>>> are discovered later.
>>
>> This can be ignored. The compat is a leftover from the historically
>> incorrect naming.
>>
>>>
>>>> +
>>>> +		pm4125_s2: s2 {
>>>> +			regulator-min-microvolt = <1000000>;
>>>> +			regulator-max-microvolt = <1200000>;
>>>> +		};
>>>
>>> Do these regulators need to explicitly define their input supply dependencies
>>> such as vdd_s2-supply?
>>>
>>> Without these properties, the regulator framework might be unaware that the
>>> PMIC regulators draw power from upstream supplies.
>>>
>>> If the kernel dynamically manages the upstream supply and its reference count
>>> drops to zero, could it be disabled, causing an unexpected power loss for
>>> downstream components?
>>
>> And this is a correct comment. Please provide missing supplies.
>>
> As per the Qualcomm system design, the parent-child supply relationship
> is managed by the RPM firmware, not the Linux regulator framework. The
> RPM ensures the parent supply is never disabled until all subsystem
> votes are cleared.

How is this different from other, previous platforms?

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
