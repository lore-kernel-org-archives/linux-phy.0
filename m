Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16FB4C54ED1
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 15:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e82AicmqPJY6ZlyceYS82LGo73a1UfWIVBvCTus9EMw=; b=H6AGKlSSNES0TJ
	K2a2WvA/21QxKgN4s6W/mCXL+U0oXwFr/cArwWNqvdvV8eiJNiRKHe256q8Iz+cZIt1GbpSX6YSQ6
	R4UE60E+vuvoD/6fmy773gksJpJmBC+mOSJTEc2Nb8WWabwr0O+EFZ61itYPjuRbJu2XCBIx1aG7K
	6IebJLK6iZebUMZK+BsjqP21u/HPqVMQzAVK8yxWa3lf0rWAUBZfoWAVPkuc42Fysyynt2ZwIeBXf
	zMTahEAw7yvaCGZdhIOOtTnZhbFBC/DbaDqcl91AyyzsFMKDQk61rIXW+h7cK13u5cVPctlkMhLgZ
	D/YF4D8IFG1vJ+jy4FpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJwAF-0000000B2zw-2icv;
	Tue, 27 May 2025 15:24:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJw96-0000000B2nx-3Vzv
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 15:23:18 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54R7itaT028239;
	Tue, 27 May 2025 15:22:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WH41sOw46uGb0O/mCSIo69Vm7oio0sgM/j+ncmuu7NA=; b=BvBC8bfPOQEZR/j7
	+XXj7hmFjS2txjVbALo40AmFpZ81tzVhBpnPiVFH1xPSVhfSwwUS9aDVJZhsp2/0
	vXiMIqSsUXB88DDiulFauIY6PAhhmhDCGBJtalJ8dtl8cUkg88s/sm2/q6NFcElf
	G4SQL9sb4H2DZH7ihlmZIM9phup2jLObnJNMLt9eBl7PhIme3Ku042VBXBvusYWw
	AsidcLMrg2QAK49B6OiX5eiAZKPXXKECx/ubqf3FgkcElj+BFATjhGe1oiSKufOQ
	PsBKTUXG5J9AtWcbWb2FlSD5cMxqqHfufgB50A74uJ26dAuSXupJDxT9QO1Ddb4j
	JfQwfg==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46w992hb1d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 May 2025 15:22:55 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 54RFMsxm028681
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 May 2025 15:22:54 GMT
Received: from [10.218.7.247] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 27 May
 2025 08:22:49 -0700
Message-ID: <93869cf3-de84-4f3b-b120-7126928a5ea6@quicinc.com>
Date: Tue, 27 May 2025 20:52:47 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 00/11] Refactor ufs phy powerup sequence
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        "Martin K. Petersen"
	<martin.petersen@oracle.com>
CC: <vkoul@kernel.org>, <kishon@kernel.org>,
        <manivannan.sadhasivam@linaro.org>,
        <James.Bottomley@hansenpartnership.com>, <bvanassche@acm.org>,
        <andersson@kernel.org>, <neil.armstrong@linaro.org>,
        <konrad.dybcio@oss.qualcomm.com>, <quic_rdwivedi@quicinc.com>,
        <quic_cang@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
 <yq1msb6lowo.fsf@ca-mkp.ca.oracle.com>
 <ni7kedpcz7vchztb5qrs5msdt37mfdoabtt4gdqsaiwmbxlb2a@im4wurr77z43>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <ni7kedpcz7vchztb5qrs5msdt37mfdoabtt4gdqsaiwmbxlb2a@im4wurr77z43>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDEyNyBTYWx0ZWRfX5pCPrc1zpff0
 ddINaK0caD+7H9oLrJq+xo1G13Cj9+QuLUJHQmSgyTHc/n4kwVEFi1/h+qVBCxNouy6ktD2sx2x
 6IbVaYZPgTE1HG7mH+SoHavsgMVNtFMnG4SZZCODBrENmr/TYs0XnjcRlyWjpC0dXoyfDPNUIPN
 ZTGR2fAh69hDDhb51jn7p5K5q8MwDVNGyS0RFSnCV+CCv0jcrwzOUYhRaW2gBV6cfGq1K72o3l5
 LI6O2vG+oGOPPzKIpc5qZk+TGprNOCGLzlavI0+5APsVw5uwG91cl/iek8/Zu0x654zE+z+gwXc
 u/582/GAL5YzEr99/S9MaSTStcJ1q7eEKm6kqJGO+ij8Mk08oMsWs3ikSAI2Qote4FHJu4t7xf4
 ffniZCHTl71+ZTxqckv6AWLUqz2+k/NRZvw2BnJxTjHuX/zCqiTyJMufiqbyFYTfUbz5Xbtq
X-Authority-Analysis: v=2.4 cv=Fes3xI+6 c=1 sm=1 tr=0 ts=6835d8cf cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10
 a=HGgBVA14KErkiVD9HLEA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: yiuvSsOzWlmG4o9TUWcDiMtnHK8qHTcw
X-Proofpoint-ORIG-GUID: yiuvSsOzWlmG4o9TUWcDiMtnHK8qHTcw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_07,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 impostorscore=0 phishscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=904 spamscore=0
 adultscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_082316_911318_3ACA4861 
X-CRM114-Status: GOOD (  10.56  )
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



On 5/21/2025 6:40 PM, Dmitry Baryshkov wrote:
> On Tue, May 20, 2025 at 09:45:40PM -0400, Martin K. Petersen wrote:
>>
>> Hi Nitin!
>>
>>> Nitin Rawat (11):
>>>    scsi: ufs: qcom: add a new phy calibrate API call
>>>    phy: qcom-qmp-ufs: Rename qmp_ufs_enable and qmp_ufs_power_on
>>>    phy: qcom-qmp-ufs: Refactor phy_power_on and phy_calibrate callbacks
>>>    phy: qcom-qmp-ufs: Refactor UFS PHY reset
>>>    phy: qcom-qmp-ufs: Remove qmp_ufs_com_init()
>>>    phy: qcom-qmp-ufs: Rename qmp_ufs_power_off
>>>    phy: qcom-qmp-ufs: Remove qmp_ufs_exit() and Inline qmp_ufs_com_exit()
>>>    phy: qcom-qmp-ufs: refactor qmp_ufs_power_off
>>>    scsi: ufs: qcom : Refactor phy_power_on/off calls
>>>    scsi: ufs: qcom : Introduce phy_power_on/off wrapper function
>>>    scsi: ufs: qcom: Prevent calling phy_exit before phy_init
>>
>> What is your intent wrt. getting this series merged? Can the phy: and
>> scsi: patches be merged independently?
> 
> Unfortunately PHY patches depend on the first scsi patch.

Thanks, Dmitry, for mentioning the dependency

Hi Martin,

After addressing the review comments for v5, there has been a change in 
the patch order.

In the latest patchset (v6), Patch 2 (SCSI patch) is now required for 
the functional dependency of the subsequent PHY patches (Patch 3 to 
Patch 9).

Patch 1 (SCSI patch) addresses an existing issue and does not depend on 
any other changes.

Regards,
Nitin



> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
