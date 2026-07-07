Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C52BC43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 05:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N6RCDjL5m2PCKYwy8OCGWZ8IZpoJV5vhsYikc8oEKTs=; b=haz84EJUWzGbVe
	pReXtBFqrTprGFs8xLIsRdt5YDqL396ouxAC/9ZA36wWFKvRPMRa/bb6NnLXO6eSAnZEL0NvTzmai
	3b/7llI674h54hSaT8pZPCWXnrEvznMjjTi09QKUZetSNjy0FoVpSu3mnKXhiykBWArtws+XZJOmH
	6/6Q02ndAKaSDdrbMCQBYzSF/gr8Yat7yqFW3vV7bwSg4kejzNxpxDhdo2NUYySFZ0uS2t2eX57f8
	Th7Qpqu34+bh7nyLxDBWe/+bHcXedWH+lEMi/qDf8MdyHxSF+Caa6AQhT7V6v6pZUHyo/fFVHt485
	IiLSnyD+0/V+2FSurURQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyYc-0000000E8kx-3GY5;
	Tue, 07 Jul 2026 05:41:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyYa-0000000E8kZ-0BlS
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 05:41:21 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66748qp02450511
	for <linux-phy@lists.infradead.org>; Tue, 7 Jul 2026 05:41:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lflEKyZ2GNpJuinbyFUPuuftqGQc8rX0sKQ4/Oimemk=; b=pIBWH6C/GRvvXGyK
	UUKYecCk/BmHWnvjJUWbpCrXeEV6AzYwfHLiD/JB5aCTOi99/Eyg818IG6T3R2FP
	jph2mKiIANbeN/NHviifXypy/T3ol9IJCF/k0UQezDxP8McA5FHoA8+sHRnMXBSZ
	DSQSPVzaLXvJG3VvKLHXaN7DaXUpyvC5o5dH8tcyZY1lMdCExYakJCs/knZd1TTn
	4ezS6YhRl1KMmmkwPbEEWbkj/HQVuJTvFH/XFOJZceOPxAo3lxZX2y3a0SogvRme
	OfpN+ylzzHLEYnj+m+vauhahORUeja6sJGN0XG8bX9g+RQAHCH5s6hL3VH6zRWSo
	aDuq5Q==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f8su70ajm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 05:41:19 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-380ddac2b02so5814729a91.1
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 22:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783402879; x=1784007679; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lflEKyZ2GNpJuinbyFUPuuftqGQc8rX0sKQ4/Oimemk=;
        b=WsNZGNErBVWlhwRhtRojhj50SIkXJ7P1SnDil8ZWZedrfsSGGAv6485w5ARaMvBD6w
         FILCn61uDVGOpcjL1JHCI5cP9CEhsfYeq4HIZGuU5Iw/sNl17tTwqXa4a+0ocF4EwGFZ
         QGj+D+hEKpH4PoAmHWlDSl3YkvGZBMWY5ikVWUd3wGKVtRUFW2jVXCDtkHHgyVvwF3xl
         V/1Nz9mNAet3HIt3fik/MqC0Z8WAixtlSZYan2cFkidP2Nyantfe+7aluMPnv+1a4MXR
         aZY9MF6MchcSSH5MIw5RSJEeXdm2PmKyIgB8pw4ncVrer28m/HfaHFHuqIx1x6rkFfHj
         38QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783402879; x=1784007679;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lflEKyZ2GNpJuinbyFUPuuftqGQc8rX0sKQ4/Oimemk=;
        b=fNPYJ9/VC/2C902eCQ3WLNlMoZm/yZrijNMfXoYJvESADIr+mlAkemvItKA6ZPpz28
         k7q95obQfL7rO5ojPe2D/mX4ORqYOtzRS1Er8SJXKnmHwSlM1Z+QkWluD2ILdQmQP7j7
         PBhIh1JRK7EFpSAvTsQeiMzoiK3+UJKSr9dxUoEz6c2l8KcbaSSCvj02yX4DHPVEJFhh
         3bBviHhXD8h6oKqXDprLULpyl6aMpcSHyE45lp0NTwSBhhXPCfap5OLgvxsTERKX2ucw
         4hxuzlvecYoXGPpJVT9ok2EpdONaejRuQJ05aHnte0Hijk9TFfkuvURd7PAEK12Ysd3/
         IAKA==
X-Forwarded-Encrypted: i=1; AHgh+RrOCIBysAYQQdjg+XwXugCLptDOPwDEKaD8zUDLqhyN3VWhves97Re2UI08n4oZ2YcyMFvsoQ0up8o=@lists.infradead.org
X-Gm-Message-State: AOJu0YxcNyHJMYEzl29kt7T7/GckVwDDcn1CiWdgSndOnm0fsEbSgwZE
	jlfhODVV7x/OpEmlh/rPQoA8MOV6qGOSZq6p3SzCR/X/IL3KA6FqOHlnX3UBFkpislMMkWRGN0A
	zXUMT2SWERs0GISMJFSsKCs3FMQYgCQMLSM2OVkOAX2jJCaq1dznkwvsrUEzXVzAliQKj
X-Gm-Gg: AfdE7clHzwVD6Zk+pUDQ/azCcIzuYyHwSSQGYDVX3JUcNssY2yUw7BwFKDmf9wD+L1V
	EE4Xi+TAnRlFdsfK5yQUoa6qgNRJ7rAWmZHhLUMAom8kPe37ZGDOg6wgN96/aBQHgWxSOZrZXt1
	BlHWmZKqO4xES307I+yiGWgULXFRQa4zfWmrymcqCosf5ufcYEohFVOAo468kCDtHCAgYAot63L
	kFtvRm6FByPvDNF8YSDm5O2mj9CtUZqgdR3YjgUr00c2uE0AD4R6T7rCyW5Y3c2sFKEZ6Up9D5+
	MDNE52CVvxg63loZWOiFaUic4Re0ejJyHkjeJAoUXu8WQuZzv7GzhN3F4HQONfUpqdgofM8XIHU
	px7MoKWLlgUD2oekAPCuNoGf/3qsfNsLzPSsz0Xkv8fZ7CoN/G/9oSEhUgtB4ZJ8RjI2ajOVgO9
	7VnH7x
X-Received: by 2002:a17:90b:53c3:b0:37f:ce2e:32ea with SMTP id 98e67ed59e1d1-3875826180emr3950203a91.19.1783402878816;
        Mon, 06 Jul 2026 22:41:18 -0700 (PDT)
X-Received: by 2002:a17:90b:53c3:b0:37f:ce2e:32ea with SMTP id 98e67ed59e1d1-3875826180emr3950171a91.19.1783402878394;
        Mon, 06 Jul 2026 22:41:18 -0700 (PDT)
Received: from ?IPV6:2405:201:c409:b03f:6d0b:bb83:7a67:4093? ([2405:201:c409:b03f:6d0b:bb83:7a67:4093])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-387d100b5c9sm426934a91.3.2026.07.06.22.41.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 22:41:17 -0700 (PDT)
Message-ID: <1602bd87-ecc3-4051-b833-5aac43c2762d@oss.qualcomm.com>
Date: Tue, 7 Jul 2026 11:11:11 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/9] arm64: dts: qcom: shikra-evk: Add TC9563 PCIe switch
 node for PCIe
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio
 <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20260630193059.GA225112@bhelgaas>
Content-Language: en-US
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
In-Reply-To: <20260630193059.GA225112@bhelgaas>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA3MDA1MSBTYWx0ZWRfX7/F4Hep58PKG
 X+/R6od2ZLpgSw83k4MmyfSP6V45ZR67GRTUHxZ14+Qhx3cyWwPDNLnQjFIlk9bbLk3TUnYc9nA
 02hKRmMNMc7qcbLJiVIFtoZe2PIxCe1SizQyY0JNQcP0p5PfXwDnTJcze4t0/jmSa1RnBItsVqy
 8PuS8EITb/UDr379c6BZWGd5loXLvzgTdVb21LJ8nHKqdjMgQ1lY2g4emL4IwG4ovWHIX6wOLyJ
 Dcpzg8ZdoylcZ5blZL/8xlBNgSG+4cEStzOPWpAO4LMdBdvDKD7GcMT/8lJ9lyvuKNHdNjS6WE0
 dhWqTYZs/WZKyilEQibXI5pWJC8wIvKVsB5lixbohjjI4tVbeGDbgkq9avj1OebUZybsn0CDIsi
 LBzIwFkNEx8r9c5KrZspuj49+nKaN/xRAdKPOqmYxa4HqHBBiHFdSSzM65nhGc2OGTdaf3C6nws
 jsYyGs6W3MkTVhNvljw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA3MDA1MSBTYWx0ZWRfX2o35ZEtu7cGr
 uZrFrvZSowMHO55Vzrdj1d1x1LtcPY0so9GnOvDP++n1BTH315GmEZjEeCavnw8FJf20NofweSo
 xGqcy+FWAnCOfLOVVdclmp0K72QcJH4=
X-Proofpoint-GUID: Ns4NXAchEILll1pmsQH0XEx6U1dkrV-D
X-Proofpoint-ORIG-GUID: Ns4NXAchEILll1pmsQH0XEx6U1dkrV-D
X-Authority-Analysis: v=2.4 cv=HN7z0Itv c=1 sm=1 tr=0 ts=6a4c917f cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=S2spThItiBpve86ZF9EA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-07_01,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 adultscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607070051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_224120_122524_8641E284 
X-CRM114-Status: GOOD (  11.62  )
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


On 7/1/2026 1:00 AM, Bjorn Helgaas wrote:
> On Wed, Jul 01, 2026 at 12:32:50AM +0530, Sushrut Shree Trivedi wrote:
>> Add a node for the TC9563 PCIe switch connected to PCIe. The switch
>> has three downstream ports.Two embedded Ethernet devices are present
>> on one of the downstream ports. All the ports present in the
>> node represent the downstream ports and embedded endpoints.
>>
>> Power to the TC9563 is supplied through two LDO regulators, which
>> are on by default and are added as fixed regulators. TC9563 can be
>> configured through I2C.
> s/ports.Two/ports. Two/
>
> Possibly subject doesn't need two uses of "PCIe".

ACK'd.

Sushrut


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
