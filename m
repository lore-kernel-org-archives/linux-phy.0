Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2808EC83F1A
	for <linux-phy@archiver.kernel.org>; Mon, 14 Jul 2025 17:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iD71NIJbarYfyuUHtGp66xyEAPo3bKMfeF6ifOPBofs=; b=WKTXcv4DzgXmeX
	Aas2Zjb2+kBYi8ELGLyyaaHH2UqT58CKGinwxE0AnJrbgtM1UJKLNQE0VUeHmGio6R1lY+o0/afIt
	sraRFbFiq05piAXMeM6060DPgRiRk50Mma0oRO4sCqmxc/1+FDuMD6oirsSrTkNQe/fA5MNL1QNj9
	rXrh5eSn25iJsH8j06DMzkXBm2RCSEd/CTbDzRhhKGeXabhW+WGDYGIIqSokeNnYYHGQiMgvZAlxR
	MSaDKodnEbdixnlJqU6UQRY2pShPRhMUdzumXE/EkjSrPEbRPaS9h1CYXzH9ZMIYMK6+O5AdePXiy
	yPN5IE2YVrySfYVitvmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubMxW-00000002xUa-3I8O;
	Mon, 14 Jul 2025 17:27:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubL4L-00000002fGd-0w5k
	for linux-phy@lists.infradead.org;
	Mon, 14 Jul 2025 15:26:18 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56EA1DTm014055
	for <linux-phy@lists.infradead.org>; Mon, 14 Jul 2025 15:26:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	P0KRc7GaMj1tOTzPOduI20ILL8jxHWMuo/B1S/LPmPY=; b=p7U+IPM9yFev0Ztr
	7fs7/0q1vy3dqA4l6r/cM7wp+gal5U++3vS2iDY0/d3oK4ipsOnMvheV5Jwh6XKL
	iehvLY6jz88N79HW+sbrvn4tV2Z20MGCCcQ2VOgH5OnO+e423lm7Xt2pD9M9ZnNa
	zuz6bDDtey1v4Y8x1CDFwlta6y4+s1ZK0G7Idk+nnKe7UTpwOe7oky7Gu9yOJ+8y
	XDGCKnNq1PM0pm3lyUYRHPW5WrAsnZsOdfIWXDnSVdApEqjW3IH0dV4SxhwlDUs1
	MsDJVEUReZzX4o6qgKyPFwDkiTDnGU2gpmed3RvB2iYqO8IDzts7dD5o/71u1RwW
	XlV/Vw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ugfhd395-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 14 Jul 2025 15:26:16 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6fabbaa1937so15743366d6.0
        for <linux-phy@lists.infradead.org>; Mon, 14 Jul 2025 08:26:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752506775; x=1753111575;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P0KRc7GaMj1tOTzPOduI20ILL8jxHWMuo/B1S/LPmPY=;
        b=Z/vaAyOZMkjfA2nEE250UwKzG8niRm4jQ2lnWbUIcxG1+47XS0T+AN3airzKxYZMf8
         x/22317UZlrBGGYamhVX//az5groeJHeamXab9D2jluJteEnCEkR2zucVdrLLlb2LDuT
         UG2yLSYnd9rRWnshawoltqgWDVKI2qV7lKCubNqKemFIRzH/KxouMzawsebSn7pSQR70
         mxekboPf+GCn0HHRGLQjyXr3I5PlQG+SEZB51fWEAka7WaxPB7/nBhSRDvbvSgpQbMIX
         EunzzsjEZm1GeaT+O5vu4U/n0gUw+MWYfIfAoQIRlncYwtpxvf9ArvTaCThlOlP9pZ7j
         g4Ig==
X-Forwarded-Encrypted: i=1; AJvYcCXJt9/sImq+AlsfDIcgBu8/f43odqcYTJdOeAVX38hbDkq9qOBj+u4Ue9AoirliPrIxi5rgBg3QX2w=@lists.infradead.org
X-Gm-Message-State: AOJu0YycbyaPhM5KSUFayjLNYG5aDrxKtzJSt76tYchZuOpudN8X4fAo
	8R73LOmWjzscd5Z4DPM93IAkrjLKc3IM52KdXGu84O3DLeP46Nnh5iSs7MbUVYvjYKyF6I6fQka
	5aAw8+EZpOrRu4wwBikgYCDoDMr++HtBGpZmhAJuTOXXC819l88OmJtjVwrkunmjTuPpo
X-Gm-Gg: ASbGncvmTaOw39wIavhCX/wTefV6wiTkbP4ML2s0f3FnaEM/JlEOweUGuRNDcB3qDaV
	LggW6CqMAqKZYEurQYHlT84PYJubiH7xA0fT7QkExJ705TV6SU7xZASMvb4mw0nemAvD4tk/a1+
	DPMUrpUV2FmkORiYvPxZ+3Zf6xOgX5eYhvmLLU2klSOP9Z8RDGhXjdWUr1bW5wyA0px8v/gKPME
	2fPmT3RzzUSJnYRqDpRsZY6j+UJz8ojYpwFuCC2DYTNNoQqWEOkyMw2ly/AHbrZvuVY8xoOED07
	c7CLodsaooVkpxTwZF1zJKWJY4r1SicfI+HpZPqkiiz4CsLn+f7yyLXkbU0y3uNY08Af5jlCwYx
	Kp0VqfBpFreP24VtyTowF
X-Received: by 2002:a05:620a:4611:b0:7e3:3001:b055 with SMTP id af79cd13be357-7e33001b554mr110230185a.0.1752506775206;
        Mon, 14 Jul 2025 08:26:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEX6IBsdWI9mVsEHLZqT+fwHbjjGKMDEgd6Hp1+Vyy78VGrEJC5/M7BkrDO1voksLgqSiIbnA==
X-Received: by 2002:a05:620a:4611:b0:7e3:3001:b055 with SMTP id af79cd13be357-7e33001b554mr110226885a.0.1752506774578;
        Mon, 14 Jul 2025 08:26:14 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e8294b7bsm838033166b.136.2025.07.14.08.26.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 08:26:14 -0700 (PDT)
Message-ID: <dd2754ee-ce89-4335-9974-6df4b612d3f7@oss.qualcomm.com>
Date: Mon, 14 Jul 2025 17:26:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vz@mleia.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
 <08261aa4-689b-4d6b-bfd2-221c1976d254@linaro.org>
 <a7f64b31-4767-4281-b452-a2bc5351d745@mleia.com>
 <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
X-Proofpoint-ORIG-GUID: BrUUkoGBc-P-pzrufCaOnogpiNFbb6ih
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDA5MiBTYWx0ZWRfX2VYPmdgLG95j
 JUzLptq3k/R6f2Fl+OwgjtkSAoYniygF9IPWhYjyR29sPFxLPN74gR76Yvyh2ANlSRZ/WBZ8zcy
 HDB0tWDRNTNQnC6F6EZMdcP63bgezlawR1yTanO8Oupjr/1/OZUCyg+w+woIuYy5bygwdqJj+QY
 SngFRYDIAaTiopBG3gs1J+o7sELjqiEp6qOvRMWf+k6TNvCbM8sS5NVMuoSuQj0kscKzYJviXCH
 qRzVXZFLjdM5Fz5rxUQPbO/VjIjOeSWSbc/OpDbXzHBh+zDzJSNa9py0tfMEnX6u0xuxD5kFmPc
 IP40sGNTngLG1jpSgU9iogp1v47ifNrltjnLhQ7pWdUfDZPEan3CgcQIjDjHAipZJRXnAS4eL8Z
 nZeZ4ZGOxzr3+PY+USOixKFGAkwrkhZWboJIOx8yytI+InV8QXiMMv/TlCzAq1FZlFYaqgFI
X-Proofpoint-GUID: BrUUkoGBc-P-pzrufCaOnogpiNFbb6ih
X-Authority-Analysis: v=2.4 cv=HYkUTjE8 c=1 sm=1 tr=0 ts=68752198 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=IbGhK8io7uJmbBfgTJ0A:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 priorityscore=1501 bulkscore=0 clxscore=1015
 mlxscore=0 mlxlogscore=999 malwarescore=0 impostorscore=0 spamscore=0
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507140092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_082617_272169_D7C68F2A 
X-CRM114-Status: GOOD (  15.10  )
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

On 7/14/25 5:17 PM, Bryan O'Donoghue wrote:
> On 14/07/2025 15:58, Vladimir Zapolskiy wrote:
>>
>> This proposed device node scheme does not solve the known and already
>> discussed technical issue expectedly, namely there is no given way
>> to describe a combo mode hardware configuration, when two independant
>> sensors are wired to the same CSIPHY. This is an unsolvable problem
>> with this design.
> 
> I think that is genuinely something we should handle in camss-csid.c maybe with some meta-data inside of the ports/endpoints..
> 
>>
>> Sensors are conneced to CSIPHY IP blocks, CSIPHY is connected to CSID.
> My understanding of best practice is data-endpoints go into the consumer not the PHY.

At least in the case of USB, the PHY's of_graph includes signals that go
through said PHY (so HS for HS phys, RXTX for SS PHYs)

Konrad

> 
> These are PHYs with their own SoC pins and voltage rails. They should look like other PHYs in qcom and across DT, IMO.
> 
> ---
> bod
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
