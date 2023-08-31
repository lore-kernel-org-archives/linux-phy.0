Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D806DC83F24
	for <linux-phy@archiver.kernel.org>; Thu, 31 Aug 2023 02:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FJ7oMmB2+Mkr8fVhVL0q3JYN0PzPHlSuy3ytNBPv5Ao=; b=0FIIgaZlFjOalp
	FzeeIZLcfQMHDKGu81M135I4glKdhctaiQWnJ/LmIoaMUzL1bMu4iqW/AUSZlohgAi9kfXkIQfsaL
	aaw5pjtQ3uQ/PR6ul9TsQCTiAWT8eH5Uyw9Ks6FJREhZp91mv3a7NGgmD8unqotBAe17qixQcIpGu
	1hb3I8OKW1MXe1AzzD1opiRtkoOzJfSAatPiPlRSCEBv7Zwd6ToKaolVBVL1vDYaNt2bZiCPutgU1
	Qj7t4FKfa7+2CPU4sN2Ld4mnUKBT74lVkp2Oy2Cs2MWgONPTS8R+JeZjlDYUDwoNa9f5oyI5n690Z
	uGoL9EOn/q+0fc2teQLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbXmA-00EW5u-1C;
	Thu, 31 Aug 2023 02:51:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbXm6-00EW54-1S
	for linux-phy@lists.infradead.org;
	Thu, 31 Aug 2023 02:51:16 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37V2S2aX013410;
	Thu, 31 Aug 2023 02:50:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=gm1AbBaS6tTXaMdt9QpEidBZ5HzmTnaUJfvH6F1e1AI=;
 b=VR4/1wSUs0/rVP5uNhvjT3Qm03HRu8/5r9DXh1Y5ktkca9sq5w8AwV2KnUEhBeeCtbMB
 WWDaELfgyJvU79C9TXPigYs5RKRDAtKxNF5edgpS8rBXAJEGC50FB/o8epBiq3KKWXiV
 fWukEpn3Ho1JNOcK2jwabM0+koe+EVaeUaZiAXSP7ajKx3nzmeG7DzEOqnoahqAIuYho
 qqT4N1YYmwuBUFeYrmRusM9fUSTk1W5+twvQV4Nu10ZjG1iqvDKZM0pQ+P6krPxVPEI7
 7kbG0grbhu44yOA9b/yaOx1leqeVFZ+ct/RvMC6ZAmyIFhT8GSD5yEBIsV4Fkw1MZY/x lw== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3stj378199-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 31 Aug 2023 02:50:58 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37V2ovHb018369
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 31 Aug 2023 02:50:57 GMT
Received: from [10.50.47.209] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Wed, 30 Aug
 2023 19:50:40 -0700
Message-ID: <732a5351-f51f-59fe-ec5f-88ad638e5c81@quicinc.com>
Date: Thu, 31 Aug 2023 08:20:32 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 4/5] arm64: dts: qcom: ipq5018: Add USB related nodes
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <quic_srichara@quicinc.com>,
        <quic_varada@quicinc.com>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>,
        Amandeep Singh <quic_amansing@quicinc.com>
References: <20230825093531.7399-1-quic_nsekar@quicinc.com>
 <20230825093531.7399-5-quic_nsekar@quicinc.com>
 <CAA8EJprLwi3QKgTksTeSWkjmhFL69PO8Zmc=j3VMfAr_UpXJ=g@mail.gmail.com>
From: Nitheesh Sekar <quic_nsekar@quicinc.com>
In-Reply-To: <CAA8EJprLwi3QKgTksTeSWkjmhFL69PO8Zmc=j3VMfAr_UpXJ=g@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 18UEUSAl_1CghyGxmk-O1L6pm_KOgJVH
X-Proofpoint-ORIG-GUID: 18UEUSAl_1CghyGxmk-O1L6pm_KOgJVH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-31_01,2023-08-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 priorityscore=1501
 clxscore=1011 lowpriorityscore=0 mlxlogscore=819 bulkscore=0
 malwarescore=0 spamscore=0 phishscore=0 impostorscore=0 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308310024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_195114_512195_9A5A27D6 
X-CRM114-Status: GOOD (  14.40  )
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


On 8/31/2023 1:45 AM, Dmitry Baryshkov wrote:
> On Fri, 25 Aug 2023 at 12:37, Nitheesh Sekar <quic_nsekar@quicinc.com> wrote:
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
>>                                  status = "disabled";
>>                          };
>>                  };
>> +
>> +               usbphy0: phy@5b000 {
>> +                       compatible = "qcom,ipq5018-usb-hsphy";
>> +                       reg = <0x0005b000 0x120>;
>> +
>> +                       clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>;
>> +
>> +                       resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
>> +
>> +                       #phy-cells = <0>;
>> +
>> +                       status = "disabled";
>> +               };
>> +
>> +               usb: usb2@8a00000 {
>> +                       compatible = "qcom,ipq5018-dwc3", "qcom,dwc3";
>> +                       reg = <0x08af8800 0x400>;
>> +
>> +                       interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
>> +                       interrupt-names = "hs_phy_irq";
>> +
>> +                       clocks = <&gcc GCC_USB0_MASTER_CLK>,
>> +                                <&gcc GCC_SYS_NOC_USB0_AXI_CLK>,
>> +                                <&gcc GCC_USB0_SLEEP_CLK>,
>> +                                <&gcc GCC_USB0_MOCK_UTMI_CLK>;
>> +                       clock-names = "core",
>> +                                     "iface",
>> +                                     "sleep",
>> +                                     "mock_utmi";
>> +
>> +                       resets = <&gcc GCC_USB0_BCR>;
>> +
>> +                       qcom,select-utmi-as-pipe-clk;
>> +                       #address-cells = <1>;
>> +                       #size-cells = <1>;
>> +                       ranges;
>> +
>> +                       status = "disabled";
>> +
>> +                       usb2_0_dwc: usb@8a00000 {
> Could you please remove the `2_0' part of the label?
Sure.

Regards,
Nitheesh

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
