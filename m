Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68D5DC369DC
	for <linux-phy@archiver.kernel.org>; Sun,  4 May 2025 15:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hvCsWvtMZ2GuE48/vEQxHxAo1QLyp8oEeRJrfBOUMcU=; b=wOMfkOdfFJghVi
	LfyO5TFV3OX4lAHFcXFc9tDXPzMhttrgfudJ8Ph/ZtD+x8J8w9zNuM6mtQWaoFabdyz8Bm0giJol/
	sIf4NmzGCa2VjfKA55FpdPRvCrbaocFKP7G+qAMeEFZ6WHcGBvUa9WDMifo9i7ACoJunU/QmoNz88
	9XXKO6dBHCLZjACKJHAHnSQc0rH7NLLlhj0LDJwfcmsNP1giC58VBFeHycUYl13f4KOAV/ZWTMFnJ
	c5uB/usHtFc0etCZp35/VzAEUPESLcdn2OMHF9Q9FaUB3u9HQWL85t6aCcKBUQKWcJdfzxTTyrOpq
	EPPQmb2N70U8FEqDlJyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBbe7-00000005ZZV-4838;
	Sun, 04 May 2025 15:52:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBbe4-00000005ZXC-3KoT
	for linux-phy@lists.infradead.org;
	Sun, 04 May 2025 15:52:50 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544Dvmkh004007;
	Sun, 4 May 2025 15:52:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PxM5qAc4i2t1cELMsRgZ4ARF3VXsOBsolVV2fKTHGTA=; b=b+mMqpaZM2VGWfLd
	NfQAy/awp7w8VwmKarDbr01gTeTdgSsmGB6pgsWOVE+Mw6m2IiTRtIWo3+nTJg8l
	2tfK5Ogyf41CoL4lPaFsvjbJ2O5ZgvbFyYjsYb9kq3HNm01fdAdY3xtAs6Yk0rT5
	32k4K9C4tCJxs8J15QYIXnTEXtNbaW/OyH67wj5vY8TuiozT9hvUYYCrbLhV1neg
	6KznLyEV5FFoBJ/2DsmZZkkAe9FS7jsii4niWGPCFUNUcXMt8uoM/IvSz3fuZiM6
	eSeJYN2qjduJ5Hx/df/nN93smXnNze59YiNoXyLyGzz9bZDjtLohA9CU/rhF+1jv
	z91SOw==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46d9ep28yt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 04 May 2025 15:52:16 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 544FqEaw027076
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 4 May 2025 15:52:14 GMT
Received: from [10.216.6.110] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Sun, 4 May 2025
 08:52:09 -0700
Message-ID: <2191c270-f4fc-47e4-8bb7-ba6329332ef3@quicinc.com>
Date: Sun, 4 May 2025 21:22:06 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 06/11] phy: qcom-qmp-ufs: Rename qmp_ufs_power_off
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
CC: <vkoul@kernel.org>, <kishon@kernel.org>,
        <manivannan.sadhasivam@linaro.org>,
        <James.Bottomley@hansenpartnership.com>, <martin.petersen@oracle.com>,
        <bvanassche@acm.org>, <andersson@kernel.org>,
        <neil.armstrong@linaro.org>, <konrad.dybcio@oss.qualcomm.com>,
        <quic_rdwivedi@quicinc.com>, <quic_cang@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-scsi@vger.kernel.org>
References: <20250503162440.2954-1-quic_nitirawa@quicinc.com>
 <20250503162440.2954-7-quic_nitirawa@quicinc.com>
 <prbe2guxzsea6aqonf32m44zp6oa3vzdf5ieazcontv4fmx3d3@2r4tu5nr2k4x>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <prbe2guxzsea6aqonf32m44zp6oa3vzdf5ieazcontv4fmx3d3@2r4tu5nr2k4x>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=EOUG00ZC c=1 sm=1 tr=0 ts=68178d30 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8
 a=BD_dlTH9QecSOJyhnTYA:9 a=QEXdDO2ut3YA:10 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: X-mPH5i0BPBrDl8qo5GNohd7ktvKAmfU
X-Proofpoint-GUID: X-mPH5i0BPBrDl8qo5GNohd7ktvKAmfU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA0MDE0OCBTYWx0ZWRfX8ULTAhtuh5ZY
 +T1mtoxOwieood7ImrHPuSEFVnHWbV047LoAtSIQRtbH11zVchE8Td9a8AB0foG4Gcudzb82qtF
 967bY44DCI9d+6yjteqZHxYE+d6kOSjYVaB8+7fnM5Z+uVTD+qne0WNWwxup9+QQzt/AGrT7vit
 H+TTm2+fO8jt+tgQHyR/GfnJBmrwOsvJk/E00Xbl9aiHz72Dz/eZOAU+G1v4h4TWW4+zR8nPAOq
 m+Bz3Z0wuzemTYB1PcwWyxsgRTvBbRbPLVEZ+txMag+Qm2RBgijriTvQiFXumn5HF4F730s5XWo
 nORkQ2Pu4fy1ERhNTj0nEIU07nOVNWC3B5VGYBRVM5lfSyE2VzAWiAm7D2zJaLLviNx+poP6/oC
 jfoMOV932vH5u+aODhDX2iN4DH5rpb4VyuDF3l80fSV0Y3WMxhzXmNyt1HloDCU410sQe9Lr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-04_06,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 lowpriorityscore=0
 bulkscore=0 phishscore=0 suspectscore=0 mlxlogscore=999 mlxscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505040148
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250504_085248_962701_0052A0C0 
X-CRM114-Status: GOOD (  15.95  )
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



On 5/4/2025 9:07 PM, Dmitry Baryshkov wrote:
> On Sat, May 03, 2025 at 09:54:35PM +0530, Nitin Rawat wrote:
>> Rename qmp_ufs_disable to qmp_ufs_power_off to better represent its
>> functionality. Additionally, move the qmp_ufs_exit() call inside
>> qmp_ufs_power_off to preserve the functionality of .power_off.
>>
>> There is no functional change.
>>
>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 30 +++++++++----------------
>>   1 file changed, 11 insertions(+), 19 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> index 94095393148c..c501223fc5f9 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> @@ -1835,6 +1835,15 @@ static int qmp_ufs_phy_calibrate(struct phy *phy)
>>   	return 0;
>>   }
>>
>> +static int qmp_ufs_exit(struct phy *phy)
>> +{
>> +	struct qmp_ufs *qmp = phy_get_drvdata(phy);
>> +
>> +	qmp_ufs_com_exit(qmp);
> 
> Just inline it, unless you have any other plans.

Hi Dmitry,

I have inlined qcom_ufs_com_exit in patch #7 of the same series. I 
separated it into a different patch to keep each patch simpler.

Could you please review patch #7 and share your thoughts.

[PATCH V4 07/11] phy: qcom-qmp-ufs: Remove qmp_ufs_exit() and Inline 
qmp_ufs_com_exit().


Regards,
Nitin


> 
>> +
>> +	return 0;
>> +}
>> +
>>   static int qmp_ufs_power_off(struct phy *phy)
>>   {
>>   	struct qmp_ufs *qmp = phy_get_drvdata(phy);
>> @@ -1851,28 +1860,11 @@ static int qmp_ufs_power_off(struct phy *phy)
>>   	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
>>   			SW_PWRDN);
>>
>> -	return 0;
>> -}
>> -
>> -static int qmp_ufs_exit(struct phy *phy)
>> -{
>> -	struct qmp_ufs *qmp = phy_get_drvdata(phy);
>> -
>> -	qmp_ufs_com_exit(qmp);
>> +	qmp_ufs_exit(phy);
>>
>>   	return 0;
>>   }
>>
>> -static int qmp_ufs_disable(struct phy *phy)
>> -{
>> -	int ret;
>> -
>> -	ret = qmp_ufs_power_off(phy);
>> -	if (ret)
>> -		return ret;
>> -	return qmp_ufs_exit(phy);
>> -}
>> -
>>   static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
>>   {
>>   	struct qmp_ufs *qmp = phy_get_drvdata(phy);
>> @@ -1921,7 +1913,7 @@ static int qmp_ufs_phy_init(struct phy *phy)
>>   static const struct phy_ops qcom_qmp_ufs_phy_ops = {
>>   	.init		= qmp_ufs_phy_init,
>>   	.power_on	= qmp_ufs_power_on,
>> -	.power_off	= qmp_ufs_disable,
>> +	.power_off	= qmp_ufs_power_off,
>>   	.calibrate	= qmp_ufs_phy_calibrate,
>>   	.set_mode	= qmp_ufs_set_mode,
>>   	.owner		= THIS_MODULE,
>> --
>> 2.48.1
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
