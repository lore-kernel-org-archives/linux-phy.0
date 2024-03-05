Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B02DC54E41
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 18:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lJ0J9yxw7dCUqDZVw5gXXwA93V77U0m0eWV1IGmy30A=; b=VVQtzazUjoN8My1GzUItzkS5a4
	dXXTxj5pkAKwPA9QvLKbIcM2Xn+PEO/YLs45ohVaYAfvV2MKPwNH1BJo1Y8LQF0uK9gdjyZwb78Q5
	mHdHSTNpny8LJCUwNsSBt/5F9N1iBtDVg2Bo+c8dDcnQG11+puqta2JhhBlihf0htEwXkVC6eX57g
	AJUtADxKnNna6cgtpRLwwy57i73mg0TqfWrHZs4lxGEnCA5EHcJTJbZm2ykW6uHdXrrwrgTjgJw20
	oN32WKQz4KQnvIyp0U+ZaPLxm6ayDEf9MomqsyvdlQdYQ94b6QNT5hvKnQ+dLJ7HYWJl/AhMf6UCb
	vmy9nGXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhZ9B-0000000En0q-46CX;
	Tue, 05 Mar 2024 18:04:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhZ98-0000000Emzu-39Sv
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 18:04:12 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 425E08hZ016953;
	Tue, 5 Mar 2024 18:04:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=nS+/iN+G7XmHl6VDOkJtxXIt3NLLmUUH9/CYdvOJAW0=; b=CK
	EN8sybyvcBJJDspqfTVDQmxqlZsLJbZKh2ins91kOlUGOI0zydCckoaxx90c4bAQ
	y39wSXpGz19UStQ90xRibZqof9gMZIhr0OYZLX0hbdr9BSLOH3OFtuIus1/QGdk/
	LyUpwZQuyjabIDUcuIMVRCQ8SoBL6E/WOK8jgePZcCshxNSh62ecr9HSNTyKj+f3
	BtDcytt2pDQQHbM185JDoOh3GZB342A+LbzJPGZa4YXxVyxUyk9PbSCmHsXybdH0
	tQABHALvCrOsoHYfhauwPDiifqf7fgI+a6mBfi82Qe/cEd3sW2NWEJLBEwf5xaYs
	/ZOmljcSOc+hCQjBOptg==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wp04618cg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 05 Mar 2024 18:04:02 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 425I41rw002672
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 5 Mar 2024 18:04:01 GMT
Received: from [10.216.51.173] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Tue, 5 Mar
 2024 10:03:54 -0800
Message-ID: <399555e8-d8fa-46b7-8b15-3d3a4a30809b@quicinc.com>
Date: Tue, 5 Mar 2024 23:33:54 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 3/3] arm64: dts: qcom: sa8775p-ride: Enable support for
 firmware managed resources
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <quic_wcheng@quicinc.com>,
        <Thinh.Nguyen@synopsys.com>, <p.zabel@pengutronix.de>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <quic_psodagud@quicinc.com>, <quic_nkela@quicinc.com>,
        <manivannan.sadhasivam@linaro.org>, <ulf.hansson@linaro.org>,
        <sudeep.holla@arm.com>, <quic_shazhuss@quicinc.com>
References: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
 <1709657858-8563-4-git-send-email-quic_sriramd@quicinc.com>
 <b9142874-0afb-40a6-9008-b33bd8f56840@linaro.org>
From: Sriram Dash <quic_sriramd@quicinc.com>
In-Reply-To: <b9142874-0afb-40a6-9008-b33bd8f56840@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: JFe8K7NNoxsjQ6Lf6KJd1yzrCnww_POq
X-Proofpoint-GUID: JFe8K7NNoxsjQ6Lf6KJd1yzrCnww_POq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-05_15,2024-03-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 priorityscore=1501 malwarescore=0 mlxscore=0 adultscore=0 mlxlogscore=999
 bulkscore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 impostorscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2402120000 definitions=main-2403050143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_100410_900285_00260287 
X-CRM114-Status: GOOD (  17.51  )
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

On 3/5/2024 10:38 PM, Krzysztof Kozlowski wrote:
> On 05/03/2024 17:57, Sriram Dash wrote:
>> Establish the channel and domain mapping for the power domains to connect
>> with firmware, enabling the firmware to handle the assigned resources.
>> Since these delegated resources will remain invisible to the operating
>> system, ensure that any references to them are removed.
>>
>> Signed-off-by: Sriram Dash <quic_sriramd@quicinc.com>
>> ---
>>   arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 96 +++++++++++++++++++++++++------
>>   1 file changed, 77 insertions(+), 19 deletions(-)
> 
> Do not mix DTS patches with submissions to netdev or USB.
> 
> Please put it inside your internal guides, so you will not be repeating
> this over and over.
> 

Sure. Will take care. Thanks.

>>
>> diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
>> index 26ad05b..b6c9cac 100644
>> --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
>> +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
>> @@ -764,8 +764,18 @@
>>   };
>>   
>>   &usb_0 {
>> -	pinctrl-names = "default";
>> -	pinctrl-0 = <&usb0_en_state>;
>> +	/delete-property/ clocks;
>> +	/delete-property/ clock-names;
>> +	/delete-property/ assigned-clocks;
>> +	/delete-property/ assigned-clock-rates;
>> +	/delete-property/ required-opps;
>> +	/delete-property/ resets;
>> +	/delete-property/ interconnects;
>> +	/delete-property/ interconnect-names;
>> +
>> +	power-domains = <TODO>, <TODO>;
> 
> This wasn't even tested.
> 

This is tested with the specific power domains in place
of <TODO>. SCMI interface is used for the power domains.

> Best regards,
> Krzysztof
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
