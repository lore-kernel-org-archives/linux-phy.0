Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FCF6C0218D
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jan 2025 13:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dbivSSHHfbImKynm3DMjH6ytSczc7cqyiLzWmjKthpY=; b=gyXZ0IEi1BvKFy
	AVdb716zau5k8llW77bsm0K+RWz4dF7pFGNnfrJDVJviJhBhBSRi+GAGbSyK3/yE38U59obvh/wDA
	gDDNQA0huUMhIo9BRXhuiYXJuDStmPN/B0r+uHnyuekvzGLxvIXvF91gogDzFXGA5pJzHGUN8dLVO
	yiwDKTt7maitj2WwZyBHjRYNKyjyvZuRFXFJ22UvzsxIRrOqEgz7UOBwgto/NBk9kxf79ADIsTsSB
	sqD2CRozeWEwu5JuUPUWFZow0zD29d2PJfLzJ8HSd0V9HCqOdzQXVer02iYVoPpndVhlRHc0vllMf
	2xTmKpVVQO2M6miwLZ5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1td8XG-000000073LP-4A6C;
	Wed, 29 Jan 2025 13:55:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1td8XE-000000073L5-1eMJ
	for linux-phy@lists.infradead.org;
	Wed, 29 Jan 2025 13:55:17 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50TB4Zo2023884
	for <linux-phy@lists.infradead.org>; Wed, 29 Jan 2025 13:55:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/dDM4l4A01vgW4W3wH6ZzPPuXjzt5f4t6sjOFKNxf6g=; b=O+sJ1EAGjhX5R+Yr
	byhOuPosKM+vSTIKDegpXH/fpENV7HWbEM3BkFJDK6kpaMd6xTsiVUltzJHGa/EW
	Br32bdGffUqbBDNkZUNnTCUUcbVfC1fDbz8GCZVi3AZ6J8J1m5BzLjMzdRI0lm+y
	OObHitVvsdj1NissLjHXT1YhJAc9V0Zgf0kQvvZ/Y5HqMLWLyuJoduBNIJBAclA6
	LvQh16gYU42hIq6+nc6Q3aCilWmeSE/6YeyiyA0UmbQhor/VCA9w2V4+hR8S+k8L
	J4cFK83WuaO5mg4Rm8F7VJ54EjDuAHtaGzbwUoe8mrNJhlEh/m99HxOf26nrEaft
	x4oQUg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44fk5009kj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 29 Jan 2025 13:55:15 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6dfba8de3cdso8476896d6.0
        for <linux-phy@lists.infradead.org>; Wed, 29 Jan 2025 05:55:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738158913; x=1738763713;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/dDM4l4A01vgW4W3wH6ZzPPuXjzt5f4t6sjOFKNxf6g=;
        b=U8oRXJx7TZzSEA9CRgu67a+RS8vL4hB5vv9ARhE2iRVaRo4q6QIfuPKqWRrd+bJCgG
         qT1xx17W7yiKbzmLjAglNy/F0QvmrX/liDgUejMCEqa18BvejOEiX8v+S9Q56wjZ5JDJ
         4cGl1lB87KeSI31MiuGcQ1iiFyjZBMfrsoqcER03eMNXhILM9GG7v+thNWG1z7l+B+R7
         colQ7rhikP0K9d782lYhDYcJJyGhDmYPu82hmMcwuRnrZTdVuXbQQrlFbsvt5srjayLn
         sLqhL/QM9ldAIvZ5yLw0zNHY2ogQr82Gwuy6I9eZhzn9apYhxslB0pE83fGAsYuB/PKt
         tt7Q==
X-Forwarded-Encrypted: i=1; AJvYcCV8NM4vP0AMLs73jJLivRgY6dIPucQWZfUgHJmdnrp6jsfNj0ctRfF9mPOBubmcN0j4DM/3mTY/Pac=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx++296MQw6X87UuJ2uT9bkx1W1iu+8zGBxMUvD6VcW6L3RJoGI
	3EXDO1TzdPwncBWrM7qkvjMBsm+ImpPSGATjge/rS+EcLMx08Yr+eLeQw4F4IhjRctzT2wwcdbZ
	g0mn7Dxm1NDqL4Vs7Ha+obDU8cI8qplWuDHQ4/tJM7Jm2+JkPJ9XqDUkb2hThQOVWxtd9obTp
X-Gm-Gg: ASbGnctu59WhLzLtEDtxaHuCyDZX7qTaftjGVY66MndczqcmaBpdF9LlRZMzr+Qy9Jw
	m8bolndSbZ8+qkIimdwIWlVqCs8/IsbYebk9gFUveVojC1PlUz7xRKt4YrMsuvNxowD6W5Q+m1+
	/GgpPrW/nS//g/zUdnaUwoaE3e76PZ6gZXGobrOTrSnDcZs7+hJp6Zd3h7iOG3wCtYoQxknYvrg
	Z4BVy4j1SuSDZCKZHIm7pfCdcpY5kU8p0DW5sxfVuUK58OGALcvtrY3JavH9nsb1fa58oIlcSXa
	kFEdrCGYkjGRo6Jew4BCuuNM0lKszOGHfx52FfcfcFhWKDYvoz9ZLVC7hVs=
X-Received: by 2002:ac8:59c6:0:b0:467:7472:7acd with SMTP id d75a77b69052e-46fd0a0e997mr20341971cf.3.1738158913188;
        Wed, 29 Jan 2025 05:55:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGgDFN3FWGK0Cp32zWvVSb+bQjohrw9wNA3S+kT4GTMDSGpABs5NX1GA97QBkm8RY2DfXiaUw==
X-Received: by 2002:ac8:59c6:0:b0:467:7472:7acd with SMTP id d75a77b69052e-46fd0a0e997mr20341761cf.3.1738158912736;
        Wed, 29 Jan 2025 05:55:12 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab675e5ca68sm983067766b.38.2025.01.29.05.55.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2025 05:55:12 -0800 (PST)
Message-ID: <aaf02ae5-4ae8-4571-934f-2c95de9d7e4f@oss.qualcomm.com>
Date: Wed, 29 Jan 2025 14:55:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
To: neil.armstrong@linaro.org, Manivannan Sadhasivam <mani@kernel.org>,
        Qiang Yu <quic_qianyu@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        "Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, p.zabel@pengutronix.de, abel.vesa@linaro.org,
        manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20250121094140.4006801-1-quic_wenbyao@quicinc.com>
 <20250121094140.4006801-3-quic_wenbyao@quicinc.com>
 <CAA8EJppXQpDrdXzJsTE7HWs=POt7yFAw0JVZFabN6Ks3fhZiWQ@mail.gmail.com>
 <a2cc5a5a-6cbd-7564-a8df-8af2a652de2f@quicinc.com>
 <ya27ma6iah7ts6sj35payj6ek4z7m6y5v4pnxd6wtqrp3cbyta@ypvrzwa4bnfv>
 <188a9efd-718e-4ac5-b89a-29f2713e1dba@quicinc.com>
 <20250124070829.oar3hlkshkpam57d@thinkpad>
 <88c29161-17a8-40c6-a94b-c894de15ca37@oss.qualcomm.com>
 <df1f825f-66a4-4bab-9ca4-90d594f2cb36@linaro.org>
 <d928e662-07ac-4255-8d6f-adeaefb3db46@oss.qualcomm.com>
 <9d489930-9d2d-4b71-9b21-9c7918257b7c@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <9d489930-9d2d-4b71-9b21-9c7918257b7c@linaro.org>
X-Proofpoint-GUID: cP81c0inz3S0PUKJOGpl4h2kV7nllVNK
X-Proofpoint-ORIG-GUID: cP81c0inz3S0PUKJOGpl4h2kV7nllVNK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-29_02,2025-01-29_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 priorityscore=1501
 malwarescore=0 phishscore=0 suspectscore=0 mlxlogscore=999 clxscore=1015
 spamscore=0 lowpriorityscore=0 bulkscore=0 impostorscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501290112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250129_055516_449337_F93851E1 
X-CRM114-Status: GOOD (  27.78  )
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

On 29.01.2025 2:41 PM, neil.armstrong@linaro.org wrote:
> On 29/01/2025 12:29, Konrad Dybcio wrote:
>> On 29.01.2025 9:29 AM, neil.armstrong@linaro.org wrote:
>>> On 25/01/2025 14:10, Konrad Dybcio wrote:
>>>> On 24.01.2025 8:08 AM, Manivannan Sadhasivam wrote:
>>>>> + Mayank (with whom I discussed this topic internally)
>>>>>
>>>>> On Fri, Jan 24, 2025 at 02:22:01PM +0800, Qiang Yu wrote:
>>>>>>
>>>>>> On 1/22/2025 5:43 PM, Dmitry Baryshkov wrote:
>>>>>>> On Wed, Jan 22, 2025 at 03:17:39PM +0800, Wenbin Yao (Consultant) wrote:
>>>>>>>> On 1/21/2025 6:36 PM, Dmitry Baryshkov wrote:
>>>>>>>>> On Tue, 21 Jan 2025 at 11:43, Wenbin Yao <quic_wenbyao@quicinc.com> wrote:
>>>>>>>>>> From: Qiang Yu <quic_qianyu@quicinc.com>
>>>>>>>>>>
>>>>>>>>>> Currently, BCR reset and PHY register setting are mandatory for every port
>>>>>>>>>> before link training. However, some QCOM PCIe PHYs support no_csr reset.
>>>>>>>>>> Different than BCR reset that is used to reset entire PHY including
>>>>>>>>>> hardware and register, once no_csr reset is toggled, only PHY hardware will
>>>>>>>>>> be reset but PHY registers will be retained,
>>>>>>>>> I'm sorry, I can't parse this.
>>>>>>>> The difference between no_csr reset and bcr reset is that no_csr reset
>>>>>>>> doesn't reset the phy registers. If a phy is enabled in UEFI, its registers
>>>>>>>> are programed. After Linux boot up, the registers will not be reset but
>>>>>>>> keep the value programmed by UEFI if we only do no_csr reset, so we can
>>>>>>>> skip phy setting.
>>>>>>> Please fix capitalization of the abbreviations (PHY, BCR) and add
>>>>>>> similar text to the commit message.
>>>>>>>
>>>>>>>>>> which means PHY setting can
>>>>>>>>>> be skipped during PHY init if PCIe link was enabled in booltloader and only
>>>>>>>>>> no_csr is toggled after that.
>>>>>>>>>>
>>>>>>>>>> Hence, determine whether the PHY has been enabled in bootloader by
>>>>>>>>>> verifying QPHY_START_CTRL register. If it is programmed and no_csr reset is
>>>>>>>>>> present, skip BCR reset and PHY register setting, so that PCIe link can be
>>>>>>>>>> established with no_csr reset only.
>>>>>>>>> This doesn't tell us why we want to do so. The general rule is not to
>>>>>>>>> depend on the bootloaders at all. The reason is pretty simple: it is
>>>>>>>>> hard to update bootloaders, while it is relatively easy to update the
>>>>>>>>> kernel. If the hardware team issues any kind of changes to the
>>>>>>>>> programming tables, the kernel will get them earlier than the
>>>>>>>>> bootloader.
>>>>
>>>> We're assuming that if a product has shipped, the sequences used to power up
>>>> the PHY in the bootloader (e.g. for NVMe) are already good.
>>>>
>>>> If some tragedy happens and an erratum is needed, we can always introduce a
>>>> small override with the existing driver infrastructure (i.e. adding a new
>>>> entry with a couple registers worth of programming sequence, leaving the other
>>>> values in tact)
>>>
>>> Assuming Linux will be always ran directly after the bootloader is a wild assumption.
>>
>> Situations like
>>
>> [normal boot chain] -> [... (resets the PHY and doesn't reprogram it)] -> Linux
>>
>> are both so unlikely and so intentional-by-the-user that it doesn't seem
>> worth considering really.
> 
> In embedded/mobile/edge world, definitely, in compute/PC-like market, not really.
> 
> You'll have people add some custom bootloaders, hypervisors, who knows what...

I see, however you actually have to intentionally assert the non-NO_CSR PHY
reset from said custom bootloaders, hypervisors and whoknowswhats for the
programmed sequence to be erased. So I have no idea what the issue is here.

Konrad

> 
>>
>> If whatever sits in the middle *must* hard-reset the phy, it can save the
>> register state beforehand and restore them after the reset
>>
>>> Yes, we should make use the noscr if the PHY is always programmed, but we should be
>>> always able to reprogram the PHY entirely to recover a faulty programmation.
>>
>> We aren't considering any possibility of faulty programming - it's either
>> programmed, or not. And if the values configured by the bootloader are wrong,
>> the device's firmware is considered faulty.
>>
>> Most devices probably follow the exact same magic values as our reference
>> boards (though these values relate to analog characteristics, so perhaps not
>> *all* of them, which is another argument for keeping the BL state) and these
>> are extensively tested internally before any production devices make it out
>> the door. Any updates deep into the product life are most likely just "nice
>> to have"s and not anything critical, and as I've mentioned, we can still have
>> overrides with the current logic inside this driver.
>>
>> Konrad
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
