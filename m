Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBE20C83F15
	for <linux-phy@archiver.kernel.org>; Wed, 30 Aug 2023 06:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=krYkQwR01l8nVelMnfRP0SEap0qrW+8/S4UOEJumkzg=; b=lNCUCK9/REZncZUtNkr+Bj72uX
	BnwuZ59flR4t4geT0/ndD/pPp4HtYaD66S7+tDNuw5AkQQzAgazOamNiwvlSq/W85lcttV3SGy0+a
	35uLrzfnRCXaEnYUuBPxare12aKtRpPsT2fLY4GV71sa3T5aYcX3SFeYoKPac5Il0G9DrFCCeruq6
	FqysD/hLM78eNK97ABuu2l+PXh2iVSmaEezJo2RY+flKAVkqqVkgUX3UybnD9KhyMY1qAW5WudgNA
	NvnG52x9QvgAwFwv+QrkX5NFLoZyLC/qNRyYPT+OhE/S6bzG092qxsnJdtoyvoXfJJ6nbb6iZe1tw
	RFiFyfbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbF5J-00Cww1-2A;
	Wed, 30 Aug 2023 06:53:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbF5H-00CwuV-0N
	for linux-phy@lists.infradead.org;
	Wed, 30 Aug 2023 06:53:48 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37U6HXiM009693;
	Wed, 30 Aug 2023 06:53:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=AR3LwVmiR7fUIw9Y7M81NThlnJOB2X7Gn0DBD2+0/mk=;
 b=gt15Phm8BQzrvzmb+oL7PIBUuGddnDcW4Zb8PVLJ/XGcQBNiuIUowRWmi9ZThdHPReJo
 zLAhe/qWgnRORTPC+9FrcdowUk01zRjMtXj07wjJXSpMZsudY3gBbp0HWSbVfq4UtP6b
 lkSW2ugNds/SLSr6N7mkc7ImBxNclWYe5bO5KlMaHF/k1rIg2gDc2smbQ//nYOM5q/k4
 UW021naJ7Gs9QYDzKU6wsxDgPzOTWXMAOcMI6NSp6dyNewtqffNAPgRKCv/eCOpCoWdp
 TbdnR57BNJ8/Eh5MNLR0pXbk3TNqgq13qGX8PtzHH0HdThWJpM95L3LyOV5Eyjgsees2 PA== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3sswbv0862-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 30 Aug 2023 06:53:38 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37U6raEd027024
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 30 Aug 2023 06:53:36 GMT
Received: from [10.50.47.209] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Tue, 29 Aug
 2023 23:53:31 -0700
Message-ID: <ff71da5b-4553-0be5-950e-47a0d741f676@quicinc.com>
Date: Wed, 30 Aug 2023 12:23:22 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 2/5] dt-bindings: usb: dwc3: Add IPQ5018 compatible
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <quic_srichara@quicinc.com>,
        <quic_varada@quicinc.com>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
References: <20230825093531.7399-1-quic_nsekar@quicinc.com>
 <20230825093531.7399-3-quic_nsekar@quicinc.com>
 <3e4e03b6-380c-ce61-dd93-30669e6f9b5c@linaro.org>
From: Nitheesh Sekar <quic_nsekar@quicinc.com>
In-Reply-To: <3e4e03b6-380c-ce61-dd93-30669e6f9b5c@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: uqWx4pXznQocG_ii8QRXUcatiDlM5Hea
X-Proofpoint-GUID: uqWx4pXznQocG_ii8QRXUcatiDlM5Hea
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-29_16,2023-08-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 spamscore=0
 mlxlogscore=548 adultscore=0 malwarescore=0 priorityscore=1501
 clxscore=1011 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308300062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_235347_298132_12996E7F 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
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


On 8/25/2023 4:07 PM, Krzysztof Kozlowski wrote:
> On 25/08/2023 11:35, Nitheesh Sekar wrote:
>> Document the IPQ5018 dwc3 compatible.
>>
>> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Split the series per subsystem. You are making applying process
> unnecessarily more cumbersome for the maintainers and as result - delay
> your patchset without any single reason.
Sure. Will split this into a separate one.

Regards,
Nitheesh

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
