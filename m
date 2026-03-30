Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 355D410D14A2
	for <linux-phy@archiver.kernel.org>; Mon, 30 Mar 2026 11:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XehCQ5EGkNo3+GMQJ/g31i+Y3Upq2M1k+AWyLAnj5BM=; b=L/WuSOOgu9pl27
	ldUG7j8Ni3wfouC1jDBYtWHQIew+qlGcUf/rBLE8jJDc0kRP4ZzwFJ+2WgU3CEqGf3vgkzm0y7377
	q6qrPsnKPvEXDAlLp7Yofeg581W65lf90LQ4GKS52qehMXI3BonggxWHHt9muiZgdcMFeCPv1lFxg
	cQ/J74K9RjS2nBYwYebIFd5LcehGk67bIxqtGi9jnWimLvTt7dTeW3hy5DX8TZaQ2U/6URW/qGj9B
	BL4ktqd4Yl8va9XrUYdREoLImbOWtZELfYYw2sABTg2wWa5u9QSkjYHPbj6iMenoOLB6EZCeuZfQu
	5WPiHc9Z5HLFJluY+e1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7Atf-0000000BAjz-2etW;
	Mon, 30 Mar 2026 11:35:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7Atc-0000000BAj4-3gMg
	for linux-phy@lists.infradead.org;
	Mon, 30 Mar 2026 11:35:06 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62UAGuli3176217
	for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 11:35:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AD7yhFYem1/46F4xjVAzjcyJmROsEd9YlW0HID3CP4s=; b=Xh4gJrX7unDovN1t
	Hcy1hvQ4Gq9QsLeJrbRnJjY32V2o5ftIJ1Au/UM/hTaV0pp96z+1bRtxxsjLYvex
	p3fPltEsM/a2BVDIh58ydwl0hDIygLKuWicbEMV2vILPGnODSgHuJm8P+XjLBjT8
	DXOsgGY73L0CJejC1Do+u3d2caqecj236nyIm/sjnYNS3m0OIhaKcxGsZ/KQ1vh8
	gUMvUAPPK8KrvD96DqmejVlwQr/kKDgGUuklAf+9NczWiEga8S/zXVZc80VEncdd
	Z7djOQ+gFZv2q0d9D8RZqWYxTkecT/fO9iLm1SYad+1VsgT7CwCPxbU/QXi57wY8
	UapRGQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d7q9h0803-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 11:35:03 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50b27636835so16370081cf.3
        for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 04:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774870503; x=1775475303; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AD7yhFYem1/46F4xjVAzjcyJmROsEd9YlW0HID3CP4s=;
        b=M3Afe0VOkQ80hpgmpT9RSbKIVCyeoxqBUP36DbR7yxFr6mpmz3HRYimctDHbLWDmgZ
         EgVMPdEo4zw4bsD3TDpEANB7raUR3tddBuVq6PDPIC7l+1IbfZ7bgAxvSfwGpyq2jNn8
         1w8euEDKW1jZcWXgV4i9OcTEcSnF+tG/BaVWIH4+BVhI6Kw448tR66fo/GvcPziu45ln
         Q0HGs9GLCOwdYf3YEFzw9ca7lGGVPi7/ZTwYjjWlQyyLJtJrXnhaNrX2RCo0hfvWb4zQ
         XbzITu6Zy1hVjMJThmitmsoiaNrR7N0BdKfJUfr/vxVeK70sMqQp0xhttXcTZCUwmV5D
         Ry9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774870503; x=1775475303;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AD7yhFYem1/46F4xjVAzjcyJmROsEd9YlW0HID3CP4s=;
        b=rJzydOW1R+mbIMYVbsASdY/is0HWuLcey1EH6P/YEsQfmDBptaC2qHXIR7f8UsQtm/
         rzTo7RwbCuNIJ7fFJShqeD4gmOfc7NRLzdMdFv2BFYNXmIs8rYKh0Mp5kW8T7FRltQ72
         Kb1CZc3QWT2uB4/FXoY4I7XL08+v5MTSwV99wjiXZEDOZek3axsr1oNMtBXTYyuQNK9g
         9b0JCQJn56PPWnxzTdEi/XhJKbd/+a356v4Jb9nyiCLycpuY6k77fEBdO1/pDhZSeTfj
         EJbRGbOUPEKj1POD6D11Hid2gkcn3u3jlxpBU9wTnzPt7mSAudpNbSGliOqJRK5TeLSu
         5oxw==
X-Forwarded-Encrypted: i=1; AJvYcCUgOlSlaxIvTgPnTragC9k8U5FhwJl/TsW19jPhGxkHl7HQcFNDNwV2QfnEMuAuqN/Edkb/PFk0z0M=@lists.infradead.org
X-Gm-Message-State: AOJu0YzCudOn4Y4UFOgQLvxj6aJSpGd1fRWMIbc+A1CeRtQ5edzTuB5b
	i5leoKrD3R1iPNMGQZglaRLkW+37zYgTzCZUe4F56df3h15wkGYcfX0DDELQpqDSn/leS/yb29j
	sJXbdoxkvM9G+xhUG6mv2G0Xmk1ImCeVK5uWSGR1NsrZBv5HPIfQnv5V/wGfNDih2jIgi
X-Gm-Gg: ATEYQzxtj/6JJNZqXdwok5NH6mISYmQi9qR4fpdvIbLaZtCdkCE4dxyKycjh7H19t9o
	sc7jesSP1X+BbujO2O6F/2JPdOyc2Ew5XUeZScSe0tGlNlZeMBtzngYVLyL2p1yz4qnZDxyZDPR
	aEKDaIsnCErE1Ha6n/9sr/KCaE7s5eCIV+tsIZiWDhlfyxCCNdBp51R0sVabp9v6rf4bmpnQx4F
	tzN9wMR2prXMuCE+7zE39euJ1Xbl5ZJY3rDX4Qn1Jl++DIaKdwmndX7kGSULkQRWRUY5VFIZozs
	j5gkcB29fLyyCAfz0/KDUMgZXAomZc6qdo7Whmp99y8sZSHR86pHH32710LOsqyVGYWKD6M1Zj7
	hTjRAAk462VNCNSnRpTvcIeuxG2CwZ3tdXwhmkNORHXGSNF+4e1wfNpcK/zGj36ZcecmEGOVtl7
	lGXXs=
X-Received: by 2002:ac8:7d41:0:b0:509:219f:8e34 with SMTP id d75a77b69052e-50ba36c2754mr120405641cf.0.1774870503115;
        Mon, 30 Mar 2026 04:35:03 -0700 (PDT)
X-Received: by 2002:ac8:7d41:0:b0:509:219f:8e34 with SMTP id d75a77b69052e-50ba36c2754mr120405191cf.0.1774870502547;
        Mon, 30 Mar 2026 04:35:02 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9b7ae51ef5sm275868366b.18.2026.03.30.04.34.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2026 04:35:01 -0700 (PDT)
Message-ID: <6d5ebab6-3c4e-4a1c-9578-6e926cbd96de@oss.qualcomm.com>
Date: Mon, 30 Mar 2026 13:34:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bod@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
 <7712fbdd-a225-49f0-aeb9-ebcbb9d5abac@oss.qualcomm.com>
 <da3ed78d-fb5e-4820-95d6-527d540cf03e@linaro.org>
 <1f38187a-9464-4aa9-b70a-03b767349d56@linaro.org>
 <c5278028-dfe9-4d09-970a-a25977967bdd@linaro.org>
 <016c03b8-27c3-41dc-a630-8e7095db1f88@linaro.org>
 <456ded59-d13e-4b61-975b-97ca48b5e771@linaro.org>
 <RAPaPhpxA39W0ykm-Cr1KaDiJKpRqdQTXUeEmt5mQn4lJBHEGaIS010ejjmhUYEBsHjzrTX41Ek9zLU2bae_YA==@protonmail.internalid>
 <76ea03d0-d41b-4880-a48c-06570eb089ed@linaro.org>
 <0101d8bc-1ae8-475e-bb9e-cc1e16db87ec@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <0101d8bc-1ae8-475e-bb9e-cc1e16db87ec@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzMwMDA5MCBTYWx0ZWRfX+WXSk/susJEH
 RfHHuMXYTSy+dBF0hlX6bGHcy9dlNUXoizTLRpkdHtAbnOEHYni0Q8PKGKwJekrxFUlgg8Eis2B
 w96u/L5lDtTwsuJcdlW0P/0WDUQypFDn1VCe1adZwY4feWAB14XaBsjDQjvgPZNFEyjAJ3iXUEb
 BrjLsSlwaO9yt9MtNdvTCdxLU2Ko9iq64dDf+5k5pT3g+18/wwqUQsJyPVOaHI+ul5easy28jqh
 f30bHaPGcaDftvuboVfkLU5n/rkFJsaskuSwW1ilrq7JskxmRnuXY+AZ5GpOfJFGyV6AD7LNm9D
 L4TXt7c6G9InmXjUmPdb/6X8uBzkIt9uMcMgYVvaTBw78b3hmSqJmLx6Cs2u7A4YmxiDrwc5qc8
 WTrU1cW3XAyAYn/qz8EvxImarekE4jvU/HGPXs2yfenJV26V1E6gQ8wcNMdWFiXrBul4sCZ5XbT
 OcZoXgvZXGSiydGsvuA==
X-Authority-Analysis: v=2.4 cv=AZS83nXG c=1 sm=1 tr=0 ts=69ca5fe7 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=mneW2Sup4nk-zTkRaDIA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: frHQvp6dntv6im--L13V4g_nc2Ijs8o6
X-Proofpoint-ORIG-GUID: frHQvp6dntv6im--L13V4g_nc2Ijs8o6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-29_05,2026-03-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 priorityscore=1501 clxscore=1015
 impostorscore=0 suspectscore=0 bulkscore=0 adultscore=0 malwarescore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603300090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_043505_071405_6F5FE395 
X-CRM114-Status: GOOD (  19.37  )
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

On 3/30/26 11:25 AM, Bryan O'Donoghue wrote:
> On 30/03/2026 10:17, Neil Armstrong wrote:
>> On 3/30/26 11:02, Bryan O'Donoghue wrote:
>>> On 30/03/2026 08:49, Neil Armstrong wrote:
>>>> On 3/27/26 18:42, Bryan O'Donoghue wrote:
>>>>> On 27/03/2026 15:28, Neil Armstrong wrote:
>>>>>>> To be frankly honest you can make an argument for it either way. However my honestly held position is analysing other upstream implementations connecting to the PHY means we can't make the PHY device a drivers/phy device - it would have to be a V4L2 device and then for me the question is why is that even required ?
>>>>>>
>>>>>> This is plain wrong, DT definition is different from software implementation, you can do whatever you want if you describe HW accurately.
>>>>>
>>>>> I'm not sure what point it is you are trying to make here. Are you trying to say drivers/phy is OK with you but you want an endpoint ? If so, please just say so.
>>>>
>>>> I'm against using the "phys = <>" property in the CAMSS to reference the PHYs, a "PHY" in the classic terminology is tied to a single consumer, and if it can be shared to multiple consumer you must model a mux or whatever in the middle.
>>>
>>> The CSIPHY-to-CSID routing is runtime-configurable and is already managed by the media controller framework.
>>
>> This is not compatible with the PHY bindings if you don't have a defined MUX device in the middle, it's wrong. You're hiding the muxing details in the CAMSS blob node.
>>
>>>
>>> DT describes static hardware connections. The dynamic mux is a software concern, not a hardware description concern.
>>
>> DT must describe the possible interconnections between the nodes, if a PHY can be used by multiple hardware components, it must be described.
> 
> But right now the CAMSS block is described as a single block. There is no CSID device in the kernel _yet_.
> 
> When we break CSID into its own block then fine, lets have a debate about a mux then but right now the "nodes" are CAMSS[MONOLITH] <=> CSIPHY there is no DT CSID device to model this to.

Let's take a step back - since any CSIPHY can feed into any CSID (at runtime),
the resulting nodes would either look like:

// hardcoded, m may != n
csid_n: csid@1000000 {
	phys = <&csiphy_m>;
};

or

// determined at runtime
csid_n: csid@1000000 {
	phys = <&csiphy_0>,
	       [...]
	       <&csiphy_n-1>;
};

or we could store them once, centrally, in the "CAMSS_TOP" node and
pass handles around as necessary:

// camss "catalog/manager" driver/library provides CSIDn with PHYm
camss: camss@10000000 {
	phys = <&csiphy_0>,
	       [...]
	       <&csiphy_n-1>;

	csid_n: csid@1000 {
		// no PHY references
	};
};

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
