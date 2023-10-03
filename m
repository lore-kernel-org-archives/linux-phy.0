Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD549E7AD77
	for <linux-phy@archiver.kernel.org>; Tue,  3 Oct 2023 17:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TirlNrg9wXek9Qp6XIrY+7hv3bZ979tGcE/6uxN4TBo=; b=a9Vz+mVdfelSBy
	/hRzefRRTUu9kwbLSyisDmZMuAOQh45TPHcm4/Tn9DgFVRQgyIKwzPPv6e20tJ0APbS3PVT59g0qt
	soOk7oUEZsru/VyyMFHnl74fd7tehu8SKj2Cbngvk9QywMZVYb/Vfwb4OJZbiSPJ9ReGSLAVZoQK4
	KfgjBWABz0Hb+c67Z2zQdB49EWfY3f0AFbaaapm5HBtu75sIkTIR8MQfZl7aO4+2qVeima+PFih0A
	FCVC74Y2y9bNeqbJiRPaJ8W8FI2H5/fAmSTEtzr5e+sK3/yxAqP244+wV9+pJeJ4uVUigjLI4673k
	Iblu1mIteTC7Ip/aWomg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnjDy-00F30r-1Z;
	Tue, 03 Oct 2023 17:30:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnjDu-00F2zV-0r
	for linux-phy@lists.infradead.org;
	Tue, 03 Oct 2023 17:30:20 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 393H72aO017586;
	Tue, 3 Oct 2023 17:29:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=jgeKjkDTDlV1euYjkhGRGv0noKADub9qxWJVNSkF6LE=;
 b=PWUdW3Yeeiv8PiZRCpayjO/HF9ZQk3pLo6QZTFLfVuabcT9dla8soq/pTnELMRa7lUJW
 pQv3/sjAg64fIKfj155R+7QjaLIg1bNM7iemZQVm9lcKxbRXXHKNDDJIzl/PvY7/tuO8
 UoXujhOphkyrVh1aVGphQAQgv4zaIihxml/+3eqx95tvH25Jyv/WcXNxxG2IhJl5jPVU
 aKtuMx4NqeYUt5QnbFsYwpiLOHCvQ2kCPBVdvPxjmzGbv5T54hjDlvw5K3Sseeg7oqTm
 RZOGgtuLUS2ZZRTpICcLGPoxopvYOSzNiiIhWZ4+ADDdAIVI7x1Lpj7BwvqY/SfjLIaa WQ== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tg1v3b10m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 03 Oct 2023 17:29:59 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 393HTwOo003057
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 3 Oct 2023 17:29:58 GMT
Received: from [10.50.44.150] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Tue, 3 Oct
 2023 10:29:51 -0700
Message-ID: <da76b7ad-3157-4dbe-8987-5a7796dd71dc@quicinc.com>
Date: Tue, 3 Oct 2023 22:59:47 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <mani@kernel.org>, <p.zabel@pengutronix.de>,
        <quic_srichara@quicinc.com>, <quic_varada@quicinc.com>,
        <quic_ipkumar@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
References: <20231003120846.28626-1-quic_nsekar@quicinc.com>
 <20231003120846.28626-6-quic_nsekar@quicinc.com>
 <CAA8EJpoKq4TVzNHKLjgezTk9je-3OPv4g852anr7SnECJNw2xQ@mail.gmail.com>
From: Nitheesh Sekar <quic_nsekar@quicinc.com>
In-Reply-To: <CAA8EJpoKq4TVzNHKLjgezTk9je-3OPv4g852anr7SnECJNw2xQ@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: ujHLPWB4OACxx4f6zdep-vdRGxssbWVR
X-Proofpoint-ORIG-GUID: ujHLPWB4OACxx4f6zdep-vdRGxssbWVR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-03_15,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 mlxscore=0 mlxlogscore=922 suspectscore=0 bulkscore=0
 clxscore=1011 spamscore=0 impostorscore=0 priorityscore=1501 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310030133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_103018_314324_FC916450 
X-CRM114-Status: GOOD (  18.11  )
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


On 10/3/2023 8:53 PM, Dmitry Baryshkov wrote:
> On Tue, 3 Oct 2023 at 15:10, Nitheesh Sekar <quic_nsekar@quicinc.com> wrote:
>> Add phy and controller nodes for PCIe_x2 and PCIe_x1.
>> PCIe_x2 is 2-lane Gen2 and PCIe_x1 is 1-lane Gen2.
>>
>> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
>> ---
>>   arch/arm64/boot/dts/qcom/ipq5018.dtsi | 186 +++++++++++++++++++++++++-
>>   1 file changed, 184 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
>> index 38ffdc3cbdcd..0818fdd1e693 100644
>> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
>> @@ -8,6 +8,7 @@
>>   #include <dt-bindings/interrupt-controller/arm-gic.h>
>>   #include <dt-bindings/clock/qcom,gcc-ipq5018.h>
>>   #include <dt-bindings/reset/qcom,gcc-ipq5018.h>
>> +#include <dt-bindings/gpio/gpio.h>
>>
>>   / {
>>          interrupt-parent = <&intc>;
>> @@ -94,6 +95,38 @@
>>                  #size-cells = <1>;
>>                  ranges = <0 0 0 0xffffffff>;
>>
>> +               pcie_x1phy: phy@7e000{
>> +                       compatible = "qcom,ipq5018-uniphy-pcie-gen2x1";
>> +                       reg = <0x0007e000 0x800>;
>> +                       #phy-cells = <0>;
>> +                       #clock-cells = <0>;
>> +                       clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
>> +                       clock-names = "pipe_clk";
>> +                       clock-output-names = "pcie1_pipe_clk";
>> +                       assigned-clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
>> +                       assigned-clock-rates = <125000000>;
>> +                       resets = <&gcc GCC_PCIE1_PHY_BCR>,
>> +                                <&gcc GCC_PCIE1PHY_PHY_BCR>;
>> +                       reset-names = "phy", "phy_phy";
>> +                       status = "disabled";
>> +               };
>> +
>> +               pcie_x2phy: phy@86000{
>> +                       compatible = "qcom,ipq5018-uniphy-pcie-gen2x2";
>> +                       reg = <0x00086000 0x800>;
>> +                       #phy-cells = <0>;
>> +                       #clock-cells = <0>;
>> +                       clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
>> +                       clock-names = "pipe_clk";
>> +                       clock-output-names = "pcie0_pipe_clk";
>> +                       assigned-clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
>> +                       assigned-clock-rates = <125000000>;
> Can this go into the PHY driver?
Sure. Will check and update.
>
>> +                       resets = <&gcc GCC_PCIE0_PHY_BCR>,
>> +                                <&gcc GCC_PCIE0PHY_PHY_BCR>;
>> +                       reset-names = "phy", "phy_phy";
>> +                       status = "disabled";
>> +               };
>> +
>>                  tlmm: pinctrl@1000000 {
>>                          compatible = "qcom,ipq5018-tlmm";
>>                          reg = <0x01000000 0x300000>;
>> @@ -117,8 +150,8 @@
>>                          reg = <0x01800000 0x80000>;
>>                          clocks = <&xo_board_clk>,
>>                                   <&sleep_clk>,
>> -                                <0>,
>> -                                <0>,
>> +                                <&pcie_x2phy>,
>> +                                <&pcie_x1phy>,
>>                                   <0>,
>>                                   <0>,
>>                                   <0>,
>> @@ -246,6 +279,155 @@
>>                                  status = "disabled";
>>                          };
>>                  };
>> +
>> +               pcie_x1: pci@80000000 {
>> +                       compatible = "qcom,pcie-ipq5018";
>> +                       reg =  <0x80000000 0xf1d
> Each address/size tuple should be a separate <> entry.
Sure. will update it.
>
>> +                               0x80000F20 0xa8
> lowercase
Sure. Will update.
>
>> +                               0x80001000 0x1000
>> +                               0x78000 0x3000
> Would you notice why this line stands away from the rest of entries here?

Sure. Will pad it Zeros.

Thanks,
Nitheesh


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
