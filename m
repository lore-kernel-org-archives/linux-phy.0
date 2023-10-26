Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C608C25B67
	for <linux-phy@archiver.kernel.org>; Thu, 26 Oct 2023 05:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=huNPTbuRQFucDX3+EfxssQl5gC/JqwOaAR+e/1zKj3Q=; b=tYd/+8xY0SHWz/
	gF7CbwaiDzqlACkz0XJ6rHlbjDPmkD0G4qi9tMWViDfkS4KcteiVwcciMSfk2Gb+DLV2tqFm7VFb2
	H/DgM4eCJtQf/s2o2i1hSgjzZrMRpbBhoS1LO/pH8TuH9Z961tAj61hxAl8aIfYyWc1/uF+WdHUfB
	HI6Uh1Q0ao7w7WIavbmYoRRyiYG84EuMBSDMWuDdDO0lcMX+6Ww8MNxFWk669xyJeoRKlHeLu3bEq
	ZTpuzZLXIUdD4tfvB4iAPe31Fw2FzF5wjaSMESAHbXtMHj87vXs0cESmWXLbTxbpyQbgrVJQpiV2L
	yBlN8Tth+n3kWdnMJ6Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvt4c-00DiQW-0d;
	Thu, 26 Oct 2023 05:38:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvt4Y-00DiPb-1X
	for linux-phy@lists.infradead.org;
	Thu, 26 Oct 2023 05:38:23 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39Q3Otwx017422;
	Thu, 26 Oct 2023 05:38:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=fkSeqXomzCL96EMHGzEvzbs4O6q4EfsPRcDgEiGKLaI=;
 b=MFK7KMgjL85YyufW38WA8h5NF3bvpEQGsZhrPjRiXoCPcbTDDMVXvzwFhevPamgtjpp3
 c2Gt9+2UysuhcDvil1rFGo0a5iLmeMogTlbD3pFkz2DkvTv1XCRS7fruCgH92XterjGT
 3tO7ltsO32yVAaUOGzOuUIaMBjbQUc4PTSKbEBFwlWB2GSbCAKoMw7/UaBD/dcze/fdG
 I7HHwnEZyp+l5RNNr6jv/BxoQm+ulTAHKxgwntu/Zk0Z6R+rjrLB6EnXp3orvfKk5XeP
 b16NJQ1eEM75Wth9pJ7dBbyR3EMHgTqv4hthA2gaZQhHfH3GA8J2RyUPOOEcYlz6tQXp kw== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tye3trdj5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Oct 2023 05:38:16 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39Q5cETR012187
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Oct 2023 05:38:14 GMT
Received: from [10.216.45.182] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Wed, 25 Oct
 2023 22:38:06 -0700
Message-ID: <adbca084-a74b-51be-67b5-a3b9e45da506@quicinc.com>
Date: Thu, 26 Oct 2023 11:08:03 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v3 2/5] PCI: qcom-ep: Add support for SA8775P SOC
Content-Language: en-US
To: Manivannan Sadhasivam <mani@kernel.org>
CC: <agross@kernel.org>, <andersson@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <konrad.dybcio@linaro.org>, <quic_shazhuss@quicinc.com>,
        <quic_nitegupt@quicinc.com>, <quic_ramkri@quicinc.com>,
        <quic_nayiluri@quicinc.com>, <dmitry.baryshkov@linaro.org>,
        <robh@kernel.org>, <quic_krichai@quicinc.com>,
        <quic_vbadigan@quicinc.com>, <quic_parass@quicinc.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        "Lorenzo
 Pieralisi" <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?=
	<kw@linux.com>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Vinod Koul
	<vkoul@kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <mhi@lists.linux.dev>,
        <linux-phy@lists.infradead.org>
References: <1697715430-30820-1-git-send-email-quic_msarkar@quicinc.com>
 <1697715430-30820-3-git-send-email-quic_msarkar@quicinc.com>
 <20231025075317.GC3648@thinkpad>
From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
In-Reply-To: <20231025075317.GC3648@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: aWWc90mcD3ASVtrDYp15LOh2IKMbAlM7
X-Proofpoint-ORIG-GUID: aWWc90mcD3ASVtrDYp15LOh2IKMbAlM7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-26_03,2023-10-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 spamscore=0 phishscore=0 malwarescore=0
 impostorscore=0 mlxlogscore=999 adultscore=0 bulkscore=0 clxscore=1011
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310260046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_223822_657720_BA04D40C 
X-CRM114-Status: GOOD (  16.26  )
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


On 10/25/2023 1:23 PM, Manivannan Sadhasivam wrote:
> On Thu, Oct 19, 2023 at 05:07:07PM +0530, Mrinmay Sarkar wrote:
>> Add support for SA8775P SoC to the Qualcomm PCIe Endpoint Controller
>> driver. There will be some change specific to SA8775P so adding new
>> compatible string.
>>
> What are those specific changes?
>
> - Mani

Need to enable cache snooping logic for SA8775P only.

--Mrinmay

>> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
>> ---
>>   drivers/pci/controller/dwc/pcie-qcom-ep.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
>> index 32c8d9e..4c01c34 100644
>> --- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
>> +++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
>> @@ -858,6 +858,7 @@ static void qcom_pcie_ep_remove(struct platform_device *pdev)
>>   }
>>   
>>   static const struct of_device_id qcom_pcie_ep_match[] = {
>> +	{ .compatible = "qcom,sa8775p-pcie-ep", },
>>   	{ .compatible = "qcom,sdx55-pcie-ep", },
>>   	{ .compatible = "qcom,sm8450-pcie-ep", },
>>   	{ }
>> -- 
>> 2.7.4
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
