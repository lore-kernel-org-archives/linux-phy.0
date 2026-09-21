Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 909A6C982E1
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 07:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQIzrIQZXueSURz1zhidU23uMrSxwgFmEs/Q0gTK8h8=; b=I7qv+3TCC+20Be
	ptC13kSHYzhJfL3XYzxhaUCjuu0W5JhcVoOZeRZris5OHTO95MQTh609+vDGG9fyorHflUZaYrS2A
	RvzLrLqQEJQTghGV0UP67ueoxbJTW+90tYHuaCSMyVhu3mEQt2RS0E49XSGI4wYcU0VMSlVcSAX6A
	89WChJYp+BoyTRCtaYgAwuDBeZ1eZtAOxM0cOM7jATq90aA3nKsROvv41wqcaMIdq7ZtIlZfXCbJk
	syrQ/ycBbP47T5bErH6/5oxX2fnjX+BPANfbSdvn5Eh5iGbTRKOjdu1b1dyfNTWhv7GUqpA1b9R93
	cNhTLLENsqBQeOwOqStg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Yaf-00000001F4U-1CIY;
	Mon, 21 Sep 2026 07:37:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8YaZ-00000001F3p-1xDS
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 07:37:24 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68L79p2D3952937
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 07:37:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	H4vkek0/ZbqGdMSZk4suthyJcTIAG7Z7PUDKSg5AbNk=; b=jVZ/bqTmgndhwE0J
	coxsNZ8+mrbKWW8CHCFPd0t+2fILFKxyHNCEub6ZxeOTHlwARyBQ4uOaFygaM2W7
	TicckL2T2tHhyKid3cooofHbUM18EvMktw12QbEOHx0famlhHi25FpgAxNFa7nN2
	malkcqr9k76IsdfGnvSgFbsVU4NwrfCObSs65oP6gxRVz2jvbJLGmfRTgBUXFlqE
	JJvAyLq2tyWluHF5FWp42RvvwVOs0UXml/rDih1aqYlbAQzsod04Uq+LD7ovmF9G
	eRIh8GSF6lyoIkX/Aaje21x+hQj6J+gqevKfospTyywVMcV5D+YbPXFN+mPZTykV
	uqr8AA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gskp9w64n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 07:37:22 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-92e661ce1dcso51777685a.0
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 00:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789976236; x=1790581036; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=H4vkek0/ZbqGdMSZk4suthyJcTIAG7Z7PUDKSg5AbNk=;
        b=OYhwD4QVqSKc/l1csDaWm+bF4YgZFfmGDixqBEBAgcqbIfUg4QHV38x9P0rLHz/fuV
         3ZikXwnV1ftPBiEPhvZLztjgIs3gAMOfeODGdm3g0PMcpnT78Kbd+twNmEP3alkkdZKD
         crSK0P4W4A3iPVf+QGN53Kh+1D/PZ52VAYuOJzXy2inp9q8LW7gtpEs3FdwuG4MzPMmM
         KYZqWAsiwH6T1M1iBzPtfwNlvgRMAOQiKw69wlXPW6J/Vvi5GjSUeXvlwVG90FZHvgWZ
         hqDolfA0i6YHSPsQSOD8aTjYhkj6hQk4Iryzh4FfWGY0Akx2oNKMLsmP7/ZsSzuyqgY5
         DOfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789976236; x=1790581036;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=H4vkek0/ZbqGdMSZk4suthyJcTIAG7Z7PUDKSg5AbNk=;
        b=NI/FljOU2QDBHICSDKyoX3inikfq+gDIWiWC12UQlvumiYXc09CnCuuxQ9t2yQflyi
         awcVmopvGtjlo5isixjzoyPheN7hTSvRIJw53Bo3mVZRgW+YF3PB31TioAVN2KN0WNBj
         R6nx/Bmka1blayc8dBLBlqtus9R99PwlRojHiHHpw8gn6/ejzoF2Eks8uLQm/cqE3npp
         dCvO4L1gw/ASmFjuLLSjZfAvvxRaQwRY7loQrmQ9t5f3f6+i2SwXtm2Lz41q14I/MNAx
         mym1cGVeJZtdrrk7mp1wDO0pbmCbr+U1TEaRW/5KCw3tQjcXbR96lwlf1MEQIYKEodhY
         xajA==
X-Forwarded-Encrypted: i=1; AKwUvBzGGugr0z+vFbGJ+um/D2kQMcY2ArP63KAiGhhhOCr06IQdiPwI1PVfM0E7Scasfz5HU7nA8Bo4HF4=@lists.infradead.org
X-Gm-Message-State: AFuF++ldmBUedH+hKRRZgsHz41yXi0w0muh9dyIr3LnEA5V4nJRwNhnr
	I/T0tx3NY33MLsL51+tproYPVGI5bYRvaviCOsl0w43MamyXzd5/tSSrf1LLmI11CETGHbpJoeo
	IUHAMIO4Oi+b+mtJ5SQe8gnaPGCGqYlThdFshMOuqtXUw4vVUJraVyZou6BWKbMMTleHI19XBFx
	7Y
X-Gm-Gg: AYBFou0R/J4tIqAm+WrLn+xZ2CAJWGGGSu8PXJp2KJmtTGlgkCOf6HxHrWM4eELG5Cv
	yeyxIw5XsSmXaCytUXU5UqyJWnSLSmSuHLNpt3eNBiR+vrkIVOlPVNsi/J8aOKprvSJ7L5z/HCd
	kD0rjONXk6NL/iu6Xuk4ON+ZdXNTm0Mew7CRnun/bseJGbeT1LpbdGpxUDX9BdfODhmH+oPgYA3
	9aID5K6w0PzjnMGJv13XsJNhTb/kaWV9vy1+9kv9QQNUkeFHev8sANjvrAsJE+dQZLSDchlB/9r
	hLPfRbRG046Vu2CQ8nZzkc9xlrzJ0dWx0g43qq9ABDkyPDx8jh0caIMzBptgSwxc0c+YLtNzHGt
	Lgr+WHXDJ2YJ/RWuQG0zpIA==
X-Received: by 2002:a05:620a:6cc9:b0:92e:6485:f640 with SMTP id af79cd13be357-93bf577a07cmr801547385a.4.1789976236107;
        Mon, 21 Sep 2026 00:37:16 -0700 (PDT)
X-Received: by 2002:a05:620a:6cc9:b0:92e:6485:f640 with SMTP id af79cd13be357-93bf577a07cmr801543985a.4.1789976235653;
        Mon, 21 Sep 2026 00:37:15 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2a3573ce12sm262631266b.35.2026.09.21.00.37.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2026 00:37:14 -0700 (PDT)
Message-ID: <dfad8320-5a92-4398-83bd-3e796faa24a1@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 09:37:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/6] Add PCIe support for Qualcomm Nord platform
To: Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, shengchao.guo@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
 <arDPABIQl9wKYVKa@hu-qianyu-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <arDPABIQl9wKYVKa@hu-qianyu-lv.qualcomm.com>
X-Proofpoint-ORIG-GUID: GAOmPCN-VdhZh6UVSZsLBuLux0xmMncY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDEwOCBTYWx0ZWRfXxVWJ8LQXV20l
 GeK+mywhKAG2DLU2TlXnXIDoGGMEZG1I/38qwktijRCm2CAnfSEW5C72WKFUHjGXIbRdUW1nRuh
 ITkqTNPcW6y8xwakH9YYkNGkMXla6jkuaKYJTJv6Y7/ItgW/5So1Ybj4dnOx6QxAZXN8ZKpJeQy
 ckuKKjLiFY5vxr/jhn8pQsvYd06h9TzprMt7/cmPetjNSW4oKoPanpuSHoWeimkZ74bPi41YIBg
 Sb81CBCxNFiyN+GTcWIDvG/i7hJJPMvZ86AqvR0KW1/+RSNz5TZ9VjjrPWZE1irVlAfAmMYEeNw
 VMl1xV1sx9WeGS850yo6n5A2rsyS/nBtbRe/nofeUCq7JyVbC6pTqamdre7GJpXc9TVosulxNzm
 qy63p9tyuFGYfVRq1dSF4jVbGzyEBn94u0eBbO9s7LhUpW0HXqv6PtVy1d8Bcovr1LYTuX8z8mV
 9wXL3ieV98A9RV1gfeQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDEwOCBTYWx0ZWRfX/sB8fabN8R4J
 +qF3KBzF5nglJwJCSjg9V/b6sWqZi9btrYQuvktIsp/bNjnZMn8Fz45/pFhvqUfeVi31SWyxHlP
 gFuU+BNsy2QnI4s1VhTeEwYMBYW8qYI=
X-Authority-Analysis: v=2.4 cv=BKAmP1QG c=1 sm=1 tr=0 ts=6ab0deb2 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=eQCDFL0YdFa3ysEWRUMA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: GAOmPCN-VdhZh6UVSZsLBuLux0xmMncY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 impostorscore=0 spamscore=0
 malwarescore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609210108
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_003723_512551_4BFD444F 
X-CRM114-Status: GOOD (  13.16  )
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

On 9/21/26 8:30 AM, Qiang Yu wrote:
> On Mon, Sep 21, 2026 at 11:07:08AM +0530, Krishna Chaitanya Chundru wrote:
>> This series adds PCIe support for the Qualcomm Nord (SA8797P) platform.
>>
>> Nord has a single Gen5-capable QMP PCIe PHY block split into four
>> independently-clocked and independently-resettable ports (A/B/C/D).
>> Firmware selects the active lane topology at boot via a TCSR
>> configuration register, and the same PHY block can appear as a single
>> x16 port, x8+x8, x8+x4+x4, or x8+x4+x2+x2 depending on that mode. This
>> is similar in spirit to the Glymur multi-PHY support already posted,
>> except Nord's PHY registers are programmed by Linux rather than by
>> firmware, so this series adds the PLL, TXRXZ, PCS and PCS-lane init
>> tables along with the power-up/power-down/soft-reset sequencing needed
>> to bring each port up.
>>
>> The series also documents and wires up the qcom,nord-pcie compatible
>> (reusing the existing SA8775P PCIe controller binding), and adds a
>> CORE_CLK_CGC_DIS/AUX_PWR_DET workaround required to avoid a timing
>> convergence issue in the PCIe power domain.
>>
>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> 
> Tested on Glymur CRD and Glymur QCB, devices can be enumerated.

A test of "this didn't break my completely different board" is
welcome, but looks a little confusing without you saying that
was the intent specifically - unless maybe it wasn't?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
