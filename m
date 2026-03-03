Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25493EC1431
	for <linux-phy@archiver.kernel.org>; Tue,  3 Mar 2026 11:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KhIf30KveBMGgOatdcNqCJnHcWmVCIdTaT82VDreEUM=; b=SjKiFZ7V93R5+S
	t8+NvjaOzjd9PVIAOfievwakfaXVc4yxC/YvfTdegnIsze/1UC2Y0Li9u2Yi2ITDB3TY6nr2RvOI3
	86MeKsXl7UDXgIbuiE/x9STlvKnmkOZ87ESdHJu698sKRTVU7u4OYAU5sBfJUIYGLmZXnk/iMn4fF
	5c85Vq7JRoVWhgD1QDjN0S/x1OQCY6bl5MktA+BZvfCLgdMf/rlieHVI5gJdjUa5eIFGLuXmcJiaz
	7ZBshlAG0fxzkIPCmnWJ8uz0zjsDtJI31IPKp/5t0KgVFaNv9YjLLajj1bBGkywxEehfGC46DMXKe
	ioYWkZM54s4/NyLNZkqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxNyY-0000000F4Ln-1ynS;
	Tue, 03 Mar 2026 11:31:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxNyV-0000000F4LP-3ZjZ
	for linux-phy@lists.infradead.org;
	Tue, 03 Mar 2026 11:31:41 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239nLqL324031
	for <linux-phy@lists.infradead.org>; Tue, 3 Mar 2026 11:31:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xCspUN4yg0mBW2cs+CDIhav3u7fqfrGMD0xfZQLCXOU=; b=HvsaaNV809YcloPc
	/gVJlsOWBMcblTwXm6VtPoXk+l/8YPomA2GM3VyV3teOabdcXQbWKSdeEAcSM4hY
	ZOAe2FtNDeLAFwyYSdIhEaalRTmH1WQajdhw5lZQAUPsQ5OL0bVKVlP6dzUm4Hcy
	n4tmIQ+FvTAr8oRkYOeQwWaGU4MO0UcxSIUNVnifnWF5a7DXi9QdGpgWa4lt7ZAg
	yWm7iSBEPukRiRYILrxB9hscc1ATVmGKXit+WTeDoIxsEwv3dJZPwQeaj83CVhn7
	tvbQNZWCj2V4wmZ1LTl2GJM8Ojnuppm1eLfWtiJHojmJJgLM7yTj7fHuQLt3VRoo
	YuD+3A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cncmfuwac-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 11:31:38 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70cb31bcdso471092685a.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 03:31:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772537498; x=1773142298; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xCspUN4yg0mBW2cs+CDIhav3u7fqfrGMD0xfZQLCXOU=;
        b=hzEy9X2g2jg/Yk7M0j/aBt2mpuBlaTKi4o4ebJQcpziMPuAGn08TDwWCaxpwRE/yto
         7Z23hCzwl2fu/fMKzV6kCtmqPwxPALFciLd37sM4XQHqh0PuFByIi3q6gPpB90rN4GGt
         4IMh6nr+juUCFtZ7CCBK50ZGyjVT0MVdIXgKAcVKs4yRbea32jnal7du+OQCO7eDSBma
         5YkMKMUD5lqnH9zQ2VjHWKxhZOyDH55+l6VtwungWHYRWV31/ti5jEwnc/9YXoNH037Y
         a2QQEmG1LkeE7SG71O7pTNPbtG3GZS/yb6fLM9UQNfJxXE4R8mnc9+YGLhNnBhEW+aA5
         HIZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772537498; x=1773142298;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xCspUN4yg0mBW2cs+CDIhav3u7fqfrGMD0xfZQLCXOU=;
        b=iEVJ9Vyj0w2W5yhoP0tKTw8o3LZyzUz6sPze1ENu/Y+ID4lvLeJzr8tNLgwBZO679u
         jxxzYcpxMRLGaCtgMv++EqoqryJcv+fg5W8dH+hNBDbNosjcTgsk755OJJ1ufvqQ7Zq8
         6pNbs83jR6naCzpOLmgMEd0zzbrf7/u8KmsJ4HcUSSugWiX1ReAAPjJjnUkCKgGXXuoE
         9b/BxLNPMETMLFeIh8ATsG8ubuKYDLtIfQUNJ5HZS2wKwdPYCeditdb+qFrIwhvwOVO7
         vcR8GmESXk9SZdPEaKFpUbXDrtOdlAkFCBE9wlSQXUJkxe1UEq7Bp1b4HRo43gavNnV+
         u2qg==
X-Forwarded-Encrypted: i=1; AJvYcCUosOFh67uUxHJIWaEX+lcw7wIudjBJmP1rPS0iLJeehIASwiJzcYPal8qREO9vQZ1U5YDyLaAWs64=@lists.infradead.org
X-Gm-Message-State: AOJu0YzRKRannNhAYYdzfyKsb5nUhS1myki/DaOTmnXsljksRE9C/qvh
	zepwbFuw7E3BYoD+h86zvWi09Li5oqZp5s5zK+Mn1dJM1fDHinxtcMls9kVp8GBetDDxcjiCNkw
	7iqjyfAVoGCPQ4GsxUvelbmf6UoSP8ZfDP0xfR/xeU52f/xGy8D21B4WI0o3lR6EeD7oI
X-Gm-Gg: ATEYQzyQ/jvfJzDyn8mGZEPGJMNfzMoO9IhfTmWiJYOP335BdKEA9w+Txv6f89Fjtaj
	eg+scoYo/SMJiT+oTSq++e/0rcjhzR9JQNqGWkHm5gzyNxH2lf3J/dEAzOBEpRYbRE12v87LB1F
	dS/fB+5mG17vf7Kwp0lFEDfxmiVzGSWwE4GmqFM2KZnkpxSwCGcHckafcinNTDm1lhVPEDgxCZ1
	mmJjkr7TVxWzb7WzziheT5DV62e50xR1rO4ZQ7J9tsZzBhD0qAy0y4d771oWQHjg4uqlLlS6fWa
	4sAPCMZC5EzEMp52kMmE1ThQPKsGJhn4NuplJVIEcbD87ASiId5RCepmqjjNX3STM34s+7AdDcc
	4854ZzYWT9X4CTt3yh5neDs5OT/mRqcbnutqTWngTgYcVWMBL/cTxVksbJ8h1eUa6+K0lU5Rl7V
	7bUVw=
X-Received: by 2002:a05:620a:4155:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8cbc8f2348bmr1560294585a.7.1772537498041;
        Tue, 03 Mar 2026 03:31:38 -0800 (PST)
X-Received: by 2002:a05:620a:4155:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8cbc8f2348bmr1560290885a.7.1772537497512;
        Tue, 03 Mar 2026 03:31:37 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ae61474sm582362166b.44.2026.03.03.03.31.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 03:31:37 -0800 (PST)
Message-ID: <6ab7b752-f906-4897-9aa9-12af636a9ee3@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 12:31:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: qcom: qmp-combo: Move pipe_clk on/off to common
To: Val Packett <val@packett.cool>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260228220634.22778-2-val@packett.cool>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260228220634.22778-2-val@packett.cool>
X-Authority-Analysis: v=2.4 cv=Br+QAIX5 c=1 sm=1 tr=0 ts=69a6c69a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=WxJYI2yInr4zNcYYujUA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: SiyqRkD-g4yIgs2zCgbNC3N2k1NcRFAx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA4OSBTYWx0ZWRfXzdLxvGnvFFeW
 bPSufCoBZzqKLpM7O1LexKu5S4IjFUXD98uUQq9qM1bTEoWE631zSqyWWF/vYAc87gGIX71lxkX
 Pg1f47XaETfy1px3xGVQy/UfhFj7FvM9J8WdKxWEQ5ISfuqC/pk6xGPtNCF0Hf/psuvDgOJMB7Y
 PQ+F7o1pHeQNmIZEBKtb+dyjYqQlZST5xmWWPyQY6H52gL6tWEX3cTpay8nM6PLwNyPsQ97LpN3
 LLAsJPrlH1R3pAWcAklFEx/WA5OutoJ+QVnjFW2kYqUTX8Kk5NuyBqrZEf02gpfz6QuyeBSbf7t
 xUvoNaWFjMw74hWtsMAJRC1QHhnIH8dqHp1qy8ZHDquUyHcgBqqdzMev9oxsECpirht4CUXk9kw
 H9WoNFRxWhVLsnNK2KdvTyHAjgfNb60gi9K4/TIFaUMcWUzgTYlN/akVU5/lz1J+ESZgQ4hy/O4
 DDBXvUzhAwyN2ZpUFNA==
X-Proofpoint-GUID: SiyqRkD-g4yIgs2zCgbNC3N2k1NcRFAx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 clxscore=1015 bulkscore=0 spamscore=0
 priorityscore=1501 adultscore=0 lowpriorityscore=0 suspectscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_033140_041484_D8C6132A 
X-CRM114-Status: GOOD (  12.39  )
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

On 2/28/26 11:05 PM, Val Packett wrote:
> Keep the USB pipe clock working when the phy is in DP-only mode, because
> the dwc controller still needs it for USB 2.0 over the same Type-C port.
> 
> Tested with the BenQ RD280UA monitor which has a downstream-facing port
> for data passthrough that's manually switchable between USB 2 and 3,
> corresponding to 4-lane and 2-lane DP respectively.
> 
> Note: the suspend/resume callbacks were already gating the enable/disable
> of this clock only on init_count and not usb_init_count!
> 
> Signed-off-by: Val Packett <val@packett.cool>
> ---
> See https://lore.kernel.org/all/389ca5d3-a698-4dac-911c-39ba057e3d17@oss.qualcomm.com/ for more info.
> BTW https://lore.kernel.org/all/20260205160240.748371-2-loic.poulain@oss.qualcomm.com/ helped with coldplug.

I think that's a fluke, you shouldn't see any real-world impact from
that patch

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
