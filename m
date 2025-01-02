Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A02E4E77188
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jan 2025 06:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dAUMNakXe7e4VFSX7rbsvsVKL0k5syx7SJRsaZYwynU=; b=YntEpDvbh3zbey
	28mqlq9/R4NJxReiX6LEuulAVj37g2OkuiNsb7jgYwj9m5070oEEjz+pz+rrnkYPmzGGNCZ+vTkU2
	WCH78JeBNgFoidggkLLqVFd1VNPEPPKoN9MIbE4LCjfkd0hFhKbIwh5dAkvrDIbkc/TV3nxONtz/a
	k3Xzb6TgVdRn+UWMqjVdX8+kpNtXaR65DNlyT3+y2eSQ9vVB+M1LXq0xAAfSKMmK+l8mkuBFiFIET
	sAWP1i/g9nDbIy4OYlRU42XvLhi9IZ8lbH88V3hXzC1971vNe9KlMP7oAznP5/70uFa0hqZlBtEmE
	sgL4MvByc95WL4IVc4IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTEOF-00000009nZw-2VeI;
	Thu, 02 Jan 2025 06:09:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTEOD-00000009nZV-1Tij
	for linux-phy@lists.infradead.org;
	Thu, 02 Jan 2025 06:09:02 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 501NR65x015762;
	Thu, 2 Jan 2025 06:08:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	o4zSJ9D8YtpU9oWUMzOF0AsOSNX9YfvYK0GVDA0jsvE=; b=O3OyWlkY4v6hrlNI
	sicesMactFTuyNyFo6hLf3iBya1HPvi5s1RpnwAtzqtlPfss+KExgLqjJ5/OxYtX
	cpjyHNXCHMW5j+YcgnwACXbkM7eSsyNTyyCPpeERDchlrZsLgN4WE7HvEdXY7036
	RcyVwN/p79bt4sUpHvLIgA36hMuQ2qL9GisVHz+TP0Iyy4COwUjKao7s5Anb4OYF
	UA0ocHyqunh/yfLmG4iWJF2Lxv2k38uk+poyxyew8bodDg1YPp7QK/G4o2pTcyOB
	6oaMhcBHgRtccbwabW3wRi3YERHL7f9NRNy7VkUnFzZ1bDSxhJlMrLhUjUgabgUW
	S28z+w==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43w6xah3fv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 02 Jan 2025 06:08:48 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 50268lHT030800
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 2 Jan 2025 06:08:47 GMT
Received: from [10.152.195.140] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 1 Jan 2025
 22:08:42 -0800
Message-ID: <daffc5bc-c430-4400-af4d-404cd5984c59@quicinc.com>
Date: Thu, 2 Jan 2025 11:38:39 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: ipq5424: Enable PCIe PHYs and
 controllers
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, <bhelgaas@google.com>,
        <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>
CC: <quic_srichara@quicinc.com>, <quic_varada@quicinc.com>
References: <20241213134950.234946-1-quic_mmanikan@quicinc.com>
 <20241213134950.234946-5-quic_mmanikan@quicinc.com>
 <e28773ef-12a4-4089-9c7b-1be5e5cc7aa5@oss.qualcomm.com>
Content-Language: en-US
From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
In-Reply-To: <e28773ef-12a4-4089-9c7b-1be5e5cc7aa5@oss.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: lfQq-CHW-M3dcK6cu3U_ienmjoyz1sBb
X-Proofpoint-ORIG-GUID: lfQq-CHW-M3dcK6cu3U_ienmjoyz1sBb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 impostorscore=0 mlxlogscore=837 mlxscore=0 spamscore=0 phishscore=0
 adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501020052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250101_220901_401497_05C07011 
X-CRM114-Status: GOOD (  13.22  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 12/13/2024 8:37 PM, Konrad Dybcio wrote:
> On 13.12.2024 2:49 PM, Manikanta Mylavarapu wrote:
>> Enable the PCIe controller and PHY nodes corresponding to RDP466.
>>
>> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
>> ---
> 
> 
>>  arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts | 43 +++++++++++++++++++++
>>  1 file changed, 43 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
>> index d4d31026a026..8857b64df1be 100644
>> --- a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
>> +++ b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
>> @@ -45,6 +45,26 @@ data-pins {
>>  			bias-pull-up;
>>  		};
>>  	};
>> +
>> +	pcie2_default_state: pcie2-default-state {
>> +		perst-n-pins {
>> +			pins = "gpio31";
>> +			function = "gpio";
>> +			drive-strength = <8>;
>> +			bias-pull-up;
>> +			output-low;
>> +		};
>> +	};
> 
> Drop the inner wrapper, in both definitions /\ \/
> 
> Konrad
> 

Okay, sure.

Thanks & Regards,
Manikanta.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
