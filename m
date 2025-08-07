Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DA49C87FD2
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 18:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+TWkN+QP7R62lu7w3n4WvuFZoyfRTZmQPARZEAakaU=; b=CjVaV6bRAl8enY
	Wd34wSpN8HniD/cxjv8Rb1C7XjakKxIvsOvbADJWtv3K6lKz32P/LTn3W45ewTdsrRWwngp12ONxU
	ijGHWCGcDLi4jKzg32ry2SF833qbFkR4pkW7zYtnK92KC1NXjLclUuTJJNwi3/+kVCoKBnfCvrMkm
	5QsVgwDqk8szw6PHvsfwYRNF+VeLRAmpCKygefH+5buHiarWR/FJyBNMZDh1k3D9z5c+2GRP2D9/Z
	x5I2l8GA02D3OG3ZAPbTIPXYZpxtr+jY7oh1v2y7xuKjQDYVbMS5KL0Xs9W1qvIz6HtSS5Bk7ePeA
	YPeXPFeIL+GuhvJCooEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk57r-00000001JYN-32Og;
	Thu, 07 Aug 2025 18:14:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk56B-00000001JON-0dN6
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 18:12:20 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 577I8jl2020477;
	Thu, 7 Aug 2025 18:12:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RUPFuDurNcU5UoOOsQcIR6j0Wk6MQdcDGgVZKlKzfuw=; b=b7K8qC/NNE7i2zYP
	KGPPiFtpBHWHKSEOx0fqjQLbMMeq6oEvuGL2bO/HyaApSAbGwBwDbvh7kT568A28
	l8u7bmCIAlVFGLdBqIiMY6GBpECz3Pi8kQgufpsaT/EAcSLt3XDGByUcYZ0h1bXV
	cGGQDqpF2mm7Kc60mfLohGyFQodxcUHUBaE1q5OcXM8rRjRj3nj18Go8xy/30Hyt
	bItrxwi4fFc17jZmJ6EfJOpm3U0v8Et/OMkYviLXoN6fRopItLE5/P50P5Zw70Qq
	n0pRqRCQFkQdz3R+vbSQhpYwvqqkfyd8M20oQtWMITZHfgCa17PFhvxBMcjdwGkS
	QFWhRA==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpy8f8wn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 07 Aug 2025 18:12:10 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 577I9c0B017557
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 7 Aug 2025 18:09:38 GMT
Received: from [10.216.57.148] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Thu, 7 Aug
 2025 11:09:32 -0700
Message-ID: <faadad49-9fa6-4f76-9162-d6f19974ad49@quicinc.com>
Date: Thu, 7 Aug 2025 23:39:29 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 4/4] phy: qcom-qmp-ufs: read max-microamp values from
 device tree
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Mark Brown
	<broonie@kernel.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <mani@kernel.org>,
        <conor+dt@kernel.org>, <bvanassche@acm.org>, <andersson@kernel.org>,
        <neil.armstrong@linaro.org>, <dmitry.baryshkov@oss.qualcomm.com>,
        <konradybcio@kernel.org>, <krzk+dt@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-5-quic_nitirawa@quicinc.com>
 <f368b6da-1aa3-4b8e-9106-3c29d4ab5c5e@oss.qualcomm.com>
 <fe2bc07c-8fe9-47fd-bcd7-c2f0ebbd596f@sirena.org.uk>
 <aed1de56-fafe-4ccc-b542-69400b574def@oss.qualcomm.com>
 <acf89420-743b-4178-ac05-d4ca492bfee3@sirena.org.uk>
 <599b8a4b-324a-4543-ba27-0451f05c3dfd@quicinc.com>
 <3aa82f65-4812-4bf0-9323-96f40824a004@sirena.org.uk>
 <8c7f8cfc-2090-449e-b6ec-688a0021bac4@oss.qualcomm.com>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <8c7f8cfc-2090-449e-b6ec-688a0021bac4@oss.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: iwrIEPwi4ki_J7zqiXwvK_q13RnAwWha
X-Proofpoint-ORIG-GUID: iwrIEPwi4ki_J7zqiXwvK_q13RnAwWha
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX+neVPzguomz1
 arvwZyTBUn6e8f8MkIOTgYhVfBIWsS+kCgEZmMoogbWDlGce29bIujLQHLYfmhVOZ1OKiAO5Lcc
 q7qCYiydqr3xNdt4xo/TMQ42VtbjFhQMH7omML3YthFwuR5xRr+4vw6gI7q6hrzTA8loXppro9y
 Wl0v5ULI4G7XfV9VW7Q2RbhGjIhUENydnSwKbZyW8Zz0FSrKLRIp+Fb8Var6tC6BiLBNpNvFCEY
 jSrVE0zstzfU06t8gDZGdqyz1hbpTqoL6rA+JGXq1pgbtcmreUjmEVtapzma38CnR0bJ7koAqVN
 pT+qURIAvRX+TR5mtKpp8lq+19uz4AW5L7XsWNZHLdAL44jZpptaT5h17f5X1m4N7fdvqzkvgPY
 r2wkhBq/
X-Authority-Analysis: v=2.4 cv=GrlC+l1C c=1 sm=1 tr=0 ts=6894ec7a cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8
 a=KKAkSRfTAAAA:8 a=eogAV7dI_pG_N5qXJEUA:9 a=QEXdDO2ut3YA:10
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-07_04,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 phishscore=0 adultscore=0 bulkscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_111219_203161_5359E95D 
X-CRM114-Status: GOOD (  29.30  )
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



On 8/7/2025 11:13 PM, Konrad Dybcio wrote:
> On 8/7/25 7:26 PM, Mark Brown wrote:
>> On Thu, Aug 07, 2025 at 09:12:53PM +0530, Nitin Rawat wrote:
>>> On 8/7/2025 7:14 PM, Mark Brown wrote:
>>
>>>>> The intended use is to set the load requirement and then only en/disable
>>>>> the consumer, so that the current load is updated in core (like in the
>>>>> kerneldoc of _regulator_handle_consumer_enable())
>>
>>>>> My question was about moving the custom parsing of
>>>>> $supplyname-max-micromap introduced in this patch into the regulator
>>>>> core, as this seems like a rather common problem.
>>
>>>> Wait, is this supposed to be some new property that you want to
>>>> standardise?  I didn't see a proposal for that, it's not something that
>>>> currently exists - the only standard properties that currently exist are
>>>> for the regulator as a whole.
>>
>>> The UFS QMP PHY driver is not the first client to use regulator_set_load or
>>> alternatively set load requirements and invoke enable/disable or
>>> alternatively
>>
>> The issue isn't using regulator_set_load(), that's perfectly fine and
>> expected.  The issue is either reading the value to use from the
>> constraint information (which is just buggy) or adding a generic
>> property for this (which I'm not convinced is a good idea, I'd expect a
>> large propoprtion of drivers should just know what their requirements
>> are and that a generic property would just get abused).
>>
>>> These drivers also define corresponding binding properties, as seen in the
>>> UFS instances documented here:
>>
>>> UFS Common DT Binding ((link - https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/ufs/ufs-common.yaml?h=next-20250807)
>>
>> Note that that's specifying OPPs which is different...
> 
> The microamp properties are in the top-level, not under OPP if
> that's what you meant

Thanks for pointing that out, Konrad


> 
> Or are you perhaps suggesting that any device requiring explicit
> current requirement settings, should do so through an OPP table
> (perhaps a degenerated one with just a single entry detailling
> the single requirement most of the time)?
> 
>>> There was a previous effort to introduce similar properties
>>> (vdda-phy-max-microamp and vdda-pll-max-microamp) in the device tree
>>> bindings.
>>> Link - (link- https://patchwork.kernel.org/project/linux-arm-msm/patch/20220418205509.1102109-3-bhupesh.sharma@linaro.org/#24820481)
>>
>> That patch also fails to supply any rationale for making this board
>> specific or generally putting them in the DT, AFAICT it's one of these
>> things just pulled out of the vendor tree without really thinking about
>> it.  The changelog just says the properties are in downstream DTs.
>>
>>> Currently, the regulator framework does support automatic aggregation of
>>> load requests from multiple client drivers. Therefore, it is reasonable and
>>> necessary for each client to individually communicate its expected runtime
>>> load to the regulator framework to put the regulators in current
>>> operation mode.
>>
>> That doesn't mean that it's a good idea to put that information in the
>> DT, nor if it is sensible to put in DT does it mean that it's a good
>> idea to define a generic property that applies to all regulator
>> consumers which is what I now think Konrad is proposing.
> 
> Yeah, that's what I had in mind
> 
> I was never able to get a reliable source for those numbers myselfe
> either.. At least some of them are prooooobably? chosen based on the
> used regulator type, to ensure it's always in HPM..
> 
> That said, our drivers cover a wide variety of hardware, built on a
> wide variety of process nodes, with different configurations, etc.,
> so it's either polluting the DT, or polluting the driver with
> per-compatible hardcoded data (and additional compatibles because
> fallbacks wouldn't work most of the time)

I missed to read this before replying to my last reply.
Thanks for the explaining this. I too had mention similar thing in reply 
to mark's query in my last reply.



> 
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
