Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 868D2C6FD1F
	for <linux-phy@archiver.kernel.org>; Fri, 29 Mar 2024 11:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NHMzMGPicSz86ssOFg9tNRQ2nXaVuJj9xhFkx6BFky0=; b=azOGvgkO1sTY/l
	HxUBVh2snVisX2RVPB31x+xVsBr5Mu6RLQLEAfb0Njo9NEXsyfJM/NB8hRyQpI8axGzEsGMMyuh1h
	EnjVRYB3wNc1EJdkeGzZeBsJXZgEO7WNwdLeMHndgSzdGbQV0UAlpTPAmqOcl7Rqepfv7ZCclaZ/N
	gtXDc3S/voHlixJ3zDUgAaF14VOQwkODMgBw06N9eOUxza5HUQd/jIpOjjTJtbNyqwSvjYH7t48Wd
	9u1bV6NMmAqyb+U55pNKPI6CBL88zQiy76ZdW07rMF0h0v8UtY1z60Ci1EOwZiAUAc/eI7h9pHjO6
	VSFasqlvHsgwusv96PCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqAPM-00000000Bv2-0zhu;
	Fri, 29 Mar 2024 11:28:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqAPI-00000000Bsu-08IO
	for linux-phy@lists.infradead.org;
	Fri, 29 Mar 2024 11:28:26 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42T3qN9d006076;
	Fri, 29 Mar 2024 11:28:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=HadpWlGoEqIQpIknOArzjZAsQSAnIpSED8hj8Tde5Tc=; b=Ba
	kRuTwxXl8t4xsu+MNoP2L7KQn3c7Bb73t84bXyX7gpCMPYZI43zJp4ZnWphq1Lcs
	GiU0coUr9bfS/q1i0VJGV9ZxkXtyEbV8C04yIHwdawsW9RM5d/amxxE/L6oL39r+
	m/HbIWtt3cq7Y81nOnv2YBHIPiCGO0Ctm2FygfLRbvM5JNEFyZgUmd/KLxghLAwF
	vshxXFoZtdyGgAWZwhTg1TeuJZK1sv9YVbVtQzjJsq2izCvF8DoqonJm9Q6F8F7r
	sCTJUbXodQdYfEpKFVzlT9+dk/XdEFadvbXkN1JYTJMZEitct5aElfGTKwcBpUzd
	KIHYfutfktuHCBbI9gZg==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3x5hskhq3m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Mar 2024 11:28:15 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 42TBSBch021885
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Mar 2024 11:28:11 GMT
Received: from [10.214.67.128] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Fri, 29 Mar
 2024 04:28:07 -0700
Message-ID: <bdcb6680-f9e0-6629-4b56-2f7d18324045@quicinc.com>
Date: Fri, 29 Mar 2024 16:58:04 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 0/4] Add USB Support on Qualcomm's QDU/QRU1000 Platform
Content-Language: en-US
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay
 Abraham I" <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
References: <20240319090729.14674-1-quic_kbajaj@quicinc.com>
 <2024032637-sessions-outcast-888a@gregkh>
From: Komal Bajaj <quic_kbajaj@quicinc.com>
In-Reply-To: <2024032637-sessions-outcast-888a@gregkh>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: dIF0wtyfcPYOwtyE7FmJ0Ax5fhgeZoa3
X-Proofpoint-ORIG-GUID: dIF0wtyfcPYOwtyE7FmJ0Ax5fhgeZoa3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-29_11,2024-03-28_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=758 phishscore=0
 clxscore=1011 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 impostorscore=0 adultscore=0 mlxscore=0 spamscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2403210001
 definitions=main-2403290100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_042824_322681_AEAF0698 
X-CRM114-Status: GOOD (  13.40  )
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



On 3/26/2024 2:00 PM, Greg Kroah-Hartman wrote:
> On Tue, Mar 19, 2024 at 02:37:24PM +0530, Komal Bajaj wrote:
>> This series adds support of USB3 PHY support for Qualcomm's QDU/QRU1000 Platform.
>>
>> ---------
>> Changes in v2:
>> * Dropped extra lines
>> * Sorted the tables alphabetically
>> * Link to v1: https://lore.kernel.org/linux-arm-msm/20240311120215.16845-1-quic_kbajaj@quicinc.com/
>>
>> Komal Bajaj (4):
>>    dt-bindings: phy: qcom,usb-snps-femto-v2: Add bindings for QDU1000
>>    dt-bindings: phy: qcom,qmp-usb: Add QDU1000 USB3 PHY
>>    dt-bindings: usb: dwc3: Add QDU1000 compatible
>>    phy: qcpm-qmp-usb: Add support for QDU1000/QRU1000
>>
>>   .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |  2 +
>>   .../bindings/phy/qcom,usb-snps-femto-v2.yaml  |  1 +
>>   .../devicetree/bindings/usb/qcom,dwc3.yaml    |  3 ++
>>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 49 +++++++++++++++++++
>>   4 files changed, 55 insertions(+)
>>
>> --
>> 2.42.0
>>
>>
> 
> The subject line here does not say v2, so I'm confused as to which one
> is which :(
> 
> Please fix up and send a v3.

Apologies, forgot to mark patches as v2.
Will soon send v3 series with proper marking.

Thanks
Komal

> 
> thanks,
> 
> greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
