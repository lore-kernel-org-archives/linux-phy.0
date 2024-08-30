Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D689CA0EE8
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 07:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YenPPNm+stsZgyik1jPt61VrZxDa9/1w+x+J5N2trOM=; b=juoyhhjZB4BHm9
	tZ2PkQbNS6BFZC4YbCgJ8o4L3E4M/yZiUmh0VmckfJCkZ2i+MqCTc7NNLd3uD6DQIaDduqbzxSwqq
	Qu2fnjLfI9S+niRuEWGhDqaJ8g4q8Bpn2ck9RJspYryJW6nYXPRAie1v8bKJ4nCkdDKSIq1U5Ipj/
	wMWu9ogVTze+SfgIzJECM/pCzhXSEC+ibvwobkM2J/5RU+wOwmHZKfPndTDOiYBtCjyXlDIC9B5Zf
	i1GKxRYocZIFhpugdDI40+94+aezpnelvvdcSpmin2PSuD/eR2TbFsqvhLsi5QxUvuXXLtLqFFvL7
	VRZFt7tqEYyNbp4H2yRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjwUj-00000005D5m-0UyP;
	Fri, 30 Aug 2024 07:56:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjwTn-00000005CjN-3mag
	for linux-phy@lists.infradead.org;
	Fri, 30 Aug 2024 07:55:37 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47TITuiq011732;
	Fri, 30 Aug 2024 07:54:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zYycfQ4lgaP4WF5dIMosJrmcyjh/Y2HNGGyYhdP2JtU=; b=SO8orggTFx1V5LiP
	9mX9wuxE/5g0JhXMQpgYOLIHs2duHRm5fJqalUZVnWugLgAIO/1vD9d8c4ySLrrh
	S5VqXtx86szGRqqGkan/VqZzemVP4JYsNXhyByeE7MI0dlqu9ztm9i0Yds3l3ten
	ZPGrI2apaiBErdcLTo71EoXVzJbtGBjr367ABriWvpvNijBuM98SZuXO7JDGH34d
	MzPcVumMHZc2uWK+0ZtxfY11p2v4zQ3lEe+Pfp0XUYIo7+0l7WZwMA4+O1K6H1Yn
	m5/cfi9vlCKJDG/B0JxizHrjA932R1DnbIro/H8ii8hWXLq+sTEika3eYA1h3TzO
	A13gfQ==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 419pv0fv1x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Aug 2024 07:54:56 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 47U7stlY017067
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Aug 2024 07:54:55 GMT
Received: from [10.151.37.100] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 30 Aug
 2024 00:54:49 -0700
Message-ID: <c17d6216-654d-427a-b267-a3886929ab48@quicinc.com>
Date: Fri, 30 Aug 2024 13:24:46 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 6/6] arm64: dts: qcom: ipq5018: Enable PCIe
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <p.zabel@pengutronix.de>, <quic_nsekar@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <robimarko@gmail.com>
References: <20240827045757.1101194-1-quic_srichara@quicinc.com>
 <20240827045757.1101194-7-quic_srichara@quicinc.com>
 <nut3ru5rdjf3k3np47gqbpuczvpsuoismx6hp55ivc5mqmdglz@zyzbra46i6iz>
Content-Language: en-US
From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
In-Reply-To: <nut3ru5rdjf3k3np47gqbpuczvpsuoismx6hp55ivc5mqmdglz@zyzbra46i6iz>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: ZFbtisr6HyB-2IYFdtE3WJX3D8urmszh
X-Proofpoint-ORIG-GUID: ZFbtisr6HyB-2IYFdtE3WJX3D8urmszh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-30_03,2024-08-29_02,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 suspectscore=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 mlxlogscore=701 mlxscore=0 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2408300057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_005536_109669_2BEB69E5 
X-CRM114-Status: GOOD (  10.99  )
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



On 8/29/2024 2:40 PM, Dmitry Baryshkov wrote:
> On Tue, Aug 27, 2024 at 10:27:57AM GMT, Sricharan R wrote:
>> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
>>
>> Enable the PCIe controller and PHY nodes for RDP 432-c2.
>>
>> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
>> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>> ---
>>   [v2] Moved status as last property
>>
>>   arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
>> index 8460b538eb6a..2b253da7f776 100644
>> --- a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
>> +++ b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
>> @@ -28,6 +28,15 @@ &blsp1_uart1 {
>>   	status = "okay";
>>   };
>>   
>> +&pcie1 {
>> +	perst-gpios = <&tlmm 15 GPIO_ACTIVE_LOW>;
> 
> pinctrl? wake-gpios?
> 

  ok, will add to make it explicit.
  Otherwise pinctrl was default muxed.

Regards,
  Sricharan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
