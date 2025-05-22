Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01EDAC54E90
	for <linux-phy@archiver.kernel.org>; Thu, 22 May 2025 09:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjAnMTX+Hm8IMh+uqXjpQ+5sQsxnCztDzLCAQWi2LIA=; b=amjxzXQGeK/r8r
	OD9XmkNazEFNw/SarNdQ0vcP+XHFHylnfnYy5SZuEaeEYOvrwj47eU0i4UfW5IuIgNiaJytj/bqSu
	zwBLlD2EQcfSLpWh5+M99KYVY+yvCFPXNe+dBlQ1X7AhLnRFitRar7j4g5JMcq/wGOxhU/wDHlGei
	3K/rY70rlDFxqd7Sz9nvCobgxYrEcBHnqKz7PnIzuFyCGHR5y8RHeSutPMLjmXTuB54C4lHNhiiU0
	N/TeQi+l1uUo/xftoX9ptlDvl4Pro/abZ47XkbcGxZOZBSWrBoEYQiEiWHSFvzGIx/MFOLZwH9JlV
	1vJYkCl9DWfPVeoIlcXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI26k-00000000TFU-2iMZ;
	Thu, 22 May 2025 09:20:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI26U-00000000TA4-2L4X
	for linux-phy@lists.infradead.org;
	Thu, 22 May 2025 09:20:43 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54M7IPxu013417;
	Thu, 22 May 2025 09:20:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1TWNeFD3RtvStATwZPx3RrPcEDbFBkfg15OgYn7S8Pk=; b=FkxMbu74hjSwIPgf
	ZqthEca5AQJXLAbU5yiy8FUD8o/1gEBGIkT0D9HSmMwraeF8Tgh552V582+uhzcE
	jHWK1hGaBhOcAZcBrKNHME7r08lWEui6Qui+KxMi0FG67T4EIDA/LnZmCu2byGVk
	0cIrpTMgSijMTTIx8uncJ3ZoQjxTnkp4aytyebpPHw20sbyXOapCB/OOUdlhgIwp
	ESKU1cyrI7dORobI3tc0TvvCL5UHU8lw2Wz7aIjhXpG6DuqYzSh3yR7v8snagw5c
	BaIjJHW91ud6P9gVEOP98mv85yAdlqbIFGRBXmxqlI1XnfsCiGAGzNUzn8LQIcl6
	WpclaA==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwh5dwdu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 22 May 2025 09:20:25 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 54M9KPLc009388
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 22 May 2025 09:20:25 GMT
Received: from [10.218.7.247] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 22 May
 2025 02:20:20 -0700
Message-ID: <6d3fabc6-9701-443d-a08d-71e6c69e4ed0@quicinc.com>
Date: Thu, 22 May 2025 14:50:17 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 07/11] phy: qcom-qmp-ufs: Remove qmp_ufs_exit() and
 Inline qmp_ufs_com_exit()
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
 <20250515162722.6933-8-quic_nitirawa@quicinc.com>
 <untqxy76skl53c55bdjz5usk4seuypjqbxkfub2qeqz42mewqr@r4cutmkvy235>
 <79d2f373-ee53-4cd2-b228-171daf3adcb7@quicinc.com>
 <qrope222shpeqvhe2dnh4p4jmznuu7tr3jh2zujwbbd3khg4yo@wm2epj5ydefc>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <qrope222shpeqvhe2dnh4p4jmznuu7tr3jh2zujwbbd3khg4yo@wm2epj5ydefc>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDA5MyBTYWx0ZWRfX3aBf8rINn04w
 W/+LE+z96YZ18oSRyXEO5hgIfX7y0gmBovLSkMj5EDSergAYwTy0fpVzKlHZSkQG0A9c/woCunZ
 EtJe2f7suAvSA49inX1riXf/kKmCe3AgkxTZhUMltK/38vudSYGxGjbCKFVPZKQ0DoHPmdoMiSC
 OP+ccuuSuq7A2rQXJegpBgMqIXHy8I4K1VjBkYIm1FtXAdbqRLyUfIs9JKMUQv5s9H9/o1Zhe37
 bkXeaPrAl0hRaz73ushZC/sNmXB8lOt6BkTVH+Dy3ogaU/bVXvNUVZ1DOY2e0jE0oHsYDgCvjGV
 JWWN0DHHxXtfbglQxH05mc+FWHv38PaB0abB5CrAw3WOFqsCENJgpJv/W7dwzkWRz8Nyg4ov6A9
 OZ0IZ9YZZpFj7nDC7OPA9d5L9sEEfDpmgatB+emGhckIEmp4A5SpXVNkXK5dwakhqedLBmgm
X-Authority-Analysis: v=2.4 cv=XeWJzJ55 c=1 sm=1 tr=0 ts=682eec59 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=tevBJ2omWQ-VxGc_UgsA:9 a=QEXdDO2ut3YA:10
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 9EMLqy3UAAPLFhtUPvafhHNHjRooUPkB
X-Proofpoint-ORIG-GUID: 9EMLqy3UAAPLFhtUPvafhHNHjRooUPkB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-22_04,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 mlxlogscore=999 mlxscore=0 bulkscore=0 spamscore=0
 suspectscore=0 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505220093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_022042_606621_498C8615 
X-CRM114-Status: GOOD (  17.52  )
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



On 5/22/2025 2:23 PM, Manivannan Sadhasivam wrote:
> On Thu, May 22, 2025 at 03:49:12AM +0530, Nitin Rawat wrote:
>>
>>
>> On 5/21/2025 7:19 PM, Manivannan Sadhasivam wrote:
>>> On Thu, May 15, 2025 at 09:57:18PM +0530, Nitin Rawat wrote:
>>>> qmp_ufs_exit() is a wrapper function. It only calls qmp_ufs_com_exit().
>>>> Remove it to simplify the ufs phy driver.
>>>>
>>>
>>> Okay, so you are doing it now...
>>
>> Yes
>>
>>>
>>>> Additonally partial Inline(dropping the reset assert) qmp_ufs_com_exit
>>>> into qmp_ufs_power_off function to avoid unnecessary function call.
>>>>
>>>
>>> Why are you dropping the reset_assert()?
>>
>> This was not aligning to Phy programming guide .
>>
> 
> You should mention it in the description.

Sure, will update the commit text.

> 
>>
>>>
>>>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>>> ---
>>>>    drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 19 +++++--------------
>>>>    1 file changed, 5 insertions(+), 14 deletions(-)
>>>>
>>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>>>> index a5974a1fb5bb..fca47e5e8bf0 100644
>>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>>>> @@ -1758,19 +1758,6 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
>>>>    		qmp_ufs_init_all(qmp, &cfg->tbls_hs_b);
>>>>    }
>>>> -static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
>>>> -{
>>>> -	const struct qmp_phy_cfg *cfg = qmp->cfg;
>>>> -
>>>> -	reset_control_assert(qmp->ufs_reset);
>>>> -
>>>> -	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
>>>> -
>>>> -	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
>>>> -
>>>> -	return 0;
>>>> -}
>>>> -
>>>>    static int qmp_ufs_power_on(struct phy *phy)
>>>>    {
>>>>    	struct qmp_ufs *qmp = phy_get_drvdata(phy);
>>>> @@ -1851,7 +1838,11 @@ static int qmp_ufs_power_off(struct phy *phy)
>>>>    	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
>>>>    			SW_PWRDN);
>>>> -	qmp_ufs_com_exit(qmp);
>>>> +	/* Turn off all the phy clocks */
>>>
>>> You should drop this and below comment. They add no value.
>>
>> Comments are actually provided for each operation within qmp_ufs_power_off
>> which actually facilitate understanding of all actions performed by the
>> function which may not be fully clear by code. Hence
>> I thought to keep the comments. But If you insist i'll remove.
>>
> 
> For complex code, comment should be added indeed. But for
> clk_bulk_disable_unprepare() and regulator_bulk_disable(), NO. It is obvious
> that they turn off clock and regulators.

ok sure, will remove it.

> 
> - Mani
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
