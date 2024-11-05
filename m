Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB3D7D1CA26
	for <linux-phy@archiver.kernel.org>; Tue,  5 Nov 2024 05:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trJEjX9KThFnEdOu14XwwTRCKWfBMi2N7F6OhdjzAtQ=; b=BGAnynMJkegPhz
	d2NLbxRX6Xreo+O7dwmI8V3W3N9tK5HBrN5fLeMwTgaoRHwW2cujKETaFnxhd0HvoLV8Ij6FAT6Vp
	MH+lpHyEHKnImf2Ktn5P87/nyKEw4JrRXrxMFD58WRt2AP+unXqu863acRtKQHkfN/H48bjM2DyTo
	WTVdf+5a9pDQVfGnVMpRxQOsrjgCyI0Z2gFPSaawhRx5DhnxPMU4HwtyAUfb71BHby7qyzU2kQVMk
	KDrYPk7/L2X4nT5GPlcEsGuOSydQMIN4blz6hQcYAEiEhTbUvJkVMvHec5dCFE+RDSt5fooE4o7r+
	f6wWQ0cmhf7Zm63p1S3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8C7e-0000000FwRE-4A9T;
	Tue, 05 Nov 2024 05:28:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8C7b-0000000FwQ5-2pwh
	for linux-phy@lists.infradead.org;
	Tue, 05 Nov 2024 05:28:57 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A4LJlT2031387;
	Tue, 5 Nov 2024 05:28:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gXEhXPOP+Mqn4mzjrY2u7twKAWMpRp+PxdP/brBj3vk=; b=UNrqmaKFH6dJRFym
	CoLtg8xFinKShF/9fKYl3AsqdmMpaOq+J9lOuzCLzwMeOYqTUZ46yI2vxLudaL46
	MGB422BDxQk2KJqdg/nxDWZINGAQEKP9v4Z6dzkMVzQcCGtw+LBkWdJAmiS6Apt2
	xOMXlSMiB14iPH7/PNBVugPtq/jJQdZaeEei1GxrRJy8ZW1aYj+QEeWtCrovCBBp
	ngaCqd5wztQgBd9XYStwz7LIsAQzp81m8vlCZ8YGo0jv/IrD5VpT/abNyf39iYEW
	0PtIGm1bmaKA87tMxCTSyVoG8EZoni9Iw1KI+0gNVn02C5WFt6P+jgRxXp95ajfr
	czwmvw==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42nd286fje-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 05 Nov 2024 05:28:48 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4A55Slwb010713
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 5 Nov 2024 05:28:47 GMT
Received: from [10.239.29.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 4 Nov 2024
 21:28:41 -0800
Message-ID: <de5f40ab-90b7-4c75-b981-dd5824650660@quicinc.com>
Date: Tue, 5 Nov 2024 13:28:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 5/5] arm64: dts: qcom: x1e80100: Add support for PCIe3
 on x1e80100
To: Johan Hovold <johan@kernel.org>
CC: <manivannan.sadhasivam@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <abel.vesa@linaro.org>,
        <quic_msarkar@quicinc.com>, <quic_devipriy@quicinc.com>,
        <dmitry.baryshkov@linaro.org>, <kw@linux.com>, <lpieralisi@kernel.org>,
        <neil.armstrong@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-clk@vger.kernel.org>, <johan+linaro@kernel.org>
References: <20241101030902.579789-1-quic_qianyu@quicinc.com>
 <20241101030902.579789-6-quic_qianyu@quicinc.com>
 <ZyjbrLEn8oSJjaZN@hovoldconsulting.com>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <ZyjbrLEn8oSJjaZN@hovoldconsulting.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: zf0OywGt1z_V4G9bDkX0nPa9tCHrXwCY
X-Proofpoint-GUID: zf0OywGt1z_V4G9bDkX0nPa9tCHrXwCY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=999
 clxscore=1015 lowpriorityscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 phishscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411050038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_212855_887156_BBB85F50 
X-CRM114-Status: GOOD (  12.86  )
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


On 11/4/2024 10:35 PM, Johan Hovold wrote:
> On Thu, Oct 31, 2024 at 08:09:02PM -0700, Qiang Yu wrote:
>> Describe PCIe3 controller and PHY. Also add required system resources like
>> regulators, clocks, interrupts and registers configuration for PCIe3.
>>
>> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>> Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
>   
>> +		pcie3: pcie@1bd0000 {
>> +			device_type = "pci";
>> +			compatible = "qcom,pcie-x1e80100";
>> +			reg = <0x0 0x01bd0000 0x0 0x3000>,
>> +			      <0x0 0x78000000 0x0 0xf1d>,
>> +			      <0x0 0x78000f40 0x0 0xa8>,
>> +			      <0x0 0x78001000 0x0 0x1000>,
>> +			      <0x0 0x78100000 0x0 0x100000>,
>> +			      <0x0 0x01bd3000 0x0 0x1000>;
>> +			reg-names = "parf",
>> +				    "dbi",
>> +				    "elbi",
>> +				    "atu",
>> +				    "config",
>> +				    "mhi";
>> +			#address-cells = <3>;
>> +			#size-cells = <2>;
>> +			ranges = <0x01000000 0x0 0x00000000 0x0 0x78200000 0x0 0x100000>,
>> +				 <0x02000000 0x0 0x78300000 0x0 0x78300000 0x0 0x3d00000>,
> Can you double check the size here so that it is indeed correct and not
> just copied from the other nodes which initially got it wrong:
>
> 	https://lore.kernel.org/lkml/20240710-topic-barman-v1-1-5f63fca8d0fc@linaro.org/
 From memory maps, region of PCIe3 is 64MB, the size here is correct.

Thanks,
Qiang Yu
>
>> +				 <0x03000000 0x7 0x40000000 0x7 0x40000000 0x0 0x40000000>;
>> +			bus-range = <0x00 0xff>;
>> +			clocks = <&gcc GCC_PCIE_3_AUX_CLK>,
>> +				 <&gcc GCC_PCIE_3_CFG_AHB_CLK>,
>> +				 <&gcc GCC_PCIE_3_MSTR_AXI_CLK>,
>> +				 <&gcc GCC_PCIE_3_SLV_AXI_CLK>,
>> +				 <&gcc GCC_PCIE_3_SLV_Q2A_AXI_CLK>,
>> +				 <&gcc GCC_CFG_NOC_PCIE_ANOC_NORTH_AHB_CLK>,
>> +				 <&gcc GCC_CNOC_PCIE_NORTH_SF_AXI_CLK>;
>> +			clock-names = "aux",
>> +				      "cfg",
>> +				      "bus_master",
>> +				      "bus_slave",
>> +				      "slave_q2a",
>> +				      "noc_aggr",
>> +				      "cnoc_sf_axi";
>> +
>> +			assigned-clocks = <&gcc GCC_PCIE_3_AUX_CLK>;
>> +			assigned-clock-rates = <19200000>;
>> +
>> +			interconnects = <&pcie_south_anoc MASTER_PCIE_3 QCOM_ICC_TAG_ALWAYS
> This should be &pcie_north_anoc
>
>> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
>> +					 &cnoc_main SLAVE_PCIE_3 QCOM_ICC_TAG_ALWAYS>;
>> +			interconnect-names = "pcie-mem",
>> +					     "cpu-pcie";
> With the above addressed, feel free to keep my Reviewed-by tag.
>
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
