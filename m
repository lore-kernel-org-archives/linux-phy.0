Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D0F3C54E65
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 21:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+5Qs3V1SEUEe0eLNidg8oXRDcJ95pV82DxqvCygyFS8=; b=BqbvlOlCdUGiTC
	0WV9ruoF6YsAAmNCvcVohBDrRpTyk5yLzO8J+J0n1xlBKozIpanpRn2lGmYondsCvPcD314AbZDO3
	aTRQ0V/A6hjdbocF7Lga546E+N3J4/k0sFwvTXzsckBVN/MdwS95pchllAnaxkPbNT7bksCnRxg51
	B6QBs7WoOaszB1Ep28nTDH8HVPzuwAlC/UJPxKnOspoJYOUC80panyDw692u693jfpNy+fJmoenzW
	3+xtyqPUo1coq5xML/MEGugI5koOlG/XYBQk0YfKwiYduYDQZG3x6vq03emOlAXiv7CctXcyqVTTI
	kQzy5Nwm/0ie/i1ttjPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHrID-0000000Gt4O-46EG;
	Wed, 21 May 2025 21:48:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHrIB-0000000Gt3y-22u7
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 21:48:04 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54LHPDtu016624;
	Wed, 21 May 2025 21:47:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wdz9XzN5pJs6FGFMy5umTVMKIyuxhEWQB8gQk5deow8=; b=o1r74McCAevZ3BVe
	QFBe8Ym0QmBeliVXfuqN0gNtUIQAR1YEYZqU329xjYepTRc32nEzMeXNpMXY5teW
	BvsMI0crv/+LToQEq8MnPjB2TBib9+4EL6RK7RvkRTUWpvygGraZtPa2Akt+XHKF
	2dZvQ3IilU6TJj5YumHos+6wlPKFkL8hBt9sKd52xvuDNPjlUK5M7izPSd9+SbEP
	Jfl1jB4L4CysyrbM7CGslDPZup1cP2KzFuiRfb96t2L880T75/3oKMxq1Hc1KRkd
	XZSSC3ddpZwALc95Kb8+WsKqKy3KPSohguKzZJWIYMKNt6uIBpR9dxF43Kk/jHwH
	+GaElQ==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf9va02-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 May 2025 21:47:45 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 54LLliQb020894
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 May 2025 21:47:44 GMT
Received: from [10.216.45.12] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 21 May
 2025 14:47:38 -0700
Message-ID: <6eafbd2f-e2cf-4d4b-9432-026eb9c7a01a@quicinc.com>
Date: Thu, 22 May 2025 03:17:33 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 04/11] phy: qcom-qmp-ufs: Refactor UFS PHY reset
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
 <20250515162722.6933-5-quic_nitirawa@quicinc.com>
 <mwcqp3mxuheffc6x7w4w5mykqc57ovmvyrmh3ky5czjf54wnag@fxnxgsoi6y2u>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <mwcqp3mxuheffc6x7w4w5mykqc57ovmvyrmh3ky5czjf54wnag@fxnxgsoi6y2u>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=V9990fni c=1 sm=1 tr=0 ts=682e4a01 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=c8vr_DY3ltGut5BFI0sA:9 a=QEXdDO2ut3YA:10
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: UUjinO3B8ChFEYRBDjMP0nd_uRLtVaXZ
X-Proofpoint-GUID: UUjinO3B8ChFEYRBDjMP0nd_uRLtVaXZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIxMDIxNiBTYWx0ZWRfX7daMgzfN39uj
 QjfQZtfv74LamRjrguqu7tS0qjEEQqMZo5J1f5e9ody1U61mRFcH2H2cPny3Xtc6DeC7k39ZArm
 NuDfSWivRuz0SiISEDV8iHmxLqGfKOC1OEyOgn9SgX3s0t4cl/GhK3MkKTGpHIM9FuVA/Av60wv
 uhPK1xIVKrSVmfbwVN1pw63j0j5afnTyoi2XOi7o7PGS05AfI/jzjBsKyKc2J9G52J1puTPav+0
 nJJ8ZuwS1q+7WYt+N5bdnW1tTrrvNCn02czvuHJGSXdd422rkl6CtYdatiWjrAqq/kRK16SAOgk
 2r/5YCZeMlD3QAhG57d8UJxsA1JRk5ExrSR3opUnvkT0PY0H3auD4apphRxqu30td456gI8CzNI
 5+M2mbrdDSbbA2g8P3YOlseiMCrwtPE8agXIN/9A+Z1rv7GWHGA7mXPZAj+/XjiXreMRVScf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-21_07,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 bulkscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 mlxscore=0 spamscore=0 phishscore=0 suspectscore=0
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505210216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_144803_654823_CA24B655 
X-CRM114-Status: GOOD (  16.22  )
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



On 5/21/2025 6:56 PM, Manivannan Sadhasivam wrote:
> On Thu, May 15, 2025 at 09:57:15PM +0530, Nitin Rawat wrote:
>> Refactor the UFS PHY reset handling to parse the reset logic only once
>> during initialization, instead of every resume.
>>
>> As part of this change, move the UFS PHY reset parsing logic from
>> qmp_phy_power_on to the new qmp_ufs_phy_init function.
>>

Sure. I'll update the commit text in next patchset.

> 
> More importantly, you are introducing the phy_ops::init callback, which
> should've been mentioned.
> 
>> Co-developed-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
>> Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 59 +++++++++++++------------
>>   1 file changed, 31 insertions(+), 28 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> index ade8e9c4b9ae..33d238cf49aa 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> @@ -1800,38 +1800,11 @@ static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
>>   static int qmp_ufs_power_on(struct phy *phy)
>>   {
>>   	struct qmp_ufs *qmp = phy_get_drvdata(phy);
>> -	const struct qmp_phy_cfg *cfg = qmp->cfg;
>>   	int ret;
>>   	dev_vdbg(qmp->dev, "Initializing QMP phy\n");
>>   
>> -	if (cfg->no_pcs_sw_reset) {
>> -		/*
>> -		 * Get UFS reset, which is delayed until now to avoid a
>> -		 * circular dependency where UFS needs its PHY, but the PHY
>> -		 * needs this UFS reset.
>> -		 */
>> -		if (!qmp->ufs_reset) {
>> -			qmp->ufs_reset =
>> -				devm_reset_control_get_exclusive(qmp->dev,
>> -								 "ufsphy");
>> -
>> -			if (IS_ERR(qmp->ufs_reset)) {
>> -				ret = PTR_ERR(qmp->ufs_reset);
>> -				dev_err(qmp->dev,
>> -					"failed to get UFS reset: %d\n",
>> -					ret);
>> -
>> -				qmp->ufs_reset = NULL;
>> -				return ret;
>> -			}
>> -		}
>> -	}
>> -
>>   	ret = qmp_ufs_com_init(qmp);
>> -	if (ret)
>> -		return ret;
>> -
>> -	return 0;
>> +	return ret;
> 
> This can't be:
> 	return qmp_ufs_com_init; ?

This is already taken care in next patch (#6) of this series.

Thanks,
Nitin


> 
> - Mani
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
