Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6EEEC83F01
	for <linux-phy@archiver.kernel.org>; Wed, 30 Aug 2023 06:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8i1b1Wdndjx3ZOtTZ0/OlQKCZn2MuEzPAUI2/s5M4A=; b=4UDJKMBNwHh11S
	+bG0C1s524j7/IEDza9nMtQzH1VkwK7nZHQ5fTnjDB+FRbDo92rqtXJxNiggxiRUvPTNDO7eW0+g0
	XotFSH/RGYEbrvGNlPFPx3XTQYzDXSHk28sOSQ40OxuzKAxwO4G5fUII1NRz1cHt8RJ1ENewjNt4G
	y+Q3bt8yfyx+ayPa6OafOGJgMFy8rG40daVY5S4FwuPYAnANdIp3ewLqgDhG498uOh7/8f+7lRYH0
	o/NohAX7Fr4WmoGDqKpgOu6x8uvkpoch9+an20BNr2kpouWKDcRiO27tbGLKZLzc1sa07iVIBGZO2
	Hm4j7pc3IzPjLD+HSaUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbF6n-00Cx4O-18;
	Wed, 30 Aug 2023 06:55:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbF6j-00Cx3z-2v
	for linux-phy@lists.infradead.org;
	Wed, 30 Aug 2023 06:55:19 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37U6Q9kp009047;
	Wed, 30 Aug 2023 06:55:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=EyMaeB6OQzrO3y97poWIDcd5bnpsn0P5m5IO1SfK+U0=;
 b=RCgGpld+0tkmlpXcMn4r6hts+bojy3482TsjsMeOTJswJxALj6eaoYMxOsyA/AYuDrbm
 7nECRu7IZQQrnkRqGpmWAz2Q8/fEb8uF8XlS/wZNJxjFVTnn8qZZjuk9rj9HGggzAw0B
 gVtjw7UT+2o5Fe5cOYdGI8xLcdOUVNpgH9S6XgwCFR0I9A7afl/xGiAeyt4AptBlXSe8
 omZ8773yz7IqAUH9CQ8EYHv0ZTWnn2DSsBkaYJozNAl62XTrTNt+etmyBmx1c4zZL/o8
 KnB1jyjTfJrFE5Hpm8WzPps2+X9qvQR0uxYpiD+WBwSYEd99x2VyLKp9TlwPAyfuxj/U 1w== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ss4wq39tc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 30 Aug 2023 06:55:13 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37U6tC7C031608
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 30 Aug 2023 06:55:12 GMT
Received: from [10.50.47.209] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Tue, 29 Aug
 2023 23:55:06 -0700
Message-ID: <58d5122f-7b4e-3294-10df-eee79d39e0a3@quicinc.com>
Date: Wed, 30 Aug 2023 12:25:03 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 4/5] arm64: dts: qcom: ipq5018: Add USB related nodes
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
 <20230825093531.7399-5-quic_nsekar@quicinc.com>
 <7c0dbf30-295f-6735-88d1-f4e524936c72@linaro.org>
From: Nitheesh Sekar <quic_nsekar@quicinc.com>
In-Reply-To: <7c0dbf30-295f-6735-88d1-f4e524936c72@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 1e_Z5dv1vaAJFriwUYUoTRE2ZdjWPBlG
X-Proofpoint-ORIG-GUID: 1e_Z5dv1vaAJFriwUYUoTRE2ZdjWPBlG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-29_16,2023-08-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 spamscore=0 malwarescore=0 priorityscore=1501 mlxscore=0 adultscore=0
 mlxlogscore=906 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308300062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_235518_080297_5B95271D 
X-CRM114-Status: GOOD (  14.01  )
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
>> Add USB phy and controller nodes.
>>
>> Co-developed-by: Amandeep Singh <quic_amansing@quicinc.com>
>> Signed-off-by: Amandeep Singh <quic_amansing@quicinc.com>
>> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
>> ---
>>   arch/arm64/boot/dts/qcom/ipq5018.dtsi | 54 +++++++++++++++++++++++++++
>>   1 file changed, 54 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
>> index 9f13d2dcdfd5..ff477923a823 100644
>> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
>> @@ -238,6 +238,60 @@
>>   				status = "disabled";
>>   			};
>>   		};
>> +
>> +		usbphy0: phy@5b000 {
>> +			compatible = "qcom,ipq5018-usb-hsphy";
>> +			reg = <0x0005b000 0x120>;
>> +
>> +			clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>;
>> +
>> +			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
>> +
>> +			#phy-cells = <0>;
>> +
>> +			status = "disabled";
>> +		};
>> +
>> +		usb: usb2@8a00000 {
> usb@
>
> Node names should be generic. See also an explanation and list of
> examples (not exhaustive) in DT specification:
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
Sure, will update.

Regards,
Nitheesh

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
