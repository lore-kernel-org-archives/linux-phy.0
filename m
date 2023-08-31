Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69D41C83F29
	for <linux-phy@archiver.kernel.org>; Thu, 31 Aug 2023 03:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RemdqxPCoINwALru9S7Rs9jc8i1d9v9a++UpD21Vcjw=; b=KwE2QdJ9kTphGy
	oDXxFbk3+3RV5bVS6lxLrxMyhMXfMWUVy6RTHTqtTc4uKy6JHp3gkP4w7oc1VdsyjJ/TJQDvB+9Pp
	XPyePmaFCn13XFV6qOg/TSSd2GglGdbv0bdryPWpu837jiRd87I5B9l50ywftQkBIWvGnoOIfoXUL
	J722FfTu1GbKFgYudeljgheLB1DYWM2l3U/i+Af0p4Qmz+Rje+mNRL0wGyoev/YdOt68lRBn7WU73
	h5EnhmrDVsd/Nq2l2Cry37/Or+4q9BYgvH4JojMPrxUgHOHtEEFpTpIrHa466TmiSB/rX447S/jNw
	DgZUnPTHMyXvtn9el+vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbY5O-00EXBy-2v;
	Thu, 31 Aug 2023 03:11:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbY5K-00EXBZ-00
	for linux-phy@lists.infradead.org;
	Thu, 31 Aug 2023 03:11:09 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37V35Iha017109;
	Thu, 31 Aug 2023 03:10:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=YeEzwvxUn1WAX81VaEpzajYtp7+GEhvbmqc3BNHy2nk=;
 b=c7AvZiq/yJ1nn+waI0zq6Isxt7pbsimzYOQtJM1U6Dy35OiN7cMfEa2Z8nwNv+/Rg9VJ
 t1+/G65bb3EHpAj0Yk+2wG8rv9+B34hH4kez2b7XN/QWYUOUWOD3Tp80F6bLz9RUK/Z+
 mb+9LforlBnI8m/9GcCyXYfXQ7J6KcNR6paf3Wi6u7vLXy/hik3d+XHb+P/xO5sjgPw4
 bXDi4lF3pBYGpEPtUmldMWdds69zDOMW7z1QPlaNBJ/YRulCkCEiss7ETkBFVAglMYUS
 1DyPTTqaioMUvx9eUQPgda9Iojbvafsmc5WRShubTWRfpXcyIo1yim0ZoOnZCPz4ErdD XA== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ssv00aq0k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 31 Aug 2023 03:10:58 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37V3Avdt010012
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 31 Aug 2023 03:10:57 GMT
Received: from [10.50.47.209] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Wed, 30 Aug
 2023 20:10:51 -0700
Message-ID: <bbb42f12-fcb5-ade6-ab67-60a4cdb29c43@quicinc.com>
Date: Thu, 31 Aug 2023 08:40:48 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH V2 3/4] arm64: dts: qcom: ipq5018: Add USB related nodes
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
References: <20230830111722.19380-1-quic_nsekar@quicinc.com>
 <20230830111722.19380-4-quic_nsekar@quicinc.com>
 <CAA8EJpr3SnEXRENAgzdemANnYWvwM7Z-xyZYe335O45Jps91kg@mail.gmail.com>
From: Nitheesh Sekar <quic_nsekar@quicinc.com>
In-Reply-To: <CAA8EJpr3SnEXRENAgzdemANnYWvwM7Z-xyZYe335O45Jps91kg@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Z7IT0J9C-ZqezfoN4bp6LT-VzFsQO5jX
X-Proofpoint-GUID: Z7IT0J9C-ZqezfoN4bp6LT-VzFsQO5jX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-31_01,2023-08-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 spamscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 adultscore=0 mlxlogscore=798 lowpriorityscore=0 phishscore=0 clxscore=1015
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308310027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_201106_054385_8224E1A0 
X-CRM114-Status: GOOD (  16.08  )
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


On 8/31/2023 1:13 AM, Dmitry Baryshkov wrote:
> On Wed, 30 Aug 2023 at 21:30, Nitheesh Sekar <quic_nsekar@quicinc.com> wrote:
>> Add USB phy and controller nodes.
>>
>> Co-developed-by: Amandeep Singh <quic_amansing@quicinc.com>
>> Signed-off-by: Amandeep Singh <quic_amansing@quicinc.com>
>> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
>> ---
>> V2:
>>          Fix ordering of the USB related nodes and use
>>          generic node names.
>> ---
>>   arch/arm64/boot/dts/qcom/ipq5018.dtsi | 54 +++++++++++++++++++++++++++
>>   1 file changed, 54 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
>> index 9f13d2dcdfd5..917e4a2d8e64 100644
>> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
>> @@ -93,6 +93,19 @@
>>                  #size-cells = <1>;
>>                  ranges = <0 0 0 0xffffffff>;
>>
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
>>                  tlmm: pinctrl@1000000 {
>>                          compatible = "qcom,ipq5018-tlmm";
>>                          reg = <0x01000000 0x300000>;
>> @@ -155,6 +168,47 @@
>>                          status = "disabled";
>>                  };
>>
>> +               usb: usb@8af8800 {
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
> As we have seen from the next patchset, this host supports USB 3.0.
> Can you please drop the 2_0 part of the label?
Sure. Will drop "2_0".

Regards,
Nitheesh

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
