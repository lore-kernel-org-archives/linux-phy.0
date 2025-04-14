Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DA8DC369B8
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 13:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lhPM7Rx8uMFBSM+46LyY2uNv7KLqbZdjBwnxNdSiEoI=; b=zLF9DW2/x34iWi
	vX+S0mdKxaW5tez2Zmbjq5z1ZWWm3HMP3b9kHnR6IHBwDGNb+tSReDh3hE7ApMqpv73i1sr6q/+FU
	MYspBLmQI5aYH0hnhjzJt7CnqAqusuISrwoUffI0gQs1S77ykGraMN1G2x7zxgWRL/3zjQXCKSjc5
	DmsB+P4UCIvy3uruPOLp5vdgU2Ksu+k9LL3n8fJyRsW4oB7t3Sc7F85fbmxS3d7kBWF0sQWF54G7z
	BBGpeKz2izmt9R9SXkh/Fv1IFP6Y/myU8utVAVMrr5vxdXJ+wVnu145Il8HBE6Nitih3J6CqLmn3n
	2i9uYFlrLCHdA0EjS8kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4JxL-00000002BQ7-1VTD;
	Mon, 14 Apr 2025 13:34:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Jwh-00000002BGm-11un
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 13:33:56 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53E99rtB016341;
	Mon, 14 Apr 2025 13:33:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oiP4F5nBYcrixH0fT8uFgQZLr0tgY4ObaDAgPgswV0A=; b=AZJpG96MS48glmFa
	34fGEGxJuFHOcEHBB84KI8gkmPSoTrc+/qtUcjj+7gaKZFHnew/Js0blfq3Ni4bt
	jhf/kLV6oKsnED2GP+XzTAddFAYlH6kWiL2zbcwgmgZM4jsBXD6FYUwNPX8/2y59
	ZFt9kcGXQlYMGExkZBo7jIpgmagEYRAo90lYAuExvFDNQaUbxjmjq9cAdripVce3
	NaVKUxajXSQCiHSfCdFPafHjsZCu+RS6xu9EKxsQ/Zfth8Q0UH1wPohi7noNsT9j
	z04zCWCXFbDbFJz96QRioP+5ilyZcsS/NETx73mj9Bx2NvC5PSPu/B9kwfXd9H99
	4E1XHg==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfgjcpnd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Apr 2025 13:33:51 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 53EDXoKV014556
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Apr 2025 13:33:50 GMT
Received: from [10.217.219.207] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 14 Apr
 2025 06:33:48 -0700
Message-ID: <4f7f280b-1808-4b73-990f-7eb3feffb314@quicinc.com>
Date: Mon, 14 Apr 2025 19:03:48 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] Reuse the IPQ6018 QUSB2 PHY settings for IPQ5424
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        "Vinod
 Koul" <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        "Dmitry
 Baryshkov" <lumag@kernel.org>,
        Varadarajan Narayanan
	<quic_varada@quicinc.com>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20250414-revert_hs_phy_settings-v2-0-25086e20a3a3@oss.qualcomm.com>
Content-Language: en-US
From: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
In-Reply-To: <20250414-revert_hs_phy_settings-v2-0-25086e20a3a3@oss.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: EGW8RGp9lUROjsALpdVWt6hFlhgMiwAt
X-Proofpoint-ORIG-GUID: EGW8RGp9lUROjsALpdVWt6hFlhgMiwAt
X-Authority-Analysis: v=2.4 cv=Cve/cm4D c=1 sm=1 tr=0 ts=67fd0ebf cx=c_pps a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=r3rtpvNP56FThFkQcqQA:9
 a=QEXdDO2ut3YA:10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 clxscore=1015
 malwarescore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0
 suspectscore=0 impostorscore=0 mlxlogscore=610 mlxscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_063355_419820_BCFF624A 
X-CRM114-Status: GOOD (  13.21  )
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



On 4/14/2025 5:22 PM, Kathiravan Thirumoorthy wrote:
> With the current settings, complaince tests are failing, especially eye
compliance
> diagram (Host High-speed Signal Quality) tests. As recommended by the
> design team, reuse the IPQ6018 settings.
> 
> Merge Strategy:
> --------------
> Both the patch in the series should be merged together to avoid breaking
> the USB feature.
> 
> --
> Changes in V2
> 	- Splitted the patch into 2 patches, first revert the commit and
> 	  then reuse the IPQ6018 data (Vinod K)
> 	- Dropped the R-b tag from Dmitry
> 	- Link to v1 -
> 	  https://lore.kernel.org/linux-arm-msm/20250407-revert_hs_phy_settings-v1-1-ec94e316ea19@oss.qualcomm.com/
> 
> ---
> Kathiravan Thirumoorthy (2):
>        Revert "phy: qcom-qusb2: add QUSB2 support for IPQ5424"
>        phy: qcom-qusb2: reuse the IPQ6018 settings for IPQ5424
> 
>   drivers/phy/qualcomm/phy-qcom-qusb2.c | 27 +--------------------------
>   1 file changed, 1 insertion(+), 26 deletions(-)
> ---
> base-commit: b425262c07a6a643ebeed91046e161e20b944164
> change-id: 20250414-revert_hs_phy_settings-47643d2c75ba
> 
> Best regards,


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
