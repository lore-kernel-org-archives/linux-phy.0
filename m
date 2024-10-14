Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72CFBCFC501
	for <linux-phy@archiver.kernel.org>; Mon, 14 Oct 2024 07:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFdTX8AmyCl1D22f3ol1jUZfmADI74OZimz0n3VLQ9o=; b=4y2Xpy4iKnEW4s
	e4IiaHp3WalFsCluSgpcXtivAsVL7BlKnWwwfZdKI/VZawgr/hYthqoHhj8S6caT8+5qv+zxu1z3B
	UpUqIgUCHBC5BlA0OTW5xxhaEFP5SRc/A7uz4IzpPSfR5qgHlem1hZfSWe6PAro+WUttMLrXOz0i2
	j5cfgCU72zGws4MwHq7w4Z6wy8+8xthC6uMym5xVoaboqQw0UwEy0zyxxSnfZN19hXSa3oHavZC9a
	ZSeE4GzJRrUeonRS/vaffbsnakBJzmunZy08ARLFqjA46vMcwF5vT7GmLmPxcarkKjfzy/7aRs/4F
	8BuqqB8drydp34oZteig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Fz9-00000004B6c-04Ot;
	Mon, 14 Oct 2024 07:59:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0FrH-000000048nf-2UCi
	for linux-phy@lists.infradead.org;
	Mon, 14 Oct 2024 07:51:18 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49DNdoLP005267;
	Mon, 14 Oct 2024 07:51:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bZoC//fj3Iku0eMTHN9r0vcUQXgeGd56zY8cVePVZFY=; b=V1doFuVT4jA3fceZ
	H4a5h9sEpaXuKE53ZJsgTh2+OpIxGgZlzNUS6DKinVEiVT5hGs7FftlMyCJdhqeI
	ReDn/ytBRUZgiqV/cenqapQ9zhhYaEzf+p44qSwOs0y8ql4xC9sGkXl39ZXshHNF
	FVjEBvRBK/XNGRcxbiZ6+kJgwrHULmxdwMFSZzB9IaeblfRpDEY4PGOwCNKpTctr
	D6AQ9NLTlI7VNz2J4cicLkqlWv/+7c630AM81K4I1O7uAYkY3LPz4EzlFBbQnPQy
	cwPAiQjeZZCauMsup8PawKdw47rQu6DKJlUmKDGFQ86UT2R2XfqCeOum+MthQCsl
	Asdeeg==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 427hg73med-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Oct 2024 07:51:06 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49E7p5Zq020221
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Oct 2024 07:51:05 GMT
Received: from [10.239.29.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 14 Oct
 2024 00:51:00 -0700
Message-ID: <96816abb-4e0d-4c60-8ae6-b5a5cd796e99@quicinc.com>
Date: Mon, 14 Oct 2024 15:50:53 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/8] dt-bindings: PCI: qcom,pcie-x1e80100: Add 'global'
 interrupt
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <andersson@kernel.org>, <konradybcio@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <abel.vesa@linaro.org>, <quic_msarkar@quicinc.com>,
        <quic_devipriy@quicinc.com>, <dmitry.baryshkov@linaro.org>,
        <kw@linux.com>, <lpieralisi@kernel.org>, <neil.armstrong@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-clk@vger.kernel.org>
References: <20241011104142.1181773-1-quic_qianyu@quicinc.com>
 <20241011104142.1181773-4-quic_qianyu@quicinc.com>
 <eyxkgcmgv5mejjifzsevkzm2yqdknilizrvhwryd745pkfalgk@kau4lq4cd7g3>
 <4802B12B-BAC1-4E99-BDFE-A2340F4A8F24@linaro.org>
 <3d1d0822-da66-44c8-a328-69804210123c@kernel.org>
 <65B34B14-76C3-491D-8A58-6D0887889018@linaro.org>
 <df6379c6-662a-4b35-a919-13c695a869c7@kernel.org>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <df6379c6-662a-4b35-a919-13c695a869c7@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: c8DC4QGZl6mybIcNqaHlS2FPJub-re1X
X-Proofpoint-GUID: c8DC4QGZl6mybIcNqaHlS2FPJub-re1X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=909
 lowpriorityscore=0 spamscore=0 adultscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 phishscore=0 malwarescore=0 impostorscore=0
 mlxscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410140056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_005115_825814_38E0E0CB 
X-CRM114-Status: GOOD (  22.20  )
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


On 10/12/2024 12:06 AM, Krzysztof Kozlowski wrote:
> On 11/10/2024 17:51, Manivannan Sadhasivam wrote:
>>
>> On October 11, 2024 9:14:31 PM GMT+05:30, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>> On 11/10/2024 17:42, Manivannan Sadhasivam wrote:
>>>>
>>>> On October 11, 2024 8:03:58 PM GMT+05:30, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>>>> On Fri, Oct 11, 2024 at 03:41:37AM -0700, Qiang Yu wrote:
>>>>>> Document 'global' SPI interrupt along with the existing MSI interrupts so
>>>>>> that QCOM PCIe RC driver can make use of it to get events such as PCIe
>>>>>> link specific events, safety events, etc.
>>>>> Describe the hardware, not what the driver will do.
>>>>>
>>>>>> Though adding a new interrupt will break the ABI, it is required to
>>>>>> accurately describe the hardware.
>>>>> That's poor reason. Hardware was described and missing optional piece
>>>>> (because according to your description above everything was working
>>>>> fine) is not needed to break ABI.
>>>>>
>>>> Hardware was described but not completely. 'global' IRQ let's the controller driver to handle PCIe link specific events like Link up, Link down etc... They improve user experience like the driver can use those interrupts to start bus enumeration on its own. So breaking the ABI for good in this case.
>>>>
>>>>> Sorry, if your driver changes the ABI for this poor reason.
>>>>>
>>>> Is the above reasoning sufficient?
>>> I tried to look for corresponding driver change, but could not, so maybe
>>> there is no ABI break in the first place.
>> Here it is:
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=4581403f67929d02c197cb187c4e1e811c9e762a
>>
>>   Above explanation is good, but
>>> still feels like improvement and device could work without global clock.
> So there is no ABI break in the first place... Commit is misleading.
OK, will remove the description about ABI break in commit message. But may
I know in which case ABI will be broken by adding an interrupt in bingdings
and what ABI will be broken?
>
>> It is certainly an improvement but provides a nice user experience as the devices will be enumerated when they get plugged into the slot (like hotplug). Otherwise, users have to rescan the bus every time they plug a device. Also when the device gets removed, driver could retrain the link if link went to a bad state. Otherwise, link will remain in the broken state requiring users to unload/load the driver again.
> OK

Thanks Mani for your detailed explaination. Can I reword commit message
like this:

Qcom PCIe RC controllers are capable of generating 'global' SPI interrupt
to the host CPU. This interrupt can be used by the device driver to handle
PCIe link specific events such as Link up and Link down, which give the
driver a chance to start bus enumeration on its own when link is up and
initiate link training if link went to a bad state. This provides a nice
user experience.

Hence, document it in the binding along with the existing MSI interrupts.

Thanks,
Qiang
>
> Best regards,
> Krzysztof
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
