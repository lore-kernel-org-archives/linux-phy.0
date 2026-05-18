Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E63F6CD4F3C
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 12:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YB784TGAN6FXOn327Pd7TZG9WevYZMuDcAPoXkLuuBA=; b=qO95oJXrVG+BJ5
	ilOyMurD1QTWfJ+LUPGkYQU9mWBZLaRwmz7MpLD7AtQUojqEw5ukpOO9ikao+r5QzJjqhophVQ8Re
	K+Wmq+B86hqPCExhrfJzfA9Znnntmit8vtcc5tNVoTujGMIfxvQLbYd90VC2GP2I2VA7ujUWGbLBG
	TuGFy8hBVBk0qJbZy2XXMyS34htSixeushpL2lmYUOvNxCR8NMCcgGkjwTWVW7P34kb4odvNAzYbJ
	HIIGU5a0kKJEIb3yBSQlYAfWYOXmrfx8Tc+PzLp8GMn8o28lGNflcmUNYMRxSrqJ8pbbyYsBIOmJy
	bsVtO7t4EnTg4nG2HRpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOx6K-0000000FdWI-2l0p;
	Mon, 18 May 2026 12:29:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOx6J-0000000FdVe-0Nyr
	for linux-phy@bombadil.infradead.org;
	Mon, 18 May 2026 12:29:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=5qMqCNm653oTP1Mjr92eilD58HXRrBj1IgwnDZQjmEA=; b=ZW0bNxPCRu779rzlBfYodnEmJu
	gEiKaNySxwZCx1Bq+AmgjX6XcjTx+XICtfqtF5ABpewXKrTJzkXwS0usjCffaReV3jI2hUA0dMUQK
	x0PGGWIME+3ullEiitG4bzixrhx17wohXy7LArNM0ZT11+HphN33dU/3zy0yIrH/0AiVxkw23fOtZ
	MrydagsoY7CDVCX6Ncr2GVP6azJ3MZw6kjru2ZOwmf/yvw4MvD/7ziLsQDep+lbVr8nMrZeUtE8iD
	sds0cUJo8v/KVi97AKLBcOC39zXYyyNBDRY70e502nSGlYMPeMiLytKuwAzalqM94VajDzTX1m/u7
	hNJdPW4w==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOx6F-0000000B8RK-2iF6
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 12:29:37 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64ICLCAt1890449
	for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 12:29:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5qMqCNm653oTP1Mjr92eilD58HXRrBj1IgwnDZQjmEA=; b=alJFwTo6NVa2ATAt
	/9Eft3cm/JnKwJ8f/SMJrf1CNfuibVm2lKneT78PVKgsDRKq7nv8c931Ro+EAABO
	aX61g/Y6s0GA7xbp8R+jVJmv0Q18qRHQc7nEuS/wHJV+f8t007FUImmpX4Rm54Si
	HX3svna9SZz7O39GLyA7Suz/YBk1wpQMqCPo0fRlZkMxXls9Las5anmk3DzsXEHo
	6Cd3UVbG4S4882yhlSZQ5u/QDFogiY4RMYhyhezzTgf3ifN4+heMOqqfSNBGQQxv
	EYMihVO+2HAvz+dQGfJxYb0e7cCplOHNpuTCooPS141VUXyFjlBbumknwAPNDPq2
	qaTbqg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e82pw010n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 12:29:32 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50faec938fcso6233451cf.3
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 05:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779107371; x=1779712171; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5qMqCNm653oTP1Mjr92eilD58HXRrBj1IgwnDZQjmEA=;
        b=gVzgp4E3kC4ZCky1fQGIIjLya3Y4yqtRWbHkKmZQ56C2qtjFpFssB3pEWmL9V9zU2I
         1LWfRHyg3byTr46ee9Omw8Ky6U4IfOVvh4iBTANP0/ZA3OEiSYlgaqZNbFDnilD2gfBQ
         xErKDu0v+X9ewMN+Ydg8NozeBGx3GENsI1xCbgDMogkkMRLFt2PSl+8Z2QwsKxEHFhkE
         NlyZJF6hiySP89pcjD8pa6NPk+ZzX1q3cmUbe1HJ97oggguFSai8VeCfFHj/CwI2Xim8
         FNeJ0PYfdpjHvXwa83E0w+NwZebP+LkBBSNMpZaokh7ACqNBl7ZCYmn7bD/NTn9NlJDS
         Zc9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779107371; x=1779712171;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5qMqCNm653oTP1Mjr92eilD58HXRrBj1IgwnDZQjmEA=;
        b=kTQt9FcWsy5IezURCwnFQSXKX6o7+75gkdhn/bOpyVaiUYhIWz7md9Jhrpyz/CSIHU
         PfxGdnF4hTJkqaaA26KK8duT4VWmqSaNK8GIreX616Yn6CB6qa+GoKkmZvGLBxo4Hxlz
         CYVxiMXdsgQ8PaSio/UjKG/SOrX/P2IKQj4c4O9Sb8riVvVxSwAIz2PSZNzTpwctrGe9
         iWAu6fZ779RCS+nLoSUOr+p8vpZ+fqZ5mnKFFDjq4wuR62VFEMZOCn06Ao611o0m99lY
         034Lg43f7uX79swSN2e9T1kCMn5Sk6j5bed/PRZBP3gzEtAhIPm5Ukql8ElBC8CDWSBG
         ZOFQ==
X-Forwarded-Encrypted: i=1; AFNElJ8ASDFnZYms1sK16VzHpL8i4JMI8dsYPnZwe1pwYnIm1w8UppphHsOLhZq0TwgWjnQnbnRGjb2fvvQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzY6QPxFJNtg3C0v7eh/owOOhsRfOHwoQ8CKYclMZsRSrpcUS5U
	5BBwqvdwM4SwgrkVb422cDFJwPp7ZkUrZJK9zZVstFKGQf3xXzav1T17XihfeAi7yx8XeOVNsFT
	JJmQtlWcbnljiaqIT1WaRhKudZON6u1mIbUIsadmI4gqmJpDGy1/izDPU1zCzr5HUC43S
X-Gm-Gg: Acq92OGtlpVUdbaTeQtBLnRRTZ3OXCxhx5Zs1Stnvo1CKUE5Wms96WSTmeAfhlRrhd7
	6m95jeresIXOAKJtYoBXnodrAyC8r+HY+Q45rCJA/jAW0sa8ZhZw5xuNCukffgWua879Eg59g9z
	Olg7QKsQCXUeqBauSd727aIJ/yJwL+hrKASl+lEXsbfRKB1EG6QtLBkJf1fgEofEEbR09mMo74Z
	k2HN3tOWU6/Rrixv9rzL3j+imRdE8f80VhyazZTKToNAcLBmooRFP8KS7yhja5KHs95icGFFISk
	88LIw82tFKMhKoTOA25jWEJqocB3pNncubyDIonRJVPuvso6ow9i7pvIoMZhEf3taFxCFJyuVQ2
	djRfH10cab0VJ5RP6HAMFS5UTf938kyi/378F9VmkU8KvpZCRFBWbgEsJPexmJQUZoXUGyjBj/D
	NXVZo=
X-Received: by 2002:a05:622a:4a83:b0:50b:2875:5782 with SMTP id d75a77b69052e-5165a1fd8a2mr128534841cf.6.1779107371251;
        Mon, 18 May 2026 05:29:31 -0700 (PDT)
X-Received: by 2002:a05:622a:4a83:b0:50b:2875:5782 with SMTP id d75a77b69052e-5165a1fd8a2mr128534561cf.6.1779107370774;
        Mon, 18 May 2026 05:29:30 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-395882c41c1sm11469281fa.12.2026.05.18.05.29.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2026 05:29:29 -0700 (PDT)
Message-ID: <0880f634-ea56-4c0e-822d-aa7c056fdcc3@oss.qualcomm.com>
Date: Mon, 18 May 2026 14:29:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] phy: core: Define TBT phy_mode
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, usb4-upstream@oss.qualcomm.com,
        Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
        Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>
References: <20260518-topic-usb4phy-v1-0-71d827c49dca@oss.qualcomm.com>
 <20260518-topic-usb4phy-v1-2-71d827c49dca@oss.qualcomm.com>
 <5kwr2cbi3swgvjrzyqxa36rk2jnjlivgsw242shd3s4zbbdv5u@x3qvxkt2xm6x>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5kwr2cbi3swgvjrzyqxa36rk2jnjlivgsw242shd3s4zbbdv5u@x3qvxkt2xm6x>
X-Authority-Analysis: v=2.4 cv=a6AAM0SF c=1 sm=1 tr=0 ts=6a0b062c cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=pDKt1SVvtQUJ41h8LzoA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE4MDEyMSBTYWx0ZWRfX5Q8qNNRq7T13
 Tz1Yp0RHVbpNSnTAXF7T1Pgu5iVt9hMU71QKPNlw7uemDspofV14HaF2AVu6hAhM1XRn84D6ql2
 2kKtMLfE8r8/yJ2EAWzfK+hvsgu1tJP0Tksk1ZpnPUzhQ/cBL+UZ3TyA1bBoLI6CIUQMk2Vmct3
 vWM37LTELQRwONSJF8jJax/HTAMSpeG3u/21TLMiE0oZTI5r8hbbix+YvmGIMX7YYeO4PgdqGY1
 AFb4qHtgYQ0jZmBvKK8ifkTt2bEDgoTv7YLm9DRP5oexuiBMknF374c8qKbCmhIse0EhJfyDqRV
 /MgojCbblV6c+t3Y0HmZ/Mw0MfwMkju1JPsaxAo9F6HUH5rsZ4gBUfZ3ezdNiWCtKopWSYHIgFe
 KsfOGGdUahG+/6qYLyMOCt5OWnS5TQIjArt0uyhZ8aUGqSP5B8VwByjsWRGYyLzRUHSdT0xocdP
 toCGA9un3w+Fy2AHWrg==
X-Proofpoint-GUID: urUiZaRKEbHD1Yfovq0cgWw3rp66ljDi
X-Proofpoint-ORIG-GUID: urUiZaRKEbHD1Yfovq0cgWw3rp66ljDi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-18_03,2026-05-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605180121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_132936_410018_E2CE042E 
X-CRM114-Status: GOOD (  16.46  )
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

On 5/18/26 2:25 PM, Dmitry Baryshkov wrote:
> On Mon, May 18, 2026 at 12:29:49PM +0200, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> There exist OS-accessible USB4 and Thunderbolt PHYs that need specific
>> configuration. Define a new phy_mode for them.
>>
>> Currently, USB4 and TBT3 are defined as submodes, because they're quite
>> distinct, most visibly in the electrical/analog aspects (slightly
>> different frequencies, timings, etc.). This results in a need to make
>> the PHY aware of the actual mode needed (at least in the Qualcomm
>> implementation, but I believe that'll be a general need).
>>
>> Newer versions of TBT are basically supersets of USB4 with higher
>> host-side requirements, so these are not defined. This can always be
>> changed as necessary.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---
>>  include/linux/phy/phy-tbt.h | 14 ++++++++++++++
>>  include/linux/phy/phy.h     |  2 ++
>>  2 files changed, 16 insertions(+)
>>
>> diff --git a/include/linux/phy/phy-tbt.h b/include/linux/phy/phy-tbt.h
>> new file mode 100644
>> index 000000000000..5f48059814e1
>> --- /dev/null
>> +++ b/include/linux/phy/phy-tbt.h
>> @@ -0,0 +1,14 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +#ifndef __PHY_TBT_H_
>> +#define __PHY_TBT_H_
>> +
>> +enum tbt_phy_submode {
>> +	PHY_SUBMODE_TBT3,
>> +	PHY_SUBMODE_USB4,
> 
> Do we need TBT2 as a separate submode?

I would like to avoid extending that unless there's a user for it

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
