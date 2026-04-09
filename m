Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 398B0EA3C55
	for <linux-phy@archiver.kernel.org>; Thu,  9 Apr 2026 12:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BlyOYgR03eksYEW2GUcRVjLUXirQSsG4WEUISF1LdM4=; b=cLx2/L76F1YGK7
	gN7bJsEacIBG/B44Ai5JIqHwNTYrwwWUfMTG5hafirpDGzO0/LRjqnfqri6aYZiQp8lNxBFCV+fmD
	SAhu3v0MWN5ltafpOpopCKvj4ONF8eKBT57KvZr7KVTGdtedPtBGOInDbwGthVom+duCVcVVFYixF
	iEVVY3CwIX3Ww8R2r11sYiRMWX1FhJ3Bw7Nx5QFgKLLuGFOcpQQK0jhoq33KfgiJ0RBKNTy4MP7H3
	jfIqHISltHVuaiJV8fr9ABT/gcWryh1Y1Civ6P3ITXGQaq+yItwtQNrXvkq9cFBYACTsnbMi9cG8e
	52gNHxtSbFimJi/qdAhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAojx-0000000APHa-37e4;
	Thu, 09 Apr 2026 12:44:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAojv-0000000APHA-0ISR
	for linux-phy@lists.infradead.org;
	Thu, 09 Apr 2026 12:44:08 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 639CepA72866295
	for <linux-phy@lists.infradead.org>; Thu, 9 Apr 2026 12:44:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9C9oWQfWDmGpPtikmH5HnfUowBswV0pV+/8WWu7A0nw=; b=JGvHF6xXWBfYczmu
	bRJ8Upsa2lINBYUJH5DU4tb/Ek4DxIuEd8+Vmp+hWf8wh1+OlpkHyJ+pRouKCJ/R
	//UWQHaf8AzFH1ptp52wB2i63aefDvOJ5ny00wQPj9HoLWVMhRZgdAyBFidWQzH0
	3yJTFH9LqCeewxGYbeQeUpZIAQp3IlrWktvohJ/ct/ikn1WqgC9zbA3RI3AlfYML
	ga/RmlciJBbEEVGGJxnZTukP0MMRq9r+8NZM2XpL/ZQj1U7tbTiz77/9cOAMJxjD
	hZbT+reXROrrUemdEm/h+QnRpYT/0qu/+N0JsHifr2uotG9CvxaUHIsOosCfMLZP
	yjAVSQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4decayg0br-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 09 Apr 2026 12:44:06 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50d8c183c2eso8731801cf.0
        for <linux-phy@lists.infradead.org>; Thu, 09 Apr 2026 05:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775738645; x=1776343445; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9C9oWQfWDmGpPtikmH5HnfUowBswV0pV+/8WWu7A0nw=;
        b=RAA6iVAP7fC1OMoYnO5StBZzT0s8KDglIp9c8oE2uzKH1k6UEvwUcJSKprATpQvuIe
         12BHrzwPd4DxQ74REvF7lthyGwTRdYBpfoSYYDpJfyfOJ6Abar8Dv1EhsqJ8XsnEq1L/
         Tpn32GXc9FJc7QX4LMbh8qWxo6lzf/KL/3bgutwNXXhU9kTGyvv3GglEDzLRcMOHlRX2
         oO6loNLPzEvPIoojScT0o0XIovm6yKttd4yxWADSS7xCuu4QpAwU8YHJepgs4AQwHG3G
         Mi3V4xnJxQyw4CJKPl6JbQfmVCnveize8j0ygD+QnjwTWl93gBAA5TOmJcJwrz6Yrx8I
         inaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775738645; x=1776343445;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9C9oWQfWDmGpPtikmH5HnfUowBswV0pV+/8WWu7A0nw=;
        b=Q1VyWLOtVu2hRtbFFEY/SWE5PJV1FGneNyXyEZBFJGEl6lgCWLRP4FHTuopM9FEqJR
         KnIVBlidMzzUH31522of2rv+QuKwbOtXeihN8Sd8loerBysFx9x2GrL/W4kIX1wDjJl7
         YTql57UbE1a5e7oRwUotQKteQgNA8wq40h+5bDudp9RjfMIQmGExf28id8/SPfg0yd3W
         jPVxp8tgkEek5h1/C4QIibyXrdTq6dl/fNRRWqwBEPorT0L+wMxfkH9SFxeSjAoeDQf4
         b6QtSgss0H/GmDczENsw6lz0BTB9cKgBzFUiXYaX2jKjBAHZIIGew6hmR4K7xlSn6Lj7
         aOsg==
X-Forwarded-Encrypted: i=1; AJvYcCU7yzeERkl9ZMKmcQPctzxaC+5PJp3JYnjDnrCT8/bHSyACYMVcRhwVB8fSDI0QuPaLKz48m3uPE6s=@lists.infradead.org
X-Gm-Message-State: AOJu0YzHOPXdiHNsVOI07H40IZ8Fxt91j15VUqMin/ZaeZXTt3bRPFFa
	nSlNYfy9KS5pyxWbhhKXdE+zIOHY+jF7cXl6G/doKMsKTGdv+9LnMRkULfJU+EzyZnJYUVQDXy+
	hDDGmLoLPdp9dpaoYpP98AT8ZTUmKkaO/2jW/oQawaquHZjooKxN8WDPdgANycX8FO7CL
X-Gm-Gg: AeBDietOwWefskP25uGs32mAOxYznQLKywHTKZJv3q/GcMTolq+6ie6NSt9FPJuN0IF
	hW2wpWlD1mcOj2nNHoHKSfL7BRlXKB3UUVz3gFib6tT9p6lUvopK+b+Ia5hpY4z1UewLYnQfLdG
	njbjNunNWnXserqWSfqxywe++JJ3+2yVLAkCfi883lUYQYrKCKPjYMBUTN5oOTwiLO8H1TUNgzE
	jgpAj1jBaW/QHSnfjd19vRAB2piWIZ36TWFfbIX/2ZwoeVEScXq64ugcW7qvXhBJWDjeh/4dTCi
	3EjMNQCrMOKcWSSajkNx37G2FAhX9upS1x//svAzTrjnp+9zSbQzFsIiUNUlZnxoUyxWbss9rRf
	ZNwQTle9fMCt5g7WzWK5LYCh6mr6eSxZpyuwa1Gq2IuDIa5R2OQpQznP8qrZho69LigUX9OhUTc
	l2GN4=
X-Received: by 2002:ac8:5f90:0:b0:509:2a92:8088 with SMTP id d75a77b69052e-50d62af945cmr248141591cf.1.1775738645273;
        Thu, 09 Apr 2026 05:44:05 -0700 (PDT)
X-Received: by 2002:ac8:5f90:0:b0:509:2a92:8088 with SMTP id d75a77b69052e-50d62af945cmr248141321cf.1.1775738644853;
        Thu, 09 Apr 2026 05:44:04 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9c3cec6c31sm740741166b.37.2026.04.09.05.44.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Apr 2026 05:44:03 -0700 (PDT)
Message-ID: <388f494e-72a7-4c10-89d9-2eefe0cd3939@oss.qualcomm.com>
Date: Thu, 9 Apr 2026 14:44:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: edp: Initialize swing_pre_emph_cfg for sc7280
To: Vishnu Saini <vishnu.saini@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, prahlad.valluru@oss.qualcomm.com
References: <20260403-phy_for_next-v1-1-3d336b555019@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260403-phy_for_next-v1-1-3d336b555019@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=XtnK/1F9 c=1 sm=1 tr=0 ts=69d79f16 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=v1qHDkAZ9QAkCiyPRCoA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA5MDExNSBTYWx0ZWRfX4Epa34gArqea
 LpjhTOvd0YHTaHOvc5RaUmZP231auPYDR2Y3tFIqrnoft/5AaXLL8Dm9jDpuEwdu/7mjS67YhgA
 YLhe8V8J/GqyPCNvpnWC8chzl1NWuKk0aAIGHXllSRtpd3ytFRmmH/z67GhO/w5Fz4accJFtggz
 FBXimQPWI2V+WSnQvDXXK73LIcpFqJr+xVKXTOxIQVWhIXy/oXuQu3HP8iC06yH6cAuN0XbR9Bd
 HOu0xr5X93FTjK41ukVvknSgOwpn7tFwNppt/HIJvEGqp97ReVVhGPYnkMKZaiw5Kp3UFSGoX1X
 d1RHr3ZPF8h3H3w63DvJMpojrgsGUlaX0SNDShSFLkpIR+Ms/F5+jkhpm/5E2ehv9MYRsw80fq6
 HLL3PuY7DTl4+6unwuhhI3Hsm3OABxutuo6XJ2ZoDk0fsfRiI40B0DColmvmhEfzRoGq5uic1jo
 QjqrxO+qAIqLPHgVt0Q==
X-Proofpoint-GUID: Ka1_3gJCBqluFnqPwaxTAi90S2LpsJqW
X-Proofpoint-ORIG-GUID: Ka1_3gJCBqluFnqPwaxTAi90S2LpsJqW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-09_03,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0
 priorityscore=1501 bulkscore=0 phishscore=0 impostorscore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2604010000
 definitions=main-2604090115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_054407_115218_C61F543B 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
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

On 4/3/26 2:24 PM, Vishnu Saini wrote:
> Aux timeout is observed on few monitors like Benq BL2420-T due to
> missing swing_pre_emph_cfg.
> 
> Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> ---

We could take it as-is to get rid of the timeouts, but 

https://lore.kernel.org/linux-arm-msm/20260302-edp_phy-v3-1-ca8888d793b0@oss.qualcomm.com/

suggests that these values are not super correct.. I'm long overdue
for re-reviewing that, I'll hopefully do so tomorrow or next week

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
