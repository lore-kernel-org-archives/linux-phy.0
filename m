Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93996606A32F
	for <linux-phy@archiver.kernel.org>; Wed, 21 Oct 2026 12:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qWwXr7m5;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=cKo3fbec;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=NEuAQccb
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2DFVuExqCNIlYSMn0N7nnZtjVAONwupCGC9BPgJ9/J0=; b=qWwXr7m53oYk1D
	4pQosDHlopVJEE5ihjjTRRL906OAKPcOyrKhWW9HccLatuOur64I46m7p25yEqZ5NiD6V26c0DIx4
	wyhRmPuTFVh6pct4PViR1kU/IC5FZv3fcsaR9jSIzBUd5lsIXyZ3EAhRvjo6jHySewT5satJrf4Wu
	pbU1oSHVz1NS1Klyr5MqrASd/iP+sdQTmSA2X/0EwXmqfGjXzM83Y3/vvIOdNiBH2yGh0Wxdb9Bch
	K4IGpW89LQbOmdZOZOKRfMFhoaRl3iVEpHYarL0hsz1BCgTAH6tKrhkLmEFWqtzyWCYI2c895VGXV
	0Myl7Muc86eqR8v4Bmpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJUzs-0000000BlNG-1QIE;
	Wed, 21 Oct 2026 12:00:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJUzq-0000000BlMv-0RQL
	for linux-phy@lists.infradead.org;
	Wed, 21 Oct 2026 12:00:43 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69LBg8kN977418
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 12:00:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7492lyDGCMJVk5RTZk51iOq1Kd3H7jR4clDwOkE2Xww=; b=cKo3fbechJkj0j7V
	/mI6/lX0+qidNJxs+cN+0pFj98rmr64pq4aGnU6tCHb7h3VnwzQ86KmbuH4XCbGQ
	P/W9T4/49uonL0sr3trUtcZRVUPJvU8DNa5RivotrTAdnwuH1n0fEmgC+vi2x5fN
	Rz7RLqiBtdUhnJ4rKS28zPImZf+jI5Q/h8mz2N38Kbbi4Ez1S4SyIWXsY7bFR8at
	Ob1794tBR9wqLjHB3C/HP04bPHHF0WFz1APOcNp+mL+g1FxHQL0wZk+SuEAHiPUF
	FHDFl5HY0AV2w1EEx0Sp43bIFhtMKwe1qNHzJMBItOtOBtvWG9aP68OBD+UZQxar
	/g1OkQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hegs02ywp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 12:00:41 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cd65285537aso225294a12.1
        for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 05:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792584040; x=1793188840; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7492lyDGCMJVk5RTZk51iOq1Kd3H7jR4clDwOkE2Xww=;
        b=NEuAQccbY2+6SV5S9lYv+R5mHQyu2tHVdt25nqCmE5HHt8K2CE7rKv1Nz/gmumfbrH
         YI+c24cadq9yLjVm12I5B4DfDDn1pJJ81Q3yY8qm1sP5TMm6w7bli1AdbVE1yLSqeHK8
         kX6IVPMjYmb0KTpM2STA5wPFIbEzSoK2JkOF6+M6JyxjL3a7r43nw+7AoIoZaw6X2X5N
         sw4CmeiXK4WbYRccIGhTebbGgEgx61jrjy7gP77mavhgC0wHALjQIob+akfqjze7RxcY
         okmrR+xpGcY+HPlWQob6+1tBtI2mwCK+rtO5i+KJ5iM77VQ//Yog8QC8hGzYTV29QIJf
         LjEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792584040; x=1793188840;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7492lyDGCMJVk5RTZk51iOq1Kd3H7jR4clDwOkE2Xww=;
        b=1mzHSdRIG76/ehhkLSJYU1HVdvQ/SOzRJF2Knq7VU1OsvGfrlOzgHDUahbX8nXvj98
         OUA+2Xntmw7xw4OuKUbPGWec7AZ2PGmdQOwPXCgYYeP1jR9fgWrCJ96rmsyHdY1OWyfz
         7TboSe8UplbQK8lW1K8mCfYkU5XHZZ09WBu7qgm3HeoCM+TrRabbaVfD9ck9Ec5TGz3C
         radvEvi0DrtXlNzR0LheumYWq5bp6FTRJKGSCFMSxBAI1GT+8Ilfiau6FnMfe9GrLuxT
         JqxctBHmsVQULquAqu5aMlwA4olqMJx9L2lz5iuhvjj0sUQjywuzwGMNG5JgkXVlPtii
         9XJg==
X-Forwarded-Encrypted: i=1; AKwUvBz6kNG5VL3ICRZBOJ8h+mwrOERaCKai1Xjx/sOKvdT9X1cMa1iLpZKbTV+IRQ1qdBBw7xO/5vJF1nQ=@lists.infradead.org
X-Gm-Message-State: AFq9FYLw/D+sfPDOmykMB1vhtDLhW+I7w8wDtZ7xHtw/KhNnTbYYkZ9F
	BCCOuMOcD3vq+8VIoindslb+DLJrmsWNbcKg87Zj2T0rrm0zxnuMu/Gu2ef7vUf4AcvvX7q0DFW
	LxtQTGJz0OZQ0qb4b8SQI747q4NAP/wucnU/2Z7AAvCz84h228hfpOHzVeazBviqv0wWj
X-Gm-Gg: AYBFou1wNPuJqLwoUtL63Vr3Z+Cu/EKSk7uYEG5/y1T5dKdYCZ8wu3VTxdS0XI+S5xI
	g1ZMT8+WjYr1hhjudehmuijyU6wwdLriBrOho45UZPO+1gsRWV49A0LD0J56xMYlxyb6CniNSRT
	CVdBnFN09vs8VPF7ZsFieDgr474l9SePqL4Na/wYeSnHVF7ruWv79BdVciqQa77xxqpRCGfZCpS
	0/cM1z5vYhmAAtJJAL1haeAsGZGl7mL5x0455Ems3hyTvsB0bQ9tp0cUGXZ17b6tMQw26bbtnnm
	MN91Ajsrz63onR9chGwYrJXokRh1SCEdbQQQM+j0NM8yrsD/eZ2Vqln127BqWWkWYYEgBBAhgXE
	WIXhnIY92tVgcGSEvRPIwbhVpLcfY
X-Received: by 2002:a17:903:2309:b0:2e9:4243:431d with SMTP id d9443c01a7336-2ea439a650bmr14235985ad.30.1792584039688;
        Wed, 21 Oct 2026 05:00:39 -0700 (PDT)
X-Received: by 2002:a17:903:2309:b0:2e9:4243:431d with SMTP id d9443c01a7336-2ea439a650bmr14234645ad.30.1792584038003;
        Wed, 21 Oct 2026 05:00:38 -0700 (PDT)
Received: from [10.204.78.119] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ea3b486965sm10235045ad.63.2026.10.21.05.00.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2026 05:00:37 -0700 (PDT)
Message-ID: <dd18e6d5-cb7b-407f-8e7a-2c6fd00359cb@oss.qualcomm.com>
Date: Wed, 21 Oct 2026 17:30:27 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/13] dt-bindings: display: msm: Document the Nord
 DiplayPort controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar
 <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
 <20261012-nord-drv-dt-v2-2-a2ab9af954d2@oss.qualcomm.com>
 <20261013-tangible-wakeful-swift-a38f8f@quoll>
 <20261013-honored-bear-of-cleaning-bd8108@quoll>
 <425ddb41-cfd7-4032-8666-0193ab6b5819@oss.qualcomm.com>
 <565fd4c2-2d5a-4c2a-9ed1-c7bcb17efc9d@kernel.org>
Content-Language: en-GB
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
In-Reply-To: <565fd4c2-2d5a-4c2a-9ed1-c7bcb17efc9d@kernel.org>
X-Authority-Analysis: v=2.4 cv=S/NMU4sP c=1 sm=1 tr=0 ts=6ad8a969 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=rLXGX9pe2IGxD4WxI2MA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIxMDA0NyBTYWx0ZWRfXzUxMRQOhv0Te
 nDW/lyUArygYu1xxgugI3ikSw+XEmu/qa7thuija5ZcKZ835cS2/gxDkAur2ZBUcz9pQNZRpbEe
 ebwH9uAZE8nJDY+ChQIRCwI8ligIsbMh2gLwM+9AoZLRS3rDFNPjPf+INA3h8XQjeUQf4/Byvt7
 BSTjNxXvPqW5aJbEE+1OSHnH6oaFCtnidyGfKJiZ1xkGRyte30PVXacigtvAvgrTNwmRPl/rqmi
 JAqXVF/grPYvINw1GhfdkDdHgW8pkwdOaDgd8OZfnISVhXpj82f4r/SIBVtePU8DIjNF0p+YT1r
 L/+B6KSvbdkBkN8FhiYeBC0qGcexI37Zh4Xw7c5sKjQBc1zW4HTjc5dMMmASTzt9CUum9/FQrnk
 Ngy+WJZy+cWGfeJ6YMN7mhQO6jBSUzQCLb70tx3dS+JQ6J0ztOHloyKJcugH1/1SZFG1QwRWlic
 4pKesAyKdVEE/13qghA==
X-Proofpoint-ORIG-GUID: EyOF3E0BOD6efSkDz4rsFJEUkQlBVzrI
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIxMDA0NyBTYWx0ZWRfXw7j+CPl/cVAh
 N0ZbQlAUAZXbjrnLgIyl0gT61+ezQMOcV/edgfNTDedFt1paqxdg495B9yY6+4k92oB/GnM/67k
 4g0Z0Yrq4S5YHW/2xHkwR/pAv5mLDZ8=
X-Proofpoint-GUID: EyOF3E0BOD6efSkDz4rsFJEUkQlBVzrI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-21_03,2026-10-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 priorityscore=1501 spamscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610210047
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_050042_267924_06B77E74 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On 10/21/2026 5:23 PM, Krzysztof Kozlowski wrote:
> On 21/10/2026 13:16, Nabige Aala wrote:
>> On 10/13/2026 2:18 PM, Krzysztof Kozlowski wrote:
>>> On Tue, Oct 13, 2026 at 09:44:15AM +0200, Krzysztof Kozlowski wrote:
>>>> On Mon, Oct 12, 2026 at 07:02:12PM +0530, Nabige Aala wrote:
>>>>> From: Mahadevan P <mahadevan.p@oss.qualcomm.com>
>>>>>
>>>>> Nord uses MDSS 12.1 with two independent DP controller instances,
>>>>> each exposing two DP cores at new IO offsets. None of the existing
>>>>> compatibles match this layout, so add qcom,nord-dp.
>>>>>
>>>>> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
>>>>> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
>>>> Do I understand correctly:
>>>> Device is fully compatible with qcom,sa8775p-dp, but a simple to fix
>>>> driver limitation is preventing compatibility?
>>>>
>>>> If so, let's fix the driver - just add more addresses to the
>>>> msm_dp_desc_sa8775p array?
>>> Or it does not matter, because top-level MDSS anyway cannot use
>>> compatibility?
>> For MDSS0, the DP register offsets are same to those used on SA8775P.
>> However, the MDSS1 DP register offsets differ from SA8775P, and Nord
>> also utilizes a different MDSS instance. Because of these differences,
>> we introduced a separate compatible string for Nord.
>>
>> Are you suggesting that Nord should reuse the "msm_dp_desc_sa8775p"?
>> This would also pollute the sa8775p's desc table.
> What are the differences? Only registers, so no pollution. You just need
> them to match IDs.

Yes, only registers are changed.

Okay, I'll update the SA8775P descriptor table to also support Nord and 
drop the "qcom,nord-dp" compatible string change.

>
> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
