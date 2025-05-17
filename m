Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ABFDC2D0CD
	for <linux-phy@archiver.kernel.org>; Sat, 17 May 2025 18:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rrPOir3uq9xzoN0mgJz75RUgVt4gPu/MdjzQfD6J8rg=; b=Mer79j4m8Akqvb
	OSK0ESkzLJXy9Ifz8QWWYLp+OqdEAteab+6nqMDeNZt3ondDroVIxi2akAWftGV4cozpRpNUZHpOp
	w3gMAzgtOKwfHj8QIxcMjfP9x9YytQi2mqEeIxhRapLQkJ+fN3WHkckTVuQqD6e0Erw6cqN8dhpgE
	zs7zwxGxkpItzcEekIEaMT8+5cAuVItWG8WZDh8C/VBWs5IeiOXhldkuE6GWNJvlVdsDgjIM8uNJT
	5MJkBJH0OuKDV85ZF8JJkJQnijdLoP8VjkoVtILgidcYG4yRs2K9rmpFMwt457tvWA9z19d1Q2BKI
	XBEGHxFEvVxZY7nEfk0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGMHL-000000067Rx-1S7T;
	Sat, 17 May 2025 18:28:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGMHI-000000067R4-2wQp
	for linux-phy@lists.infradead.org;
	Sat, 17 May 2025 18:28:58 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54HCGQFh013612
	for <linux-phy@lists.infradead.org>; Sat, 17 May 2025 18:28:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WM0LxhWS7WoqwNfrt1DjXdDre6/96mPxCXdCCzvVj2c=; b=kUJ+dPzmPOUT1H2e
	4f3vdsTGtRsnkKqfAHQaVG6C4ia/O5UBXNhiKnvDXpWPJLOE8wn8fa8CHIPZQQxb
	fSI67sTTSEaWrXxCWefbK1Cx3sgo2vf5h4aT+tK3DdS2hSl459bt6NoowRStl2+b
	/h2tFib9F1xUpRbecSDNtJpNpCUDXjMtC6LvdcMwddbid/XMZE3ryN1bXKF8HJAU
	C5bG4XIDWLKhxV/J4eLeKfo2EgtcPupxMzNHPFEHE+10FNbRR26YKUPbLUwRsLcE
	Q0X3KOx3wUnNrDx9uYI7E4pzVzYbDZH2+iCSlw8sZdOTnae8wA8gvgD4dXGDq10U
	yg4NaQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjp3101v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 17 May 2025 18:28:55 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c53d5f85c9so75769885a.1
        for <linux-phy@lists.infradead.org>; Sat, 17 May 2025 11:28:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747506533; x=1748111333;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WM0LxhWS7WoqwNfrt1DjXdDre6/96mPxCXdCCzvVj2c=;
        b=Yt0t8c9iG05GeWpOzOlsTy9PRWo1/CGLm33E0+tdgWbRUXAZ159ZXpLQgQp8xfiUIn
         PuKDu96ZQTIGSd7J1WWsfZTBSSv2SHiqVHZbiB0v+KIN7H1eyYnpKssVb6Jw7tZcNqGU
         vwyR/aT1aWgs6V8B7aPVL4DyFkQvKesY1CI56UDdBsDAVP2N+YDwj+oDC3T9e0Hcar1L
         OxGacQarSZ101pbe25nJe7JsD4H511FmfRTYGQjJpZeHQ90ZPpG1F96YRBROypQqHNOO
         xesorqCkqyAvZwPUd9rQMV88Tct9XoMa6M8W6S8ODlMhNKRkeJK80A0eTAC3kitaYZa/
         TuPA==
X-Forwarded-Encrypted: i=1; AJvYcCWHuzoyJNVTaqlrssPm469gBfCeNtMqaKO166bzRuwvYFRkBuRmdJM7BfX5fMoMX/5jRypu9T7sBf4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzM+y1bmWN4912OmhW04RZKP+e1mJxFfdeVqVt7vIQCB9MKj2PB
	b/+Wd9tkCvN+W6JCnC4FtG3s0CeNgPDDIgNirbScv23qZVjdYQINlve8KFz1ahHUtx7VEgQ4+Gp
	p9lGJ5n4BDf2DZJkaQfo1Btg1osTxO2dKjQ8zzsr2AIT/f8iQ933ir8dvmqPkD2e4oB5c
X-Gm-Gg: ASbGncsTOC7lH2pP0fX5Ftqs2Wy5od6zyK74xXpjIV1RCp+2PBzqWckcmw74dWAzWuW
	4HVfbt6SILz3730Y76C9nGTIGHn7YZaLHxTRCLOmqyMrQvWzBiYTx70LmW2rsDAOrriHVi0a44r
	VbbNks7zqZE2WS3s7uaRDIY9P+GmzXYRruh1eM/f4jjdWenkqddbke8t6vCvGIzq/RWPCLWmOvp
	W/J8S8v2wT6cuGr0Dg/ao6XnUauEjPayGWWsxOCNGrFgLTGEApPWPRnLKZOQ5L+sjaOLy4l+S+b
	1IdducMx1IZTsNDbdOxT4tipEIrfUeXeC5CTMeQgWdFA9wwlVX+jCiQ2yf4DZobURg==
X-Received: by 2002:ac8:5acd:0:b0:494:acf4:9572 with SMTP id d75a77b69052e-494ae232bd8mr46453551cf.0.1747506533371;
        Sat, 17 May 2025 11:28:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGqlFqFfxfLYXFiiljRHIXrnkNmpSimkZBjJ/iFwPezDkWXAt4BzxdvbnuBYSABObtqzWL8Xw==
X-Received: by 2002:ac8:5acd:0:b0:494:acf4:9572 with SMTP id d75a77b69052e-494ae232bd8mr46453431cf.0.1747506532951;
        Sat, 17 May 2025 11:28:52 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d4c516dsm325677666b.154.2025.05.17.11.28.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 May 2025 11:28:52 -0700 (PDT)
Message-ID: <6fa4959c-d733-4d50-904f-caf933e02da9@oss.qualcomm.com>
Date: Sat, 17 May 2025 20:28:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 06/10] phy: qcom: Add M31 based eUSB2 PHY driver
To: Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>
Cc: Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com>
 <20250409-sm8750_usb_master-v4-6-6ec621c98be6@oss.qualcomm.com>
 <Z/exOF4T+0vNLQwg@vaman> <0517c37d-b1ba-466e-bffd-9f47b0d458d5@quicinc.com>
 <aCRVaNDQP/PdAXPR@vaman> <5183b76b-8043-4309-b25d-e1ae505f929e@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5183b76b-8043-4309-b25d-e1ae505f929e@quicinc.com>
X-Authority-Analysis: v=2.4 cv=B8u50PtM c=1 sm=1 tr=0 ts=6828d567 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=jJrOw3FHAAAA:8 a=VwQbUJbxAAAA:8
 a=7CQSdrXTAAAA:8 a=VM-KvOk4zruIL__GPFMA:9 a=QEXdDO2ut3YA:10 a=-FEs8UIgK8oA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-ORIG-GUID: tbk-ViFUiCysW0HT42MUBn2T4CRqiGxH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE3MDE4MyBTYWx0ZWRfX2+uNV63oe1oE
 pXh8/mBAUS8WHTEdlYlBYwgEu3NNRHiPM5qH3nKlPHPmIgz1MmxbWdFzcvKrwHE7yttJ3zJg2je
 hClKod1xLFV3d/FVI51fLibbzgjhUmLgeq0M2+Y0qZWdf/pJZy3W59NbXQfIugrJ0xSEzpSHtZT
 DyMC7ezlAa0ycmrTAwBIS89qEbdF8WshXNhxJa0SUDdFQBX4Q7yRiK9TinSQerwOxC1+S2ei4Ws
 Xg2/sK92zwdWlI2Uxf3/ON9HxJUTMkGPl9O+JIu9Eajg5oOT+SCBxEzM606Ai8dWLMyoIrEzZti
 KjiFJcLaFfo2fB55yCorqbhwAx4hkwxVPirR+RxpGoLY6dGBN7hjYhSUOtZ6C/1MDf+sxVubgIL
 VaJN9uNrpNvBkwh3vhcyE/CZ/NOodSpFn9nUcME3CQy0E8SX1lxay6p+TdP9rRYCTUfLQWjl
X-Proofpoint-GUID: tbk-ViFUiCysW0HT42MUBn2T4CRqiGxH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-17_08,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 malwarescore=0 mlxlogscore=999 lowpriorityscore=0
 mlxscore=0 suspectscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505170183
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250517_112856_754375_E6DF403D 
X-CRM114-Status: GOOD (  18.47  )
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

On 5/14/25 8:24 PM, Wesley Cheng wrote:
> Hi Vinod,
> 
> On 5/14/2025 1:33 AM, Vinod Koul wrote:
>> On 16-04-25, 15:45, Wesley Cheng wrote:
>>> Hi Vinod,
>>>
>>> On 4/10/2025 4:53 AM, Vinod Koul wrote:
>>>> On 09-04-25, 10:48, Melody Olvera wrote:
>>>>
>>>>> +static int m31eusb2_phy_write_readback(void __iomem *base, u32 offset,
>>>>> +					const u32 mask, u32 val)
>>>>> +{
>>>>> +	u32 write_val;
>>>>> +	u32 tmp;
>>>>> +
>>>>> +	tmp = readl_relaxed(base + offset);
>>>>> +	tmp &= ~mask;
>>>>> +	write_val = tmp | val;
>>>>> +
>>>>> +	writel_relaxed(write_val, base + offset);
>>>>> +
>>>>> +	tmp = readl_relaxed(base + offset);
>>>>
>>>> Why are you using _relaxed version here?
>>>>
>>>
>>> No particular reason.  I think someone pointed this out previously, and I
>>> was open to use the non-relaxed variants, but I assume using the relaxed vs
>>> non-relaxed apis comes down to preference in this case.
>>
>> Nope you cant! There _needs_ to be a specific reasons!
>> When you are doing read, modify, write, it is very important to know the
>> right version to use...
>>
> 
> I mean, its a write readback, which ensures the bus transaction is complete
> based on [1], hence why **in this situation** it is up to preference.
> 
> Otherwise, w/o the readback then we'd need to ensure writes are made
> depending on the required sequencing (in spots where the sequence is
> strictly defined), and that can be enforced using barriers.  If you feel
> like using the non-relaxed variant is preferred let me know.  I can replace
> it and remove the readback.

Readback is stronger on arm64, as otherwise the writes may be buffered and
not observable at the other endpoint even though the instruction has been
issued, even if a barrier has been issued

Some resources:

https://youtu.be/i6DayghhA8Q
https://lore.kernel.org/linux-arm-msm/20240618153419.GC2354@willie-the-truck/
https://developer.arm.com/documentation/ddi0487/latest sec B2.6.9

There's been a real bug observed (pun not intended):
Commit 2f8cf2c3f3e3 ("clk: qcom: reset: Ensure write completion on reset de/assertion")

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
