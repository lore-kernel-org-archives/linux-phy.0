Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6AADCD11DD
	for <linux-phy@archiver.kernel.org>; Fri, 29 Mar 2024 11:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8SVA2qiuN4qxjDHhWk2XKHQYaXlso9Qb5juosNH8LCo=; b=gcmozAy0tbpsfU
	qNE5JK1I4F9udjEy6ULNDI5ZRJd3pCoKbTH8uyVneMdH3vtUpoCWCTvECqjRlAx6qM1ZUumDqV5XB
	eNY+YNpPhZHUoYg6nSpXuDbZE6RrCyEZNnDAHy1LBCPv+hePVOclzkYHj65YRkMDnzqP3l6ZbUeZq
	NHR/1hd5fD/RQffxOcvhRFwOVNo1g7dugQPRLoAbVnl5Ahpu+xp95YdWyGM0UCKDSVLoPNdRLBeDE
	VS5Xb1UvHZRSE5DIODYKiAU0tGIUcvp0c5xwUUa1SWhd7q9FTP2+luWG3qZ2Nk8Rg1gYH2O0WZnSJ
	7yL1db7xhqbiwVPq+awQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqA0T-000000008TI-1pqf;
	Fri, 29 Mar 2024 11:02:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqA0P-000000008Rk-3pkG
	for linux-phy@lists.infradead.org;
	Fri, 29 Mar 2024 11:02:43 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42T9RgFN020121;
	Fri, 29 Mar 2024 11:02:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=bJ3pIo5rQ0zAm0yJhgdX2lzFSSi5b0T18UtJsKBRNpY=; b=N2
	PeXwpO6NMIct/ZFap856FZRbbM7LXiP5JG2j4pvxIac+mxWJfXbmAXDIs3fiihdw
	pfVWOuLpWeQ0skjnqsHnthD45bjQYWzjRP+0glOoxx0wRMKvzd35/UWBuCCdr0eB
	o4Fr3X1tEpbvETi4SS/W2L245gd1zHswzijVknNh0zNO1CgycnCWnkhEhAdoT3JF
	AcqPppa3AP/GhHKs4dV8fmkKIsdjDxBqJZfk7AVBviS52XsaJUnMjO1oeFpkBvTL
	CBKMs9jIL78Iy35p2X3G3UIJ/SymRi0yHFKmZclB0smceZ9yG5c2dRkbqhBED2iX
	Oeg6HEt8EvH6+8ZeVADA==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3x5np29440-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Mar 2024 11:02:29 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 42TB2SPp000309
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Mar 2024 11:02:28 GMT
Received: from [10.214.67.128] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Fri, 29 Mar
 2024 04:02:23 -0700
Message-ID: <a04f9185-af77-55c2-db52-bbb3bde50836@quicinc.com>
Date: Fri, 29 Mar 2024 16:32:07 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 0/4] Add USB Support on Qualcomm's QDU/QRU1000 Platform
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
References: <20240319090729.14674-1-quic_kbajaj@quicinc.com>
 <CAA8EJpojQg2BHvR5kZtRxyXWRKy6zV=88_bdcuMH+QE-n4k73A@mail.gmail.com>
Content-Language: en-US
From: Komal Bajaj <quic_kbajaj@quicinc.com>
In-Reply-To: <CAA8EJpojQg2BHvR5kZtRxyXWRKy6zV=88_bdcuMH+QE-n4k73A@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: NbMObZ7yG2ZEikEosG1W_jCoZQAo9DzO
X-Proofpoint-GUID: NbMObZ7yG2ZEikEosG1W_jCoZQAo9DzO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-29_11,2024-03-28_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 bulkscore=0 mlxscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 mlxlogscore=805 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2403210001 definitions=main-2403290097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_040241_998601_D1D4D77A 
X-CRM114-Status: GOOD (  13.00  )
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



On 3/19/2024 3:05 PM, Dmitry Baryshkov wrote:
> On Tue, 19 Mar 2024 at 11:08, Komal Bajaj <quic_kbajaj@quicinc.com> wrote:
>>
>> This series adds support of USB3 PHY support for Qualcomm's QDU/QRU1000 Platform.
>>
>> ---------
>> Changes in v2:
>> * Dropped extra lines
>> * Sorted the tables alphabetically
>> * Link to v1: https://lore.kernel.org/linux-arm-msm/20240311120215.16845-1-quic_kbajaj@quicinc.com/
> 
> So, this is v2, but you didn't mark patches as v2. Please use b4 for
> sending patches. It can handle patch revisions automatically.

Apologies for this, forgot to mark patches as v2.
I will be careful next time.

> 
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
> 
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
