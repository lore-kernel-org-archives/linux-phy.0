Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52256C43458
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 08:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtWKD6r6UzwefJGWupodgJkFvtUl/yrY3T6jjDRBljo=; b=3SPvelcE2E4mCw
	xq3hFlvbE2W6IiXWlPyd+NCE6iLGvYgY8QZEAxt6/0Y1MDZd8ddv0oKTk18vtfqSlCRrX5r80LP8N
	/rFAESufivgx0I4NK2/z6RfnJKUEDG1WHbu49F6B3SneusAtjO3O4mZ3Lo1jj6UqmAEjbroH+VwQn
	CMIrlCDYKjAay6ZHtrRmDZOAAsKKluLXD6Fy8yUvtrVtyduO0Isiv+FjCiF3sGQs4Mo3ceeQdqKKL
	l8vyAx9wK8lPLOEHTxNRVUw2Wi7ExrmC6JpRSa7QOlsA+759uGZsV5x/vye8ycfNiyw2VqV+ptPst
	RmNDHQnPM4454LTH2MbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi6qT-00000004U9F-0NZq;
	Fri, 10 Jul 2026 08:44:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi6qQ-00000004U8V-2OxR
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 08:44:27 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66A7dWtq4194181
	for <linux-phy@lists.infradead.org>; Fri, 10 Jul 2026 08:44:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i1zQXih8SnCdGds/JmDRvepmzcgGZh61T0foqMxPgn4=; b=A8Beg7rcajSpzwuI
	B2GtGnLgslhyReSllSpYpv/4Jaxa+PoMngOHhialNVYOXlDzRseChMeMnrM6S6e9
	fBor8VEPyfpXfYoLCIo/aEOHK1H/8W5usNi6ucrvlwyG/+EQB4Ndo08/OlM10X8k
	52PvSA61xPWcgT6I1LhZmw63InMeSDrwgS6bRHUmpspyhUCj0ILP3CM/z4+E/YAt
	L5IViaNpmAvkxarxPRsxus/QS5W0YrXzaTmMnPFVeT9F7aBTSHQDiqGdkp1Ocrcy
	YtLDSwmb6irZMHavDmu18FWINSDjDgXPZFde812FHtBuBR7lxRoU1qCzk3pSCa05
	3khILQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4faf24udqf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 10 Jul 2026 08:44:25 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-92e661ce1dcso21413585a.0
        for <linux-phy@lists.infradead.org>; Fri, 10 Jul 2026 01:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783673065; x=1784277865; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=i1zQXih8SnCdGds/JmDRvepmzcgGZh61T0foqMxPgn4=;
        b=Re+Y8PgsAs9DAyrKzD+yq9iL4jQAanqXu0h2/ysUeweUH/wLqSR6BqrJRO6Ghm/IEZ
         5FPBE1y14dV/py0o6ZADY57QTRRLrEZffVtkk0kLL1J2VCLSr2x+q2ORJ83MfoUsCURQ
         lM58yAoHvDCm/Dg8pcjVNbxdHuunVWXIGjLgvKz0Hfo0FoHLjoyybV7XMI2NYUBygjeN
         V7yJTptoz/c1JmgLcy2ANz99botF+HjsvFj7Qk10PYozuxZRLgjVn3rDrlWx0qx5tDQB
         PGtLqaDbrdFqMb6nFj1MzYkxR/jNKyTEPXrQErhtxSPYksOsA03Q26xFj2DPR6AqtnEQ
         Weog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783673065; x=1784277865;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=i1zQXih8SnCdGds/JmDRvepmzcgGZh61T0foqMxPgn4=;
        b=Dgab5m9lM3qpaZLf3ylgAmxphccRw//VKvWrzBvEH1dCNDXcYyVS0lhqpx+HVPdmyB
         hd/nqtA5cugHfVsRPrfkRC7beaWguoMszPexy1PmjOWGs5OuPpeY2W7x032ok7D/+VFB
         jYK2q9bX4l95lQqpinxVcevB3JS7Ror7hPGEDqsAxE+XE7wwmyHwA+Vv3vzesUKoqDo0
         9hINsDm9Q6OUMu7dq8dZjqlko+M/5OsmzTd4idcLzWn6G6NlgZ8kenCVgfk615ihFd1T
         JNbwu2/QInaH9ykMiwnOLFOTjPybeweTk9Egk/VMMQk/7Pev6bvMhog04W3b7RoVx4X3
         259A==
X-Forwarded-Encrypted: i=1; AHgh+Ro5Awa2vs7imiH5G2AChG80CbEK+a/oU4qvMXZF7AcF/xpV8/7qi+eJzxsmlyctCwom1M5RnZEm5Us=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8ChDVpIIAeN6gS/7rRsdpws/PAzZ08lBTsHYBDKK7XgocK4r4
	Ci3Tq7MIh3ANwWAn0hrMWsU2W4957xsOXAhGvvfBvRWRKy2VqF1ogT7/J0dZTw88EbvjRcTjd64
	m3+oEt3BO77bIU/UUOMS447VVeG5zInI1yTtmvrRkdvJWj4Ejf4EY1+7caPY20AYT6uSU
X-Gm-Gg: AfdE7cnTO6pXcM7iuiTSNdAbL9rdmOJKJmKqDExhY3BYiNSCHWzJURRRMiX8057sPuD
	qYJ6SQg0OB4fAc8RqdmwWODFkO6DHxZ9e52diFp48+uPWQBiFqsJnVKWZUAxE6tZdelDFYZb6e2
	XUoY9C2hfI5dI/OQZ6EzfFz/ntnOxl/MAKC2uvlrYc5jzBGL9Lh2x7QU2q/tk6b/oRl0hViFxji
	fvNHXzWonzt5glRKL1i4ieqcQ7/Yy6rFk2qGLDyA7dq44/DeDXnXSKGWCHDXNXekJ5b5Xf8H5EN
	i+X+FLAvoJkFL5llTWocCGeJN4Rd65mqU2Hdr+2Pym0U5UYlYnhq/LnZK/4PnaJ7IMQUnbyEWvm
	4lAJghL9BunMNQqW96X0h3scfpBt1jl5Gb6Y=
X-Received: by 2002:a05:620a:454a:b0:915:7a64:cb68 with SMTP id af79cd13be357-92ed7779c70mr620220285a.2.1783673064728;
        Fri, 10 Jul 2026 01:44:24 -0700 (PDT)
X-Received: by 2002:a05:620a:454a:b0:915:7a64:cb68 with SMTP id af79cd13be357-92ed7779c70mr620218085a.2.1783673064268;
        Fri, 10 Jul 2026 01:44:24 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15ad694736sm583711566b.0.2026.07.10.01.44.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2026 01:44:23 -0700 (PDT)
Message-ID: <6802dc29-d783-40df-bbb8-8b2dbd94be29@oss.qualcomm.com>
Date: Fri, 10 Jul 2026 10:44:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v4 9/9] arm64: dts: qcom: glymur: Wire PCIe3a/3b to
 shared Gen5x8 PHY
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
 <20260518-link_mode_0519-v4-9-269cd73cc5d1@oss.qualcomm.com>
 <ab21f1c7-f861-4961-9287-84cae280d8c1@oss.qualcomm.com>
 <akH9LKxqhciznM2x@hu-qianyu-lv.qualcomm.com>
 <ae2e1bdd-59b0-4ff7-bd6f-ddd57267c2d9@oss.qualcomm.com>
 <alBWrK8X7fW+UC7L@hu-qianyu-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <alBWrK8X7fW+UC7L@hu-qianyu-lv.qualcomm.com>
X-Proofpoint-GUID: 17OT96jEla_7oLdJleKcXmqXZrJdRh4H
X-Proofpoint-ORIG-GUID: 17OT96jEla_7oLdJleKcXmqXZrJdRh4H
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEwMDA4NCBTYWx0ZWRfX/QN34Z7jYyRI
 Zv1TmIPFWHwhOQa4BCkgUeBqta3M4JW4PUWz+ATeZz6vkSY28doBGlvYn34u0EN1rg15Nyx+161
 KXM5ICkiuVysAWPy58K4hdMImFYf0C4=
X-Authority-Analysis: v=2.4 cv=daKwG3Xe c=1 sm=1 tr=0 ts=6a50b0e9 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=TLRsrNMnCJaxhW4YLJwA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEwMDA4NCBTYWx0ZWRfXyiavCJV6hVR+
 Jlu740P55pXJzXiHSuD7E4kzI35qv+MMb7dl/hvuf3GM96l/GBr6r6T2ZzP488JZefSHtPxl9AQ
 qxdKLOZrY8+TFHT5/OEmtHQ9RaY4eR+8a4XHxr4GuCawtcBocNuENNxSsWIxXjsVn6RPzZhTl75
 D307/1tGGFcnhrhfV1x4nDzU8nNs4bew6adDzDYUectnTe3fO6u21dt0gUhveK+f7Kbij+2TSmm
 XhqMfSR1pGUL11363lnRRxvheqvWXlsU/OalqO1lqnZib6lpPPL2Y0ZPMYgn2t5qOTBBujpDlyg
 XOKMFp0p0MXqsshwlwevT0wbpWCZmteRftO5hHzaV3eGQ2OhFYB+tXBq5pb1ppUsEysouV+7LDz
 A7OyYWc9SfeUgEQs+WFzvCcxnOeMpC08/dTEYEkFKvmD8dSD/lzD2VkICGT29aA77WoBXpLTMM7
 ZwsqAUK+0QNbYd2mKqQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-10_02,2026-07-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 adultscore=0 suspectscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607100084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_014426_754205_DDE6F48C 
X-CRM114-Status: GOOD (  17.83  )
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

On 7/10/26 4:19 AM, Qiang Yu wrote:
> On Mon, Jun 29, 2026 at 11:20:07AM +0200, Konrad Dybcio wrote:
>> On 6/29/26 7:05 AM, Qiang Yu wrote:
>>> On Wed, Jun 17, 2026 at 01:19:49PM +0200, Konrad Dybcio wrote:
>>>> On 5/19/26 7:47 AM, Qiang Yu wrote:
>>>>> Glymur PCIe3 uses a single shared Gen5x8 QMP PHY block. Model PCIe3a and
>>>>> PCIe3b as consumers of that shared PHY provider instead of separate PHY
>>>>> nodes.
>>>>>
>>>>> Update the DTS wiring to:
>>>>> - point GCC PCIe3A/3B pipe parents to the shared PHY clock outputs
>>>>> - add PCIe3a controller node and route PCIe3a/PCIe3b port phys to
>>>>>   &pcie3_phy using two-cell PHY arguments
>>>>> - configure the shared PHY node with link-mode and dual pipe outputs
>>>>>
>>>>> Use QMP_PCIE_GLYMUR_MODE_* dt-binding macros for mode selection.
>>>>>
>>>>> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
>>>>> ---
>>>>
>>>> [...]
>>>>
>>>>> +		pcie3a: pci@1c10000 {
>>>>> +			device_type = "pci";
>>>>> +			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";
>>>>> +			reg = <0x0 0x01c10000 0x0 0x3000>,
>>>>> +			      <0x0 0x70000000 0x0 0xf20>,
>>>>> +			      <0x0 0x70000f40 0x0 0xa8>,
>>>>> +			      <0x0 0x70001000 0x0 0x4000>,
>>>>> +			      <0x0 0x70100000 0x0 0x100000>,
>>>>> +			      <0x0 0x01c13000 0x0 0x1000>;
>>>>> +			reg-names = "parf",
>>>>> +				    "dbi",
>>>>> +				    "elbi",
>>>>> +				    "atu",
>>>>> +				    "config",
>>>>> +				    "mhi";
>>>>> +			#address-cells = <3>;
>>>>> +			#size-cells = <2>;
>>>>> +			ranges = <0x01000000 0x0 0x00000000 0x0 0x70200000 0x0 0x100000>,
>>>>> +				 <0x02000000 0x0 0x70000000 0x0 0x70300000 0x0 0x3d00000>,
>>>>> +				 <0x03000000 0x7 0x00000000 0x7 0x00000000 0x0 0x40000000>,
>>>>> +				 <0x43000000 0x70 0x00000000 0x70 0x00000000 0x10 0x00000000>;
>>>>> +
>>>>> +			bus-range = <0 0xff>;
>>>>> +
>>>>> +			dma-coherent;
>>>>> +
>>>>> +			linux,pci-domain = <3>;
>>>>> +			num-lanes = <8>;
>>>>
>>>> Is it fine to keep num-lanes 8 here even for configurations with
>>>> bifurcated PHY?
>>>>
>>>> I would assume so, given essentially this is a x8 host, whose 4
>>>> lanes may simply be effectively NC 
>>>>
>>> Actually, on existing platforms, the PCIe3a and PCIe3b controllers are
>>> never enabled at the same time. When PCIe3a is exposed, it is always in an
>>> x8 slot. But if we have a x4+x4 platform in future, we can simply override
>>> num-lanes to 4 in the board.dts.
>>
>> My question is whether that will be necessary - if yes, sure, we
>> can do it, but if not, we can conclude on this early and not have
>> to fight over it in a couple months
>>
> I think we do need to override it in that case. If both PCIe3a and PCIe3b
> are enabled in x4+x4 mode but PCIe3a keeps num-lanes = <8>, userspace
> will see an 8-lane slot. If an x8-capable EP is connected to that slot,
> both ends will advertise x8 support, but the link is up at x4. That looks
> like a genuine bug from the user's point of view.

Do we know what's advertised on x86 PCs with bifurcated lanes?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
