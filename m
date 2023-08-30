Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 894CEC83F01
	for <linux-phy@archiver.kernel.org>; Wed, 30 Aug 2023 08:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwjmzwS3ruhHsivxW3bOxeUcMzS8b4WcvxYs35weP5g=; b=wg7x0oLoIzZr6t
	kjZNs2bVj718KiPt0xEF3/IAzv/+KNBDP0L36DhlMImcbDupOJF0M9L0IwGBLrLWBcjJDtzC9c9il
	HWoU4EExQMnOClsYmYaR0v29PwbgAfs1UBDcm8oW0mU073JugTsYXcfKz23T6UZgUq4TC08u1dnfz
	Tb3XchygXlVYkEAvtBAKzcQcWoDNgvz1Ql7zpRjGcUAsCpoiyOlGYNMSAfNQkxG4nTKdvQIkcK4X6
	nDIlIeC24gNtEzldWpFyY/7Q/eUKnHD9Tv+NCEi3fBcD/eYUPBibJ34qTDlarh18NZac7Wo1WSEEE
	Ba+nt1cTcqOtb/4xvgkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbG7x-00D3Gt-0d;
	Wed, 30 Aug 2023 08:00:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbF87-00CxHz-0O
	for linux-phy@lists.infradead.org;
	Wed, 30 Aug 2023 06:56:44 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37U40Ib9029236;
	Wed, 30 Aug 2023 06:56:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=3DoJYGklD1tQaMTZRLQgv4ZxOJNnKBu2cN/iyXz1foY=;
 b=T2lOnrZNvuqxawi5To1zSUdWwGMtVBDt+WMHStXUEufEpD90DtBhX9rO3AkOw24xnVU6
 4QkA7krGW/g5iJdsfdw1JLq0W6+x9sfW21HW9qfmiTesIB0j0zRMs6Z64HWWEnDApC5n
 KbgSbb6Y3XS7EkLQdkcRXxsc0GvIB5XPWeG/xpOpvjzbiTb9o8MzQ+qfLM0XAs6D2NN/
 OECMvQh7fueqF2pV0sGGbK4qmGAQKIcJyd4g4TIsoPgNsBzwDvrSZPoLVg0I5jFb33yk
 0dfL/aOd7tBOxiwmdqPK4LYKg4e9C62LNaEBR5Ulcxco/dy7lGEK7zzTuUXHOjeQP703 yQ== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ss7meufdc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 30 Aug 2023 06:56:36 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37U6uZ97030433
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 30 Aug 2023 06:56:35 GMT
Received: from [10.50.47.209] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Tue, 29 Aug
 2023 23:56:30 -0700
Message-ID: <edfa69b8-0bc2-6121-6edd-b08e99490a47@quicinc.com>
Date: Wed, 30 Aug 2023 12:26:27 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 5/5] arm64: dts: qcom: ipq5018: Enable USB
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
CC: Amandeep Singh <quic_amansing@quicinc.com>
References: <20230825093531.7399-1-quic_nsekar@quicinc.com>
 <20230825093531.7399-6-quic_nsekar@quicinc.com>
 <5373a7b5-df23-47df-b732-60a31c1ea6d0@linaro.org>
From: Nitheesh Sekar <quic_nsekar@quicinc.com>
In-Reply-To: <5373a7b5-df23-47df-b732-60a31c1ea6d0@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: im_ySFxKRodp7HMTmPIqPLtOom66hULb
X-Proofpoint-GUID: im_ySFxKRodp7HMTmPIqPLtOom66hULb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-29_16,2023-08-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 mlxscore=0
 bulkscore=0 adultscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0
 mlxlogscore=653 phishscore=0 priorityscore=1501 clxscore=1015 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2308100000
 definitions=main-2308300063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_235643_185174_1FA68E0F 
X-CRM114-Status: GOOD (  11.94  )
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


On 8/25/2023 4:08 PM, Krzysztof Kozlowski wrote:
> On 25/08/2023 11:35, Nitheesh Sekar wrote:
>> Enable USB2 in host mode.
>>
>> Co-developed-by: Amandeep Singh <quic_amansing@quicinc.com>
>> Signed-off-by: Amandeep Singh <quic_amansing@quicinc.com>
>> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
>> ---
>>   arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts | 12 ++++++++++++
>>   1 file changed, 12 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
>> index e636a1cb9b77..cdf5e22ec54e 100644
>> --- a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
>> +++ b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
>> @@ -70,3 +70,15 @@
>>   &xo_board_clk {
>>   	clock-frequency = <24000000>;
>>   };
>> +
>> +&usbphy0 {
> u is before x
Sure, will sort and reorder the nodes.

Regards,
Nitheesh

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
