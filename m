Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 023BCCCD1AB
	for <linux-phy@archiver.kernel.org>; Tue, 21 Oct 2025 22:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JCjqo04FNUXbMx7R5qREbHssGiL3urLVYmS+oNpddUE=; b=gfnjbsIxqBAuPA
	mlvg1f92+P1TzguBRGQaXvG48pPqmkSls2ovImGno9iAgCIxsS1wnWq6D45L59fUvSbHXWUilAC30
	fCMr6YXHqIzGrZKT4sSjJs3S5h7SjMOX3kLCKa3FFWlgolXLqGeaO/Qornh5SsW+PokiqnQBeKAX/
	bPOcablLY9muWU2RTjrPgg2XMq8sysJsimZgyAF6fdrCUfel/o0G21X6k7asnvURzyP46Myg9Lmss
	/cyU67Vx3UWbiqUz2b+fcR9T4mYA6tXM5KpiZkrsDcfcdxxcDKoFOs7ZLrtpDtDdLvDiTFS+rLsMA
	16xDI7DCArgRpD2jeWdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBLCP-00000000rlN-3EiM;
	Tue, 21 Oct 2025 22:51:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBLCM-00000000rkN-45zt
	for linux-phy@lists.infradead.org;
	Tue, 21 Oct 2025 22:51:24 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59LEvKgF029835
	for <linux-phy@lists.infradead.org>; Tue, 21 Oct 2025 22:51:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GxTB0ZWx9XqHuZQWSP0z2+N5xPsBLTdahe72qllC8r4=; b=agC0h8gU8BGfDdDr
	izilEY5lD1/0blqhbNmvyRmG6/trshnut+7brGodMDEm7Sqs9vYX1rxJMOjVq3bu
	dkW1wdKwk77uc4JSPC9KiaF17Aw7ic+6zWyGd2ivP2D9GqZGS44owsWvfCVThoxi
	l/RTjOT8lha61avBtIyUrPp9zZ93SOurzwcgZ5+gDOIXA62b4IC7RrYcDEM8u8gw
	chd6KWCv5RxJSEDvDmAZRgl5eyXw0vG8FPJ+OVs+TEb4OIiFQa4DWPywMrHe4WUa
	Kf7ovRRQtgdZJPtwUtNco8s4QJh1lJIrWFrBHS4BAudbpWt/EMzV+8LCv/7hzjCK
	0+zrCw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2ge2f6p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Oct 2025 22:51:20 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-26e4fcc744dso39971945ad.3
        for <linux-phy@lists.infradead.org>; Tue, 21 Oct 2025 15:51:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761087079; x=1761691879;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GxTB0ZWx9XqHuZQWSP0z2+N5xPsBLTdahe72qllC8r4=;
        b=iT36PQ6pGqOIVuA7BEndw5/vsnF0Sm/6D/8vpDnMv12JJg7cTT3qFXVuTSzoVUiPct
         fEB3uPdtG1D04PkfOlviNrLb7EmBvnTZi6wBh1gJlzs/0OGqUbDnwvrZbLjeEvon5xs7
         opYiJ7gqRU4vDeqgHob1zNK75C9Em1xXBSxsruxG1QGfPabZGGfz/+zqoorRduXAWSPI
         BXQzJCcIpl/2jy/SezB3a/1R9m2B8JQPy3jBIdFWO9h1CIISHZiG9+cZjzOAw8/6hr7s
         lW+Vt/hXpfHbZZxsLKE4+esy2iD8Co6Dh+YCxGFCoDEK8TJOw9C4POUu0FAFL6gNGkh4
         kF+g==
X-Forwarded-Encrypted: i=1; AJvYcCXsz87LY3BS3W29GhFVC9CjltMwRvvsDZ3gv1EjmPugwr1rAtJ42Zaw9YfQwGvnD5dCsI8n/UWsXOY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwEQbf0V0BNAikVVN9xE5Hzup6LhLtAShHd2HVy48ZMZWm9Oeyr
	L7zzJRodgQDhIqkOdiCR0GGn1vLVPxhEXjbhr3AzRNDTZB0QceiqCns+JSmLHGIrOfRsW9tskFj
	JA2MLKI1i58C8uEAyHCh+BzLe1pJMCi9KtZa6yIK4IRvEBiJFXOSmWQMG25USih+beCi6
X-Gm-Gg: ASbGncskglnEKfGEGpbieZrjNyONgnMVItJb9bcIimFpN/rB/HjVzEQuJPuZcZqdI1H
	5J4H4hyNyDFDLVgl5h1b3yxpjQWSMpTGsNtrL4uegvDEOUKvnI7bo+w7aA9WY0DEEVGHQ/kwySE
	r5NV+Cur1L0qlGDbNQ6GEZIOVQSpDXR//k0lhUP41h5m1hd9LwLLvt0w1P96smuxpWnKbw1OqIe
	KzOoL0If0+IO79yB6+Oe5hOwQhJqbMOciLRbuA22mO2rWY2Q0UN4DPahwB8D9f7hEMAl4NjLbW9
	BdRghKgye1dc3GgkC9d4JHFdwuQT9wp5uyPuJ+7YZs+tVCPavHIkV9KxLb/T5CqVCfqtLDKXPJp
	59Qr2DjFokSNs4xiNYhuTI3k3GaDRKbKvE46/veW/
X-Received: by 2002:a17:902:ccd2:b0:269:a23e:9fd7 with SMTP id d9443c01a7336-290c9cf2d7bmr247853015ad.26.1761087079436;
        Tue, 21 Oct 2025 15:51:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGwfHJdMmdnmOW68E8w2u05X+y1KzPlmygeNE6i/MNdFbeUzbTxKUSCChF/G5ue64SrCYpVkw==
X-Received: by 2002:a17:902:ccd2:b0:269:a23e:9fd7 with SMTP id d9443c01a7336-290c9cf2d7bmr247852605ad.26.1761087078968;
        Tue, 21 Oct 2025 15:51:18 -0700 (PDT)
Received: from [10.73.53.19] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29246fcc2b1sm119922605ad.27.2025.10.21.15.51.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 15:51:17 -0700 (PDT)
Message-ID: <7c78e0f3-7b8c-6d79-d8fa-7a4999201708@oss.qualcomm.com>
Date: Tue, 21 Oct 2025 15:51:16 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 02/10] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB
 UNI PHY compatible
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>, krzk+dt@kernel.org,
        conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
 <20251006222002.2182777-3-wesley.cheng@oss.qualcomm.com>
 <f5e4ae02-b8fa-4406-b2e0-3602b07b7e23@kernel.org>
 <00408896-2e25-2dd1-6e6e-2195317ee7fb@oss.qualcomm.com>
 <14bc2a85-0f1d-3834-9b9c-32654348603a@oss.qualcomm.com>
 <387c707e-613d-433b-a76d-16ef10dabc59@kernel.org>
 <2a70f878-269c-1b40-2e8c-77b5851de9a1@oss.qualcomm.com>
 <99ab26d3-eb44-401d-8a7c-1d9efd2a1a10@kernel.org>
 <b2b68430-5127-5eca-6bd8-4af31eb9fbed@oss.qualcomm.com>
 <bb299df0-58b9-4a6e-9625-305785d38eb4@kernel.org>
 <da34ecf0-c2eb-2afa-bd4d-9dc30fbe5cf5@oss.qualcomm.com>
 <78445973-6a5e-4dd8-a661-4e784af49b4e@kernel.org>
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <78445973-6a5e-4dd8-a661-4e784af49b4e@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfXxXeZD1VARq6/
 gCj9VzoacyxSPJWV2G/66qAKrdmwpY37zgLpSL5X3fhKYgD19k1HilLVG2foY4I21xTDutAWOyP
 PPfpilRnCV4eKk163LnSyalab+fqESqyhgNNtAzRkZLfnrKxYlNzIMknnpt1qR57zU/QO1BR16T
 +NOSb/mKfoYbDzziC5yOXDBVEzEjo3jLB/AWH6DUdVSBDACIKHFZ5Rcr2KoczK3L3ZTgKlOyamq
 F5WGBXi/L+GffH2nk9u6zFxZ1B5Zr32ZF6wFGr/NCa2iUFxgEWA3JpgT8GXQ7uVw1lClIeqyom2
 V8P6Sguu/ZACDXSdpf/zkzmPg3J2wmqnuBpeMcAyi3RnqT+YiyLgs69IKb0+xlTGyCd6ZT2QnU6
 5nVwW8IY9BnhcFZ5B3qLd/EwOFtk6w==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68f80e68 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pKGxRwtwl3AlX2zDoJUA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: 3DF6AH70JV3Q02Ib7F6dwkGICg3RPOXG
X-Proofpoint-ORIG-GUID: 3DF6AH70JV3Q02Ib7F6dwkGICg3RPOXG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-21_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_155123_139290_53683A07 
X-CRM114-Status: GOOD (  18.36  )
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



On 10/18/2025 8:39 AM, Krzysztof Kozlowski wrote:
> On 18/10/2025 02:20, Wesley Cheng wrote:
>>
>>
>> On 10/16/2025 9:41 PM, Krzysztof Kozlowski wrote:
>>> On 17/10/2025 02:15, Wesley Cheng wrote:
>>>>>> Technically its all handling the same clock branch (CXO), we have the
>>>>>> TCSR clkref register that allows us to gate the CXO to the USB PHY, as
>>>>>
>>>>>
>>>>> Ah, exactly. Then clkref is not a clock. You need rather proper clock
>>>>> hierarchy.
>>>>>
>>>>>> CXO is shared across several HW blocks, so it allows us to properly
>>>>>> powerdown the PHY even though other clients are voting for CXO on.  Then
>>>>>> we obviously have to remove our vote to the overall CXO, so that it can
>>>>>> potentially be shutdown.
>>>>>>
>>>>>> Maybe we can rename it to "clkref" for the CXO handle and
>>>>>> "clkref_switch" for the TCSRCC handle?
>>>>>
>>>>> Naming is better, but it is still not correct. This is not independent
>>>>> clock signal. It is the same clock.
>>>>>
>>>>
>>>> Hmmm... I guess that's why I kept the same clkref tag, to denote that
>>>> its the same clock, but one is a switch/gate for it.  Would you happen
>>>> to have any suggestions you might have that makes it clearer for
>>>> everyone to understand?
>>> To me it looks like:
>>>
>>> |-----|            |-----------|           |------------------|
>>> |clock|------------|TCSRCC gate|-----------|clkref to this dev|
>>> |-----|            |-----------|           |------------------|
>>>
>>> So you need proper clock controller for TCSR (TCSR Clock Controller, in
>>> short TCSRCC, what a surprise!) which will take input, add gate and
>>> produce clock for this device.
>>>
>>> Nothing non-standard, all Qualcomm SoCs have it, every other platform
>>> has it in some way.
>>>
>>
>> Hi Krzystof,
>>
>> Yes, the design is exactly how you outlined it above.  How about clkref
> 
> Hm? There is no connection between the clock and the device. Do you see
> any line going there?
> 
>> for the clock and tcsrcc_switch for the clkref switch?  That removes any
>> notation that the gate/switch is an actual clock...
> 
> You really did not get the point of this entire discussion.
> 

I won't argue how I interpreted this conversation vs your understanding. 
  We can remove our vote to the clock itself, since tcsrcc registers the 
CXO as its parent, so it'll handle the reference counting for us 
whenever we vote on the tcsr clkref.  Thank you for taking the time to 
explain what you were looking for.

Thanks
Wesley Cheng

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
