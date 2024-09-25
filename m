Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 201A2CF9C71
	for <linux-phy@archiver.kernel.org>; Wed, 25 Sep 2024 03:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NzhbGv9loy2oVhYhqlq0F03MZuCnhAQLa6G9VgenOU=; b=oyFCurFXtbNBSN
	cHYPccZpFPM7qSrTWG6ppmuTnVwz1Hdg2gBUuOieAC0suI1/umQxUCyS3izEm9JFqLd4Br2gQlCtB
	7D2tc0eD4TlQcesPDyLiXTayyMkMw6Kyx5gwSze7sfbz1CHy5UdoSDG2wfJn8J7WoTzF9iq1K0IE1
	9X+HwecmTJxDrfZEIAcooou/bGjYuIKRj9WtFWcYuH3KPBVrGFWWt7tTuIRNbOP2ZqPo88wj1WJNL
	+AoiGOrkqbQYSrZGrcnbdeXSsCXW/sLGZoMJcfQe2nrR57D0J8zMI9Rt8k3w2JnR5uAzpDetDq252
	Cn0GAXqUCvXr92+DDhqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stIxh-00000003vQW-3D6k;
	Wed, 25 Sep 2024 03:45:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stIxe-00000003vQ6-3GrA
	for linux-phy@lists.infradead.org;
	Wed, 25 Sep 2024 03:45:08 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48OHOk64006035;
	Wed, 25 Sep 2024 03:44:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZhbqxxGnNn6iWuWZcW4la2E8zNouyHAN9O3d1uNJ50A=; b=JDrQwnqAeHFbZEBb
	3cATDigDpyfO5/dAknAPPdebAnb0nHiwdG7exO2p0zv0tM9wgFumjYIEGnsvzGq4
	AtPbC9naAgNM7XRrPJ4kZPEJYHw4kB4iVz3YWhB1WkaHuTfV0oc/GkovNu042SgT
	JowtNhBbrKc+TRK5tQgbZzhChVes1d6e4Is0/tzYe4EXMc/IeIZZ7aGFsMqB9IG5
	11b52V5Ieytr+vtn2tzC+qAlH+zJV7JrD69+H044cu3MioQu2wJ1Vr3JIg27N4sl
	kB7w0q9R4J6HfhVbM9U7zdrBBP2HteVjIfXWaehSBIOieVJ5FZ83VJbdmhh3/SiP
	Pb+72Q==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41sqe9ag98-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Sep 2024 03:44:59 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 48P3iwj6018823
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Sep 2024 03:44:58 GMT
Received: from [10.239.29.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 24 Sep
 2024 20:44:54 -0700
Message-ID: <3f454d6f-b40e-49e5-89eb-b77bcca35043@quicinc.com>
Date: Wed, 25 Sep 2024 11:44:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/6] PCI: qcom: Add support for X1E80100 SoC
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <andersson@kernel.org>, <konradybcio@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <abel.vesa@linaro.org>, <quic_msarkar@quicinc.com>,
        <quic_devipriy@quicinc.com>, <dmitry.baryshkov@linaro.org>,
        <kw@linux.com>, <lpieralisi@kernel.org>, <neil.armstrong@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-clk@vger.kernel.org>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-6-quic_qianyu@quicinc.com>
 <20240924135021.ybpyoahlpuvedma5@thinkpad>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <20240924135021.ybpyoahlpuvedma5@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: NEvl7Hnmhc16mCowiCBdCrSnCaYaxu0v
X-Proofpoint-GUID: NEvl7Hnmhc16mCowiCBdCrSnCaYaxu0v
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=999 spamscore=0 lowpriorityscore=0 adultscore=0 mlxscore=0
 suspectscore=0 malwarescore=0 phishscore=0 impostorscore=0 clxscore=1015
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409250025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_204506_872419_24E722F3 
X-CRM114-Status: GOOD (  25.99  )
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


On 9/24/2024 9:50 PM, Manivannan Sadhasivam wrote:
> On Tue, Sep 24, 2024 at 03:14:43AM -0700, Qiang Yu wrote:
>> X1E80100 has PCIe ports that support up to Gen4 x8 based on hardware IP
>> version 1.38.0.
>>
>> Currently the ops_1_9_0 which is being used for X1E80100 has config_sid
>> callback to config BDF to SID table. However, this callback is not
>> required for X1E80100 because it has smmuv3 support and BDF to SID table
>> will be not present.
>>
>> Hence add support for X1E80100 by introducing a new ops and cfg structures
>> that don't require the config_sid callback. This could be reused by the
>> future platforms based on SMMUv3.
>>
> Oops... I completely overlooked that you are not adding the SoC support but
> fixing the existing one :( Sorry for suggesting a commit message that changed
> the context.
>
> For this, you can have something like:
>
> "PCI: qcom: Fix the ops for X1E80100 SoC
>
> X1E80100 SoC is based on SMMUv3, hence it doesn't need the BDF2SID mapping
> present in the existing cfg_1_9_0 ops. This is fixed by introducing new ops
> 'ops_1_38_0' and cfg 'cfg_1_38_0' structures. These are exactly same as the
> 1_9_0 ones, but they don't have the 'config_sid()' callback that handles the
> BDF2SID mapping in the hardware. These new structures could also be used by the
> future SoCs making use of SMMUv3."
Never mind, thanks for your suggestions. Will update the commit msg in next
version.

Thanks,
Qiang Yu
>
> - Mani
>
>> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
>> ---
>>   drivers/pci/controller/dwc/pcie-qcom.c | 16 +++++++++++++++-
>>   1 file changed, 15 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>> index 88a98be930e3..56ba8bc72f78 100644
>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>> @@ -1367,6 +1367,16 @@ static const struct qcom_pcie_ops ops_2_9_0 = {
>>   	.ltssm_enable = qcom_pcie_2_3_2_ltssm_enable,
>>   };
>>   
>> +/* Qcom IP rev.: 1.38.0 */
>> +static const struct qcom_pcie_ops ops_1_38_0 = {
>> +	.get_resources = qcom_pcie_get_resources_2_7_0,
>> +	.init = qcom_pcie_init_2_7_0,
>> +	.post_init = qcom_pcie_post_init_2_7_0,
>> +	.host_post_init = qcom_pcie_host_post_init_2_7_0,
>> +	.deinit = qcom_pcie_deinit_2_7_0,
>> +	.ltssm_enable = qcom_pcie_2_3_2_ltssm_enable,
>> +};
>> +
>>   static const struct qcom_pcie_cfg cfg_1_0_0 = {
>>   	.ops = &ops_1_0_0,
>>   };
>> @@ -1409,6 +1419,10 @@ static const struct qcom_pcie_cfg cfg_sc8280xp = {
>>   	.no_l0s = true,
>>   };
>>   
>> +static const struct qcom_pcie_cfg cfg_1_38_0 = {
>> +	.ops = &ops_1_38_0,
>> +};
>> +
>>   static const struct dw_pcie_ops dw_pcie_ops = {
>>   	.link_up = qcom_pcie_link_up,
>>   	.start_link = qcom_pcie_start_link,
>> @@ -1837,7 +1851,7 @@ static const struct of_device_id qcom_pcie_match[] = {
>>   	{ .compatible = "qcom,pcie-sm8450-pcie0", .data = &cfg_1_9_0 },
>>   	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
>>   	{ .compatible = "qcom,pcie-sm8550", .data = &cfg_1_9_0 },
>> -	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_1_9_0 },
>> +	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_1_38_0 },
>>   	{ }
>>   };
>>   
>> -- 
>> 2.34.1
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
