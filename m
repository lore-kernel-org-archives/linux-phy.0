Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C662C36010
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 11:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XOgiJKjmsD0UhQaZoaB7cOLZiqtVfgBvspdEZPGY0lU=; b=gvWg/GUqdjz3aB
	RH1cs1Gu0Yz5IsUVw3nIP/C1V86A3eTAdUdHaAq/YPO6fis3t2dlaAaHmmlr/TzKOGsYBIUL8KtUE
	1rCClJeORIBCdxfvG8A4EnVpTQ/FC9dRxEMFbzIY0U89OwDLTKVXpaHtQNdK0LayQE1E6C9wex28l
	wY31cuXT5eWL8yOx8Tz2bF+ZV91i0TYnhwVb1K464V0xBxiSS5Husgp/7delNv2maujZJYXG13DYa
	sXvGhFm4uTiZmPSpaGD12xEFbWdsi7y/2cey5OwOsSngGawNOCvnhAeE/LRFIGaC0Ynmsx0BDPxUC
	rixFJxGBRGSpPWvSOVkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3CPh-0000000DV12-0R4c;
	Fri, 11 Apr 2025 11:19:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3Bk8-0000000DPJR-13Ay
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 10:36:17 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53B5FqAp028897;
	Fri, 11 Apr 2025 10:35:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	62nn51qRZ/ZFWMBloxR9krgjTLXDPXyKBVafeA5xWKQ=; b=cplnMVNTNvZ6uAZQ
	5CAqIOjrW0bpRllTvNk0BuKEx7KTQy269JwJHYA1UMpiv6ihnOvjpeEewJqX4OSZ
	bqnjdwuZNdUwwxgqoaFDTXtj2qIplHGV+7YzoBoCJ+VvcsH2fxSx0viKi9JQvOIo
	L14hzXFuxorddxO/DU4+MEXToteXp17LU4FIZd42LGKB3ETwey+KsyrHAO59Ybgo
	Otn6cOjoDH/5rest+vPZA4sUOodY9Qfw1qxa7PInDRXEmDakGI7vlo9+I5z7YIMP
	nnML5AhH3a1sHURXeJTWz86qV7QcyS8ekhnAPXPqni5lYgrW3gsLRBbMAEVMhvj+
	vTU5FQ==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbut47s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Apr 2025 10:35:57 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 53BAZv5l016929
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Apr 2025 10:35:57 GMT
Received: from [10.218.7.247] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 11 Apr
 2025 03:35:51 -0700
Message-ID: <57fac14e-e4fe-41a3-a5f9-01447f2ff62d@quicinc.com>
Date: Fri, 11 Apr 2025 16:05:48 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 0/9] Refactor phy powerup sequence
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
 <zzfffzclcftivaaffri6ucupyh3u5dfy7uctgw6xgid2vucusx@x542fel3qkeg>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <zzfffzclcftivaaffri6ucupyh3u5dfy7uctgw6xgid2vucusx@x542fel3qkeg>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: XiNtat2P8mwY2N6zoagykd4KsANLU2Hg
X-Proofpoint-ORIG-GUID: XiNtat2P8mwY2N6zoagykd4KsANLU2Hg
X-Authority-Analysis: v=2.4 cv=dbeA3WXe c=1 sm=1 tr=0 ts=67f8f08d cx=c_pps a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VmOQ-WIk0qxU9uKxVVsA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 mlxlogscore=583 phishscore=0 mlxscore=0 spamscore=0
 malwarescore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504110066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_033616_296257_BDF81CCA 
X-CRM114-Status: GOOD (  13.94  )
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



On 4/11/2025 1:35 AM, Dmitry Baryshkov wrote:
> On Thu, Apr 10, 2025 at 02:30:53PM +0530, Nitin Rawat wrote:
>> In Current code regulators enable, clks enable, calibrating UFS PHY,
>> start_serdes and polling PCS_ready_status are part of phy_power_on.
>>
>> UFS PHY registers are retained after power collapse, meaning calibrating
>> UFS PHY, start_serdes and polling PCS_ready_status can be done only when
>> hba is powered_on, and not needed every time when phy_power_on is called
>> during resume. Hence keep the code which enables PHY's regulators & clks
>> in phy_power_on and move the rest steps into phy_calibrate function.
>>
>> Since phy_power_on is separated out from phy calibrate, make separate calls
>> to phy_power_on and phy_calibrate calls from ufs qcom driver.
>>
>> Also for better power saving, remove the phy_power_on/off calls from
>> resume/suspend path and put them to ufs_qcom_setup_clocks, so that
>> PHY's regulators & clks can be turned on/off along with UFS's clocks.
> 
> Please add an explicit note that patch1 is a requirement for the rest of
> the PHY patches. It might make sense to merge it through the PHY tree
> too (or to use an immutable branch).
> 

Hi Dmitry,

Thanks for the suggestion. Sure I would mention this in the cover letter 
when I post next patchset.

Thanks,
Nitin
>>
>> This patch series is tested on SM8550 QRD, SM8650 MTP , SM8750 MTP.
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
