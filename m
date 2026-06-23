Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EE9FCDB46F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 11:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQzu72+yM0oWwS8SdvBAw3mnyZgKt5ZTAq+C97UoBM4=; b=TahIETYZdxlxWO
	aqUyAGzD196nY70LRKvoDMFgvnIN4S3ixI8S/nXl6HI1ceeQfR5XYlv18IIZZZTp2eoKGBP2Gc+SC
	uz9Wcu2yVsSCjYgDx9msY6M0VMhMOjwz1kp+PF8ij5ySAZf7o8Keu8qLztrUr85PA6D4m9STCI71S
	uhRNJjxseyrORXvzpMXYuOywlWLF3disGt9y/RRpsRA0W9PjU5cMfs+9NRiIVHpB4YVeTI3ZhOXGx
	2QfnY4k5a4DvDlb4QNrKf7C0ps6TrnsDVBoKB8o0gUjiofLxfE3DkEpBrSjqEh91Df0XLlC+aHz5v
	HCbBfVlr5JNffDElZruw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbyuZ-0000000696d-0IiQ;
	Tue, 23 Jun 2026 11:03:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbyuW-0000000695S-32ng
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 11:03:21 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65NAsPuq3962314
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 11:03:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F8pQ7+KpbTQISYSQqbM73wZKxkqVf5wMyvX6KaoXFwg=; b=RVdCAvqEWeUN4sA6
	aJ7cAuzKkdlxrFrS5DnO2V36dnxYfoJl/dCrO2ZBhDHzppUXsiW/EafB4FPhDLEU
	J23HzHeoWxl53kCfsQkJuGqtEJkQYQfFnTg4zopVtIeAiZMLpfPfsQ/AtTobEv/r
	7L/SyN/EeZst+NGmPFfCJQnBjRELF4F8eHU6ymokW7+gpc5J48T3pCqw8pBpTn0R
	IPipluNIN20IrrX5fSns78Msa9fw3XP8DtAM7n5JlN+aLf8muGNGg76UG3litXLW
	CqoGPbtW0MSzUREcqcocvNzswkTl9IfEg4daeEjlGCH7h7TihD7dfhjNc9kdr3oW
	wdbJmw==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eyr9yr533-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 11:03:18 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-72f38340243so67630137.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 04:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782212598; x=1782817398; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=F8pQ7+KpbTQISYSQqbM73wZKxkqVf5wMyvX6KaoXFwg=;
        b=QuFR9NtBOxxgbMdC/iOTO77CajxrAVCxSclWh7mecIYNEL8jNjPQSY6TIuWS0rZjZH
         FeRkBrk3EYb7K7OPImpEgMpcaRHo8yo/ACha8wQWeu6e+zC+da2f5qLvxXRCYtmgaI57
         qkd9Hvj0YpTt7T3NZ+qArw7Sp0Isligq92AA3KdI+6Nj3SO9GEMjibrh2Dz4+KQhBky7
         9Xcj4EtVugtvtTpCf85+x6rFCz47YUH219Bzykm/JdlvyOMol72qJuNvXnOpoqjcHG+K
         J+hNVjmrIHM6MF/fwRShDhY0LsEXCCFA4q9eW0UG533YJQSe6M1XUhKdrWw5l7s/KpDW
         F+bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782212598; x=1782817398;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=F8pQ7+KpbTQISYSQqbM73wZKxkqVf5wMyvX6KaoXFwg=;
        b=fAS+qNGOtAkSrmrvGz/uKoGjK4vQs4Kr1vJMt5n7ZbNQa6R2IMm3DXNdydWxvP/O7y
         PhDMXrtBJQCocpAJtSA9+lAF60nb/XNE5HbsEGFSae8UcVws4RQQGP8u5oMF4vmMQcjU
         6+74kv8dG3ZXYv2uZcNojSpgCb+yuPHJS8rPvKLYDI0Zcw8If6QWEtpMrIYwcylxTs0e
         4ZFT4vAmB0H6H+hGeKyLtFFp+tcbmIYJc+xR030uvunNSNsuX+3665bupoSQETnKN0Ui
         q+Oks7wkUzDvWas5o7A8Urz8cfNdeUtHAZX6i9Y3UoYfbNCVqv97i0aLDHKlX8gDzWcR
         vAsA==
X-Forwarded-Encrypted: i=1; AFNElJ8/YAZAT2rX6CMEZ9pMLDBZ5BzLkSxz0jds6bvoicgW1+hVAXhQJKGh5nHueN20wWJ49EAJ9MIA2S4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxcdlru4EzC2xk43R/+1ZEyszSIm9x6/VCoHk0TD9Z8+ulmxpAH
	iBIvO+R8TbxIUlZdHamVHsUqr03QNRiLiNAU3iSpwcOW6eshsrf7NrTwK/BIHk82duKY8u/V1u6
	ay6gPzYT4Nz589Ke7lncZkjxD9S9EaGMZMP98xUriBCSXXipCJ2mDiSQUZi5gAf9s6aaI
X-Gm-Gg: AfdE7cmDqhEP5o6IaWMza9ZJfFcP9QtoXHNFnDERLjVwQ/KwrfFacMdVgNzbXZzmtW+
	kEbCjRPT6wz576Kuc/k0Ob9BqYSGbIm9bRn+fMw9SJkmeCFKit9A6jKT1PYGF4qoVmGhzk41lp5
	C1p7IiLhfevzJ0xZs800tEEW+NbWbUONXhLBYO9L/x3shN4JMJgDPLxc1OVFd0cyolFavc9c0L1
	ZmFhD7qLrLp5d3ISQBD3bc43BI5QQgWxpDOfk1a05/U5msxWJcDdJ79fmZn42yap58GIPSBUL2r
	9MIND6PE+8Ltln1I7jXBER8wiUYkRjVCUQ9NoI2jLNw8ntpV1OxvaNHEpcTzuA9OKnBfYdnRSVz
	3BzsRaqQk9tXlSXc/o2RpCjbahDZwTM5T7Q4=
X-Received: by 2002:a05:6102:e12:b0:637:30f8:5cd5 with SMTP id ada2fe7eead31-72b172a99fcmr2725504137.8.1782212598334;
        Tue, 23 Jun 2026 04:03:18 -0700 (PDT)
X-Received: by 2002:a05:6102:e12:b0:637:30f8:5cd5 with SMTP id ada2fe7eead31-72b172a99fcmr2725475137.8.1782212597845;
        Tue, 23 Jun 2026 04:03:17 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6977b86de31sm4303377a12.12.2026.06.23.04.03.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2026 04:03:16 -0700 (PDT)
Message-ID: <6123a923-21dd-4f69-9ac5-02165963027c@oss.qualcomm.com>
Date: Tue, 23 Jun 2026 13:03:12 +0200
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
 <e1e492ab-884e-442b-8410-cc100c54fd5f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e1e492ab-884e-442b-8410-cc100c54fd5f@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=JYSMa0KV c=1 sm=1 tr=0 ts=6a3a67f6 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=qh3hvowi6R8gCIqNXE0A:9 a=QEXdDO2ut3YA:10 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-GUID: Eu4VWkiNAYyrFqZRmcIeKn84Q6uEBM6G
X-Proofpoint-ORIG-GUID: Eu4VWkiNAYyrFqZRmcIeKn84Q6uEBM6G
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDA5MCBTYWx0ZWRfX3Mct3/vo74sf
 t+ExmxZBqEBCIr59Ahm+0riENDL0M0m7DMbGviKjsFXCqAsHX1f9dRHJZzKfg+xazWcs6VKyFXD
 E+edfWJLJRQ8Kw6eof1y4U4ALOgmTkff1VbyAhTUc8DX4lG/4DuHtngJalkoanAFVmXoE6PbFIq
 ZHsvPZG8uBfVcc+BVlWJxRUzy3zNd0bIGjufFOONYKbNWrVgizACIJbyAYqC9Ekj15Q7D1OclHq
 1seM7MW2Kplfzy+4lcHv+ALiP/3rN3GPdf550gw5CSPiyJ0ip2XIigMtFP7RzXs2iwk23TQf/uf
 B6zTsm/vyVmPHsepUVM0rLhPGUVMUg/0SoEE2e6o93qXLNcRaqS2H5gbND4T5iwK8POgVf3/m/a
 UcVc1dcvt3+e3XaHkyFcBrnfpbirgQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDA5MCBTYWx0ZWRfX/AWIekn/tixn
 Uy7gjORqTImgviPTrIXdCb7Mcw83x+VWop6eQhYotoeQon1wH6VsRNOOx9NeWbk0S0ycI0qedgZ
 oqIX94dEmzMb98h6j8s5QroLdQ3bDkw=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_02,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 adultscore=0 bulkscore=0
 malwarescore=0 phishscore=0 classifier=typeunknown authscore=0 authtc=
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.22.0-2606150000 definitions=main-2606230090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_040320_871552_86D7CDFC 
X-CRM114-Status: GOOD (  17.48  )
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

On 6/23/26 1:02 PM, Konrad Dybcio wrote:
> On 6/23/26 2:54 AM, Esteban Urrutia via B4 Relay wrote:
>> From: Esteban Urrutia <esteuwu@proton.me>
>>
>> These nodes are not present on downstream device trees and only take
>> memory away from the AP.
>> No crashes occur without these nodes, so remove them.
>>
>> Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
>> ---
>>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 15 ---------------
>>  1 file changed, 15 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
>> index 56cb6e959e4e..e34e3c05bf74 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
>> @@ -752,11 +752,6 @@ oem_vm_mem: memory@bb000000 {
>>  			no-map;
>>  		};
>>  
>> -		mte_mem: memory@c0000000 {
>> -			reg = <0x0 0xc0000000 0x0 0x20000000>;
>> -			no-map;
>> -		};
> 
> This is mentioned in the memory map description, but is not part
> of it.
> 
> I booted up a 8450 HDK and it doesn't even have MTE, so it's
> probably valid

i.e. it doesn't report MTE to Linux. I don't know if it's Gunyah
trapping it.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
