Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4E66C36005
	for <linux-phy@archiver.kernel.org>; Mon, 24 Mar 2025 11:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:CC:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kI8Qd6ToqKo2a1ncXtS4jgepckkpJ9VUhKF2P90ic/8=; b=xDCxpKm82IzUfn
	7iNo+5Xzsp39zv8rPjq8Nf+1CuUSvo3o1Gaa69okwA0MzKd7uMAT2HBBn7hn21Ro60fzL8+mL8emN
	hG4Gslx27Arh5Fv8LBrxS32GpMjNtHmK9ZgbT07JMr+5fkZ9THtS2yk3EQhp4gpwWkiTn2JNIpjrb
	gunjeDiJn8kfrqCU8TXPeQ3Zf2MsMh/rylf7a3eoV5jlUQZ6rAgXC5IoxhS4TYAbYqdXynkC+FLjj
	8uFSDmw4ooWTwjK5AP12BJal2rHqWY030JJdkxeMrxWgq6qukjVvUALLS4nG7fgoD09WOunWl6W6U
	pFARKOrc8rwTSyFBkpQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twfph-00000002vqO-20az;
	Mon, 24 Mar 2025 11:19:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twfpe-00000002vpz-3VTa
	for linux-phy@lists.infradead.org;
	Mon, 24 Mar 2025 11:19:04 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52O9PN1R002624;
	Mon, 24 Mar 2025 11:18:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	w1lri5MqZbIT02ibyEkRFfUvHwlxk+LHgwBFL00OjhI=; b=gY00k1gFxfLivE8E
	BZ6xyau2fQ8qg/XSRLgGkrvj0h0glPqCiXIvsUEk4hHQgmJBJGvs/PfxscWhCzlv
	iIjSvuifJUFY8i0wxl6FyxYDKEeVpDdt/nS6nOuISM6v2mcTMKdxpPWe9O6VdR9Q
	aqskGrcVhXfHCT8iPd77JTdd0+Hdl1DtnoVIKjVUHQvrZXDSlKYnyRlWtX68G7CT
	nfuQRDU8luvIK/LHnRDDI+273AlkA0rzm5DoF6oNwNLislM24plUmP9Bq09J+pen
	4z2Wk3KtL0ufzWVQAjuhrA0K90e66nYzZWSfFeSRwBRera2gG1FJwLAvxxDZeBnD
	SXlQOA==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45hmhk46mn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 24 Mar 2025 11:18:53 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 52OBIqhV027639
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 24 Mar 2025 11:18:52 GMT
Received: from [10.151.37.172] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 24 Mar
 2025 04:18:46 -0700
Message-ID: <6fa2bd30-762b-4a3a-b94f-8798c027764a@quicinc.com>
Date: Mon, 24 Mar 2025 16:48:34 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Praveenkumar I <quic_ipkumar@quicinc.com>
Subject: Re: [PATCH v6 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        <george.moussalem@outlook.com>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Bjorn Helgaas
	<bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Bjorn Andersson
	<andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-pci@vger.kernel.org>,
        <20250317100029.881286-2-quic_varada@quicinc.com>,
        Sricharan R
	<quic_srichara@quicinc.com>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
 <20250321-ipq5018-pcie-v6-5-b7d659a76205@outlook.com>
 <a4n3w62bg6x2iux4z7enu3po56hr5pcavjfmvtzdcwv2w4ptrr@ssvfdrltfg5y>
Content-Language: en-US
In-Reply-To: <a4n3w62bg6x2iux4z7enu3po56hr5pcavjfmvtzdcwv2w4ptrr@ssvfdrltfg5y>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=C4PpyRP+ c=1 sm=1 tr=0 ts=67e13f9d cx=c_pps a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=UqCG9HQmAAAA:8 a=KKAkSRfTAAAA:8
 a=togc-Yv_Yop6_gjJSswA:9 a=QEXdDO2ut3YA:10 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: tvOXR0j-S9vTqQaLenCORO2uNHcFWaqZ
X-Proofpoint-ORIG-GUID: tvOXR0j-S9vTqQaLenCORO2uNHcFWaqZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-24_04,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxscore=0
 phishscore=0 mlxlogscore=999 priorityscore=1501 impostorscore=0
 bulkscore=0 clxscore=1011 spamscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503240082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_041903_020668_8E84531C 
X-CRM114-Status: GOOD (  16.32  )
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



On 3/24/2025 1:26 PM, Manivannan Sadhasivam wrote:
> On Fri, Mar 21, 2025 at 04:14:43PM +0400, George Moussalem via B4 Relay wrote:
>> From: Nitheesh Sekar<quic_nsekar@quicinc.com>
>>
>> Add phy and controller nodes for a 2-lane Gen2 and
> Controller is Gen 3 capable but you are limiting it to Gen 2.
>
>> a 1-lane Gen2 PCIe bus. IPQ5018 has 8 MSI SPI interrupts and
>> one global interrupt.
>>
>> Signed-off-by: Nitheesh Sekar<quic_nsekar@quicinc.com>
>> Signed-off-by: Sricharan R<quic_srichara@quicinc.com>
>> Signed-off-by: George Moussalem<george.moussalem@outlook.com>
> One comment below. With that addressed,
>
> Reviewed-by: Manivannan Sadhasivam<manivannan.sadhasivam@linaro.org>
>
>> ---
>>   arch/arm64/boot/dts/qcom/ipq5018.dtsi | 234 +++++++++++++++++++++++++++++++++-
>>   1 file changed, 232 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
>> index 8914f2ef0bc4..d08034b57e80 100644
>> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
>> @@ -147,6 +147,40 @@ usbphy0: phy@5b000 {
>>   			status = "disabled";
>>   		};
>>   
>> +		pcie1_phy: phy@7e000{
>> +			compatible = "qcom,ipq5018-uniphy-pcie-phy";
>> +			reg = <0x0007e000 0x800>;
>> +
>> +			clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
>> +
>> +			resets = <&gcc GCC_PCIE1_PHY_BCR>,
>> +				 <&gcc GCC_PCIE1PHY_PHY_BCR>;
>> +
>> +			#clock-cells = <0>;
>> +			#phy-cells = <0>;
>> +
>> +			num-lanes = <1>;
>> +
>> +			status = "disabled";
>> +		};
>> +
>> +		pcie0_phy: phy@86000{
>> +			compatible = "qcom,ipq5018-uniphy-pcie-phy";
>> +			reg = <0x00086000 0x800>;
>> +
>> +			clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
>> +
>> +			resets = <&gcc GCC_PCIE0_PHY_BCR>,
>> +				 <&gcc GCC_PCIE0PHY_PHY_BCR>;
>> +
>> +			#clock-cells = <0>;
>> +			#phy-cells = <0>;
>> +
>> +			num-lanes = <2>;
>> +
>> +			status = "disabled";
>> +		};
>> +
>>   		tlmm: pinctrl@1000000 {
>>   			compatible = "qcom,ipq5018-tlmm";
>>   			reg = <0x01000000 0x300000>;
>> @@ -170,8 +204,8 @@ gcc: clock-controller@1800000 {
>>   			reg = <0x01800000 0x80000>;
>>   			clocks = <&xo_board_clk>,
>>   				 <&sleep_clk>,
>> -				 <0>,
>> -				 <0>,
>> +				 <&pcie0_phy>,
>> +				 <&pcie1_phy>,
>>   				 <0>,
>>   				 <0>,
>>   				 <0>,
>> @@ -387,6 +421,202 @@ frame@b128000 {
>>   				status = "disabled";
>>   			};
>>   		};
>> +
>> +		pcie1: pcie@80000000 {
>> +			compatible = "qcom,pcie-ipq5018";
>> +			reg = <0x80000000 0xf1d>,
>> +			      <0x80000f20 0xa8>,
>> +			      <0x80001000 0x1000>,
>> +			      <0x00078000 0x3000>,
>> +			      <0x80100000 0x1000>,
>> +			      <0x0007b000 0x1000>;
>> +			reg-names = "dbi",
>> +				    "elbi",
>> +				    "atu",
>> +				    "parf",
>> +				    "config",
>> +				    "mhi";
>> +			device_type = "pci";
>> +			linux,pci-domain = <0>;
>> +			bus-range = <0x00 0xff>;
>> +			num-lanes = <1>;
>> +			max-link-speed = <2>;
> This still needs some justification. If Qcom folks didn't reply, atleast move
> this to board dts with a comment saying that the link is not coming up with
> Gen3.
>
> - Mani
The IPQ5018 PCIe controller can support Gen3, but the PCIe phy is 
limited Gen2 and does not supported Gen3.
Hence, it is restricted using the DTSI property.

--
Thanks,
Praveenkumar


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
