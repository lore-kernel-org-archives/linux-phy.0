Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97572C54ED1
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 10:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EoRVGWeIomp6TAgDysW3Ms4ly9cszSOEKEuj/y5/EPs=; b=0wk58kREwx5EPm
	Mur/nWPkYWXsT/zMgDIdMscRTYn9Zq2zoEDQ2aCWhz6rYR5Og6aQpLWRyNUZtUT6EIghZhZj2GpO3
	dFQYXTv+xUt133xJbNgaApe8/IIXm706OGpLKVLDa5BIpmZj+VUVUlkOCqDLsbLcl+TgEeikKasci
	HVB0N0J0xQqyg1s4Os/v8l1EBgjRV7/zLdOTPZUOTZ4G/jabqL5b6M7vqpbqM8t6CexGUYAjxp+F0
	ZPUwvUeViIa9mFw65wr9j9UNsrIYdfcidwnBJuzieK1mV7xGjGg4TK1nixQoXFXy2/ic59jMNutTC
	OUzBupg+TmChi4UmA+5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJruN-0000000AVLN-1AXd;
	Tue, 27 May 2025 10:51:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJrt5-0000000AUzs-3HvH
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 10:50:29 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54R4KrIa013744
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 10:50:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qRBqOzOrv28UUdHO/wXjqy1ptt8k/i+66lCaL24WiV4=; b=LLwVmvylktZaxbAL
	uY5c3TpJQTil6NocAMmhUskKEkl6TdqPZ1GuvtZROG9KAY4fnA3oT1B7zn8BdJAY
	Xvgh638EFk3D5WX100J0Jb6c1+OYXdPIPFD6Pc7tzQLaGATmjblCKtudbWy2aPHp
	nYHNrHfmha5+qjXdHREnXQ6qqMuYJKNIfXkUK+hW3+524wPzYf0zu3qSmQbf0JGB
	JkpmzYm6ErmZZpMw+eXjrlrYmgP1VUTmzhbmKmGpMfUodVtf44dHYofQSt9r+/zv
	NyhLY+4TGJQzZyjjKig1i60m4fyzfE0JmBGfg3wVKnAzvHCNRY8W1n7VFtQTYplK
	t8rHSw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46w6918ymk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 10:50:27 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-48f812db91aso11024691cf.0
        for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 03:50:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748343026; x=1748947826;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qRBqOzOrv28UUdHO/wXjqy1ptt8k/i+66lCaL24WiV4=;
        b=VEquorp9VFVyvJaChBKNBk0lSEIjR2OYKh/M8mr7c3ijt2bLFuv/mhHaJUBp6X1ukr
         WIZ+E7qzX+hB1kMDS8F7e+yLlFwYE7oquzbaAScc7NDD8gXvm9ZtWdPQwKIj9r1xLuGx
         gXJOQT2QOC24p4Wfyae/AfmvmiQjlnlsxuAqzEZOhJZdtjuKnp4q4hV+zBAJJ2m/Tpu8
         7l1TfMh1PbPvQEWOd3hOA1+h0pHPihUd83MxdXXNiAakWRtc9h0CNKNPrUQO2JxSyiUQ
         nC+EN3WxSQdVbHIgZZ9d/hrVXR1YDrNUhfKWy8Nl8gNzPrwkiynwoNTdjzLOB4uDMNVx
         87vw==
X-Forwarded-Encrypted: i=1; AJvYcCWWm1cBpbVLl8MVLkxF5AukCmrPlYuTx8Z05B9P9Fubb1FsHwniKfMK8rz/iQPSBXH8vj5K2K3ghO8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwDZq08jX7GzX3y1L/z/38p/TOjjr7nOVoL2hpo26DQcUxrrr+s
	Q7IJHOUFovRk2NIcCfHdVg1D54azv99hEleVE85qMJiHIqGkE8uOcaHTcw28pv2IqBUBHUX0dYn
	0Zpcfe9ByLdUlw4X1lUJEqwc9RxikfivbwXhn0/MXtt4OfSKzVs+04OEBcIjPtbhfCGPU
X-Gm-Gg: ASbGncupEXE0RvD6jS9nCRjNAvFBWfO7VNilin9rH26XGWBnaEuxJo8L/AZ0ufWIQ27
	8jlBJ/sqGesiPBvRInsIiq2Q1iLw/0c0Xery7xXQYRSolkOPK5xl1Zubf7CYCaxU2Qxc8HsjlOP
	r5JPa1RUpj6WSsMhqQowvAltYV9GbCNUpZIthzuka9uMCV77mnpKsQ/4pOvYxV1h5m/OjqR1C0r
	F1etjxhsDLFbrjiDa6u2gIAdNgYVeDTJb+Y1CnD7RFd7J+PUc4s1TZQsIEycBgOc/P+/TAh1TZT
	63xO8e5NzbyHyPvdwsUxFFlTiETJFaZ6uhxP9CsD/c7CAK2hwoJepyX2JPzxNTYSag==
X-Received: by 2002:a05:622a:204:b0:47a:ecc3:296c with SMTP id d75a77b69052e-49f437e5af0mr68352911cf.0.1748343025897;
        Tue, 27 May 2025 03:50:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE6WSrw2nabesb+cdYzp0oNZGTkIWjS90wW23jZaW3xkQFZgwFkrJkpnTlVmdSvDu2G4AMqLw==
X-Received: by 2002:a05:622a:204:b0:47a:ecc3:296c with SMTP id d75a77b69052e-49f437e5af0mr68352701cf.0.1748343025468;
        Tue, 27 May 2025 03:50:25 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d04af2asm1832533966b.4.2025.05.27.03.50.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 03:50:24 -0700 (PDT)
Message-ID: <7f525932-570e-4c81-a3f2-6d2e26b02233@oss.qualcomm.com>
Date: Tue, 27 May 2025 12:50:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] phy: qcom: qmp-pcie: add x1e80100 qref supplies
To: Johan Hovold <johan@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Qiang Yu <quic_qianyu@quicinc.com>, Wenbin Yao
 <quic_wenbyao@quicinc.com>,
        catalin.marinas@arm.com, will@kernel.org,
        linux-arm-kernel@lists.infradead.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        vkoul@kernel.org, kishon@kernel.org, sfr@canb.auug.org.au,
        linux-phy@lists.infradead.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_cang@quicinc.com, Johan Hovold <johan+linaro@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>
References: <20250508081514.3227956-1-quic_wenbyao@quicinc.com>
 <20250508081514.3227956-6-quic_wenbyao@quicinc.com>
 <aBxpMuFGKgWrw1TV@hovoldconsulting.com>
 <5fd4abe7-3621-4119-9482-de823b247b0d@quicinc.com>
 <aBx9LB_qQIvA0bj8@hovoldconsulting.com>
 <55a85622-fe33-4b5f-81b2-4a4270fab680@oss.qualcomm.com>
 <aDRw2rJ39t9W10YG@hovoldconsulting.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aDRw2rJ39t9W10YG@hovoldconsulting.com>
X-Authority-Analysis: v=2.4 cv=WfoMa1hX c=1 sm=1 tr=0 ts=683598f3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=zitRP-D0AAAA:8
 a=4PHQb4W1jccdVsicM3wA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=xwnAI6pc5liRhupp6brZ:22
X-Proofpoint-GUID: _8MltAUuWgUkag8vQEsNwtLegSm6M2S7
X-Proofpoint-ORIG-GUID: _8MltAUuWgUkag8vQEsNwtLegSm6M2S7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDA4OSBTYWx0ZWRfX1C8wfB9hQp5m
 V34axbstdHlja9gynWI/Euimodnhf8lFl2qJWPnxJ1d0hDUoZbdulDtaVaBvL3E93LJl/3/eTZA
 URO57Okr06QSRh7IYSOtIobzx9l4Lc1KZSqTP4fwKk0ssfd3PkmAS2qPUPbUIlpFreQUamhBYkH
 V9K9PZXotbP0r/UZBVD0YV139WpBwpJ7jBZvLOmcwP+azBBVu4O1gczR1T7XTJw3LhVQl7Ws0bA
 ro6Xpifi7RQG09NKhAwlz4NrG4e/ZAo6In45flwFN24duQjjyyfBeP20jFrWadrE3uAWK1PVTyp
 +ZIKofTjkKj1bXhTalG7MvFHu5epufBbczMYgRvvvn2iJK5DDpUP3bT4jCS423+qPShzJ+M6rk3
 WKwdAK8R6HR9YcBjz7pZKiSfXYqnhNw3NbylbxsydFioIi89YVC0/SYrLJcusBR/ePGhH2UH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_05,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 mlxlogscore=999 priorityscore=1501 mlxscore=0
 bulkscore=0 adultscore=0 spamscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_035027_835598_05A89E63 
X-CRM114-Status: GOOD (  23.49  )
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

On 5/26/25 3:47 PM, Johan Hovold wrote:
> On Thu, May 22, 2025 at 10:03:18PM +0200, Konrad Dybcio wrote:
>> On 5/8/25 11:45 AM, Johan Hovold wrote:
>>> On Thu, May 08, 2025 at 04:50:30PM +0800, Qiang Yu wrote:
>>>> On 5/8/2025 4:20 PM, Johan Hovold wrote:
> 
>>>>> This still looks wrong and you never replied to why these supplies
>>>>> shouldn't be handled by the tcsr clock driver that supplies these
>>>>> clocks:
>>>>>
>>>>> 	https://lore.kernel.org/lkml/aBHUmXx6N72_sCH9@hovoldconsulting.com/
>>>
>>>> Sorry, I thought Konrad had convinced you.
>>>
>>> IIRC, he just said you guys were told to add the QREF supply to the PHY.
>>> That's not an argument.
>>>
>>>> If the TCSR driver manages these supplies, would it be possible for tscr
>>>> driver to recognize when it needs to turn vdda-qref on or off for a
>>>> specific PCIe port?
>>>
>>> Sure, just add a lookup table to the driver and enable the required
>>> supplies when a ref clock is enabled.
>>>
>>> As I mentioned in the other thread, the T14s has the following QREF
>>> supplies:
>>>
>>> 	
>>> 	VDD_A_QREFS_1P2_A
>>> 	VDD_A_QREFS_1P2_B
>>>
>>> 	VDD_A_QREFS_0P875_A
>>> 	VDD_A_QREFS_0P875_B
>>> 	VDD_A_QREFS_0P875_0
>>> 	VDD_A_QREFS_0P875_2
>>> 	VDD_A_QREFS_0P875_3
>>>
>>> and it's not clear how these maps to the various consumer ref clocks,
>>> including the PCIe ones:
>>>
>>> 	#define TCSR_PCIE_2L_4_CLKREF_EN
>>> 	#define TCSR_PCIE_2L_5_CLKREF_EN
>>> 	#define TCSR_PCIE_8L_CLKREF_EN
>>> 	#define TCSR_PCIE_4L_CLKREF_EN
>>>
>>> That mapping can be done by the TCSR clock driver (which would also take
>>> care of the 1.2 V supplies).
>>
>> So we had an internal discussion about this and while it may work, it
>> would only do so for some SoCs, and maybe only on the surface, as the
>> wiring behind it is rather peculiar..
> 
> Care to expand on why it cannot be made to work generally?

"-ENODATA".. many connections are difficult to unambiguously decipher

> 
> Also, what would the mapping of the above QREF supplies to PCIe PHYs
> even look like?

I'm not sure I have a clear answer..

> 
>> Plus, not all QREF consumers have a clock expressed in TCSR as of
>> right now.
> 
> Is that because there is no corresponding bit in the TCSR or simply
> because it has not been described yet?

Unfortunately, the former.. Some IPs have a non-TCSR ref clock and
some are presumably implicitly fed by BI_TCXO

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
