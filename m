Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0957FC369AA
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 11:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y84541wznrzslE5wYUbjjyV3t9/eqm2ri1m/2If6YPc=; b=Bi3BRcVH4+q0II
	CNrV5uw/iGhezaQzUIkYzLtcMY4rz6bLw1rg76USk1lwIoGdXyXaoqFB1EGiBwS71HXCniA8vUPMu
	JoRYdke7uKQ7qxSZly5Wtmdxvz+n4ZhJ1T01fkWv2Zrwogru/VP0lDlhad+KmugWgzhF5UGhUAVri
	r047Fa/0TSbNMCoCsJuDUvYEMTKH25qJvJJbCjSjDNZ2JFnIrzi1+aiuRfXL2qv92Nnuu1xYhPj0F
	UNpoW/DNRwlAG9k4P269Jk+SToeK4U1aPohrnM4qQhM5e+1QXiY8y9CJicFHfeyF/9KGNWiel4FSK
	1nak801eYHEyTO56aXKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3CPk-0000000DV6C-2tGJ;
	Fri, 11 Apr 2025 11:19:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3Bqr-0000000DQDb-28Ro
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 10:43:15 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53B1p6wh007171;
	Fri, 11 Apr 2025 10:42:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hQuBRqFocG/a44HT7fAMnSaMW1L1udKoeyTx7hSUX1g=; b=ar3TdOu3kbmtIEb6
	nXa6cwwMtcTaA9KBMYMToettNYU1i0TpOYzYob6YEMF8/gpHtyqLPM3fux5PI+m2
	9oZNR5LUJ+129eO2v5VX2XZebjKDGejsQ35YqQTLqhUaXEuc3a0iH/jMEbsXS1sp
	7hOd4t8wGndj+h9RA+qI4is7iV6hTOagERTQTTKCU6MZTAZ/DPVZeAHDfeTOmR4i
	VfDJyelroNxHqGKKhgUggV09N9DC/aIWTFUUsv+9cKiJz2B4IhcPK4MMimhQ4LOF
	9FComdGOMsqATH01YvEiuOaFSCF9jVpndb7XWSnePvN5/s1KiTUg5SGQr7dhiD5J
	C+pq0A==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45xeh3k435-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Apr 2025 10:42:56 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 53BAgsxe023310
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Apr 2025 10:42:54 GMT
Received: from [10.218.7.247] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 11 Apr
 2025 03:42:49 -0700
Message-ID: <4557abf9-bcd2-4a06-8161-43ad5047b277@quicinc.com>
Date: Fri, 11 Apr 2025 16:12:46 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 5/9] phy: qcom-qmp-ufs: Remove qmp_ufs_com_init()
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
CC: <vkoul@kernel.org>, <kishon@kernel.org>,
        <manivannan.sadhasivam@linaro.org>,
        <James.Bottomley@hansenpartnership.com>, <martin.petersen@oracle.com>,
        <bvanassche@acm.org>, <bjorande@quicinc.com>,
        <neil.armstrong@linaro.org>, <konrad.dybcio@oss.qualcomm.com>,
        <quic_rdwivedi@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>
References: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
 <20250410090102.20781-6-quic_nitirawa@quicinc.com>
 <zvc3gf7mek7u46wlcrjak3j2hihj4vfgdwpdzjhvnxxowuyvsr@hlra5bmz5ign>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <zvc3gf7mek7u46wlcrjak3j2hihj4vfgdwpdzjhvnxxowuyvsr@hlra5bmz5ign>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=VbH3PEp9 c=1 sm=1 tr=0 ts=67f8f230 cx=c_pps a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=zrGcixpFwRRgDh-WtYsA:9 a=QEXdDO2ut3YA:10
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: we9ozuFQS9tgll9GJNrL-apAvrxpPXbM
X-Proofpoint-ORIG-GUID: we9ozuFQS9tgll9GJNrL-apAvrxpPXbM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 impostorscore=0 suspectscore=0 adultscore=0 spamscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 bulkscore=0 mlxscore=0
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504110067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_034313_737430_47C53631 
X-CRM114-Status: GOOD (  16.54  )
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



On 4/11/2025 1:39 AM, Dmitry Baryshkov wrote:
> On Thu, Apr 10, 2025 at 02:30:58PM +0530, Nitin Rawat wrote:
>> Simplify the qcom ufs phy driver by inlining qmp_ufs_com_init() into
>> qmp_ufs_power_on(). This change removes unnecessary function calls and
>> ensures that the initialization logic is directly within the power-on
>> routine, maintaining the same functionality.
> 
> Which problem is this patch trying to solve?

Hi Dmitry,

As part of the patch, I simplified the code by moving qmp_ufs_com_init 
inline to qmp_ufs_power_on, since qmp_ufs_power_on was merely calling 
qmp_ufs_com_init. This change eliminates unnecessary function call.

Regards,
Nitin



> 
>>
>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 44 ++++++++++---------------
>>   1 file changed, 18 insertions(+), 26 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> index 12dad28cc1bd..2cc819089d71 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> @@ -1757,31 +1757,6 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
>>   	qmp_ufs_init_all(qmp, &cfg->tbls_hs_b);
>>   }
>>
>> -static int qmp_ufs_com_init(struct qmp_ufs *qmp)
>> -{
>> -	const struct qmp_phy_cfg *cfg = qmp->cfg;
>> -	void __iomem *pcs = qmp->pcs;
>> -	int ret;
>> -
>> -	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
>> -	if (ret) {
>> -		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
>> -		return ret;
>> -	}
>> -
>> -	ret = clk_bulk_prepare_enable(qmp->num_clks, qmp->clks);
>> -	if (ret)
>> -		goto err_disable_regulators;
>> -
>> -	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
>> -
>> -	return 0;
>> -
>> -err_disable_regulators:
>> -	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
>> -
>> -	return ret;
>> -}
>>
>>   static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
>>   {
>> @@ -1799,10 +1774,27 @@ static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
>>   static int qmp_ufs_power_on(struct phy *phy)
>>   {
>>   	struct qmp_ufs *qmp = phy_get_drvdata(phy);
>> +	const struct qmp_phy_cfg *cfg = qmp->cfg;
>> +	void __iomem *pcs = qmp->pcs;
>>   	int ret;
>> +
>>   	dev_vdbg(qmp->dev, "Initializing QMP phy\n");
>>
>> -	ret = qmp_ufs_com_init(qmp);
>> +	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
>> +	if (ret) {
>> +		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
>> +		return ret;
>> +	}
>> +
>> +	ret = clk_bulk_prepare_enable(qmp->num_clks, qmp->clks);
>> +	if (ret)
>> +		goto err_disable_regulators;
>> +
>> +	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
>> +	return 0;
>> +
>> +err_disable_regulators:
>> +	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
>>   	return ret;
>>   }
>>
>> --
>> 2.48.1
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
