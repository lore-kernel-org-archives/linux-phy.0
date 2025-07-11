Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C330C8303C
	for <linux-phy@archiver.kernel.org>; Fri, 11 Jul 2025 11:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSVEnyrpWBVWoxvTYAgLI2BdcoMbWb1DRneMCnKroao=; b=12V7wjZ0Iel1pX
	tkmG9dkHVeknK/34Rb5rCy874Rg9j8IPxFzVGPrKf4JQ+RdPiiG0bs9+k5O7X6QkMB2YExqIORLwT
	3nuu5C/aEjCRTFmbhdCwLy98NkzMDHCnSk6ZByh93jtVctnZK2cTxaOAGjAfDYFLV61DjLLgc4aS3
	TODl0r4pP88nVKEboUB/uzu3/mmjtbr4pmDk1NHXpbf2Eo2i9r6Ss8BVAgbgkRqVdKECWFJbBhxEw
	o+Fdjl4F62G/+/S5hBirAZgLAnQqVrVTMmLxz1n8PKXRjXYVVwOPuskVJj8K+2bjNxUFCOKTXXx5e
	YCladwshE2O2cu4a0phQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaBZI-0000000EYZZ-3csV;
	Fri, 11 Jul 2025 11:05:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaAVC-0000000EOVs-2MUK
	for linux-phy@lists.infradead.org;
	Fri, 11 Jul 2025 09:57:11 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56B1XdKT002704
	for <linux-phy@lists.infradead.org>; Fri, 11 Jul 2025 09:57:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V4oAm1F+mw0qWWBJIzHoogPbCCFnCCeogdv2Fm/i06c=; b=Z/9TXDuBX6DLWExy
	amIfnDq2nwAGxAmsKPGGMdV1zGp7rbIEd36Bcke7MdK/kpAls3A8j9AK+sroPED4
	w4Iy1/Pw2QG213/xbqAiXRDZ9WLaukhJc4mOGYo4DILOLcYOgBh0ktLoU61Pm4vr
	cDcI8ngeNVKeOqESAJ8aEWAOjCWNdyzzBpeaWTCsAb9HofRYBDYBjkDxBov5otr9
	boPqlh2/MuAeirb9RSiw2dqsNhc8OM7T7lO3jZPTGrNHHFl8YB0EuD8KLKLjWc7e
	waCZn6tFiQKk93dNh99sR0ScI93DWdOgFI+WEpHFfdPgQig7diPREBRYq+gNU7Rn
	D0tVxQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pucnbk64-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Jul 2025 09:57:08 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7deca3ef277so17182785a.1
        for <linux-phy@lists.infradead.org>; Fri, 11 Jul 2025 02:57:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752227827; x=1752832627;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V4oAm1F+mw0qWWBJIzHoogPbCCFnCCeogdv2Fm/i06c=;
        b=gWdBAYMLDCuOfBAiyM64Pk/X3q5KgmMndPrCMTJ8h5ykV14ohwUZg5w/GbF0mwUxb6
         HxXYHRtLAz+TCjNkYGJF6flhWjp7DVX3VVepfTnGQ9Aqd25BJZuyoUPSrs7odWgFoGcn
         dUN10uokQZyh06kKoZGflhL6Nk8YGjguXwn41esL1t0wk1jqCr0w0El/yBv3hIcq6AjU
         QMZ2E6lianenpIpBCHAWXtrIERAF8k03+gFW6IpkhgbPk+62timTXJPt6+ZYmy+oJSWi
         EhwvT1SfiWNBUFFfrblecFN6c33uWr4jLx39+MxEsS+XxjrA3/tJvB1FTPx46KBQyjKe
         2hDQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1osADz4cj9WZHW39KeRAMDU6gBmNKsMKXJCB3LSCKpE7ptAb5rrsTLNMRO+l8Gb6RrIFa7hin8Us=@lists.infradead.org
X-Gm-Message-State: AOJu0YzfGZnO5SH+gi/2+sf6uYO8kKUdBgMUpH1mTxRCLo7t/vIEzd/W
	Hzf5NqES3+Q+0mOP9CgxcAaHm4BzKK3pBJrnCqJbGOF8Tyg7USvSTVAu4ju2M4Oqq8wnNzopHnQ
	R/h6yVqmZbIiRXrF/9RouJpfCiBdsSgDwyDTiWwXZTj+v24YSOPjlLYd5dIbZ6E3HNUbq
X-Gm-Gg: ASbGncv67Y/PeMySYshqqbOXN6fZ2Bq+YcdR216ccH6vnU2XH61lQYTcQDrc2cBdBte
	lJ9xEq+Jjal0QyB0VcDre0rbEB0YCp3bDePPFExZz6PGfPneL239z+VYx05pi9P1O6OORJ5VlXM
	6s0hDvlaOrytOlgFSHKt+lg21xxW7BnMPHZrxi7Ao569Y1mRCdN131t/H4f/4fHxNasq5uqUFiL
	aIBs951yp5+QY8I/L9aDvMcqgVfXTaMuJz8JzgcfWRk/I38vS00v+DoJ8s+5fSZL5iX6ZHvRrLe
	MSHzehvmdwwgARz/R7xDORJ3FKecRH5ltJw+g2Xbe9iSjmNGXNFd7kvjcHLQn1mCDRk+lkUq5ig
	jgLMposnqeMEgGrZNZoFW
X-Received: by 2002:ac8:58d4:0:b0:4a7:4eed:2582 with SMTP id d75a77b69052e-4aa35db7dcamr13443521cf.4.1752227827439;
        Fri, 11 Jul 2025 02:57:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEYKec4bEyWI8YGiR6x1O+xUwfyU3XWv0u55EjX9PHiUbFeje3VltrjTPWAUpQi1AAK/4AayA==
X-Received: by 2002:ac8:58d4:0:b0:4a7:4eed:2582 with SMTP id d75a77b69052e-4aa35db7dcamr13443241cf.4.1752227826920;
        Fri, 11 Jul 2025 02:57:06 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7e910f3sm273314866b.31.2025.07.11.02.57.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jul 2025 02:57:05 -0700 (PDT)
Message-ID: <465f4136-418e-48b8-93f4-e384244cb913@oss.qualcomm.com>
Date: Fri, 11 Jul 2025 11:57:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] dt-bindings: PCI: qcom,pcie-sa8775p: document
 link_down reset
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
        quic_vbadigan@quicinc.com
References: <20250625090048.624399-1-quic_ziyuzhan@quicinc.com>
 <20250625090048.624399-3-quic_ziyuzhan@quicinc.com>
 <20250627-flashy-flounder-of-hurricane-d4c8d8@krzk-bin>
 <ff2fb737-a833-474d-b402-120d4ed68d39@quicinc.com>
 <1606591b-5707-48bf-8f60-44063ecf8f1a@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <1606591b-5707-48bf-8f60-44063ecf8f1a@kernel.org>
X-Authority-Analysis: v=2.4 cv=GdQXnRXL c=1 sm=1 tr=0 ts=6870dff4 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=00NdyYYEmPKBbhCvcP8A:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: eeaeRBOy84Xss1Dpzhlbp367BRbNbD-k
X-Proofpoint-ORIG-GUID: eeaeRBOy84Xss1Dpzhlbp367BRbNbD-k
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDA3MCBTYWx0ZWRfX//SWiV3lnUxu
 1HYigxQHioXDrEcy15BBonvwIO8yczHKRHalWbUKYCSWF1xAT3rGNLHuWU2oLZrSGppYmEEc6g/
 5TjsSdN7MZzftwNnBjXGx9StHUgq5gHC3brikPDDQLGSN7MsOLyfmoqibOuTWzdGSgXjD4kO02O
 nkyOPBNObnArEKNSBxtMBiImTwiJYUF2ZfSJCihlF2wI+/iPGbMubhYeFF2SgVG0P029aS7Oc97
 +aVa6K4J/aI1R02ycmtEPdCejZ808wXkp9g1DqymMepApr8RG5sTPqr5wMxL8pkLa3W2BEMDA5h
 tsRLzfDJYT6FWTK3Q7pbR+YaF3+tUzImr0aSf7GQdBDpRj7jgkyQcvZlqUiegA/4fc80sLQMGKW
 n07/UrRtE29yRRmICZqGem3l9NDxCtL+E7VXjFD5mpgXSbxbXiaw4Ua9fmEkOLOD+duiBBfT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_03,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015
 spamscore=0 suspectscore=0 mlxlogscore=566 priorityscore=1501 impostorscore=0
 malwarescore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507110070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_025710_723833_64570693 
X-CRM114-Status: GOOD (  18.82  )
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

On 7/11/25 10:44 AM, Krzysztof Kozlowski wrote:
> On 11/07/2025 10:26, Ziyue Zhang wrote:
>>
>> On 6/27/2025 3:08 PM, Krzysztof Kozlowski wrote:
>>> On Wed, Jun 25, 2025 at 05:00:46PM +0800, Ziyue Zhang wrote:
>>>> Each PCIe controller on sa8775p includes 'link_down'reset on hardware,
>>>> document it.
>>> This is an ABI break, so you need to clearly express it and explain the
>>> impact. Following previous Qualcomm feedback we cannot give review to
>>> imperfect commits, because this would be precedent to accept such
>>> imperfectness in the future.
>>>
>>> Therefore follow all standard rules about ABI.
>>>
>>> Best regards,
>>> Krzysztof
>>
>> Hi Krzysztof
>>
>>
>> This does not break the ABI. In the Qualcomm PCIe driver, we use the APIs
>> devm_reset_control_array_get_exclusive, reset_control_assert, and
> 
> I see in the binding requirement of 1 reset before and after your patch:
> requirement of two reset lines.
> 
> This is an ABI change. My entire comment stays valid, so don't just
> deflect it but resolve it.

Ziyue, the change is good, but it needs a better explanation.

Try something like:

SA8775P PCIe RCs include two reset lines: a core one ("pci") used
to reset most of the block, and a "link_down" one, used to ABCDXYZ.

As the latter was omitted with the initial submisison, describe it.
Because ABCDXYZ is not required for most of the block's functionality,
devicetrees lacking it will not see much of a difference - it is
however required to ensure maximum robustness when shutting down the
core.

----

Note that there are physically more reset lines going to/near the RC,
but many of them are either inaccessible to the OS, or very much
should never ever be. This is the case with most hw blocks, so don't
be surprised if you see a list with more than these two. I believe
"pci" and "link_down" are the only ones intended for OS consumption.

You can see some of that bleeding out to Linux on e.g. some IPQ
platforms that don't have a separate MCU (some flavor of RPM) that
would do the bus management.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
