Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07112E77188
	for <linux-phy@archiver.kernel.org>; Fri, 20 Dec 2024 11:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZYWoXSEsImiJ/YIK00ud0G4MU/RLO12t1e9uZHO+QY=; b=z8vkKSSk3XCrVG
	HktNojfv4uvlkaRNbDRqnpr0whKssxw3Mzo4SguDlFHjIao0vJS1I0Yi65Yx4k5ZDyuVnXw65BRs7
	+RzozU6wqz7Xv9if36RvPsn4kZNjmECd/ZbyCqrBaONcVY4bJvc5mNwUys2rIm1/rTdcUP7Cl2U+p
	ZXKyqIdiNHWnza4QA7kQnHGk/eq0WukFm5M0EMP52arBfkex8AQSqUom1xujlrCH/2WmNI9zdbsin
	BM7zjwx/tVowanhB2fBgvyHXEBdxq2B9d9W4d0sJzMGkVTDluGbZvNcvabRbbGTny/bpImPbzROQL
	APM3zcTkzIlI4fKbTT1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tObFf-00000004mlm-39WF;
	Fri, 20 Dec 2024 11:33:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tObBy-00000004lva-0Bra
	for linux-phy@lists.infradead.org;
	Fri, 20 Dec 2024 11:29:16 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BK6n0EH028591;
	Fri, 20 Dec 2024 11:29:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MPWkcTcIYJFDpVK5XdmX72WZWvyJATmGLKiYjjvUxyk=; b=lARRes2yO1cckMn/
	aRJcXX9jFE0TYkSR2jsIi3ipcd3yWcOs8FnTtucriIVxt/YDdnzYrbb2q7yQZqim
	3OiEVBH0zAOspaKs9M+Yj+XDZfoSRCpYLv4X8tnZZOvQ3dUL9n0+nj5VffpyV3zV
	IGv0KlYE1NmCR1/OqouguBN68Gr9BBNCMvjybpaV96gkpa9THUFhCMSTKohqmcK2
	iJQD9SNCkM+cm5rvUVp8rdzkBHSpNYf6EckYIIORC51/cPqOTRTHf5u8Lf/4dJvy
	sRDHLCT1ir8WP2Osn6zQGyCCAQRnhgq7MBiJnA3ZmLbgZqbtI3fwQeRqclX6lnXK
	08aMrQ==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43n3mxrr0p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 20 Dec 2024 11:29:05 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4BKBT46d028128
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 20 Dec 2024 11:29:04 GMT
Received: from [10.152.195.140] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 20 Dec
 2024 03:28:56 -0800
Message-ID: <0c7c1979-6fc3-4059-bf08-c94f6424b1dd@quicinc.com>
Date: Fri, 20 Dec 2024 16:58:53 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: ipq5424: Add PCIe PHYs and
 controller nodes
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
 <20241213134950.234946-4-quic_mmanikan@quicinc.com>
 <69dffe54-939d-47c3-b951-4a4dea11eae0@oss.qualcomm.com>
 <08fbde92-a827-4270-a143-cca56a274e6c@quicinc.com>
 <71d2135f-664a-465d-bc1f-051cc07c8537@oss.qualcomm.com>
Content-Language: en-US
From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
In-Reply-To: <71d2135f-664a-465d-bc1f-051cc07c8537@oss.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: ZzBnjh2nN8OwLgERvuK6_pJLmUbpRQ1g
X-Proofpoint-ORIG-GUID: ZzBnjh2nN8OwLgERvuK6_pJLmUbpRQ1g
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 mlxscore=0
 spamscore=0 suspectscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 clxscore=1015 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412200095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_032914_224112_E713AEB4 
X-CRM114-Status: GOOD (  14.08  )
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



On 12/20/2024 3:18 PM, Konrad Dybcio wrote:
> On 20.12.2024 7:42 AM, Manikanta Mylavarapu wrote:
>>
>>
>> On 12/13/2024 8:36 PM, Konrad Dybcio wrote:
>>> On 13.12.2024 2:49 PM, Manikanta Mylavarapu wrote:
>>>> Add PCIe0, PCIe1, PCIe2, PCIe3 (and corresponding PHY) devices
>>>> found on IPQ5424 platform. The PCIe0 & PCIe1 are 1-lane Gen3
>>>> host whereas PCIe2 & PCIe3 are 2-lane Gen3 host.
>>>>
>>>> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
>>>> ---
> 
> [...]
> 
>>>>  		tlmm: pinctrl@1000000 {
>>>>  			compatible = "qcom,ipq5424-tlmm";
>>>> @@ -168,11 +261,11 @@ gcc: clock-controller@1800000 {
>>>>  			reg = <0 0x01800000 0 0x40000>;
>>>>  			clocks = <&xo_board>,
>>>>  				 <&sleep_clk>,
>>>> +				 <&pcie0_phy>,
>>>> +				 <&pcie1_phy>,
>>>>  				 <0>,
>>>
>>> This leftover zero needs to be removed too, currently the wrong
>>> clocks are used as parents
>>>
>>
>> Hi Konrad,
>>
>> The '<0>' entry is for "USB PCIE wrapper pipe clock source".
>> And, will update the pcie entries as follows
>> 	<&pcie0_phy GCC_PCIE0_PIPE_CLK>
>> 	<&pcie1_phy GCC_PCIE1_PIPE_CLK>
>> 	<&pcie2_phy GCC_PCIE2_PIPE_CLK>
>> 	<&pcie3_phy GCC_PCIE3_PIPE_CLK>
>>
>> Please correct me if i am wrong.
> 
> The order of these is fixed by the first enum in
> drivers/clk/qcom/gcc-ipq5424.c. The <0> entry must be at the end of
> the clocks list for it to do what you want it to.
> 

I understand your point. I will move the <0> entry to the end and 
incorporate this change in the next version.

Thanks & Regards,
Manikanta.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
