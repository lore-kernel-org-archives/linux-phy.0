Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E7F2C7115B
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jun 2025 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XLCDj6uhgxwJYNchsxOqGFdC1758vsFlhibPntlORvY=; b=ljgdP548HuHLop
	CHdu/S07qkiNmgCj0f28B+0TW1QxbW3/naapYoH7ttmGA/RTcU8SCmaFO/qoJpK/JB5OSCqiaq6Yg
	MTc4LIoDjoMf0nRwPU+q5lU9KV7LrsZ/aZdT2CaOYrQTU78HhypuPPCyRFh33eqqBocwn1S+Kjqy0
	5h2dJZK3foHdG7vjFr1BM+mhj+rtQeSvwXGRv56G71JzYWuPAm+II0yPTjOLrby2rOBq18D10wIMM
	66IY3kBEG1bHKHmwqZhyzi0oj2wqGTpC7kQ33Ha5lsrNbjHKQKRp+3dRfWHFGyE9jFVIyLIPQx+tB
	4XHdFW9G7+Bgi6FVsz/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRmwg-00000009Gdw-1JIF;
	Wed, 18 Jun 2025 07:10:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRmnc-00000009FMH-0hMp
	for linux-phy@lists.infradead.org;
	Wed, 18 Jun 2025 07:01:33 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55I45T3w010103;
	Wed, 18 Jun 2025 07:01:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vfjKqlbFovhKXQWVBQzLCyD+4Kfluz5EtoLnuQ7t9Uo=; b=f7ykjwsrss2yxHT4
	sD4yw827k79Bywm+m6zXJwHFyDDFKh9SiRWcr3XI82usAJZF/PXFPRAlTmJte5dg
	qLa0Uvm1KPPQm2WcEWOMtrhAHE4aq9oLmWxQBPz6xAV5OhjEIhO+RdZDqA1L5peb
	j2iVmVwoyj6XlTVk4VeIDwWM2hhEf2Y3NZHuIcisBJjEKr81PIAnZqTLsGwJr/Lj
	7aKDM4hSpLJ5mz0iUcCuHy/cR75EVhT9dBNWtRMu7KgK+/rmXm4l2m7e1INcfv0f
	K280F0z7lRgzYDo1p+UjeZBTms5mTZ6z5HPjLcgLxPJvMU8GNPBLnW+hbkrbfnGJ
	922qRg==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 479qp5spm2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 18 Jun 2025 07:01:24 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 55I71NrT029804
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 18 Jun 2025 07:01:23 GMT
Received: from [10.253.79.108] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 18 Jun
 2025 00:01:17 -0700
Message-ID: <51ba2ae0-50fd-4fbe-acc0-3e9f89a75049@quicinc.com>
Date: Wed, 18 Jun 2025 15:01:15 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: qcs615-ride: Enable PCIe
 interface
To: Manivannan Sadhasivam <mani@kernel.org>
CC: <lpieralisi@kernel.org>, <kwilczynski@kernel.org>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzk+dt@kernel.org>,
        <neil.armstrong@linaro.org>, <abel.vesa@linaro.org>, <kw@linux.com>,
        <conor+dt@kernel.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <andersson@kernel.org>, <konradybcio@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <quic_qianyu@quicinc.com>,
        <quic_krichai@quicinc.com>, <quic_vbadigan@quicinc.com>,
        Konrad Dybcio
	<konrad.dybcio@oss.qualcomm.com>
References: <20250527072036.3599076-1-quic_ziyuzhan@quicinc.com>
 <20250527072036.3599076-5-quic_ziyuzhan@quicinc.com>
 <6vfwiii4sawm722odw6hxomtsrd5m64pmjlqm5sr5m3nblih3m@jkn3txak5nix>
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
In-Reply-To: <6vfwiii4sawm722odw6hxomtsrd5m64pmjlqm5sr5m3nblih3m@jkn3txak5nix>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: V3s8nWWOqgslY7xCSjz1PZLPS267FGRb
X-Proofpoint-ORIG-GUID: V3s8nWWOqgslY7xCSjz1PZLPS267FGRb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE4MDA1OSBTYWx0ZWRfX2gxXA1Ta3GQd
 Upf8izMESJ/vX4JnijiGFWYwDTrnHOZjRqF5s+dp5F9Q0RQMa9DJPiFRiYvCQM4feoWLTnAdq6+
 vKpBTdlxQ5Z8li5qzvyDCqNG1XzkyKJnAg2quw/WWgCx7xQ5A8yvsFhmJ+JezEVP1HJrNNDSW91
 5ahc6N4t7laedsUZMVySB39U5QuqNTHCWnBts6oAgPOumaL5u4DeIqPQhHvHbRPA5y1o+ULpAnz
 XT9Y4LqH4voXcXwmcN5bhxWvm/Bpg+6wG/tSpKrId5gc1hUAyjtPKRDfBCYoF7bLBV4UacsngFN
 NHFbPwEHExN3gvd1CnHFxOpIgOT51QjnRk3IAVqEQhIejoZyCpDxPQKTJXWy9d9K42Jc1IioAdu
 8/GVjRBmvGVcd+FRoLj7XLe+/0i9QPn4PHLw0/15BCJrkVO002GEXUMnJ9zaI1f/YkeoDSZ4
X-Authority-Analysis: v=2.4 cv=fMc53Yae c=1 sm=1 tr=0 ts=68526444 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=KTbbhH3lz3gsKtoJeJUA:9 a=QEXdDO2ut3YA:10
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-18_02,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=999 spamscore=0 lowpriorityscore=0 impostorscore=0 mlxscore=0
 priorityscore=1501 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506180059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_000132_217019_DDD32346 
X-CRM114-Status: GOOD (  15.11  )
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


On 6/18/2025 12:33 AM, Manivannan Sadhasivam wrote:
> On Tue, May 27, 2025 at 03:20:36PM +0800, Ziyue Zhang wrote:
>> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
>>
>> Add platform configurations in devicetree for PCIe, board related
>> gpios, PMIC regulators, etc.
>>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
>> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
>> ---
>>   arch/arm64/boot/dts/qcom/qcs615-ride.dts | 42 ++++++++++++++++++++++++
>>   1 file changed, 42 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>> index 2b5aa3c66867..c59647e5f2d6 100644
>> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>> @@ -217,6 +217,23 @@ &gcc {
>>   		 <&sleep_clk>;
>>   };
>>   
>> +&pcie {
>> +	perst-gpios = <&tlmm 101 GPIO_ACTIVE_LOW>;
>> +	wake-gpios = <&tlmm 100 GPIO_ACTIVE_HIGH>;
>> +
>> +	pinctrl-0 = <&pcie_default_state>;
>> +	pinctrl-names = "default";
>> +
>> +	status = "okay";
>> +};
>> +
>> +&pcie_phy {
>> +	vdda-phy-supply = <&vreg_l5a>;
>> +	vdda-pll-supply = <&vreg_l12a>;
>> +
>> +	status = "okay";
>> +};
>> +
>>   &pm8150_gpios {
>>   	usb2_en: usb2-en-state {
>>   		pins = "gpio10";
>> @@ -244,6 +261,31 @@ &rpmhcc {
>>   	clocks = <&xo_board_clk>;
>>   };
>>   
>> +&tlmm {
>> +	pcie_default_state: pcie-default-state {
>> +		clkreq-pins {
>> +			pins = "gpio90";
>> +			function = "pcie_clk_req";
>> +			drive-strength = <2>;
>> +			bias-pull-up;
>> +		};
>> +
>> +		perst-pins {
>> +			pins = "gpio101";
>> +			function = "gpio";
>> +			drive-strength = <2>;
>> +			bias-pull-down;
> Are you sure that the default state of the pin should be 'pull down'? Pull down
> of a PERST# is deassert, which should only happen once the power and refclk are
> stable.
>
> - Mani

Hi Mani,

pull-down is assert, we need to make sure perset is asserted before refclk is
stable.

BRs
Ziyue


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
