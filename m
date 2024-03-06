Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59811C5475B
	for <linux-phy@archiver.kernel.org>; Wed,  6 Mar 2024 15:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ptpF3dOIL+N1TQGH3jIGjMwQUFJWo+/mJqreszb9NQ=; b=SS5g6YP6aXFo+R
	ZpVsNS6UQlid3vw7YPnIZbfHxrlQhtl0mJ5Gu45Kn0wwDZFCgqqnlqzHR1vz4K/lLcPuIee+xyw0A
	NSB++pgcLjb+DNm9372XCXopKqYcXhZvxRF62eLvIGjtgCMJjNLWqb03vxBrwWYGblrakV02MhJ3y
	9OQu2j0GzvAgomivVx46ovP1WOvSZQ/AOGZgaF4zJrV3wQ08ENn6MtysJUVUsdG/dR+hzNBlyO1Xd
	4b1oMB2h1bXguY8YI8wVf9Hh5JoMLj06HIlk3R8DN53Z04ehgUM4+8XdM7GA1RXGZruVvZx3w9QSk
	brxFat4NdyPWuXX8RHOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhtbg-00000000rsM-06Y9;
	Wed, 06 Mar 2024 15:55:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhtbd-00000000rqM-0tNI
	for linux-phy@lists.infradead.org;
	Wed, 06 Mar 2024 15:54:59 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 426BsXjc032484;
	Wed, 6 Mar 2024 15:54:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=dO3z+fak+AKlPiPNffpMF1kG89eMs/8ypWV3I63/l6M=; b=dM
	KON2kLTydlE45Z3SuGdiiY2rHup7eZ+FqR+KFbXIoRJlrn8nVsCZuOylQlA9VpPj
	W0JLl06rVPp+MiPDMgUqZ+dBWVVmF0I11zt/2+gAKS4aVdgTTQ6ShmOv2vh8ce6/
	O36Dht786dJhW4nYyvCSSKDcnGeUZvaVfAAUnJ8t6IR7cBUxL3WymMNMlMLaBNag
	JzSPHWK1Zio+04n49LA1Ykpo1yctanvftXtekIX27BJS1hekIldLp5rWC1A5G13g
	N2ZVcvsgugPCt21yr/SPpfpWxJXYL1JQT6wLLZO//HJ0dd5yu48OLksD79WYVrIA
	uAeNgrxG3nftakaPg4Fg==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wpjqf18du-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 06 Mar 2024 15:54:50 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 426FsnO1020776
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 6 Mar 2024 15:54:49 GMT
Received: from [10.216.51.173] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Wed, 6 Mar
 2024 07:54:42 -0800
Message-ID: <51a21209-82a6-431e-bff8-9fad5142dd42@quicinc.com>
Date: Wed, 6 Mar 2024 21:24:39 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 3/3] arm64: dts: qcom: sa8775p-ride: Enable support for
 firmware managed resources
Content-Language: en-US
To: Bjorn Andersson <andersson@kernel.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        <konrad.dybcio@linaro.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <robh@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <gregkh@linuxfoundation.org>,
        <quic_wcheng@quicinc.com>, <Thinh.Nguyen@synopsys.com>,
        <p.zabel@pengutronix.de>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <quic_psodagud@quicinc.com>,
        <quic_nkela@quicinc.com>, <manivannan.sadhasivam@linaro.org>,
        <ulf.hansson@linaro.org>, <sudeep.holla@arm.com>,
        <quic_shazhuss@quicinc.com>
References: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
 <1709657858-8563-4-git-send-email-quic_sriramd@quicinc.com>
 <b9142874-0afb-40a6-9008-b33bd8f56840@linaro.org>
 <399555e8-d8fa-46b7-8b15-3d3a4a30809b@quicinc.com>
 <qbgyspabmohgwenj3mbpiebyll2jlgvbq5v5fm56mo2ixwgnee@nyjzjrspxrq3>
From: Sriram Dash <quic_sriramd@quicinc.com>
In-Reply-To: <qbgyspabmohgwenj3mbpiebyll2jlgvbq5v5fm56mo2ixwgnee@nyjzjrspxrq3>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: zHvvQIezNU82e0pBv1kv7Fbp2cLHcEp6
X-Proofpoint-ORIG-GUID: zHvvQIezNU82e0pBv1kv7Fbp2cLHcEp6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-06_10,2024-03-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 mlxscore=0
 clxscore=1015 phishscore=0 malwarescore=0 bulkscore=0 impostorscore=0
 mlxlogscore=999 priorityscore=1501 lowpriorityscore=0 adultscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2402120000 definitions=main-2403060127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240306_075457_436920_0B07AA4E 
X-CRM114-Status: GOOD (  19.44  )
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

On 3/6/2024 12:17 AM, Bjorn Andersson wrote:
> On Tue, Mar 05, 2024 at 11:33:54PM +0530, Sriram Dash wrote:
>> On 3/5/2024 10:38 PM, Krzysztof Kozlowski wrote:
>>> On 05/03/2024 17:57, Sriram Dash wrote:
>>>> Establish the channel and domain mapping for the power domains to connect
>>>> with firmware, enabling the firmware to handle the assigned resources.
>>>> Since these delegated resources will remain invisible to the operating
>>>> system, ensure that any references to them are removed.
>>>>
>>>> Signed-off-by: Sriram Dash <quic_sriramd@quicinc.com>
>>>> ---
>>>>    arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 96 +++++++++++++++++++++++++------
>>>>    1 file changed, 77 insertions(+), 19 deletions(-)
>>>
>>> Do not mix DTS patches with submissions to netdev or USB.
>>>
>>> Please put it inside your internal guides, so you will not be repeating
>>> this over and over.
>>>
>>
>> Sure. Will take care. Thanks.
>>
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
>>>> index 26ad05b..b6c9cac 100644
>>>> --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
>>>> +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
>>>> @@ -764,8 +764,18 @@
>>>>    };
>>>>    &usb_0 {
>>>> -	pinctrl-names = "default";
>>>> -	pinctrl-0 = <&usb0_en_state>;
>>>> +	/delete-property/ clocks;
>>>> +	/delete-property/ clock-names;
>>>> +	/delete-property/ assigned-clocks;
>>>> +	/delete-property/ assigned-clock-rates;
>>>> +	/delete-property/ required-opps;
>>>> +	/delete-property/ resets;
>>>> +	/delete-property/ interconnects;
>>>> +	/delete-property/ interconnect-names;
>>>> +
>>>> +	power-domains = <TODO>, <TODO>;
>>>
>>> This wasn't even tested.
>>>
>>
>> This is tested with the specific power domains in place
>> of <TODO>. SCMI interface is used for the power domains.
>>
> 
> So you tested this on v6.8-rcN, but you're not able to upstream this
> dependency? The code wouldn't compile if this patch is applied, so what
> do you expect that I should do with it?
> 
> Develop on upstream, test on upstream, send code that improves upstream!
> 

Thanks Bjorn.
Sure. I will wait for the scmi based dt support
for SA8775 and then update the patches on top.

> Thank you,
> Bjorn
> 
>>> Best regards,
>>> Krzysztof
>>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
