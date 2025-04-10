Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C28FC3601E
	for <linux-phy@archiver.kernel.org>; Thu, 10 Apr 2025 16:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I8I2Kh0E8+6yRLpQSK2dH0WoQtZFvj4JWHlPEpeR9OE=; b=E7leVNaTgLVQr4
	fKltXGRKIjRgyg2rs84mfrmJVkZWDJmuHpxrPYah4Cr2oAEtE//qrQnhtY3frc9EjRrWmOE/J6Uo9
	uRJmiIu6IwCzy51RUgFrwlyBN0y/gwFG3iLdZV9mZPecvhuLUvZFM+nEQm1a9bAhnBbHumVyHglMf
	hJ3jQ/99WVKOLHH12v3/x+NTTbuDXgoHM3xf7mO1Xou2nGEbEhFt5x+2RimtWLAVWn0zwp5IlLa2X
	H69PP/sVQKth9WohUhSyhJAAhfUNp0iEgD8Nqg1vW0YVW3zSaRg8OBCAd/QrSasAYuVFL9OtlI2w8
	iMmOgWgOugvbJvNDrGDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2v3x-0000000BG3Q-3f6O;
	Thu, 10 Apr 2025 16:47:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2u1x-0000000B3oH-40jq
	for linux-phy@lists.infradead.org;
	Thu, 10 Apr 2025 15:41:31 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53A75J5Q028839;
	Thu, 10 Apr 2025 15:41:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Fjf7yYm0yDfKXxtHHeZp2F3zNuJYcYsV1Ye6MuBrR24=; b=DVeu9Uq5QRiZs6FA
	B3vRtW1jwgz8feJFkBlpAgbsfCHGNh9p3dw4S8zLDf7YWw3cgwpAu7rXM1O1KmRL
	Llodmx2OIWkrdKDsCIZVYi5zb+0DSxFH3oQJhZFnecneQJFrRuDOXWN1nE2Msxsm
	J8+0SIwKO7JU0+msGXotVEcQORId6bGaLMQLaeTahBvjN7YI4jqKFYsL+sQO6YQw
	5Sa6iHg9GQdUBX5aIFkr2jPtJVbF6HN27FIf683jmzwaK0Q96HJefACbNwlwzjDR
	45gCAFkZOVdYSIv0A9XvMMNDagKnHWOP5zA7Ff1eQN+9ZdZv+fpV+JSoH02mBiAU
	UDDMFw==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbuqex7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Apr 2025 15:41:24 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 53AFfNvM009731
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Apr 2025 15:41:23 GMT
Received: from [10.218.7.247] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 10 Apr
 2025 08:41:19 -0700
Message-ID: <f93dc302-f10d-40c6-a852-cd76ad5e74da@quicinc.com>
Date: Thu, 10 Apr 2025 21:11:17 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 6/6] scsi: ufs: host : Introduce phy_power_on/off
 wrapper function
To: Bjorn Andersson <andersson@kernel.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>,
        <manivannan.sadhasivam@linaro.org>,
        <James.Bottomley@hansenpartnership.com>, <martin.petersen@oracle.com>,
        <konrad.dybcio@oss.qualcomm.com>, <quic_rdwivedi@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
        Can Guo <quic_cang@quicinc.com>
References: <20250318144944.19749-1-quic_nitirawa@quicinc.com>
 <20250318144944.19749-7-quic_nitirawa@quicinc.com>
 <jx6t2745x3swbfiqwsii5xdumhpanc435ooucrg2nlyl22llho@epleg24suedr>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <jx6t2745x3swbfiqwsii5xdumhpanc435ooucrg2nlyl22llho@epleg24suedr>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: ZDW9Uu1bdIriZQZQeGwQURy7teSDYaQl
X-Proofpoint-ORIG-GUID: ZDW9Uu1bdIriZQZQeGwQURy7teSDYaQl
X-Authority-Analysis: v=2.4 cv=dbeA3WXe c=1 sm=1 tr=0 ts=67f7e6a4 cx=c_pps a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=n_emG9rYDKyKq8pEu_gA:9 a=QEXdDO2ut3YA:10
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-10_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 mlxlogscore=999 phishscore=0 mlxscore=0 spamscore=0
 malwarescore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504100114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_084130_009753_A151E83F 
X-CRM114-Status: GOOD (  24.27  )
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



On 3/19/2025 1:20 AM, Bjorn Andersson wrote:
> On Tue, Mar 18, 2025 at 08:19:44PM +0530, Nitin Rawat wrote:
>> Introduce ufs_qcom_phy_power_on and ufs_qcom_phy_power_off wrapper
>> functions with mutex protection to ensure safe usage of is_phy_pwr_on
>> and prevent possible race conditions.
>>
> 
> Please describe the problem properly here. Are you introducing the mutex
> because there is a problem, or because you want to be "safe"?
> 
> Why is it "refcounted", is the calling code paths no longer in sync? How
> long has the current implementation been broken?
> 
> Regards,
> Bjorn
> 

Hi Bjorn,

Thanks for the review. There are scenarios where ufshcd_link_startup() 
can call ufshcd_vops_link_startup_notify() multiple times during 
retries. This leads to the PHY reference count increasing continuously, 
preventing proper re-initialization of the PHY.

Recently, this issue was addressed with patch 7bac65687510 ("scsi: ufs: 
qcom: Power off the PHY if it was already powered on in 
ufs_qcom_power_up_sequence()"). However, I still want to maintain a 
reference count (ref_cnt) to safeguard against similar conditions in the 
code. Additionally, this approach helps avoid unnecessary phy_power_on 
and phy_power_off calls. Please let me know your thoughts.

Regrads,
Nitin




>> Co-developed-by: Can Guo <quic_cang@quicinc.com>
>> Signed-off-by: Can Guo <quic_cang@quicinc.com>
>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
>> ---
>>   drivers/ufs/host/ufs-qcom.c | 44 +++++++++++++++++++++++++++++++------
>>   drivers/ufs/host/ufs-qcom.h |  4 ++++
>>   2 files changed, 41 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
>> index 5c7b6c75d669..8f80724e64b9 100644
>> --- a/drivers/ufs/host/ufs-qcom.c
>> +++ b/drivers/ufs/host/ufs-qcom.c
>> @@ -421,6 +421,38 @@ static u32 ufs_qcom_get_hs_gear(struct ufs_hba *hba)
>>   	return UFS_HS_G3;
>>   }
>>
>> +static int ufs_qcom_phy_power_on(struct ufs_hba *hba)
>> +{
>> +	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
>> +	struct phy *phy = host->generic_phy;
>> +	int ret = 0;
>> +
>> +	guard(mutex)(&host->phy_mutex);
>> +	if (!host->is_phy_pwr_on) {
>> +		ret = phy_power_on(phy);
>> +		if (!ret)
>> +			host->is_phy_pwr_on = true;
>> +	}
>> +
>> +	return ret;
>> +}
>> +
>> +static int ufs_qcom_phy_power_off(struct ufs_hba *hba)
>> +{
>> +	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
>> +	struct phy *phy = host->generic_phy;
>> +	int ret = 0;
>> +
>> +	guard(mutex)(&host->phy_mutex);
>> +	if (host->is_phy_pwr_on) {
>> +		ret = phy_power_off(phy);
>> +		if (!ret)
>> +			host->is_phy_pwr_on = false;
>> +	}
>> +
>> +	return ret;
>> +}
>> +
>>   static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
>>   {
>>   	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
>> @@ -449,7 +481,7 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
>>   		return ret;
>>
>>   	if (phy->power_count) {
>> -		phy_power_off(phy);
>> +		ufs_qcom_phy_power_off(hba);
>>   		phy_exit(phy);
>>   	}
>>
>> @@ -466,7 +498,7 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
>>   		goto out_disable_phy;
>>
>>   	/* power on phy - start serdes and phy's power and clocks */
>> -	ret = phy_power_on(phy);
>> +	ret = ufs_qcom_phy_power_on(hba);
>>   	if (ret) {
>>   		dev_err(hba->dev, "%s: phy power on failed, ret = %d\n",
>>   			__func__, ret);
>> @@ -1017,7 +1049,6 @@ static int ufs_qcom_setup_clocks(struct ufs_hba *hba, bool on,
>>   				 enum ufs_notify_change_status status)
>>   {
>>   	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
>> -	struct phy *phy = host->generic_phy;
>>   	int err;
>>
>>   	/*
>> @@ -1037,7 +1068,7 @@ static int ufs_qcom_setup_clocks(struct ufs_hba *hba, bool on,
>>   				/* disable device ref_clk */
>>   				ufs_qcom_dev_ref_clk_ctrl(host, false);
>>   			}
>> -			err = phy_power_off(phy);
>> +			err = ufs_qcom_phy_power_off(hba);
>>   			if (err) {
>>   				dev_err(hba->dev, "phy power off failed, ret=%d\n", err);
>>   					return err;
>> @@ -1046,7 +1077,7 @@ static int ufs_qcom_setup_clocks(struct ufs_hba *hba, bool on,
>>   		break;
>>   	case POST_CHANGE:
>>   		if (on) {
>> -			err = phy_power_on(phy);
>> +			err = ufs_qcom_phy_power_on(hba);
>>   			if (err) {
>>   				dev_err(hba->dev, "phy power on failed, ret = %d\n", err);
>>   				return err;
>> @@ -1233,10 +1264,9 @@ static int ufs_qcom_init(struct ufs_hba *hba)
>>   static void ufs_qcom_exit(struct ufs_hba *hba)
>>   {
>>   	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
>> -	struct phy *phy = host->generic_phy;
>>
>>   	ufs_qcom_disable_lane_clks(host);
>> -	phy_power_off(phy);
>> +	ufs_qcom_phy_power_off(hba);
>>   	phy_exit(host->generic_phy);
>>   }
>>
>> diff --git a/drivers/ufs/host/ufs-qcom.h b/drivers/ufs/host/ufs-qcom.h
>> index d0e6ec9128e7..3db29fbcd40b 100644
>> --- a/drivers/ufs/host/ufs-qcom.h
>> +++ b/drivers/ufs/host/ufs-qcom.h
>> @@ -252,6 +252,10 @@ struct ufs_qcom_host {
>>   	u32 phy_gear;
>>
>>   	bool esi_enabled;
>> +	/* flag to check if phy is powered on */
>> +	bool is_phy_pwr_on;
>> +	/* Protect the usage of is_phy_pwr_on against racing */
>> +	struct mutex phy_mutex;
>>   };
>>
>>   struct ufs_qcom_drvdata {
>> --
>> 2.48.1
>>
>>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
