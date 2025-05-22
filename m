Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CBD4C54756
	for <linux-phy@archiver.kernel.org>; Thu, 22 May 2025 09:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yDsc/rJM34BmFZNL9JAAzjkkHwYIo3iOedtYiqlXHrA=; b=T+8808lHzxjvHw
	pQVy+dScfNGkwwLSenpC3UzCmPfEwmneoL3tekRK+KIx0/pbLXMERyMMT1vz032s7+TJx483PgRkF
	iBPHp6Dei+HtFHVWQPpHbCIcQS39an86bW7uOn6vV5S7+FQb0i/8sPdHf+ky+YQO2WLymfxKCy8zd
	1NbGaE0ORm3miPkjTDhuKMNzMOqjxde0jHAcZCEdxh/X7HZJD6lP2vKcMb/XURUyV0RlVrv+a7V/3
	fHdVX4EuQVEJrPAfEbTiuw2dORF/wFffQa2AKtPaslm/9waSVG20KyBSj9VlYDEuEQZkIYCqerNWw
	NcRmAKUroN5jWr8wfpaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI26k-00000000TFG-1azY;
	Thu, 22 May 2025 09:20:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI25i-00000000T1Z-0wtS
	for linux-phy@lists.infradead.org;
	Thu, 22 May 2025 09:19:55 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54M7pNdw029931;
	Thu, 22 May 2025 09:19:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SluCIdJCTMYmiz7FXaBDUUgy1IMjyMOeFE3QncYRnLM=; b=PBNgtksKxDANN3Pl
	dNuV7+XzYOgNzooFQBC7EZqCK7ZBZY4D5TkpCxirK1SwVby1mQRxaoxzH3IprZa1
	nch18px3yUOtcmxC3eps/jv4gkNF+OBgOuA0COAomA7FV5aXn8vsX32Nvyb4/DUg
	1zF165uknW6SHNK7oumMDdP6MTMW1WvU3GSBit4ylF4uqqfTzjYQvhWBc1EEmf0u
	XnkPecoj2hV8nUJGKuCbdljf8JkdCWiY4LKVlsPL7c+ls3wihT0MvB7VzXjcgmlJ
	1ne5vzJhUYF3xcCTky/EPHICCFUReghgWFITVx0i6FRi53iR3vD/+co250y5qnIR
	Uv+CJg==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf45upn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 22 May 2025 09:19:36 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 54M9JZ9u022945
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 22 May 2025 09:19:35 GMT
Received: from [10.218.7.247] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 22 May
 2025 02:19:31 -0700
Message-ID: <6e3c37d6-7e52-4380-9703-56deb2704992@quicinc.com>
Date: Thu, 22 May 2025 14:49:28 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 09/11] scsi: ufs: qcom : Refactor phy_power_on/off
 calls
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
 <20250515162722.6933-10-quic_nitirawa@quicinc.com>
 <knlhbl3mwo3b7xc4rjp4y7yka2nwythumjacmvn236v72ykddo@r3cp2w4uomol>
 <5584c019-d435-4d1b-b38c-80fb9b9f00f6@quicinc.com>
 <5z5yfa2xrnkrgz6ol6baaynsy4vugxv3kf7c2xrqjqvrr7dbcr@u3qycb4ucguz>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <5z5yfa2xrnkrgz6ol6baaynsy4vugxv3kf7c2xrqjqvrr7dbcr@u3qycb4ucguz>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDA5MyBTYWx0ZWRfX6zJFGRM66HCT
 ZO5qBlNLdgrfUfklSOFmVspDSe/nXYzLXLV0O4G4Qy50ITaEf5/WHYxci64qzBY4ZD+mp4p4oiS
 bIMLq7ZvwiPekzhcIZtJ0OpZmOuawN8AoqWQxAfVH9F7ECEWRqb3l8+Q/deceL82AYZopaGFkO1
 WU1Xg/ZcojojRwOsIkAPF30F2FjG9sZSNAlv3kQhcrB209l3FyhfX3wUb0IeQe62WmR9z+KDx7R
 hRpG4pXVippdoxVp6p2eim9l21XTTaMvzBMm6KL44PyDBJcfqVBJ3eqt6AEJtia9QI5W1mifbkh
 yCvi2iEp2yqtXVB3w3jmAJFYfD+1LuDMNFVgz5UeegOSYX8FTcSI1A9oW4R/E1Xsmj5EyUoqv1t
 nfarM3u+RpFbsTJ/M3nLNda/paD1L0Q2DDYdUAvoKHe48gJCkrgJ05295TdGHiBA2KzMoxpj
X-Proofpoint-GUID: gtlR3klHaKuyuHtXAbc_6DuZJcxK3wwt
X-Authority-Analysis: v=2.4 cv=Ws8rMcfv c=1 sm=1 tr=0 ts=682eec28 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8
 a=tUN6H4m40X_enmaeLRoA:9 a=QEXdDO2ut3YA:10 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: gtlR3klHaKuyuHtXAbc_6DuZJcxK3wwt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-22_04,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0 mlxscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=999 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505220093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_021954_289049_47765ABD 
X-CRM114-Status: GOOD (  23.12  )
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



On 5/22/2025 2:25 PM, Manivannan Sadhasivam wrote:
> On Thu, May 22, 2025 at 03:10:48AM +0530, Nitin Rawat wrote:
>>
>>
>> On 5/21/2025 7:27 PM, Manivannan Sadhasivam wrote:
>>> On Thu, May 15, 2025 at 09:57:20PM +0530, Nitin Rawat wrote:
>>>> Commit 3f6d1767b1a0 ("phy: ufs-qcom: Refactor all init steps into
>>>> phy_poweron") removes the phy_power_on/off from ufs_qcom_setup_clocks
>>>
>>> s/removes/moved
>>
>> Sure, will address in next patchset.
>>
>>>
>>>> to suspend/resume func.
>>>>
>>>> To have a better power saving, remove the phy_power_on/off calls from
>>>> resume/suspend path and put them back to ufs_qcom_setup_clocks, so that
>>>> PHY regulators & clks can be turned on/off along with UFS's clocks.
>>>>
>>>> Since phy phy_power_on is separated out from phy calibrate, make
>>>> separate calls to phy_power_on and phy_calibrate calls from ufs qcom
>>>> driver.
>>>>
>>>
>>> This patch is not calling phy_calibrate().
>>
>> updated commit text to remove phy_Calibrate from commit text
>>
>>>
>>>> Co-developed-by: Can Guo <quic_cang@quicinc.com>
>>>> Signed-off-by: Can Guo <quic_cang@quicinc.com>
>>>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
>>>> ---
>>>>    drivers/ufs/host/ufs-qcom.c | 61 ++++++++++++++++++-------------------
>>>>    1 file changed, 29 insertions(+), 32 deletions(-)
>>>>
>>>
>>> [...]
>>>
>>>>    static int ufs_qcom_setup_clocks(struct ufs_hba *hba, bool on,
>>>>    				 enum ufs_notify_change_status status)
>>>>    {
>>>>    	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
>>>> +	struct phy *phy = host->generic_phy;
>>>> +	int err;
>>>>    	/*
>>>>    	 * In case ufs_qcom_init() is not yet done, simply ignore.
>>>> @@ -1157,10 +1141,22 @@ static int ufs_qcom_setup_clocks(struct ufs_hba *hba, bool on,
>>>>    				/* disable device ref_clk */
>>>>    				ufs_qcom_dev_ref_clk_ctrl(host, false);
>>>>    			}
>>>> +
>>>> +			err = phy_power_off(phy);
>>>> +			if (err) {
>>>> +				dev_err(hba->dev, "phy power off failed, ret=%d\n", err);
>>>> +				return err;
>>>> +			}
>>>>    		}
>>>>    		break;
>>>>    	case POST_CHANGE:
>>>>    		if (on) {
>>>> +			err = phy_power_on(phy);
>>>> +			if (err) {
>>>> +				dev_err(hba->dev, "phy power on failed, ret = %d\n", err);
>>>> +				return err;
>>>> +			}
>>>> +
>>>>    			/* enable the device ref clock for HS mode*/
>>>>    			if (ufshcd_is_hs_mode(&hba->pwr_info))
>>>>    				ufs_qcom_dev_ref_clk_ctrl(host, true);
>>>> @@ -1343,9 +1339,10 @@ static int ufs_qcom_init(struct ufs_hba *hba)
>>>>    static void ufs_qcom_exit(struct ufs_hba *hba)
>>>>    {
>>>>    	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
>>>> +	struct phy *phy = host->generic_phy;
>>>>    	ufs_qcom_disable_lane_clks(host);
>>>> -	phy_power_off(host->generic_phy);
>>>> +	phy_power_off(phy);
>>>
>>> This change is not at all needed.
>>
>> In the current code, PHY resources (clocks and rails) remain active even
>> when the link is in a hibernate state and all controller clocks are off.
>> This results in a significant power penalty and can prevent CX power
>> collapse.
>>
>> These rails and clocks are only turned off when a system suspend is
>> triggered, and even then, only at SPM level 5 where the link is turned off.
>> This approach is not power-efficient.
>>
>> As part of this series, the code that enables/disables the PHY's regulators
>> and clocks is now confined to the phy_power_on and phy_power_off calls, with
>> the rest moved to the calibration phase.
>>
>> Therefore, we are invoking the phy_power_off and phy_power_on calls from
>> ufs_qcom_setup_clocks, ensuring that the PHY's regulators and clocks can be
>> turned on/off along with the UFS clocks, thereby achieving power savings.
>>
>> Therefore, this patch is the cornerstone of this series.
>>
> 
> I did not question the patch, but just the change that you did in the
> ufs_qcom_exit() function. You added a local variable for 'host->generic_phy',
> which is not related to this patch.

Sorry about that, Mani. I misunderstood your comments. Sure, will 
address them.


> 
> - Mani
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
