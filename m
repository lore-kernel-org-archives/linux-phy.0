Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E29AC5B549
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 22:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKvas9d7Vdwv//G9RhrqElqwtJQtvkxmqUOpfnJ6xoA=; b=xQhDYzoUQvqHXh
	wKED9E7u5tEFAWkRz5FwVfX/5hphSHNcaoCMnq0qSWNQvoLkDCxgZ+OMXjK2g47zkk2deUV0uggzd
	s4PJR4Mocz/LJ4sBoTwHSWd2TaBwEyrbZBJ3K9SoU7qnKyganzOl0+rcq2QnA2g6oPbb4KQCRLEsA
	nhPIOK/+0MU3yGaj/Vn20tt6iEdp6IJxhTkjXKX0GxkFCdat/gnl2rOQTvQaxcKFYczmp32dMf+D2
	cs+Qy9Xk/2lRE0FE0/Ql0Ut6R9SX1AfJHltLhyvgIgB/znt9ezz6GyYE2VTdV7v1t+w/EYqMgxKO/
	dhBjz096r4dYNnnOqc3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK2uH-0000000BjF5-45Td;
	Tue, 27 May 2025 22:36:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK2iN-0000000Bhno-1vvZ
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 22:24:08 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RLdWcv027165
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 22:24:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mDtfEhpWbybo9BquJQGmwF8OkBC21Q1FwUr7PssREGs=; b=PoezQ6SvleqAFKe/
	HG7F91sEH4xC2sZz86nDkcEccw9E0W+/oi2ClhYl4f5hYNiY156Mv3fbyBOLHExl
	QbMxqLoRIuI0rDy1p4TpIolHI8dvUBN+uR9mJZRPBuacoJigEE0h6oNHuioGFo4w
	odB5w94OgSgB00Xu1wmNlGjYs38Glogd9cnJif1WOMNr6AYpeje2yQ4kFzOb5PPF
	LkTqY+1atrCuPttahzyF4H+GvncvGM4mh2A9MNe6N+V4StuVou92UABcAMj4N+fh
	mD3Z/DdE2qW2iyGvErwsOcKwT9IVFAVS5ar2HvKOLysidVD/jmQJ+69Jzn/0lFjo
	tuJM5w==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u66wgkqx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 22:24:06 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f2c8929757so11586456d6.3
        for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 15:24:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748384646; x=1748989446;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mDtfEhpWbybo9BquJQGmwF8OkBC21Q1FwUr7PssREGs=;
        b=wAAknuIh5f7QS1lXzLjztGAO2Vy1Fl7l4Zuwpb75UZ+hvi82Y4zlwB2GNBmrWV0Uf5
         rk29vPcWau9jnNDJSpSVEXKBrQ716c6bUhXeZ72qAuJM2vr88dZW1s7gkyMnMARLRVDN
         DzbA/ZXjTYEUEga8XyfPshK5SD1WRzi7vuSDxeHU4CyGJ8MgKqqxpmFsITFW0ADr2LeL
         5lKwv5o3u5zbimbrnohmP1V75fusTSpZ6BqnQIdNKsfsPThULCZih2nG5glMHbMGICmy
         X6fyyPjDEMgBy+Z2ESuIB4zytsNF9xoIQxNKYSeg9hDdXEki3KPPYGGt7zh+0S+KIVdP
         J4CQ==
X-Forwarded-Encrypted: i=1; AJvYcCXL2RU93vSFgJRYaQ4zUNsPuINezQh0UvwkqrO/EQiIVWebUFM7Ja+GA6GOLoPmBaogLGeF4CzGWZQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzBGwHuVmHbfY62aQP95/bfQxP1Rvn4Xql38v90kj+rnSYRWvDi
	DB1DvlIp0QOcnygUPOlXa9UGTr2Lwy3YGm5yLkdiXNtERlao4vT29yjGDCIoiK7JCECty11Azbr
	37jsE7RSbngCj5LC3Cbt/OjlhDEl4tVzBllmNfEJwz0cHiTcFPZr3adR7MODELasQJK/5
X-Gm-Gg: ASbGncsk0khks1H7pR37Mzvu/TDXV0GZyrkoOvrnuCupeGytecrxjQFsBrEusYSD3iS
	2q1IGImbNb5Tq4fgvfGvIaS/o+fxqAnjWVb+oautgcZZC8JTSNebW3NIjoyarPfHk5F0ZA9ZK0W
	PPuxxk4h0c4LxBd0mfI1oeZE2etg0G34sI07AW3A6/1rIlgiXSH79jYL0s6Jd8ROCyIKiTw8DIj
	53wz8HQgjYuFZBY3KjHjR+DqwSrdYwlJgEAqxHWM+FzE8tU6zQa6mmkavI3oNa0Sdt3Do1wsdiv
	tCdtghqYE1lQ3UB8I7DOXx6OTsKqzn3kTHPVukCd1CBpMOpuB8T1t0LhKNfEZjzgVw==
X-Received: by 2002:a05:6214:21a3:b0:6f2:c10b:db11 with SMTP id 6a1803df08f44-6fa9d170021mr102554366d6.6.1748384645766;
        Tue, 27 May 2025 15:24:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMlSQWfVn9UPC7s8D4zNhThUYbhMw2ulqS9fDQYheouJp2WdybF0aq560e5JWTH8TcYt0i7Q==
X-Received: by 2002:a05:6214:21a3:b0:6f2:c10b:db11 with SMTP id 6a1803df08f44-6fa9d170021mr102554186d6.6.1748384645429;
        Tue, 27 May 2025 15:24:05 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad89f288ee5sm19250366b.172.2025.05.27.15.24.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 15:24:04 -0700 (PDT)
Message-ID: <447c3b13-8d6d-4bcb-83c1-9456b915a77e@oss.qualcomm.com>
Date: Wed, 28 May 2025 00:24:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <styd5gjksbsqt7efylpfn6bgwgyvt6zexxiooihjsnmp25yigp@unq7dor6gso2>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <styd5gjksbsqt7efylpfn6bgwgyvt6zexxiooihjsnmp25yigp@unq7dor6gso2>
X-Authority-Analysis: v=2.4 cv=aYJhnQot c=1 sm=1 tr=0 ts=68363b86 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=BdTzBBq6q7eIxeKzuLcA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: S55VpT6AuA2mYhWVZNOmEvzME_-xIiR4
X-Proofpoint-GUID: S55VpT6AuA2mYhWVZNOmEvzME_-xIiR4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE4OSBTYWx0ZWRfXzLrH4G+FqIQW
 HmYE/BcJgUJK84175XMxHoxj/+b5FjHH6wTLHSfAl5drM2hazQnb9nztE9H5o7im4+swUvUA9Ao
 2nGxjxyL0UM4m8xHt/1k403girkVpqH6Icl0LqH/B2pPcISwKUmFRY19ig0GfikKYpEHhJCLbyV
 VB0zqM3Iz1J3KbEmo8y0zgD3wYT7s9Em5hnXHzSAJzw/FXVkBwbGtc/injXqURC/onl9yhiWwnd
 mX6GaVTvysQ+xzC+msXgK2NdMjS1ff46S6tTYpoXChkRj6fCaHFmLBgylVtXdT9+EcTnDfL7RWV
 C/r100AArFt95Jf2f4GjKu6MoiHShf4kbHqXBgGQG8KSwunPGHljcOf2CQl1G0mobnIAHhDveIe
 C8LwJMcfWxknAqMRxztiNtjG85SQK297dWV58S2Ny/I2H02r6sa+GxnZLPu5TAWTI+ibNAK5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_11,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 impostorscore=0 adultscore=0
 mlxlogscore=601 lowpriorityscore=0 malwarescore=0 mlxscore=0 spamscore=0
 clxscore=1015 bulkscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505270189
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_152407_619702_BD1467C6 
X-CRM114-Status: GOOD (  18.39  )
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

On 5/27/25 11:10 PM, Dmitry Baryshkov wrote:
> On Tue, May 27, 2025 at 10:40:02PM +0200, Konrad Dybcio wrote:
>> Register a typec mux in order to change the PHY mode on the Type-C
>> mux events depending on the mode and the svid when in Altmode setup.
>>
>> The DisplayPort phy should be left enabled if is still powered on
>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>> PHY is not powered off.
> 
> This series doesn't seem to solve the USB side of a problem. When the
> PHY is being switch to the 4-lane mode, USB controller looses PIPE
> clock, so it needs to be switched to the USB-2 mode.

I didn't find issues with that on X13s.. Not sure if it's related, but
on the SL7, after plugging in a 4ln DP connection, I need to plug in
the USB thumb drive twice for the first time (only in that sequence)

But there's nothing interesting in dmesg and the phy seems to be
programmed with the same values on both the initial and the subsequent
working plug-in

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
