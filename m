Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C473BC369D5
	for <linux-phy@archiver.kernel.org>; Wed, 23 Apr 2025 12:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DI+Nn5DNLJW/RJn5lIQtOgn+VLJRhFt90tsFRepykEE=; b=rPabjJTLtZIAm4
	PGRCg1hPyTOibQkARPuWccMMW23WRuBBF6z5BsaRXqOrXQJFRQzwb2MWJxh0qiZGarevOBgAJszqt
	2zzi7Xv+aHM9mR+EsxrnJpQhBSkZacOPgle+vsGPC2ZZkmlMt2FwTdmRt3A97Gj+Spqojz/URibAZ
	GOc0xjNIOqrSsbo5GQDn0CAkaklr4M/SBGDrknYED1fNQSlHm+EAn1cTGFzdf8mmen1Asdw8WAt+M
	g9rbh63FExgj+mL4sKtM2+c1cdtSOEXRXTYnj2QizEHdm8YwLs8n1HWi8d8JFCPSHeWRUHiMk04GE
	xw11ckHnsVYss9eb8UlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Yoc-0000000AQ3A-2JVQ;
	Wed, 23 Apr 2025 12:02:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7XrU-0000000AFdl-3YK6
	for linux-phy@lists.infradead.org;
	Wed, 23 Apr 2025 11:01:54 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NAlafx016858;
	Wed, 23 Apr 2025 11:01:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zVJ+/vVepkGmQcMwQNA4ogt+cMKPxrjlVD7qz32ZD8M=; b=hw5xqQQ9sGk6XbAm
	wjujz0ybA0MbZnNkgycifoKLoTvauLB52KXhpmRgXPtF+ZrFqWiBDWJIrUrLU4do
	x2sEYAR/fWQ0u3W/j0ZJ1iWc6gs3BUdpHpvjP/GXBkEVCSvVjXk9aqm89HsnsE3x
	Kp3GfSo8aFjLmjEEgMEybTa56RHKlMp9k91Z91d8prgAx8XyIDDrazTLzFfXX83S
	sK3ifn5deeJxyJ8AJvtdS44uom5afeKGJ4SpLQape4FlbBsbaqBfkwRRAFBjj08b
	y6Wvb5/Bmagx4gFsEGe+EevDgfjU4s3NOM3ULC8fYhu6EBEOZbCOa7AlSXG5v68r
	Q2tUUw==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh01vq4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 23 Apr 2025 11:01:33 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 53NB1FsA027322
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 23 Apr 2025 11:01:15 GMT
Received: from [10.218.7.247] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 23 Apr
 2025 04:01:10 -0700
Message-ID: <fb4394e2-991f-4aba-9ddc-ce6cfb7c695d@quicinc.com>
Date: Wed, 23 Apr 2025 16:31:07 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 1/9] scsi: ufs: qcom: add a new phy calibrate API call
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <manivannan.sadhasivam@linaro.org>,
        <James.Bottomley@HansenPartnership.com>, <martin.petersen@oracle.com>,
        <bvanassche@acm.org>, <bjorande@quicinc.com>,
        <neil.armstrong@linaro.org>
CC: <quic_rdwivedi@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>
References: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
 <20250410090102.20781-2-quic_nitirawa@quicinc.com>
 <3735f288-5ba2-4582-afbe-8b3f5d0f280c@oss.qualcomm.com>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <3735f288-5ba2-4582-afbe-8b3f5d0f280c@oss.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA3NiBTYWx0ZWRfXxQdhnEa3a5Bh zKXvCem6WoDUvwXSPHTeOqJm1N1gwUz71oNKBg5UHO7PHlrRF19A3ocpVqV1d8LALGSrHkV8KGF ECq7tEajbAuOOwOf2t1DGN+iahr2Zp8t/eFlZc+p/G4g4GmMJYXS8jbX+YXXo3ArBRcLYKRQU8c
 C4fUl+FBxjcysKm9xIW6mIbSMPkPBIyJUIrIcpZwXX4LhxKoQ3b5lR8W/kIF5SLMH2l48Yh9vjz xesmXdMCHspku1ecy7pGY74sEKmMi+Y6RtO/GmOdLQMelychyz6Kqa8R3NW1YLvL+mLgZboe4wa 4Nb/KNe4jGVJmUlq8ZgNtmIbC3gKI6VIaJcwotsFutC/tT2l5exoD5+evl/BlP3ASNOJeyeTuJu
 +XqJLFEHsIbh/6YPIX+fWB4zR08Hn4L/D53/SQeCg9jPSCltv/sCcYEqye2jxcbpN4hdAO9d
X-Proofpoint-GUID: OHlltBr3yQZ-e07YpU48PUXMyoym35pf
X-Authority-Analysis: v=2.4 cv=ZuTtK87G c=1 sm=1 tr=0 ts=6808c88d cx=c_pps a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=oORsJjWy4k12e7USA60A:9 a=QEXdDO2ut3YA:10
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: OHlltBr3yQZ-e07YpU48PUXMyoym35pf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_07,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 mlxscore=0 adultscore=0 lowpriorityscore=0
 mlxlogscore=999 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_040153_033956_0A01DE65 
X-CRM114-Status: GOOD (  14.53  )
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



On 4/23/2025 4:12 PM, Konrad Dybcio wrote:
> On 4/10/25 11:00 AM, Nitin Rawat wrote:
>> Introduce a new phy calibrate API call in the UFS Qualcomm driver to
>> separate phy calibration from phy power-on. This change is a precursor
>> to the next patchset in this series, which requires these two operations
>> to be distinct.
>>
>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
>> ---
>>   drivers/ufs/host/ufs-qcom.c | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
>> index 1b37449fbffc..4998656e9267 100644
>> --- a/drivers/ufs/host/ufs-qcom.c
>> +++ b/drivers/ufs/host/ufs-qcom.c
>> @@ -473,6 +473,12 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
>>   		goto out_disable_phy;
>>   	}
>>   
>> +	ret = phy_calibrate(phy);
>> +	if (ret) {
>> +		dev_err(hba->dev, "%s: Failed to calibrate PHY %d\n",
> 
> Please add a colon, so that it becomes "..PHY: %d\n"
> 
>> +			__func__, ret);
> Avoid __func__, this print is fine without it

Sure will update this in next patchset.

> 
> Shouldn't we fail the power-on if this can't succeed?

Thanks for the catch. Yes we should return power-on failure if calibrate 
fails.
Even if there is calibrate phy ops registered, it will return 0. So for 
so nonzero return value we should treat failure and fail poweron.
Sure will this in next patchset.

Thanks,
Nitin

> 
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
