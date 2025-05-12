Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3E54C3ABC3
	for <linux-phy@archiver.kernel.org>; Mon, 12 May 2025 09:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UeIbU6ErJEU/tLcUVW/YX0IHCquHxTK18//LXCCkezc=; b=TeqXcql73UsRrr
	gHzN4HgO4+KV+G+Iu4KXxyWKC11nmCdM+WFLovmzoCvNcDvYIrRsHlGPWLweYV6UauccRzi6JNT4J
	y3B5rijGanzY4lVEzuckDpNviG2kpJtm75ncfBTWX4OIyq5R2rbJsXMxUqYimr2z+zEXMsL5YMOQv
	XP2zXnZMRjuzBjAJV+mY0MTkfFMD6Up2+J3fIl+1+L/xwgwYo5P/68Bv7Sm9Oq2XeSmcPe85LxCpf
	wK+dluCAnMhQUhIjRFbYJdZ+6/TVVnV9/xzkRcDVVS7q325MW0NbkU4JnOaXC1e9j6jWlDQvha9VS
	WnzNdIzs6JRicZcppeYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEP4O-00000008s3V-1AZ4;
	Mon, 12 May 2025 09:03:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEP4K-00000008s2C-0T0Z
	for linux-phy@lists.infradead.org;
	Mon, 12 May 2025 09:03:30 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54BM1to9010230;
	Mon, 12 May 2025 09:03:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V/SjLHQBRX2ja8oprIqQBFz8Ft8CAPXfkAoMHk7fFCI=; b=SZN6k0q9EzYwlqGW
	nY11ZtMAtGfoWR5c/fK7lNqenesB45uOL/kK+hrG/+g2/akgustWRrLU+6LJ0/DZ
	GiEXuocpNDT1y7/axs5vegt10V6l8N3lZxHUo8U8fnYPcgvZwbJwTzN41cXu/20A
	PwAay/60aeB15JCuIuVPTkUrg4LX7NONow1NXq4fFhgAHnFAAfSl6t//+fcx82CI
	9fPqOO3wBUIOjMVJITjcdcvILmTCFYCWJjfH/mBa8K8GZpDrhylrFzSRR2i3V+fV
	iFQ5WPN68n+5WgzAfUkGn1zUR+OPqqVomXkVoqPlE1K2wCeVKDT29b5MWkAFTVoZ
	jwvC3Q==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46hv5qc1d3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 12 May 2025 09:03:20 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 54C93JDu026417
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 12 May 2025 09:03:19 GMT
Received: from [10.253.34.155] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 12 May
 2025 02:03:13 -0700
Message-ID: <37b5681b-ebf5-4956-8111-b53383dce755@quicinc.com>
Date: Mon, 12 May 2025 17:03:10 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/5] PCI: qcom: Add support for QCS615 SoC
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <dmitry.baryshkov@linaro.org>, <neil.armstrong@linaro.org>,
        <abel.vesa@linaro.org>, <manivannan.sadhasivam@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <bhelgaas@google.com>,
        <andersson@kernel.org>, <konradybcio@kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <quic_qianyu@quicinc.com>,
        <quic_krichai@quicinc.com>, <quic_vbadigan@quicinc.com>
References: <20250507031559.4085159-1-quic_ziyuzhan@quicinc.com>
 <20250507031559.4085159-6-quic_ziyuzhan@quicinc.com>
 <20250507-competent-meek-prawn-72badf@kuoka>
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
In-Reply-To: <20250507-competent-meek-prawn-72badf@kuoka>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=DqtW+H/+ c=1 sm=1 tr=0 ts=6821b958 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8
 a=xwpoersD-4fSveQz36wA:9 a=QEXdDO2ut3YA:10 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: UlH3xmLVWF4q9bbSi8q9-QGJjGEG42fe
X-Proofpoint-GUID: UlH3xmLVWF4q9bbSi8q9-QGJjGEG42fe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTEyMDA5NSBTYWx0ZWRfX2DTo/7znvrll
 w6MDuiEIrnfHXP4By3vbxklMKXgEB5MmWkMlUBilg+iPSo9JM9hMFvIa+8zRsShbwxMfjC0vPHv
 Y555rcRIZcTTMzWKTjNkxUm0NAbo0uwROM57U8OeFjdKCyPLZlBvNxHVNumWysknYA86JPhqfPW
 9VbWrD7d1x/a839tYyYbVL0E16YYSgKY3aQqGum9Fhhqw58SqorlJpCX71bDBsD419bLLoBU1WM
 WHnsLL45JZ4CINoxwTBohDPZG9EeYBobX8ovEBsmAeou2rLGrG49Fn6C88KA4KTdseAK9on7Wj8
 Ilj3qTrSqoDAepOQ8OK2sCinGPWHs2Fn/vmxdFGvVMJV0fCspBi56hjQ80o56XWraziV7pI0GFR
 v4TKYMibAMClTes8N9TpLjIWaKwwnPfMYDqah8moN5/CnpvRWI880oAflHXWP3rKXDBmZzve
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-12_03,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 bulkscore=0 phishscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 spamscore=0 mlxlogscore=999 malwarescore=0
 suspectscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505120095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250512_020328_271560_78F9F5DD 
X-CRM114-Status: GOOD (  18.90  )
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


On 5/7/2025 1:18 PM, Krzysztof Kozlowski wrote:
> On Wed, May 07, 2025 at 11:15:59AM GMT, Ziyue Zhang wrote:
>> Add the compatible and the driver data for QCS615 PCIe controller.
>> There is only one controller instance found on this platform, which
>> is capable of up to 8.0GT/s.
>> The version of the controller is 1.38.0 which is compatible with 1.9.0
>> config.
>>
>> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
>> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
>> ---
>>   drivers/pci/controller/dwc/pcie-qcom.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>> index dc98ae63362d..0ed934b0d1be 100644
>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>> @@ -1862,6 +1862,7 @@ static const struct of_device_id qcom_pcie_match[] = {
>>   	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
>>   	{ .compatible = "qcom,pcie-sm8550", .data = &cfg_1_9_0 },
>>   	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_sc8280xp },
>> +	{ .compatible = "qcom,qcs615-pcie", .data = &cfg_1_9_0 },
> Why? It's compatible with other entries, so why adding redundant entry
> here?
>
> Best regards,
> Krzysztof

Hi Krzysztof

If I use the compatible entry for qcs615 in the driver, do I need to
add qcom,qcs615-pcie to qcom,pcie-sm8550.yaml, or should I create a new
YAML file specifically for qcs615-pcie? Given that the PCIe cores on
qcs615 and sm8550 require different clocks, is it acceptable to combine
them in qcom,pcie-sm8550.yaml?

BRs
Ziyue


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
