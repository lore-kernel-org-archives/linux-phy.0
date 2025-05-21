Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9540C54E65
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 21:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CrJWd4g9apRB8D6penIlswrOKEVLtpApHsUR7MEmssE=; b=J8UqQJXu+hcxrx
	r6Mgvbf/4IovM1ADmeEPh6ob9JHVN2t4shJQjtLOBli0AnQpPj4n2dWOpqRTN0vPcR1mvO5Ib3hFl
	TdWljRyqhafNLRHHiCDKnItcjF+hcAQ629PQgdNtDEc+qFzTcWSQr7wjtUaC4IkKqFRJ/IsgPzKsC
	0I0zhPgW+LhBeKwNiGh6d36p5B4lKYmNvuw1cW4yb8wjXX7LmoAmLhJlLn3wSUJjO/3wWOUuOydCs
	eU04BsopLaxwBK4Hs1/NfFqSPa1n7BifAknI3+CTct17cBBI9pCOWsK+igEXP+Y2iqkBJZCPRrvXm
	fl9/KhAJ6YyrT/yv81Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHrJy-0000000GtMm-2QPy;
	Wed, 21 May 2025 21:49:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHrJv-0000000GtM5-3WDy
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 21:49:53 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54LHTfn9029063;
	Wed, 21 May 2025 21:49:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VQH2hT32qpZU6n0PWsnZJ27lotDiMIcabhSfeBHSQS4=; b=AjhLocex+ztnofVI
	v+utnvkSNXwwxSqhs+0D1CyD0joL6qbZmVu0xLmA9Ki4m840qM2OZvp9IOB1AEeJ
	Gf6h7QGPMqhcjZjBdjv6MujqyHdQBaoj95EVsoS7yio2ZwE7kuUAKBa3DPdX6mxm
	c0PxKEkzEpOAAkBgKoww4YFyMBirucadVLvHAVy+l+V2XDL3qtUysgXduFhM+sg/
	M+pBq5D2SeqwNNisTJghYigYdmAvwl2qZWadcL41/Sm1Cwr8qtYHJIApZZWu/ggT
	J3OuShUdr+y+kAJ+FxAET7+yIR58vvSpVSiwdkqGkM91zqWT10cJkCQp2N6AOk1b
	AfNQHA==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf44c5q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 May 2025 21:49:35 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 54LLnYZX028039
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 May 2025 21:49:34 GMT
Received: from [10.216.45.12] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 21 May
 2025 14:49:28 -0700
Message-ID: <86fe457b-7071-4e22-9c93-982854be442b@quicinc.com>
Date: Thu, 22 May 2025 03:19:24 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 05/11] phy: qcom-qmp-ufs: Remove qmp_ufs_com_init()
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>,
        <James.Bottomley@hansenpartnership.com>, <martin.petersen@oracle.com>,
        <bvanassche@acm.org>, <andersson@kernel.org>,
        <neil.armstrong@linaro.org>, <dmitry.baryshkov@oss.qualcomm.com>,
        <konrad.dybcio@oss.qualcomm.com>, <quic_rdwivedi@quicinc.com>,
        <quic_cang@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
 <20250515162722.6933-6-quic_nitirawa@quicinc.com>
 <z3yfou4oolymsgb72dpakwcsmq6v3gnx64mdals7krnxdhpc2a@lsepak4kc2mg>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <z3yfou4oolymsgb72dpakwcsmq6v3gnx64mdals7krnxdhpc2a@lsepak4kc2mg>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIxMDIxNyBTYWx0ZWRfX61AKLr55rbSB
 OKKotKp5QkpB3EtrN3x84nm5NnBQhk5/qTZnOJ0XNcL91bf6HFnIQqkZY7wqSqF3+Wi2rB48ugp
 /ACyKY21zkicOuc8L9e8/bpNH6UOqUxQCVuQhyfaBZipvAmGf0IHbdiqBrhFjBdf2Mtqdoy8F2R
 T+o14dMfaIsOlO0JyH+L4bIoc/PYcTexPiqXy9pWjyF6IZYWq/lrhDkGfS5eYvfn+PXSeyac8eH
 WRKa+KYpo8fgP2jsj09lA3Yrff4CmDyMFLn6++rATJrFqucF3ve8/9bClRJQCM3H2Yj9gGSzatU
 qBVSp/RAUYKVO5QFxzb3wFN9dRiFDLNeYso2A5ZB0c8vUCPmL1UfHySkiT93NMtjhXacgsWdCRg
 INByh5T51U+a+QH/XyN4OxOg8xvfTgPU1aLmkuRV9f52q2vBXhcMlLNEymK2R6lIc85tMpsf
X-Proofpoint-GUID: 4SpGuZVcs5HkYdWtQJ7gByQxJFBXbR_s
X-Authority-Analysis: v=2.4 cv=Ws8rMcfv c=1 sm=1 tr=0 ts=682e4a6f cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=XLgfHQIRnCPKqbsVxRkA:9 a=QEXdDO2ut3YA:10
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 4SpGuZVcs5HkYdWtQJ7gByQxJFBXbR_s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-21_07,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0 mlxscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=999 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505210217
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_144951_886551_17820A61 
X-CRM114-Status: GOOD (  16.76  )
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



On 5/21/2025 7:00 PM, Manivannan Sadhasivam wrote:
> On Thu, May 15, 2025 at 09:57:16PM +0530, Nitin Rawat wrote:
>> The qmp_ufs_power_on() function acts as a wrapper, solely invoking
>> qmp_ufs_com_init(). Additionally, the code within qmp_ufs_com_init()
>> does not correspond well with its name.
>>
>> Therefore, to enhance the readability and eliminate unnecessary
>> function call inline qmp_ufs_com_init() into qmp_ufs_power_on().
>>
>> There is no change to the functionality.
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 43 ++++++++++---------------
>>   1 file changed, 17 insertions(+), 26 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> index 33d238cf49aa..d3f9ee490a32 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> @@ -1758,12 +1758,28 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
>>   		qmp_ufs_init_all(qmp, &cfg->tbls_hs_b);
>>   }
>>   
>> -static int qmp_ufs_com_init(struct qmp_ufs *qmp)
>> +static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
> 
> Since there is no qmp_ufs_com_init() now, qmp_ufs_com_exit() lacks symmetry.
> Maybe you should rename it too.


Yes this is already taken care in differnt patch of this series.

> 
>>   {
>>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
>> +
>> +	reset_control_assert(qmp->ufs_reset);
>> +
>> +	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
>> +
>> +	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
>> +
>> +	return 0;
>> +}
>> +
>> +static int qmp_ufs_power_on(struct phy *phy)
>> +{
>> +	struct qmp_ufs *qmp = phy_get_drvdata(phy);
>> +	const struct qmp_phy_cfg *cfg = qmp->cfg;
>>   	void __iomem *pcs = qmp->pcs;
>>   	int ret;
>>   
>> +	dev_vdbg(qmp->dev, "Initializing QMP phy\n");
> 
> Now, this debug print doesn't make sense. You can drop it.

Sure, wil remove.

> 
> - Mani
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
