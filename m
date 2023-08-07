Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA1AFC001B0
	for <linux-phy@archiver.kernel.org>; Mon,  7 Aug 2023 13:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/rlIqc0hu/aTa0zHL47n3LvabsxlrrhC9e9FwBupN4g=; b=43SUZEB9bGFg7D
	PO7aDAVdaAzfR1AWbOGkFWsgyTtF7V5fpC0VIFd506RhYXEx6OsXJVzXZPrh/ZQWHLqtIulIPZAO4
	Y4BH2k1Du+NBgha4CNwrgafY4G89TWCICDfaN37MID/+XfdRzcSp9YvOY9FnrG6ypUt+6LYRjvACH
	pYuLctcqYuP8JcEVb7uicmunO/HdCtaUhkOXAGcBczxSu/REoMC4tS1Cr1i3dxmEDXpYDF2ejrxt2
	sCsiwjtOOhkW+OcBugquBjhxRYuTvKkQS5LXpNy3zsc+itZ6yqSSt63rI1IUoTnIo/xVPtFo2fhEq
	BRtngfZgeV7foDGN/kOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSzx0-00HIqk-27;
	Mon, 07 Aug 2023 13:07:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qSzwx-00HIoT-0R
	for linux-phy@lists.infradead.org;
	Mon, 07 Aug 2023 13:07:09 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 377ASHX8001047;
	Mon, 7 Aug 2023 13:06:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=CqfOPwU9hDvT12Or13YFoKQiulhQ0+H+8G8AkmCCiDo=;
 b=g5oXedAmKh0+UOpgOp0EUlYUUXW/IXXKBNBsWjc5wlfD9u4YK5EqX0cAR2XJT21o2n67
 yvmNRLc3M5/PmUettkho2KmZq5MqISE/tUa+FSCrwagI370oAoYwZd/uIKpMMrlk5jGQ
 7bfwyq+UR3diQFIz77ny6vlsl891Y0r8FzjsrqVrQnqzcW+E+TAVXUZRtDTKinBiW8rW
 jEKrgrazWotpe01IDKSQbYHXnhz4uvYkAaI/IRPE0z2/9DnwLxDRCQE2HFYM9qrbEzAL
 QCGd6KJ224MOGjqQ4/UoB6EBYJwwaIPtPaMZIprcy9Stwtfgok/eyDACOKKS7AoMq7S2 TA== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3sawbg8kdw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 07 Aug 2023 13:06:59 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 377D6wKr016911
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 7 Aug 2023 13:06:58 GMT
Received: from [10.216.6.112] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.30; Mon, 7 Aug
 2023 06:06:53 -0700
Message-ID: <9864c6b8-aea0-f8e2-5949-2a05cf899e5a@quicinc.com>
Date: Mon, 7 Aug 2023 18:36:50 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH v2 0/9] Add pmics supported in Qualcomm's SDX75 platform
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <abel.vesa@linaro.org>
CC: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <quic_pkondeti@quicinc.com>
References: <1691411333-1556-1-git-send-email-quic_rohiagar@quicinc.com>
 <83dff121-0a0f-4bd5-bf84-0c7c83f98615@linaro.org>
 <c4006b16-2c06-4c96-86a1-d4ba235503f4@linaro.org>
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
In-Reply-To: <c4006b16-2c06-4c96-86a1-d4ba235503f4@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 7AjZ_FNy7XoCdkW6U_Ip0PbbJxTAqPj3
X-Proofpoint-GUID: 7AjZ_FNy7XoCdkW6U_Ip0PbbJxTAqPj3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-08-07_13,2023-08-03_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxlogscore=796
 impostorscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 mlxscore=0 priorityscore=1501 malwarescore=0 adultscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2306200000
 definitions=main-2308070122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_060707_286280_029A590E 
X-CRM114-Status: GOOD (  13.99  )
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


On 8/7/2023 6:15 PM, Konrad Dybcio wrote:
> On 7.08.2023 14:45, Konrad Dybcio wrote:
>> On 7.08.2023 14:28, Rohit Agarwal wrote:
>>> Hi,
>>>
>>> Changes in v2:
>>>   - Added compatible for pm7550ba for eusb2 repeater and used it in DT.
>>>   - Addressed some minor comments from Konrad to add fixes tag, labels
>>>     and update the labels
>>>
>>> This series add support of pmics that are found in SDX75 platform and
>>> add the corresponding regulators in the IDP platform as well.
>>> It also parallely updates the pmic found in SDX65 to PM7250b and add pinctrl
>>> support for the same pmic chip.
>>> This series is based on the new header inclusion[1] and movement of the
>>> regulators level from rpmpd to rpmhpd[2].
>>> This series can be picked after successfully picking [2] and [3] as [1] has
>>> already been applied.
>>>
>>> [1] https://lore.kernel.org/all/1689744162-9421-1-git-send-email-quic_rohiagar@quicinc.com/
>>> [2] https://lore.kernel.org/all/1690781104-2290-1-git-send-email-quic_rohiagar@quicinc.com/
>>> [3] https://lore.kernel.org/all/1690461813-22564-1-git-send-email-quic_rohiagar@quicinc.com/
>>>
>>> Thanks,
>>> Rohit.
>> Since you resent this (as mentioned in the first thread with "v2" [1]),
>> the subject should be [PATCH RESEND ...]
>>
> [1] https://lore.kernel.org/linux-arm-msm/f29eae07-b6c4-e7ea-3790-ee800d83859e@quicinc.com/T/#m863acf47848ba75987fcf144c588da21306dc2fe
Ok, Let me resend it with RESEND tag. But since there is no change will 
keep it v2.

Thanks,
Rohit.
>
> Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
