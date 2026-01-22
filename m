Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3FDFD3EE66
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jan 2026 14:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pkt1aLRl7ILN/fpZshp2jy/XlE8KVhVHiOagD6oSiMA=; b=3kXCUUYTtcAH9D
	DwZymhXd43FFrXHFOUT/qqa8X+nm+xPRg8WF+kcmbbS9ITREHP3PbqZBzFVG/klW4HdZeu0wV5vKo
	C+JRkoMqHqEnmNbcPSTWzFkziJQfRK6e25lIFdN5E/eGfZUwkYx6kw++1gRkKvxEU74MeOcfvi01R
	Z7aD0Ycj/mKuZo09hlLJsZZeFBJwj3nMtXRxj5/eYq4dAJkR5x3vOBGqqQQargMUH8Wyw1mIMqQR0
	0Ug3rujHsj/ZKE5RFR+qmCd/15JanOzPlv+4ywJFJg8maTgBxuue45P7RhpsAt4banQbeneWoro6J
	jr9uA+MuEELASCDUOgeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viw4F-00000007Glj-1LrN;
	Thu, 22 Jan 2026 14:53:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viw4D-00000007GlD-0QjM
	for linux-phy@lists.infradead.org;
	Thu, 22 Jan 2026 14:53:50 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60MAlnk32915339
	for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 14:53:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TdCKN4ogjRSe34zs+Px1/0ACI4XiVOC7qfUH5IdyeoQ=; b=cHD+FvwSkOIlNWEf
	DXFPTFpVsu7Z0t8U4tMsIsnaFhJIq2PZ2XBnuqMfdnWcEGea2AnCzCu/W8kLN+f1
	iR9eyFmhI+kcbReBhck7M34HTWXVxeTBnAqRUeZaNAc/fpZEfaRuK3JfE8ikqZgr
	VHBAWyvsY6UoJ7hKMRQ5J5hiG17GB79qfiL6K2NCW6NQEUZa+Ft9DcOXlQwaoTGX
	JIWzGPGj2dy91UBwQ1Jhxp0O/kVfl3t1DPOH0f5VStG8PBHquYREWgEIGm+2WFwD
	t9FLI887F6xNHE+hjtXixNhVaD4wJS8pq4lKRis/F4WDNmHtN3aGUseIfVXQTM4k
	AbPOYQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bujf2gprp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 14:53:47 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c69fd0a87bso85037085a.3
        for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 06:53:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769093627; x=1769698427; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TdCKN4ogjRSe34zs+Px1/0ACI4XiVOC7qfUH5IdyeoQ=;
        b=UKLfKifNCQ2LMfacXV37qZXb3a+uJlCPA9i2YGNg1hNfN1lfFLpoA0Sx25n2iJYz61
         CC1ASR9S4otHEdImBaUUD3APWPbY/+r4d0d9Qq3OowhZ4avrQ7zDzneFlDxWasVieDWA
         PR92Z6ecaHBocTnL1dQMdJEATcmBMRmVgZniDjX8SqIDPncOpqdnOmHMAkAC1x1tM2WL
         xuZzXpxEfBnp+7U9UaPQkXDwqFKfYB3Bglfgj6fENDwH4omnTcCG6nyj61M+KSPA3F8e
         v71P1ZrlKfXk5CSAwRwaZQjp12g5zbx1Jir/F9eeqaw1LzeLsRoxnPTOvdw2GSEQcV1F
         ykuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769093627; x=1769698427;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TdCKN4ogjRSe34zs+Px1/0ACI4XiVOC7qfUH5IdyeoQ=;
        b=QBdgqoVBmvVNZ4NQeM3/zQbEQVEuQaCyotfnOO0ItCW1SLWZW+3si0n/mY3dscwqFB
         PGugKjlsSoLKhUeSgqjRxCHy51xNUppk/NLrJRsWJ/6CUgMcqWqp3ZiIU1gMfkG1HvVg
         eyxsqHsFGDGGEulLyAVc8o6jk9BKHw/RCIuUiB758oCaj+E8hZw7Ov/DHj7ltZ18wKFo
         8GOXv4f+nTux3gcr1LUk5InmrD4RWQWHl9UhCB/EAz8FGfbU2we8R+sPZiQP1uLLcAMN
         kpu+PO6CMYzvYYegp2y9fM+sDzl7cmYY9dgPDmLenkwYNdiTrAxUj7qEP+TlEoCuj0mx
         +0lQ==
X-Forwarded-Encrypted: i=1; AJvYcCWH/H121sjLFZB6Fk86D36e0HlB7DxnvUGkrGsSafW8NofnvfqmUh9BIK12ML80+XMR4skcKdntj8Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YwHr2gOVJqnKTAUzXzMMX1RuFswO5+ND+RxzXHzoGfyxdeluK6n
	+ZD2kihsCSaGYqyf1XIiJ+RIkavph5dZDrR1GekJ3DHw1gLz7nkJLvE5kzKl/SuwpeysK9tixtD
	c7FpRZx80DVbzK4qiRLyqrG4zmLvZ83R7R0zPue21qXTjwRAIbQ4zCGO0mTHZ+esfVz8w
X-Gm-Gg: AZuq6aL46nJyUALPHnghiW1heQOFGwF7KEETvCK8Di4mk1g+HJhpQYr/9NDZt5MBxRt
	Qf54vRhc3bf5kR2jXisKo10HKf//LwWFdaFssfokXgfVTP8ElCzuz6C9cVxKg8OD9GgsINw2LYC
	P8PR01+SUETPmC3kjORY82x99P7vvb0VnOYnx/OVjCXw+HoEwIdTjWdgQ7qd1BEapEHLtPmaT48
	h+igaT+/B2GgzKRoC3ZM/VFh2NNfccSg8wLOMjAAmq4k0h56W/7k6XcFOyYvVBWCAooxNFOHIlk
	IHUuULQcgCISKShnNbGJDEID0tpWuaYi/7uXk6bBgWcFp9/qLB3ENnwobNrf4NZLG3IA3k4oJQA
	Cq2SJLoCJpdRtiF3TSFs8CnpcDcxEGVJN6rxJ7S/TQg9A46RM9DGFhPDtt/2q2JsSlds=
X-Received: by 2002:a05:620a:44c1:b0:85a:8fc6:5c28 with SMTP id af79cd13be357-8c6a6797f81mr2197752085a.6.1769093626956;
        Thu, 22 Jan 2026 06:53:46 -0800 (PST)
X-Received: by 2002:a05:620a:44c1:b0:85a:8fc6:5c28 with SMTP id af79cd13be357-8c6a6797f81mr2197749985a.6.1769093626433;
        Thu, 22 Jan 2026 06:53:46 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6581d306580sm1797287a12.10.2026.01.22.06.53.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 06:53:45 -0800 (PST)
Message-ID: <f1985450-b770-42e6-ad44-4be49bed7205@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 15:53:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] phy: qcom: snps-femto-v2: Fix possible NULL-deref
 on early runtime suspend
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, vkoul@kernel.org,
        kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org
References: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
 <20260121142827.2583-7-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260121142827.2583-7-loic.poulain@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: HO0RFId9gyCi2gEc93EId0Mf_bIY5BGY
X-Authority-Analysis: v=2.4 cv=fdCgCkQF c=1 sm=1 tr=0 ts=697239fb cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=01En1cxxkT8w_nZohiMA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDExMyBTYWx0ZWRfX3KEELohKsmcg
 cZtYpB/hP8stb2rrEJ8rRE4Ajdr/NzOgBWVAG0/j68sNRld8vaa8v6v1zFDY1SEEBnhh+q3zhMA
 Y2U1P+wDKxZ1BK2WIM+IZe8m3svFR3hV53JpaOK73mB2Eag3tJlGFw4WWzECbepzOMmIkd7y2O4
 74GvTkv+GQx45w8PmwvxxnNmm+862ovjHsUedTjw5KEWM2QyUcZgy3lLla3NH4a4a9cKwwHbp0R
 /K7hnbZd3002Z0Zev6XK/LeXrEoHhjXgGNkYXrwjtaB2oqwoaGRM3M8hl1tFK2tmHaXNpqONgS0
 urH8sXeuWLE+toRs6u3sFASu7gcuKNz3g1LiR3aP0OHlNsQM8WMjWtkmAG3snD8K97pEukYwMcb
 IMTfSQ+D8jj0grNyrEJefGj3OyhKsUDn/AQPsy8oF3FW8OuOFDWKYHaTtVOOHl8bVbgK0tO2rk1
 kR4lXJIzZDsItVFdOFA==
X-Proofpoint-GUID: HO0RFId9gyCi2gEc93EId0Mf_bIY5BGY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 adultscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601220113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_065349_362392_E5EEE3D2 
X-CRM114-Status: GOOD (  11.64  )
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

On 1/21/26 3:28 PM, Loic Poulain wrote:
> Enabling runtime PM before attaching the hsphy instance as driver data
> can lead to a NULL pointer dereference in runtime PM callbacks that
> expect valid driver data. There is a small window where the suspend
> callback may run after PM runtime enabling and before runtime forbid.
> 
> Attach the hsphy instance as driver data before enabling runtime PM to
> prevent NULL pointer dereference in runtime PM callbacks.
> 
> Reorder pm_runtime_enable() and pm_runtime_forbid() to prevent a
> short window where an unnecessary runtime suspend can occur.
> 
> Use the devres-managed version to ensure PM runtime is symmetrically
> disabled during driver removal for proper cleanup.
> 
> Fixes: 0d75f508a9d5 ("phy: qcom-snps: Add runtime suspend and resume handlers")
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
