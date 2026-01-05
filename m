Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D88B4C2A062
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jan 2026 08:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eAtLQUjTnA5wT5ctp1lCPfCZ39OnycY5vzv1JtO0Wa0=; b=o0IoplVOcQQjqu
	6gVpBn4WdqHJ3ZfL4WUyKcK3HWQwTWOebk2aWyVsewtvtPC24Ri7EFewhZKPluMU0I6NFX9bsoFrm
	VkXV8LN7aFrT7/2H6G8sCYl9Z6E73uifb/OWJgJdX9acAopYPHsnQh4T995Wu+vPrjaJw3pAikEk+
	Mt4ea4DgTW4RmtxA+ZNrHppC4zvHAVDTTE9UM/C39nIDDGb+IO0W9bxNRWR1qt1WuRbonV+J842k4
	fNsB+jBYNSVDTOAdvEd7whiWhJCFSL2KZNIHKkrIfSTnszajl7FnxqWrI1uNtNBBEeH4OAD6yYbYz
	F2FSwokGIx+thnjx+HeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfh8-0000000Axi5-2NAP;
	Mon, 05 Jan 2026 08:12:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfh5-0000000Axh9-3N8F
	for linux-phy@lists.infradead.org;
	Mon, 05 Jan 2026 08:12:05 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60584xhc978580
	for <linux-phy@lists.infradead.org>; Mon, 5 Jan 2026 08:12:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XvRC78V+Kcb+nz16MxAbPrDUiGsyPydNzbtsD7OPmqk=; b=XLZso7zrivKUnDv9
	NxOu+vqyx28a8ODMzFnjZBgWg6xSsuDSHZjaZeEU7zaHZBm1WVTh3JZDrvnQVEo0
	h+qagLywE8UOtl20FPaMbHr1j1NQF3ODexLJtOJq3GtAy6/0jKzYrJbICWNxrtP9
	nEDKqHsR6+ffAzHYjBfVtIraGclIYXbACH+mlncnZK8KJNGJBGymcFwG7Fl7aIuV
	RNKmOWWIm8Wj03/ctx5lJ5fja56CjRssyOE1QUu9VBGxVvRLMxDD7PXJOSiWhvW/
	/XLGq20AVCnnTxXo9FVpUVMt+F6WjvVgfVC8JWAs1qs/3GOZewbW+huIsbze/NdJ
	PhVqxA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bg9ftg0py-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 05 Jan 2026 08:12:02 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7b90740249dso24513233b3a.0
        for <linux-phy@lists.infradead.org>; Mon, 05 Jan 2026 00:12:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767600721; x=1768205521; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XvRC78V+Kcb+nz16MxAbPrDUiGsyPydNzbtsD7OPmqk=;
        b=F5GtAngC7wfoNF8OCn5t0sx6Ixbmh6+eBLUMHgg8LPtnwfJ4jYmghBjfh2seV3ZJ58
         j9w/hRWxayCU41hBktt5ETKANzhOCO4xs23891HZ4Xvu08nNximouvefksAeAcd+5rK7
         2rO2eOxHCLq1lslek0EeIEyvP0ANgx0YJzBPpeGVT4lYbWQkMqn6cfXwmnf5XGGJPpg/
         eOgeAQBELBVlJTKElOIzoSl3Aq1z/KHH8RSkhpVadOHF6gR+Y05eHDWHVL9hEQWXl/z+
         qSk51ZlMWwt+Eeo2Ybw9US2TFIpu+3ksnvmLZld0x4iqs34vjxRDbILtGCM/7rNbllyX
         19cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767600721; x=1768205521;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XvRC78V+Kcb+nz16MxAbPrDUiGsyPydNzbtsD7OPmqk=;
        b=SxF+nVCSq8kDLzlUZGBhoVyhNPsoYCwYZn9RQklgngTzjNm39VSpTRJckpLJC1qugG
         NQd4E4CyNAL0YvO//WhoI6/A/eJQsb/8QOCG+KJREGc1kHc9CX1XuogqvupN0UgJeGlx
         cTtp1+z1oDJ7V7xZVrxTnXmOQWx5R8J9DIztoBLKnWvk2Vl/m/uhcM0WgyhDA+uWBT8p
         NDlvcULk8hTTHzmdrVdcy/SlGYz0U6KxkgZe08WrM+hikoT3ek5fzJLd6czXPqaIk3VK
         dQJudru6t0D/O/qh0LFHwnh2zszpri5EMENPjl6BUr6PsI0haHMx/9ZlCMQWvRH8Bm3O
         zewQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBJh8bEPcRJtO0piF/oECD7itd+fVK1IhHXmY+NM1DMAday/MjrNFPPcgrqZzHF1Z/Zmfn6IXh+9Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YwJyJa9hDwXzXiDOhxNcVjfdFRRqf41WY9OqkW3CFQUOVJClt1O
	hkQ5xBC5PIN6IaW5rDC30SgHY6cQL5m0zjzfFZw0hFu4tA9iYFVUHTT61IRBekaCGAptl3nlGAF
	Ng1GULLAVJG/5gDM8hgWvYJsYKXRk7lqTMvCQEhhZ/USW6LiF5afyrNaq5pwc69LgSX8X0gIrV0
	Dc
X-Gm-Gg: AY/fxX46uT+DveQ8xByROup3GlBuYo+5fKOb5byenG9fnJWfJY/+VvyHgwccnc7f2vd
	rdIDYvvbjZEsgdoxGnUzHmv+D5fKetzvylCDj6+iBN65wrSBYAivKFGMQCgTclhi6HQ5TeP+SUb
	YjVmsQ6tJzWwavjhDt37fsWGJxhy8/jxv6mZO9MzQkLvc2BRmF0/eoFbh5ZrAFRLUWPbuzc3sJB
	+hjHUTZPEMgJYCgTBTFUfwXdDv0Dqantc1UERl7C8BKgjxM9M3Kd1X/Us7vVfjrhcrJ3v8k2tbk
	Y2b0dWmAm3Dh82hx57lzvU8wNy8tWI0KiZqjQXnesjSyUwGFIJ03ZvOUID3zfzB55lp0i5hzUyw
	or18aGokHyLCftiXriOUC6tahpdu3SsBXacW+d6tcBV9jRA8iJqg=
X-Received: by 2002:a05:6a00:418f:b0:7e8:450c:61d5 with SMTP id d2e1a72fcca58-7ff66d5fe18mr37831969b3a.69.1767600720941;
        Mon, 05 Jan 2026 00:12:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE4pEalQ/S1gzH+PCmh2lNBlkf/m1qweLCoP8v4jj2jAYqu7jgAZHqb7rFgDkAig+pTtomiSw==
X-Received: by 2002:a05:6a00:418f:b0:7e8:450c:61d5 with SMTP id d2e1a72fcca58-7ff66d5fe18mr37831937b3a.69.1767600720455;
        Mon, 05 Jan 2026 00:12:00 -0800 (PST)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e88cd71sm47276718b3a.64.2026.01.05.00.11.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 00:12:00 -0800 (PST)
Message-ID: <c106658b-7fe4-47cb-95b8-1970b397444a@oss.qualcomm.com>
Date: Mon, 5 Jan 2026 13:41:52 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 1/4] dt-bindings: phy: Add QMP UFS PHY compatible for
 x1e80100
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        nitin.rawat@oss.qualcomm.com
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251231101951.1026163-2-pradeep.pragallapati@oss.qualcomm.com>
 <20260102-heretic-angelic-narwhal-5d9d8c@quoll>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <20260102-heretic-angelic-narwhal-5d9d8c@quoll>
X-Proofpoint-GUID: bLJSyTiQS_1maHn7CyWEUxRwr62stub9
X-Authority-Analysis: v=2.4 cv=GboaXAXL c=1 sm=1 tr=0 ts=695b7252 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ZAgaqRceEw1IiIRpFMgA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: bLJSyTiQS_1maHn7CyWEUxRwr62stub9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDA3MSBTYWx0ZWRfX4T4JRbDE/OJM
 i8o8kBFuNxwqS5ydigVzx8rqjjGv3hKUVNPOTNTyUUjEO+DgC1UCFh2ERulQGiv8mTHqf0F/q3E
 NhRKui4eBmA+uef8xCqM9AjoaBuxiITuD3Aij4LqvjfmI7CwK8bKt3WkCBtm+duSJF90h1GnPWm
 KT5+1Wbr3S3fiX/kt341GbrC2F+aZSuisU4J0Q7wXn3w5epuNW3HpGwytr1hsTkau9yAefzcKr8
 qUFRssfz/rICAKh8PYV9FBSV6hyTeBdZ9PunS/ZPdhbPxfqCqiPnX8Pqaik1cYEfcoJKq+1/eBm
 tYg6nKlMbEA1bvkInSicatomuvAHi1P/fBG3TLJdXpgr9IJZp5K3n9+kjmSpbJ82wxSA0/3xl1D
 RjI4LnwSFPmwFSSBa6RpxOe22W3oDNEqbEh76WV9hsigjcnm4U/fEx/+IA8PtkspBxyx/7nloKU
 8I8wJHP25NEzwfs7hvg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 spamscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_001203_963707_7E1692E9 
X-CRM114-Status: GOOD (  15.14  )
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



On 1/2/2026 4:53 PM, Krzysztof Kozlowski wrote:
> On Wed, Dec 31, 2025 at 03:49:48PM +0530, Pradeep P V K wrote:
>> Add the QMP UFS PHY compatible string for Qualcomm x1e80100 SoC to
>> support its physical layer functionality for UFS. Use SM8550 as a
>> fallback since x1e80100 UFS PHY shares the same tech node, allowing
> 
> What is a "tech node"?
At brief - tech node represents a generation (e.g., 7nm, 5nm, 3nm) of 
semiconductor fabrication technology.
> 
>> reuse of existing UFS PHY support.
>>
>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>> ---
>>   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
>> index fba7b2549dde..552dd663b7c9 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
>> @@ -28,6 +28,10 @@ properties:
>>             - enum:
>>                 - qcom,kaanapali-qmp-ufs-phy
>>             - const: qcom,sm8750-qmp-ufs-phy
>> +      - items:
>> +          - enum:
>> +              - qcom,x1e80100-qmp-ufs-phy
>> +          - const: qcom,sm8550-qmp-ufs-phy
> 
> 85 < 87, keep the order by last compatible. It was already screwed by
> Xin Liu in previous commit but you do not have to grow discouraged
> patterns.
> 
sure, i will update in my next patchset.

> Best regards,
> Krzysztof
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
