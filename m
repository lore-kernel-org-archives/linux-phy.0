Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AE49D0BB6D
	for <linux-phy@archiver.kernel.org>; Thu, 24 Oct 2024 08:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0/FRIFGFGfmpGmgSJyjOrlqyRAZVMYgBtvMZvRoyxRU=; b=mYczonjLlhxaYt
	iEEAF9KoqYUMKJDJ4j6t3+pw2m+WDboTvFsJuVa1ZeQ5Qt8ctBc2tIPxjtCDIZUd4tuy+9acgKXms
	1gsmV2/jl5rsyhMw8h5SrfOKH9Q7FPhBHy+Ezoch27nzB6bCSkSAs2ktuOnH7uM41RRdJEOdIrs8y
	5PWKoJ2rW2FkRs8nm+8e1iz6rCWgNQ2AXnrBbYIqA9MUA25Vm+ESfTywgmouyiE0Pchn8Ah/rCHdf
	8nJh+tqZRXwKEisdx81iCr+nqNoY1MU0DqLdasRccTH5i80J7k/gwQb8bi0b4EbzHfebeWgmOXLVO
	KlkqURrbFdgh8EVscE9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3smD-0000000HCPJ-3qgX;
	Thu, 24 Oct 2024 08:01:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3rcp-0000000Gy6U-1VcA
	for linux-phy@lists.infradead.org;
	Thu, 24 Oct 2024 06:47:17 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49NLthH8009114;
	Thu, 24 Oct 2024 06:47:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6/oSOlR+Cn9d7qsNYO1Ey7vDelnpMSv1JnrdKavwbT0=; b=JlPkR6atudhxNSYT
	cwygBU9IhFBxCkcztk1nRwW6J6bLnxX+e6MQOtMjWaOTNsN+LIIjLVUbMfBy+IKv
	TOXtxq8Sb3s3BFJwCEObG/I10NaL+mELpoHGeaX+/FO4NhdDEVg5smyGTWIPPlut
	Aegds0tHvDc8BaP9/y/TMuGM/2z9lNWhV8sqEElZ/HIJk6DbHZyT0jZ2r5kSTT5V
	v+8CZA1Apr1SPxGSvjipl28Mx7Y2kqQhM13b2sN3zwsiBOIPM+wYEFjBFn6IWf/l
	cBcI1EkKRsySAwXHJZKChz3f2TKsAyJXcbG/sERufpDKRsQVkMjKHM+6svRIEzRV
	4+3F9w==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42em43cq6r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 24 Oct 2024 06:47:02 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49O6l1i1020134
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 24 Oct 2024 06:47:01 GMT
Received: from [10.239.29.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 23 Oct
 2024 23:46:56 -0700
Message-ID: <ca62ee1a-5681-4840-b9b4-ed45e731c449@quicinc.com>
Date: Thu, 24 Oct 2024 14:46:53 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 6/7] PCI: qcom: Disable ASPM L0s and remove BDF2SID
 mapping config for X1E80100 SoC
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
CC: <manivannan.sadhasivam@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <abel.vesa@linaro.org>,
        <quic_msarkar@quicinc.com>, <quic_devipriy@quicinc.com>,
        <dmitry.baryshkov@linaro.org>, <kw@linux.com>, <lpieralisi@kernel.org>,
        <neil.armstrong@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-clk@vger.kernel.org>, <johan+linaro@kernel.org>,
        <stable@vger.kernel.org>
References: <20241017030412.265000-1-quic_qianyu@quicinc.com>
 <20241017030412.265000-7-quic_qianyu@quicinc.com>
 <ZxJvxvxlHuQ9Zze5@hu-bjorande-lv.qualcomm.com>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <ZxJvxvxlHuQ9Zze5@hu-bjorande-lv.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: trgz8nXFd8XFNP3u6wQx1f_VCTWOFuiV
X-Proofpoint-ORIG-GUID: trgz8nXFd8XFNP3u6wQx1f_VCTWOFuiV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 lowpriorityscore=0
 adultscore=0 mlxlogscore=999 spamscore=0 malwarescore=0 impostorscore=0
 phishscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410240050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_234715_625613_F91A03CB 
X-CRM114-Status: GOOD (  20.32  )
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


On 10/18/2024 10:25 PM, Bjorn Andersson wrote:
> On Wed, Oct 16, 2024 at 08:04:11PM -0700, Qiang Yu wrote:
>> Currently, the cfg_1_9_0 which is being used for X1E80100 has config_sid
>> callback in its ops and doesn't disable ASPM L0s. However, as same as
>> SC8280X, PCIe controllers on X1E80100 are connected to SMMUv3, hence don't
> Would be nice to document the connection between SMMUv3 and "don't need
> config_sid()" is because we don't have support for the SMMUv3.
We don't need config_sid because we have support for SMMUv3 on HW.
SMMUv3 is able to use BDF as SID, so BDF2SID mapping is not required
and removed on HW.

Thanks,
Qiang
>> need config_sid() callback and hardware team has recommended to disable
>> L0s as it is broken in the controller. Hence reuse cfg_sc8280xp for
> I expect that config_sid() and "disable L0s" are two separate issues.
> I'm fine with you solving both in a single commit, but I'd prefer the
> two subjects to be covered in at least two separate sentences.
>
> Regards,
> Bjorn
>
>> X1E80100.
>>
>> Fixes: 6d0c39324c5f ("PCI: qcom: Add X1E80100 PCIe support")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>> ---
>>   drivers/pci/controller/dwc/pcie-qcom.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>> index 468bd4242e61..c533e6024ba2 100644
>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>> @@ -1847,7 +1847,7 @@ static const struct of_device_id qcom_pcie_match[] = {
>>   	{ .compatible = "qcom,pcie-sm8450-pcie0", .data = &cfg_1_9_0 },
>>   	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
>>   	{ .compatible = "qcom,pcie-sm8550", .data = &cfg_1_9_0 },
>> -	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_1_9_0 },
>> +	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_sc8280xp },
>>   	{ }
>>   };
>>   
>> -- 
>> 2.34.1
>>
>>
>> -- 
>> linux-phy mailing list
>> linux-phy@lists.infradead.org
>> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
