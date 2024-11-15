Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09925D6DDED
	for <linux-phy@archiver.kernel.org>; Fri, 15 Nov 2024 10:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YzYvvft3JXRdnps2cCqnYKau7s0cwBrfXyncvjg+I9w=; b=DuqFZ73lw3DBih
	smiTHapmK2RwrhY+XbIic9tlCaOPdR5lbx46ucGWeIaQumtpp0q4LMr5KBsHd0jXRBnQjedPTn/tR
	9vjvCC2ONC/DC89vQyBgt1+ldzhL40OQN0G/TQ6i9x4+8zZ+YskspXTcBVajUBg3tYnh3rSWiIp1Y
	TVnqJ2Vx5ESpBBvSe4FI+piLxdIw/gmslP9xQGw7R0cn29P9pfAavcEWv78LSr73TFgmnWHZNPTl+
	dqQeFRZTd93uvmrbfbBgLkUvLuJzFC/ndezbmiua/ZP6sU/6LmGKH1cgLjMPk7ILcjBptzFWlHoee
	nWl5oYzy/Aogp/Dx9sOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBtBt-00000002I9X-2Df9;
	Fri, 15 Nov 2024 10:04:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBtBq-00000002I8i-01AE
	for linux-phy@lists.infradead.org;
	Fri, 15 Nov 2024 10:04:35 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AF9E4pv005348;
	Fri, 15 Nov 2024 10:04:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YBEDWQZtdymf1KBKctBQPowv3p8NG/u/Z9yDmTzan6k=; b=pbkLVcQWJP80ohAY
	IxYePwVcLi8wpuzqNZDztu8jUIkR6izt2xNI+eh86n5Tdgx0NSZ50jAULSDSfmoD
	gFTx0vKdlDuYzplZm2j4AvUicZHzIXh/jpgIatNkqWT2dOkde+6J6RhwywVrYI9w
	mNoykMiih3xhE4Wp6TbomvMO0TV4QavMVcw1f6c6pYmb17bdCgqnbIBbW9Y5bqdU
	X0oDrf96GDTpJX05Hd7w7j47p/t3aijkkOV/cKXyzYYoFrRuKQOg5ax4W408HI1H
	yGaf1LTiSK5GejECn69Y1IdTTWphB1BxNtlizkB2+k2Ylomzx+3xAv8bWn44aXeD
	ushMMw==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42x3g0r5du-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Nov 2024 10:04:25 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AFA4OPb014965
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Nov 2024 10:04:24 GMT
Received: from [10.50.13.152] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 15 Nov
 2024 02:04:14 -0800
Message-ID: <558364dc-d701-4996-83d7-56afab37eb08@quicinc.com>
Date: Fri, 15 Nov 2024 15:34:10 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/10] Add PCIe support for Qualcomm IPQ5332
To: Manivannan Sadhasivam <mani@kernel.org>,
        Praveenkumar I
	<quic_ipkumar@quicinc.com>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <quic_nsekar@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-clk@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <quic_varada@quicinc.com>, <quic_devipriy@quicinc.com>,
        <quic_kathirav@quicinc.com>, <quic_anusha@quicinc.com>
References: <20231214062847.2215542-1-quic_ipkumar@quicinc.com>
 <20240310132915.GE3390@thinkpad>
Content-Language: en-US
From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
In-Reply-To: <20240310132915.GE3390@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 4wvOCydZtOm9zbwrUAVBPnncYQvO79Sa
X-Proofpoint-GUID: 4wvOCydZtOm9zbwrUAVBPnncYQvO79Sa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 malwarescore=0 clxscore=1011 spamscore=0 mlxlogscore=704
 mlxscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411150085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_020434_183983_70A80EA9 
X-CRM114-Status: GOOD (  12.54  )
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



On 3/10/2024 6:59 PM, Manivannan Sadhasivam wrote:
> On Thu, Dec 14, 2023 at 11:58:37AM +0530, Praveenkumar I wrote:
>> Patch series adds support for enabling the PCIe controller and
>> UNIPHY found on Qualcomm IPQ5332 platform. PCIe0 is Gen3 X1 and
>> PCIe1 is Gen3 X2 are added.
>>
>> UNIPHY changes depends on
>> https://lore.kernel.org/all/20231003120846.28626-1-quic_nsekar@quicinc.com/
>> PCIe driver change depends on
>> https://lore.kernel.org/all/20230519090219.15925-1-quic_devipriy@quicinc.com/
>>
> 
> Any plan on this series and the dependencies?
> 
Yeah, Sorry for the delay, will post in the coming week.

Regards,
  Sricharan


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
