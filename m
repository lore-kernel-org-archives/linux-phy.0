Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19A36C02198
	for <linux-phy@archiver.kernel.org>; Sat,  8 Feb 2025 17:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZiBTXFhUUlbUA6mjJkXNeFoOGlf2XiUn6u8hR9JvSs=; b=ky9+Mg/ys9Vmg0
	v1p1j3yZUQgbRMJhQuBN4mtTvlqYive9UawBPq0fO4CICz+4G+dvpRSxvqlZlQWvyImcwuQ5yqj5e
	k9s7HrPaYy3Se+uWARmk4WNGx4869NB+JjF8xA2//s6QY/NbrkaoANJnEABQlyq5cHrdNSGfkJPlp
	U+ZDo7VSD2RBGFUh2C51oLo/ysGpuRBt2d0XKfBdklKKgerDyi24skNlgwJynVrYonqXJi248JLrg
	4YuZhNpoGkvlu5sRQuAqQ8op7Ugj5pvHwTZ/lcjXNZR7PCrRK1buramc6J/j23tMPvnWWgclyex/I
	8avB+UAZHx57dAxmgpoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgp5I-0000000DKsx-0nrY;
	Sat, 08 Feb 2025 17:57:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgp5G-0000000DKsZ-053G
	for linux-phy@lists.infradead.org;
	Sat, 08 Feb 2025 17:57:39 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5186CvrO013680;
	Sat, 8 Feb 2025 17:57:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NpWrkCiwW3pvwybb8EHr3au7Ie54oZ1lUb2xxHuPEb0=; b=hK/SfdIK3eQ+Jmea
	L7suKLvJSg/5SZcnllLqc4v4GtbcKem2SVmMUf64yPNL5k2lIh8xzBQCe1Dl2HvT
	e4SZQ5W+kuNYMj3XQHLpZfbnRzmv4oPnpv86ZvoSpmsl9uRQ55vn9yydSWQfKaUM
	Q3PugeFpDU/tC16jopnwDDrt8dmRgvBhfJ4CtStqtKPi13gMqM2G5zpLXR+O5P0K
	Yy8uEu2yXSwov6dBFYjXFKqxx0K8ZEwPOtupN8jlgOROdAbNLcSHXLY/ZCvq/ZPM
	EyfLHM8sffSuzN/02fWO6toADPgklBLgdnC4XxMAoSY/qyNIrmxRJKBNrqyqnpsd
	ykIc0A==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44p0g8ryv7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 08 Feb 2025 17:57:31 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 518HvU4D011878
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 8 Feb 2025 17:57:30 GMT
Received: from [10.216.46.73] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Sat, 8 Feb 2025
 09:57:22 -0800
Message-ID: <e21cd976-11dd-4a52-9134-fd06c11c0de7@quicinc.com>
Date: Sat, 8 Feb 2025 23:27:19 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] Add UFS support for SM8750
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Melody Olvera
	<quic_molvera@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay
 Abraham I" <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Alim Akhtar
	<alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche
	<bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andy Gross
	<agross@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        "Satya Durga
 Srinivasu Prabhala" <quic_satyap@quicinc.com>,
        Trilok Soni
	<quic_tsoni@quicinc.com>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>, Manish Pandey <quic_mapa@quicinc.com>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <c6352263-8329-4409-b769-a22f98978ac8@oss.qualcomm.com>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <c6352263-8329-4409-b769-a22f98978ac8@oss.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: emLGHLQnAEIdVywC6tNbc8LHtI-kOvLI
X-Proofpoint-ORIG-GUID: emLGHLQnAEIdVywC6tNbc8LHtI-kOvLI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-08_08,2025-02-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 malwarescore=0
 adultscore=0 lowpriorityscore=0 phishscore=0 mlxscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502080152
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250208_095738_077858_B4E31612 
X-CRM114-Status: GOOD (  14.59  )
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



On 2/8/2025 4:17 AM, Konrad Dybcio wrote:
> On 13.01.2025 10:46 PM, Melody Olvera wrote:
>> Add UFS support for SM8750 SoCs.
>>
>> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
>> ---
>> Nitin Rawat (5):
>>        dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document the SM8750 QMP UFS PHY
>>        phy: qcom-qmp-ufs: Add PHY Configuration support for SM8750
>>        dt-bindings: ufs: qcom: Document the SM8750 UFS Controller
>>        arm64: dts: qcom: sm8750: Add UFS nodes for SM8750 SoC
>>        arm64: dts: qcom: sm8750: Add UFS nodes for SM8750 QRD and MTP boards
> 
> You still need the same workaround 8550/8650 have in the UFS driver
> (UFSHCD_QUIRK_BROKEN_LSDBS_CAP) for it to work reliably, or at least
> that was the case for me on a 8750 QRD.

Hi Konrad,

The LSDBS workaround is only applicable for SM8650 and SM8550.
SM8750 and onwards doesn't need this WA anymore as it is fixed in HW.

Thanks,
Nitin
> 
> Please check whether we can make that quirk apply based on ctrl
> version or so, so that we don't have to keep growing the compatible
> list in the driver.
> 
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
