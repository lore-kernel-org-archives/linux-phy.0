Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 799BCCF9C71
	for <linux-phy@archiver.kernel.org>; Wed, 25 Sep 2024 06:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdtQr+BfkQ/SeM2dPHBQAlNaMIXbytPyvQ6T4vJtlkQ=; b=Rb389aXKO8vGcg
	IF0Nn5Syrb+7/f8GYqAtwxWhJrb+aeQl0LekUw9XF/TzBwwIFLOwhXLjJBu7gViIOQJ7/D5fmcME2
	MraVJazCxALXftF197HbEr/mJcQHqwLkxiapyKyUAtqxRT7sj14zAkCnhazwgjI70miynZNt7Nyve
	S2oVtK28uQ7lVSeXazQLlNxZCM8j+LuKMT/6Y8jg+OKH8E5Lhezm/+J/hrd8/9+oPIAsmsTXGNmgD
	j3ZMxciPF+9CSsPS83VOM01jOkB2xUxXFNu9IE4AsaXMQy/Q16faSlmgSuztHWjna9u7IaammTuwn
	hl4D/UlCDqWy/bZRgsqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stLf4-00000004BZz-0FAA;
	Wed, 25 Sep 2024 06:38:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stLez-00000004BZF-3JCG
	for linux-phy@lists.infradead.org;
	Wed, 25 Sep 2024 06:38:03 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48OIDiDF014189;
	Wed, 25 Sep 2024 06:37:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dml4l8YTdpSXN3fvjDeknbMZkf62ADsnaczED9FK9e4=; b=XOtCx1jDy9mjdhL5
	N7gTxQK5JV8rZYG2h+vxmyXkej+KSosUkUE8jGEGyiAl4xX6tWFzyNKMZ2/ip2OD
	aFPlEQYyZW0+aCGNf85gSa4THD2Izp+p1e51j+LTjBqJEVwfePiqwsgWKFgrOBaY
	PuHBcEcGr8s1nhv+LgDZyz3762xjhKvdpdTACMRlrOg1/pZc1mVjtYspTW480oUf
	jxnvTNLoXZQvRtXBYE67NGeeRvMsA0Ok1GC6Et9FBH65qIHB9ImfxWbUhOMSBF5H
	jLWsiALDjPjWRNBAMS8KlA9+RYg6+0+AFZ9ZD43MSH6KSL7+hI79+OQI1lemn6BQ
	54NpaA==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41sn3sb09g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Sep 2024 06:37:50 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 48P6bnef003840
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Sep 2024 06:37:49 GMT
Received: from [10.239.29.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 24 Sep
 2024 23:37:43 -0700
Message-ID: <ee32742d-9daf-4bff-948b-cf2e705bc73f@quicinc.com>
Date: Wed, 25 Sep 2024 14:37:41 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/6] arm64: dts: qcom: x1e80100: Add support for PCIe3
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
        <linux-clk@vger.kernel.org>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-7-quic_qianyu@quicinc.com>
 <ZvLQFSjwR-TvHbm_@hovoldconsulting.com>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <ZvLQFSjwR-TvHbm_@hovoldconsulting.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: mpKWqdM3dO_f5WcpP9YB-8ZxXYKPRcS_
X-Proofpoint-ORIG-GUID: mpKWqdM3dO_f5WcpP9YB-8ZxXYKPRcS_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 phishscore=0
 mlxscore=0 impostorscore=0 spamscore=0 malwarescore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 mlxlogscore=966 clxscore=1015
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409250046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_233801_873837_1F7077C2 
X-CRM114-Status: GOOD (  13.18  )
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


On 9/24/2024 10:43 PM, Johan Hovold wrote:
> On Tue, Sep 24, 2024 at 03:14:44AM -0700, Qiang Yu wrote:
>> Describe PCIe3 controller and PHY. Also add required system resources like
>> regulators, clocks, interrupts and registers configuration for PCIe3.
>> @@ -2907,6 +2907,208 @@ mmss_noc: interconnect@1780000 {
>>   			#interconnect-cells = <2>;
>>   		};
>>   
>> +		pcie3: pcie@1bd0000 {
>> +			device_type = "pci";
>> +			compatible = "qcom,pcie-x1e80100";
>> +			interrupts = <GIC_SPI 158 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 166 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 769 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 836 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 671 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 200 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 218 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 219 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
>> +			interrupt-names = "msi0",
>> +					  "msi1",
>> +					  "msi2",
>> +					  "msi3",
>> +					  "msi4",
>> +					  "msi5",
>> +					  "msi6",
>> +					  "msi7",
>> +					  "global";
> This ninth "global" interrupt is not described by the bindings, which
> would also need to be updated. What is it used for?

As of now, the global interrupts is mainly used to get link up event so
that the device driver can enumerate the PCIe endpoint devices without
user intervention. You can refer to
https://lore.kernel.org/linux-pci/20240828-pci-qcom-hotplug-v4-11-263a385fbbcb@linaro.org.

I see this global interrupts has been documented in qcom,pcie-sm8450.yaml.
Do I need to move it to qcom,pcie-common.yaml?

Thanks,
Qiang
>
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
