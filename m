Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAC09C5B572
	for <linux-phy@archiver.kernel.org>; Mon, 17 Aug 2026 12:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ofKP6Smnz0bGenYlH74UQ3810UMrIAfMEXsfnamnPhc=; b=xMXLl0opUHB8aq
	3GbnH0pG5RiK5GhryKO8hrNuN1ohMdwDx98Duqk1PkoNU7I/iUyk16oundAi465csHCYOR9ia0wYq
	5gd1G914cYXeaXvbA0ghKRj4HC4a9pjr4W0+F5Th6XTz/FSUgkGc7YOt2z9YM427rtmGX2Ap+FPnq
	vJMSz9So0aJXFohqBvCGP/wlr9ApgOrEapSVrU7f20tHmbpwKfCXIDw0Wx5fTUxQIc9Ixtr+70age
	z37xCLbFLPnPS6m6oafyovmaC65pTAk4N3YRStQz47+yupn4Sl9SDxuLOWdYCwjQAgMWrOHgbJRk+
	3lh/FMn8oEkxEFxs7SlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvwaq-000000068RP-1WlA;
	Mon, 17 Aug 2026 12:37:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvwan-000000068QH-2Can
	for linux-phy@lists.infradead.org;
	Mon, 17 Aug 2026 12:37:30 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67HCA3AN1389827
	for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 12:37:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3pHVXmskGYy7e0WC7aNcyOMsjPM1X9U5WYkzqH6C0i8=; b=gTe7mwKonglaFvUI
	W/VdR/tCuYIHhlhbLWIlAEjoBjWFoSeACqiZp3K9a+FNGw55ZAgKlUaB+KXPNfUY
	S/yhUzlM2ZyaCfBkDXtI4VChJtLvcL+v4ocogXjtrl/Ld4AXv5JzoKjJ9hZZLekM
	BkYp7QzSfCKAIYItA1a2rc+lsLBqiHZfl3nN8cB9ZtV3WDqLSinCZAO7JDvYGxZ9
	AyoeVZpYD9Pqvp3qLpUGhYDmKcBqe9l8sYf6Xr/OGVCOZFQyd5cwvJHT8kSUb7h8
	TZYF+2XjM6YjO2bbcfo8BoLOs/lEuEHzX87Z9gB+7CAtr2FgZuoU0VgeSxu71882
	sSBBWA==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g3x30h23p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 12:37:12 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-756fd28d906so80406137.0
        for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 05:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786970232; x=1787575032; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3pHVXmskGYy7e0WC7aNcyOMsjPM1X9U5WYkzqH6C0i8=;
        b=QUw2cPbT9fhvx1VD/t+I/6nW/txidu8A/WogP6GqgzhuXAtTVYKa1S4khSAZKDsyrg
         NjO95QoZ4kEvzx4uSyXE9qY006MSI7ITHsFdufnFT1jsIIaz63ylYz+7xUY70LUQCfTG
         10PEaIDMwpS8fKMzzxFftk8JX2Br/K3NOtzXwUhQCu13oUcYsgOGH6LpItv30OE0ei4D
         trDCMb2fUWD1Mz1QtJ1ghVWnhB4aRLmRExmEovsYtr5VZrXmbGCa5nKP8x3KN4+eXT/4
         o2TqsC7QzPr01vP8DAGhDBXuN5hjT6qCEM2R7xto5BV/clnagasdcuI+XY2xYhkpUvP3
         povQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786970232; x=1787575032;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3pHVXmskGYy7e0WC7aNcyOMsjPM1X9U5WYkzqH6C0i8=;
        b=TpFy2KX3yvz9hlaq0PN39eypvzKg0a6jFc3ipGEYL7qTwqVk0MVJ70PsR29qGIFuV6
         biGAQacqxEbgicp+4ASRungDZg/AkJKBqYq1Hfc8ClWiyZMrD0CdDt8aNFpWKHAZZjpd
         /edDMhWuSw2xU1k98wsnx0mBMKFYALq/alTESa93MuU0rC+PTdNOUvjdM3krW3iLqE9u
         CGBeInrFYZKVwKZoIKQt3meHfOkC5wufHLWvhuX41/f48CiL8pnnt3ggQzNnZvzLmCIs
         8pL+JndVd1VnBa/07RSMToqOCRySHeSDvX4jZifboAyXTuccuP/v8JZdwf6+u6Uw6VYq
         FlUA==
X-Forwarded-Encrypted: i=1; AHgh+RoEK3yBmAgGzWdfD23fhiNjsE4qUA/E1er7i+TZwpjE9vCK1XZuAEGnsfJ5NFbEBblohpIBshH/xSA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyyoWi+Kpp+yBNdDxLPJZwcnqJk4+E6GZeI5zHyjRm9iLmXUZgV
	LCKhl014bFnha4GTc424vhmup3cEY99THHpJoEl+WkcPVbo3hnWsbNQLurQ3vfAGW3G9gGDHb15
	K81bfGjwCi2Jd6zDMr3pzSwNEF4D+UtUQEW2fZdKSkbQ8WA/H7wayeryEl5a7vApu9ZQ7
X-Gm-Gg: AR+sD12wqvdTPUvbO3+vhE9wRgnpUnikTLcDzrmPmTqISyCnIYYUgdUs7Glz8E+E7ng
	xFlHgfzvH8WfoWLm6KOW24XhrEUq7NCkEOEMATfttA0mJ2EP1I2tdVpGSB0Fqcc4+l9P6ZQOw6k
	A6/focPU59ydGxOMwdG5gbvZ8+CmJip+pcnzDnl9X/qJkDa59k5YCXdw/44Y90tv7zbHVSlfvPP
	d1vWAc1QgQFkzOJZ358QNiCMByhY7laEeJG1jLOTHHYnuPEQKSyOvGB3W4mswNL7rASo3FhaPR7
	C9nQ7lYC2rNCJCwaRuEhR2fvUAteBazo0Fzvg9dYeqPAC9yN/HZbsb4u5GfxIybfF18l0DGAiHX
	cg9CHMKaf8tgCJlUkEMHUVE9m
X-Received: by 2002:a05:6102:6888:b0:745:17b0:10d5 with SMTP id ada2fe7eead31-76f2cd6ba90mr1393150137.3.1786970231973;
        Mon, 17 Aug 2026 05:37:11 -0700 (PDT)
X-Received: by 2002:a05:6102:6888:b0:745:17b0:10d5 with SMTP id ada2fe7eead31-76f2cd6ba90mr1393132137.3.1786970231506;
        Mon, 17 Aug 2026 05:37:11 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b46d00ab34sm362466e87.58.2026.08.17.05.37.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2026 05:37:10 -0700 (PDT)
Message-ID: <34503ae2-9c89-4773-af80-fa7b7439ff23@oss.qualcomm.com>
Date: Mon, 17 Aug 2026 14:37:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/14] dt-bindings: phy: Document the Qualcomm IPQ5332
 UNIPHY USB Super-speed PHY
To: Krzysztof Kozlowski <krzk@kernel.org>,
        George Moussalem <george.moussalem@outlook.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Praveenkumar I <quic_ipkumar@quicinc.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-1-8f355d7ff0ef@outlook.com>
 <20260813-alluring-advanced-jackalope-55e5c1@quoll>
 <SN7PR19MB67369ED27F676F6197A0727A9DDB2@SN7PR19MB6736.namprd19.prod.outlook.com>
 <71cfe76b-ea84-47f8-9ff7-945d69efbdcd@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <71cfe76b-ea84-47f8-9ff7-945d69efbdcd@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE3MDA5NiBTYWx0ZWRfX1cENCenrMPSI
 CVCfScHTFvhk+0yVWvGAe3a2vUl7s9Sjj8tJC4t80GxtW9l1fwgfKVNHIAYIi15CsRFRrWACI51
 5wIrHVirolDJZwx00R/skULS9iC5N4QkCO0Pmrf6mIrYa8K4IHNEtR1pl+IWS60QHdhJFq6cKDq
 sGnGzCDz60y1YRXecDs1gn0Dzzt63EkXGccDhJdVLl2IflbOU9RJl6mezTYJVWzRTZXFpFa0pCw
 Bc0q4ga9U0PWkeiB0BZYtQlmm51AlhmfWOlUK0QWoB0izEkVJGD7l5MUzm4xvad5oCja0wJkAZ9
 dBWyDH0UukOnG7ZsmiqYHaULDNduQwNJbufojVSGIq3jHuj5tsJTEy86zEgz0Zz5+FygVDImrHa
 wBec5SemzW2k6wOZjPvUkxkeF52cP7TTf+zhvyNsOT1nR2sYKHCK9USzSc04jQAcuOkuwuwNw5O
 zLH1tE0wcwOiLpOeC4Q==
X-Proofpoint-GUID: rK5VsCBoZf9YO2OGr8DqEePUtWBzxdNK
X-Proofpoint-ORIG-GUID: rK5VsCBoZf9YO2OGr8DqEePUtWBzxdNK
X-Authority-Analysis: v=2.4 cv=Y9/IdBeN c=1 sm=1 tr=0 ts=6a830079 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=Wkax7JBLRjVfAwrBdP0A:9 a=QEXdDO2ut3YA:10 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE3MDA5NiBTYWx0ZWRfX0ifyMXzoHxjo
 CSsjpuUdJcT7R7iJptanASlVit2PMdNIOVTY3X8g6IKjV18nArjLVxR/gmr+VqQs0vuc3xx+92w
 dbuWxuzOdu1HQRxXDzYeZRBlfx/gnts=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-17_01,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 clxscore=1015 bulkscore=0 malwarescore=0 phishscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608170096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_053729_571903_93E7FDFF 
X-CRM114-Status: GOOD (  10.56  )
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

On 8/13/26 12:48 PM, Krzysztof Kozlowski wrote:
> On 13/08/2026 12:28, George Moussalem wrote:
>>>> +examples:
>>>> +  - |
>>>> +    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
>>>> +
>>>> +    phy@4b0000 {
>>>> +        compatible = "qcom,ipq5332-uniphy-usb-ss-phy";
>>>> +        reg = <0x4b0000 0x800>;
>>>
>>> That is the same address as PCI PHY, so you have one device, not two.
>>
>> yes, AFAIK they're separate PHYs (pcie-28lp vs usb-ss-22ull) sharing the
>> same MMIO register space in IPQ5332. To enable USB3, the compatible
>> string, clocks, resets, and related USB3 properties override the PCIe
>> properties. In IPQ5018, the PHYs have different register address spaces,
>> hence representing it as a new devicetree node.
>>
> 
> Same MMIO space is same device, IMO, especially that you have the same
> registers (looking at the driver).

It's indeed one device, fittingly named "PCIE+USB COMBO PHY"

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
