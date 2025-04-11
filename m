Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DDDCC369A9
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 10:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kegWklsxjKa/+qLvQ5G7u/rmfaoPorwidX/5lUrKduo=; b=oAYVdJkhVqp7t3
	yGmJ89HvG0Rim1pR52KHw3pIBjMrX7RpHhq8sFK/HyV4rEg8Kb55SaQx04kretN3zM9Ymcms0gtM1
	/EIpHybZlaqFNxgv/8dPddcPbalLKRKgtkol4nOxJXxFs0iAGstdpnjt5hXi8dW/LUOde2ygbZszp
	d27/hRJXx8+CJ60lzo68iJ1/Chh32huFnB1l4JDLBYjHoYIMz+Q49sdUDR+oSGLsoldohbnAijdvD
	5pHr37xGu4u7Vlq4/Mcw/H9Ce9bs8cK/Hvu4+3KJpI8McaBUmN1EHhwc9UIzXnKGw8wkZhDtQFApF
	zckIxdbC0ceygpI8dcIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3BU8-0000000DMFm-0pKf;
	Fri, 11 Apr 2025 10:19:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3AES-0000000D79t-2Ftv
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 08:59:30 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53B62xPq016319
	for <linux-phy@lists.infradead.org>; Fri, 11 Apr 2025 08:59:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	T/RuMAy9msHuh5tqlxCLZQdr2TbbASae7QFdHD+HliU=; b=Nrx0jzYb38liETmz
	nu9EEKOtw7AMJWhT5yBpjoElMqx8GDbuS41u2XQkRBLa09QrwZ3e8TSJqAvwfLcB
	rIxHywIvG1fSGGPUtslwbPhy08/GCBp9Um3mopyShIGmS06WoxAphw+y2K9f9HA9
	D4Ew+SuJqPaGS6d37rEO50ujeWm7+ZrOCQarwuZ10kQ27P/w70xBAJE7nauN4/4x
	2qVeX81u/YjFD1nxoIjJP01hZIkQQQrxJPo1DGQqjRmONHAoEa8yXI+8KjArhLFm
	xkkK+9oCdyx+yewYZdwv9ykFlXgCBfJvWuEv35aiPliD+KnbLapIWoiJlQlkwXWJ
	V+XbTA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twc1snck-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Apr 2025 08:59:26 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-73917303082so1191596b3a.3
        for <linux-phy@lists.infradead.org>; Fri, 11 Apr 2025 01:59:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744361965; x=1744966765;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T/RuMAy9msHuh5tqlxCLZQdr2TbbASae7QFdHD+HliU=;
        b=iwCbZOeVsxYUuSI6upoiiHUoE/YRzCPI+y9EXycvjKbe+Hf0uemJSd7Ln2RaC9BMOy
         JTm3ib3kZf6w64++Zp1j9slbB+pVSqksg4xqOFuBmEgrz7l3F4TaU/xT8Flx4d/vXfA0
         ebmi00FLIJnk7uhLYaQYloVjKrcnLEcltyh4VOCz5BJKXPIiiz1sa9ex1iFvvT85tfiU
         iUeJdtM8aZXMZ4r398AUaz65+Enss9r0oyBxwP6WPsTuWusyeIwqW8ItV3hiV9o1hh93
         tQuvYCuAygSqlEheeqrAtcfH9Fj399KG3Eu34zGNwyXv4aLe+15uZFAhvUrwOrUYSDU4
         dK5A==
X-Forwarded-Encrypted: i=1; AJvYcCVFBLxcB69/hIVcshMw980S9cJgHvfvpOyaz+Po+sqhSqXTWmviBsChOHezN063FHK3/vyblK7v22E=@lists.infradead.org
X-Gm-Message-State: AOJu0YwU71EtHvwM7DpohewoQAgVy7t/CtQbMMC5KGqLZT3xIudFJ6En
	8tRIH0XguqFRwFCCZirGFiJYP4Fs7U16iQCP1g3KgM77zB2TxW+2/SmA3FZJ0Hsaq4H0+hRxBy/
	e3kn5CGwfROMTr3Z9z9g9UvPOCIP5n5G8t/GYsyrqMMp/KQUMON27OUsCPk3VVcWR
X-Gm-Gg: ASbGncuvpNGmYucpKZlW+jVdsgorJzmvmllEj7ko7ZsJkPXMG5rEIn1enqqOJcuENez
	pG+onspVyef278mYv/2bQChtA3Jb50CfqK6rrhzfFq1Ew+uZ8EfsTT8oqlzg8bLv5pfHZpth2+f
	MQPWJ9u/5itEa7TeM+Z7V0Ijue+iM2rY59DkKNM51WqpGZhWpZjF817lThRknLud5kgKMWOoV2F
	WGp4SClvWSxda2xnsZiPo4LjojucoQ8Nn251ak203yhPbk74urFa0ytAO8316lO4vL3FRX+tnW7
	7wTos1oWG/FcjOF+1fQKbPG8asLAe4tjdDkK12aiHj7+c7nURomk
X-Received: by 2002:a05:6a00:4603:b0:736:6ecd:8e34 with SMTP id d2e1a72fcca58-73bd129b43bmr2796393b3a.18.1744361964954;
        Fri, 11 Apr 2025 01:59:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGq3Om89V3BbCVuLa01tYbUYAYbP5OVnWoVWe3QAtTUtuyYrDH63vACK+b6upU1gLt6/v8bnA==
X-Received: by 2002:a05:6a00:4603:b0:736:6ecd:8e34 with SMTP id d2e1a72fcca58-73bd129b43bmr2796362b3a.18.1744361964496;
        Fri, 11 Apr 2025 01:59:24 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73bd21c4e25sm968489b3a.47.2025.04.11.01.59.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 01:59:23 -0700 (PDT)
Message-ID: <734cf70a-1d96-4a87-bc7e-c070c1e7dc8c@oss.qualcomm.com>
Date: Fri, 11 Apr 2025 14:29:20 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom-qusb2: Update the phy settings for IPQ5424
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250407-revert_hs_phy_settings-v1-1-ec94e316ea19@oss.qualcomm.com>
 <Z/i+6k6VseihdQ69@vaman>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <Z/i+6k6VseihdQ69@vaman>
X-Proofpoint-ORIG-GUID: x6hCbRxJgDWVACGirpUAe6IG8LVmO6Ts
X-Authority-Analysis: v=2.4 cv=KtdN2XWN c=1 sm=1 tr=0 ts=67f8d9ee cx=c_pps a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=Mlon7qBrsPBlpjHfUrMA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: x6hCbRxJgDWVACGirpUAe6IG8LVmO6Ts
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_03,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 spamscore=0
 malwarescore=0 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=913 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504110049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_015928_702631_A8247A1B 
X-CRM114-Status: GOOD (  13.89  )
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


On 4/11/2025 12:34 PM, Vinod Koul wrote:
> On 07-04-25, 19:51, Kathiravan Thirumoorthy wrote:
>> Update the phy settings for IPQ5424 to meet compliance requirements.
> Can you specify which requirements are these?


The eye diagram (Host High-speed Signal Quality) tests are failed with 
the current settings. So design team asked to revert.


>
>> The current settings do not meet the requirements, and the design team
>> has requested to use the settings used for IPQ6018.
>>
>> Revert the commit 9c56a1de296e ("phy: qcom-qusb2: add QUSB2 support for
>> IPQ5424") and reuse the IPQ6018 settings.
> Why not do revert first and then add the settings?


I thought of submitting it separately. But what-if only the first patch 
merged and second one didn't due to some issue, it will break the USB 
feature. So, I thought it would be better to keep it in single commit. 
Please let me know, I can send V2 with 2 patches with the merging 
strategy (both patches should go together to avoid the USB breakage) in 
cover letter.


>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
