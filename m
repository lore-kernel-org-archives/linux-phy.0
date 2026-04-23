Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F200FAD3F0
	for <linux-phy@archiver.kernel.org>; Thu, 23 Apr 2026 03:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gysq97Zy2AvPlXvIi65FtVNSBdLt8lgg3mtAsRrUub8=; b=m27DA3tfG+7sXV
	pD6EeDaKgARxImsYrJY4ccXA8SrEIU2E6HPqVF4HAIeStzzzscPW2OeS5BUdeEmDIZ7feNbHVtXEo
	opB4wBe+iXl5vJ9RWVWimJpdI0kQNyO+w+fjZJjdqmOoVmVaqJqcnIUzo8FVSXkUpSPloIGfWFJdO
	07zUuMfF5cwZ/rF0cwBGk+VIb8765+HyP7c6+uthIPbIx03OUB4euFuG4AJeMlDiq0VPzMO86FqAc
	dwNlt1eXOkwWndB6jvkaHavPnbz3lqABdUwmUywnGvMoO1z4xH19e4wMr4aT4YAYVybkW6bGXF6CK
	VdIikCfMkfpmc8iUqNJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFkWb-0000000AyZE-03AT;
	Thu, 23 Apr 2026 03:14:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFkWY-0000000AyYu-30s6
	for linux-phy@lists.infradead.org;
	Thu, 23 Apr 2026 03:14:44 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63MG3hdN2012012
	for <linux-phy@lists.infradead.org>; Thu, 23 Apr 2026 03:14:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QQXoZzH2+O8sR7z+rdLtaGC4M3a6RTUnICpFU0MK+yo=; b=FB1Ln6APT2F/WLQJ
	rR9FoC0vumAGkSwy77awWj4QW91/xzkwLL6cWLA5F6Y2+HKVw756w/uZCoAzu7GK
	iuv4zbvZfQ33DtfYFvJNSMK6LK+vz7x6k5xkIOqRAToaTsL+PTmDoB4W9BF7ASsn
	darEcAW6dLGIHxoGqUqrSB/bhtWmGETb1DUZpMfmSyzVOlycB0Ew9Urqc2uvzy8N
	T+HCXCO1wNb5OoVeDXSK2cUIr8nwSoBrkjSEf7hIEaOa3hd7/+heJbZZUEtZwxZM
	DyAOvGvSFgsDfh4UlRVB6D+u8Ol8e4dDVknlaNqIx4j67WLYgrcJxCH+fxpgSw3Z
	CVXh7Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dq1h79xp2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 23 Apr 2026 03:14:41 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2b250d3699aso127775605ad.2
        for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 20:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776914080; x=1777518880; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QQXoZzH2+O8sR7z+rdLtaGC4M3a6RTUnICpFU0MK+yo=;
        b=kG1d7RCJcjGD8jDg18ZPKFglvhPIURYrEvvjNeo8UfWfvQ+JdGm0F4Tb3fdKn3mBBO
         l/LAhc4PHoQ8lFACQBhwXs6hBKYmFJq/L5dlkyJ0Qp6YD3s1wokhR2iTxUNlb47MPF6w
         ErReaHqOs6tSofIPUKPVBQM+C8WVkasE5JZ6VB3TrGwPbk2C43zP8enP3uwocsVTeNXf
         Gw0T3VcdqwPBWinrDXRT6vW78PEuMYfPY9Ml1ajRTLCZSRXtaXwiqM7Beeu54fclr0EF
         NsF7lHdNw1hmNSsge2NFajSkGZS1WM5xPoax9NULUpJOcp7GqON1W9lUQoCXvK/rEKcb
         SibA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776914080; x=1777518880;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QQXoZzH2+O8sR7z+rdLtaGC4M3a6RTUnICpFU0MK+yo=;
        b=Zf85mwHweZFTigHw+KxtursXjnDHihSPjeq2ru72cgrgDWNuMONVBft+j48T5ao1sh
         0ORnk8MKvx7ZlatW4gOIEJrvsCzM34K+z3AWmrmVnuXyZfKxYBkaugbSMxNPEmmGF/AB
         iei7Q01Ux3hTJZOFwIUid3XZB5arkxi2IL9DIY8of4EXGB/EDCmMiroHe5SNA8RG3nei
         yI6LaiV43W7N8STgd0li1/cYt8RVR/7xu/XQ+xs0HX6D/DRr2fydNB5QL6URXwCzkgvb
         LMSbmiI8afZsJ+rJwzoXgvDlA9FY91mdVXlaO7LaiqvvpOdwDMItOy0ssrMJWODs9+Yo
         Vz8Q==
X-Forwarded-Encrypted: i=1; AFNElJ/5RkxMyadXXuKBaG1hGvaHmd9k9uIQrumDkuhVPFZegvBFBzQJjATBNmevynQCzOMARqLGhEE7Wqw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyTF+BCbPmQz5kgCG/sNDm3fuj/P5gYZbEjgkqrCwOtFxvVrCa9
	/Q6vY/cBKd6eKllKxFjIr05NaON/qP2OLvj60p7I0x7nSB3gz/USvtNEHlbU1UUF4afSATpI60G
	xx56Rp6elNrscIS59opx49COW3XQ8aCcvviMt7Ggp/YjJ7YDhgYoC6JS2PAk1DtSH4pEQ
X-Gm-Gg: AeBDiesPGvcyd82tPdvGR5H7GrInUIy8tJXvcKS245TW8wMk7REqoiHPc6kL7MX0JSI
	Xcif3od/hcNFU+79Cz2ynCHHspVhRi+9DaaAL8EnFWZayohHZC3OTNBsF1N7G+WXVUNB76j/O30
	BPA+pAVdOehX7gAE6/XMqfT3LE4Kgyc7LeO4GMyWq39CjbVztHbFg2xzusXaJ718eszJImgjD9f
	Gc6FjT01wobO710mnjMVsWMavpLvGdqyeXkamts+spvL0Nrtx3FebyRE238GhNvxJGm0ui9o4u3
	bqCD/2XZEKpV7cPT6EbPsbZKKx/L3lBVSwZMv4RqK4DEMYaM6DfaNX3h5pu4x51sMgyp4XrmI0z
	aoEYnzM8GxvZrPxB1MfC9cDdBR/AtuJjHVgvuCQ9f0HCiGm27cv0dyHmY7eXChpznmfn+n30XNZ
	nd3mXAbzN62Aw9VZG3RH+CNC8ps7hG
X-Received: by 2002:a17:902:e746:b0:2b0:5a4c:7263 with SMTP id d9443c01a7336-2b5f9ef646amr297765025ad.18.1776914080490;
        Wed, 22 Apr 2026 20:14:40 -0700 (PDT)
X-Received: by 2002:a17:902:e746:b0:2b0:5a4c:7263 with SMTP id d9443c01a7336-2b5f9ef646amr297764635ad.18.1776914079967;
        Wed, 22 Apr 2026 20:14:39 -0700 (PDT)
Received: from [10.133.33.123] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b5faa3073asm170173705ad.27.2026.04.22.20.14.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2026 20:14:39 -0700 (PDT)
Message-ID: <de7b7d37-c556-4a2a-933e-42122ff7765c@oss.qualcomm.com>
Date: Thu, 23 Apr 2026 11:14:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/5] phy: qcom: edp: Add eDP/DP mode switch support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
 <20260422-edp_phy-v4-2-c38bef2d027b@oss.qualcomm.com>
 <2cyvdtnnmrfz4zffhikfxl2goyby73gybgm3ih52rfpyvbhnzk@37x3g26o2t33>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <2cyvdtnnmrfz4zffhikfxl2goyby73gybgm3ih52rfpyvbhnzk@37x3g26o2t33>
X-Proofpoint-ORIG-GUID: 1mbCJAFEvrf17Uw83Uif_eeFNJ7I75sp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIzMDAyOCBTYWx0ZWRfX9WdOrlISmk1V
 QxI2pbIxYtptJD8OZoTO76uCG/mS/sCBvbN5gu7gZPH3gtGvxdxKnE/5KjWg42gX9szG41oiaGA
 PAR5toayezfCJUMj0PLRq5JVqAng6PRqO5jCHSGJBUlfsqK6bUeLv2k52LbnQXvf564n8+Uwlab
 +V7sednib5Ocg9Vb1Aw1t0hIjto9gRKPHwwKhUnINkQip86qpffbPIMnmxzMhRBHLJDM5drBmej
 /szgF5An1mUpnTx7RnvnWLW9bNoMfP8MJTnUFkfRDgvZhNgQD545si+3aB0Y9NwarxzOUfXSUL6
 kr60DB7+p7B1sjTfT1Bb3bmFRdyHe9WY46sUOXyX4ZQdT5fU730HTsiTsvpj9EFBqhJMGO4km1h
 6nSd1oCNIMAUUItxTlwVvhcjjIPQEdxZXYpPPzrrTq3uLBOBqCxK4wm6D4f57h2UVIFa494jQA0
 ZbDkGLGMbTdbhlgDH3A==
X-Authority-Analysis: v=2.4 cv=UqNT8ewB c=1 sm=1 tr=0 ts=69e98ea1 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=GN78Z6GrLXGed5ov1boA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: 1mbCJAFEvrf17Uw83Uif_eeFNJ7I75sp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-22_04,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 malwarescore=0 spamscore=0 suspectscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2604230028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_201442_954408_6272B7ED 
X-CRM114-Status: GOOD (  15.99  )
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



On 4/23/2026 12:14 AM, Dmitry Baryshkov wrote:
> On Wed, Apr 22, 2026 at 02:01:52PM +0800, Yongxing Mou wrote:
>> The eDP PHY supports both eDP/DP modes, each requires a different table.
>> The current driver doesn't support both modes and use either the eDP or
>> DP table when enable the platform.
> 
> This is not quite true. The driver supports both modes, but it uses a
> fixed static table for eDP programming.
> 
> Other than the commit message, LGTM.
> 
Will modify next patch.
> 
>> Add a separate set of tables for eDP
>> and DP modes, and select the appropriate table based on the current mode.
>>
>> Glymur's DP mode table differs from the other platforms, add a dedicated
>> table for it.
>>
>> Since both modes are supported, so also fixes the table mismatch for
>> X1E80100(eDP) and SA8775P(DP).
>>
>> Cc: stable@vger.kernel.org
>> Fixes: 3f12bf16213c ("phy: qcom: edp: Add support for eDP PHY on SA8775P")
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-edp.c | 46 +++++++++++++++++++++++++++----------
>>   1 file changed, 34 insertions(+), 12 deletions(-)
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
