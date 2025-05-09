Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 664F9C3ABC3
	for <linux-phy@archiver.kernel.org>; Fri,  9 May 2025 12:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tWxcX5ILb9MkJ5jbSZ1AtgcDZUE++LD99iiGTk650FU=; b=L+zFUUR/ng4/4P
	0rPXWe6IKC54jKrzaJxuzukAqwUVV8KFoIWBU2Ss0x2R9XYptvaPQhX1TTulQQ/1xNlt/tID5CODi
	NKZ4HDxIiH9Hr3UkRglCI6BEE0a6wM2gPID5Q30DwWIteYYB0YR+Ddfukqo0vusTJcgzKWG6sjhqw
	qhGcJd8KoblBRArVKjCYAM3YezmAZxlVh4bTTSzl6bw0V9wPTuO0EDndVSuVCCs4+fDhTqoLm/bLZ
	caWDI9kIM8vOfzyzcjODNpDB3xuJZEwjIs6rLo01c/kil39H9thQ8OkT0RL5AEDQFuBoMFSqtWUk4
	yG5nZ0euSPEXYFUAYc9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDN6d-00000003d3R-0eJE;
	Fri, 09 May 2025 12:45:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDMFp-00000003UAb-43tb
	for linux-phy@lists.infradead.org;
	Fri, 09 May 2025 11:51:03 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 549BOjgC011683;
	Fri, 9 May 2025 11:50:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/wcjyC4RU0XzRhe03o9O3Yoll6G1rZmCSFvV0iAa+k0=; b=P2NFZNQiPeg6rBnl
	apvrkTjvEkEWeX7mlYc62KKmAquKX3ChxF0FtRZEmDBPm0qgzxGNFj6jQ7nxdwc5
	GEMoVTKOaejFavPOROH+rwO2kZ0YC9ZtexH70/1pbEF7jYtIqc7xlIhr8ZMnv2Sz
	feSLhKQnzxCs44/BxhNy2ENtPoL7ceCqlMBeE0KI+igmTsvI5iHdjW31+qAPYU4F
	0nZShgM1HOVpgvB9U8E3f/hm2rY0SEgm2jG5WEp4e1RkdhG3zN4CvhQfy9wSsiZG
	dPoq0V1O/3/n8tkDd1KSbNLSeua6ZOld2Yn3kDGQe4HrYTuhAu/Plpd0ntOFFnjw
	3V6ijQ==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnpmmhsd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 09 May 2025 11:50:44 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 549BoibW009832
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 9 May 2025 11:50:44 GMT
Received: from [10.216.32.234] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 9 May 2025
 04:50:38 -0700
Message-ID: <584c9160-165c-467a-9ef0-1b6fd0441012@quicinc.com>
Date: Fri, 9 May 2025 17:20:33 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 11/11] scsi: ufs: qcom: Prevent calling phy_exit before
 phy_init
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <manivannan.sadhasivam@linaro.org>,
        <James.Bottomley@HansenPartnership.com>, <martin.petersen@oracle.com>,
        <bvanassche@acm.org>, <andersson@kernel.org>,
        <neil.armstrong@linaro.org>
CC: <quic_rdwivedi@quicinc.com>, <quic_cang@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-scsi@vger.kernel.org>
References: <20250503162440.2954-1-quic_nitirawa@quicinc.com>
 <20250503162440.2954-12-quic_nitirawa@quicinc.com>
 <104e863f-a5c6-432d-8f65-0fd87602b288@oss.qualcomm.com>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <104e863f-a5c6-432d-8f65-0fd87602b288@oss.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=TpjmhCXh c=1 sm=1 tr=0 ts=681dec14 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=IgDchYdROQb07t49yvYA:9 a=QEXdDO2ut3YA:10
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 7GUXL9fFmOILJ7u6gsJL1VsLiBh9R1dg
X-Proofpoint-GUID: 7GUXL9fFmOILJ7u6gsJL1VsLiBh9R1dg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA5MDExNCBTYWx0ZWRfXxFnx14iNA0W2
 ZtlgknrmvaXtajTYoq0RWWHYb3Q67e3x6P0SR7AwVCz5pfTAaI6dpxLMnm+/rh8VvPJA4LkcHWv
 fXUw3RVN3zT+T3ElvN21TlP9fR+wUlkDOSBJQ1TgoASSNUQTbHtnw6I+weDxwjgdVlw47yoD4I2
 vBDmMa0iU6ONl9mrkcgGb867p7NkQQiQLyIVcPStQJzSF7S1DuwW/vSN1TNUScNb22DwCVwl6cq
 bT6I+HA6rZPMe1SWxxQxrL/mXJ301Ln99yo4apjeLWQnxp5h055ZCoItKysYP171bkh82+fSSJE
 x6YjfNIDsREEGPYoitl0d7oqfCl8tQNokOzxHAfuLHAB8vDeibU6zD1s6e4JfFBfXBSCUWMNzEa
 d5Q6KZ2u7SivGupjYRf+hQpsczQW/kvrRWT6VhRowZLgBqxWj0QsLvSwUA0380UfUY0troG/
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-09_04,2025-05-08_04,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 adultscore=0 malwarescore=0 mlxlogscore=999 spamscore=0
 impostorscore=0 mlxscore=0 phishscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505090114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_045102_017005_168B897C 
X-CRM114-Status: GOOD (  14.88  )
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



On 5/9/2025 5:08 PM, Konrad Dybcio wrote:
> On 5/3/25 6:24 PM, Nitin Rawat wrote:
>> Prevent calling phy_exit before phy_init to avoid abnormal power
>> count and the following warning during boot up.
>>
>> [5.146763] phy phy-1d80000.phy.0: phy_power_on was called before phy_init
>>
>> Fixes: 7bac65687510 ("scsi: ufs: qcom: Power off the PHY if it was already powered on in ufs_qcom_power_up_sequence()")
>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
>> ---
>>   drivers/ufs/host/ufs-qcom.c | 1 -
>>   1 file changed, 1 deletion(-)
>>
>> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
>> index a7e9e06847f8..db51e1e7d836 100644
>> --- a/drivers/ufs/host/ufs-qcom.c
>> +++ b/drivers/ufs/host/ufs-qcom.c
>> @@ -482,7 +482,6 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
>>
>>   	if (phy->power_count) {
>>   		ufs_qcom_phy_power_off(hba);
>> -		phy_exit(phy);
>>   	}
> 
> You can also remove the {} now
Sure will review while posting next patchset.
> 
> since this is a fix for existing issues, which I don't think has any dependencies
> on your other changes, please post it as the first patch so that the maintainer
> can pick it up more easily
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
