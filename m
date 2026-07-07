Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51633C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 05:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3igyjQrAtHEbX1Bk5XAcG7hnA2AymBeXus/nbCAcE70=; b=HrIIM0viUJfgX4
	OD5LPX7X9A1XCnaogYvwZBrw/N8scq8IX1UTG6dpa+7CFrfs3XiVS6YJcrHdTg8Jiw0WTRwG/Hl9F
	h622+XpeRBashxjtKDR9oWdDpcqPbjWcC9/psi42eb+IGCr/MBa+O3SEF2FUk4ANlKHmR3BOs9il6
	eU991PF7yImFumdBhAEolS1Webcke6rSnWjc3e9ACy5ry7NZRjISfPMciuUL8855LFOnAbshGvjxy
	ZXJh2WAUH3tk7N2tj5odWAJCMxvrDB6bMo7APPy55SVIrAKJSONDanZXy57Tj6oN+MgxpaRvmAL+n
	7nhBNA/M2V3HiWpHNkNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyHD-0000000E7is-463X;
	Tue, 07 Jul 2026 05:23:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyHA-0000000E7iQ-3Tun
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 05:23:22 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 667495Qj2498892
	for <linux-phy@lists.infradead.org>; Tue, 7 Jul 2026 05:23:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D7pRZOt1/C2Ak+fJkICIGu2A8CugiPqfodDTcjzFu/g=; b=gqYbHEkUQi/BF2lr
	aJXjM8Ba6jvYOnAMaU8N+HK1J2fGyzErKUM5dsZP6kzQTDJTYvsg7/edkE6J/6ob
	/3w+y2HMcQ6uQZt3jCup/rtCteSYNFhGTo9hzUDqEEG/JBByTw8P+42LSGkBVwut
	cBFM44qOZI2sPVtwzawpk4vxVJR5Ap8T+R7sp9ZSKl1QF3DcLdse8SkR1s16dy52
	vW0eX71WC6z3XcYM4LlTTIcwumWleJsC3P2EQN78yeqluiDX6ng5ur0wsbY4pdjR
	x4JhsBwHoHFiaT0fQVShvt9XvzbNl4y0rnZTB/ILlVWMRBdahdjNXWeZg1FH+bTf
	CsrsSg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f88hscqc6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 05:23:19 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ccbb61893fso7795855ad.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 22:23:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783401799; x=1784006599; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D7pRZOt1/C2Ak+fJkICIGu2A8CugiPqfodDTcjzFu/g=;
        b=f5i3tRPS3rs2gdDTkrXl4sCTMs2BUvLaY5216vgu4wFmmy3NR1wmKbneog+FMr/j/3
         Y02pva59zCBfCyyteHU754RAdA2D3DCcCmtkX4KHEul2/OE+mVGP50TbvMUCaRDYRKta
         56qsbnSWumKU5OybzdIIQrR7JtezIpUYPKeNqggjw95FOFOr05pUOz5kJw1JcQUzRAtN
         LXgRDNROLm/wS+OODFOmn0mwRfsdGnDKVcurwD3P63emb7yMrVXPjcqgRcTmlMGLsa5P
         E9mqvVqx9tzmv05VPeYf4tE4x6hhtqT9lGR6crYuDm26N7SWVsOujBTsbY9tlpl7DGHS
         8vjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783401799; x=1784006599;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D7pRZOt1/C2Ak+fJkICIGu2A8CugiPqfodDTcjzFu/g=;
        b=G5yEvobwTL+V0uUvgmTFQmiJ50EmZzTlwNmCP2gMrmjXxulW8msqSva8oGzWV7LCS/
         6QP1F9zHyWYeAy6f69C0rM0R+qAW9hnZAzhaAwE1lzkSPJeDKdqBkd1Z+f8UUA6fnaAX
         PauIMHK0qz806Ilg4unMzvQdOZLENKJF3ESatpdAW4G8UP1bxzmy9k0mMRBY78KVTxU6
         zWekBLj4Xdk5tIUImTfc2ckgkvjssI6Gi9xIxxPW+q67IaLIk/D+cstoktXIAFozt6gs
         3nd3rLv7R4ke65NahyyW7RrDfflPQ3c7IRizBz51TzuzrmwTOEliDILjyzms/URGbsIn
         kdag==
X-Forwarded-Encrypted: i=1; AHgh+Rpxuv0dVMAYY3Fmn9PO6kO5IU6eZZ00uW13rgJfrfAuXg3P7RSU6DaOTBn8kGT+5TdpSiZbqURMqO4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzmhSuuGBnCAWOPZy8wf9zpVxQV664doa1ts6bzehvsOJQBA1V3
	+ZDjWQcJbgF/NOVOih1tcZduB6nEgDS1zY4zAxLBzu7L2HHRDKYHcxeYwXzYFUG+RKuHk/ctc8R
	w26/pdfdC9GeAz6U9qcGlH8QdbHn3tsiOPnACyq3rsROMJS/fu0GaP02p2Alj1TtEyYBP
X-Gm-Gg: AfdE7ckzQSe3yb1bjPp3jjt/sbIKWq2UksnxX3D61AQJ6+DJEzTmk0rAnMK9HMm/Va3
	JGWK0+vq9CKG/V5galHvBTioT1gWseCmNpFb0HIXKg+UOZSYTQXfFSM0XE1lJTR8z8GkvtN6zu6
	0ohY0V/jVLh6OBJPynMLcGk6ioQ5mTiyWEVGhayeapf/6i6BqHbMrIJfUiQDrMKd84nJkoqw1Z0
	Yd2j/XheOegKfZxVxxlepHS28riHXtINhAwDKVuWOxlAUxqOY6LnQIjytu18/rPjKw8KKt0X9mL
	A3Fx2WQ1HdIa/JUEkx/WzGgfQogdiwkGMTNk1dYRSDZBt5KRIU6Bm6FAvJuW2vahzTDNDkApxZT
	8OSW6lmdPD6vg2jdDNneHPGlA6BcHXyKvt5RDKhTT26kBpFjvywHJh3Pz5fa297i4WAjznnxJfj
	+fYkLF
X-Received: by 2002:a17:902:ecc7:b0:2c9:abe1:c352 with SMTP id d9443c01a7336-2ccbe6134f4mr39951975ad.13.1783401798796;
        Mon, 06 Jul 2026 22:23:18 -0700 (PDT)
X-Received: by 2002:a17:902:ecc7:b0:2c9:abe1:c352 with SMTP id d9443c01a7336-2ccbe6134f4mr39951445ad.13.1783401798269;
        Mon, 06 Jul 2026 22:23:18 -0700 (PDT)
Received: from ?IPV6:2405:201:c409:b03f:6d0b:bb83:7a67:4093? ([2405:201:c409:b03f:6d0b:bb83:7a67:4093])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9d1e0c4sm5020325ad.49.2026.07.06.22.23.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 22:23:17 -0700 (PDT)
Message-ID: <7e4c6924-f217-4b43-a5af-827cc3c517ec@oss.qualcomm.com>
Date: Tue, 7 Jul 2026 10:53:10 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/9] arm64: dts: qcom: shikra: Add PCIe PHY and controller
 nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
 <20260701-shikra-upstream-v1-7-e1a721eb8943@oss.qualcomm.com>
 <12e86cc4-d96e-44f5-8c87-87a6df321115@oss.qualcomm.com>
Content-Language: en-US
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
In-Reply-To: <12e86cc4-d96e-44f5-8c87-87a6df321115@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: hv8MQ48QC9i0BrnLMRaWiF6y4mKe0yl-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA3MDA0OCBTYWx0ZWRfX4DDtuTnI4FI7
 3AxxmVUBRA4haeNh+RAj9N/7rq09x4MMDNaBrpevWBUnNVa2cmhixlC5Y6daymIkJmVRBUkTiIC
 ADS94wT3Q/CHFIG8nf2usUxCoRfaka/1AagTniiLUMR3/skXZOzmd2R4NlTSVU33F4Z8tZjNrrq
 rFi0rs/t8TOUb5palBq8Wxjy/e1u6c6/XAgjI/McfBtqaIsrD7nyzMItRLVeAo2MsU5L+vp6WPm
 ndFFPcwrMtNq5uCcrbRaTwsUJX6V2ML/eNnqMImrLCmW9DNVr1RozohKhqBmOMWMeAVE0m8RUAy
 SiwmZ8pkWGw4zioaZwtnpLzVM6XcKh+/4cXjBVLzIstpCC/jx3kEO4XWVFMpvYz+7NxAN34L+Hf
 Yo8kyIERJJq3BHodE4Z1NiSYLSgaoXEixrWFBvO6Ffz4mU46yyk0peGgWjGH6tDcd9F6pjJIElV
 Fx/uxOS1rJLFHUcgdlg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA3MDA0OCBTYWx0ZWRfXxTv9eeR2Sh0s
 QZsA2GxrgK22ZhBfiC5hX/dFvCtYG9pDufi+vgorQMNd7Pee4CPDgDkoMcdEjjY9zP5KLklG0Zu
 /2sBdl/wNhhk0uzJ5wxIbYA1ZUUNh0I=
X-Authority-Analysis: v=2.4 cv=XIwAjwhE c=1 sm=1 tr=0 ts=6a4c8d47 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=A2pwc-5Qy5RiWZamnY4A:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: hv8MQ48QC9i0BrnLMRaWiF6y4mKe0yl-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-07_01,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 bulkscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 lowpriorityscore=0 spamscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607070048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_222320_991804_6098AEBB 
X-CRM114-Status: GOOD (  13.03  )
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


On 7/1/2026 4:04 PM, Konrad Dybcio wrote:
> On 6/30/26 9:02 PM, Sushrut Shree Trivedi wrote:
>> Shikra supports single PCIe instance with  5GT/s x1 lane.
>> Add PCIe controller and PHY node for this single instance.
>>
>> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
>> ---
> [...]
>
>
>> +
>> +			max-link-speed = <2>;
> Please add a single-line comment right above explaining that the
> host supports higher speeds, but the attached PHY is only Gen2,
> so we need this manual limitation
>
> Konrad

ACK'd.

Sushrut


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
