Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96077C369A2
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 13:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L0WcVNJKywzKBipGeT7sc1UxQSQu0L2EfVV0ZPRczEQ=; b=1fDoahwjdUuopE
	niiI5FoxiZ/OD8vj/SGUzJDRQmvgCnKQZIqnI6SYuL3c/U8ohzGaRSgTEvrJ+vA6ery8UD+Y61rwM
	qr5V3Bv7C1brTBxU8VqaWWWzO4RTk60KDnCVBXlkKKxIZLKL+JbXt45qvMVm2KTOYtkjYHwNJfHsf
	jkclRI1fb5DadZSD/Pnxb4ZrCFIhoD+LhNrDzdYhcIKNFovFuOXDjR1NIvqzfcce37D5y3KHSpTo1
	f44XYJouD464Dvq1pGegNkoTHzIOFloTnXUf0L6tkX199OwRLn4qvnyNrRjSlTDL6VANvWK7Kgz5P
	HQX9ueJYwogYw6JbEGLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4JxL-00000002BPw-0O15;
	Mon, 14 Apr 2025 13:34:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4JwG-00000002B9E-0DQ0
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 13:33:29 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53E99mOh028978;
	Mon, 14 Apr 2025 13:33:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gajFuDe8TlUWiwwz6npyfgicOLypHaXBz6NQBr/Pqv4=; b=RSWkZtkWtLAh5dMj
	0I0bSVW8q1aMWUwxzskxIyXYk+lFOmc8H9z25jltJ7bEFAF7eUIgN0wx4vh1tyFT
	XP/0I96+oCSSb2gmrEbOs5dmFERjSe2OjCEn71bJ2tpKHDHXufOSBBwgS5562O7V
	Osb2ZoUWipiI27q/b4cXoNIntt/iISebdWcKW/CS0pRUIb/d8FRMlQbVXKJqUXQF
	Pr7Tw4ptvRW3TExaIOEYxjJ7FOjZN9XMNws2CgfZM5xrQQf/IUQ/QQrVhldLJhCV
	xW5Iz0B3F8ZTlDJgtJdffXEjejhnTeUMFB8ZMDV9AB6KfViRsKvQnJ7Wi2LuN6jH
	+MBYTA==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfs14r5k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Apr 2025 13:33:22 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 53EDXLMu023018
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Apr 2025 13:33:21 GMT
Received: from [10.217.219.207] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 14 Apr
 2025 06:33:19 -0700
Message-ID: <08b5187b-0e74-4ba8-9893-4be61c2f9bdf@quicinc.com>
Date: Mon, 14 Apr 2025 19:03:16 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] phy: qcom-qusb2: reuse the IPQ6018 settings for
 IPQ5424
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
 <20250414-revert_hs_phy_settings-v2-2-25086e20a3a3@oss.qualcomm.com>
Content-Language: en-US
From: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
In-Reply-To: <20250414-revert_hs_phy_settings-v2-2-25086e20a3a3@oss.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=P9I6hjAu c=1 sm=1 tr=0 ts=67fd0ea2 cx=c_pps a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=zk4drvL23OH2Cl8ndaEA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: oQJvh3Jsy19-CKRiBkrsx3xET0t4VOIY
X-Proofpoint-ORIG-GUID: oQJvh3Jsy19-CKRiBkrsx3xET0t4VOIY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1011 bulkscore=0 impostorscore=0 phishscore=0 suspectscore=0
 mlxscore=0 spamscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_063328_284876_4C11CD29 
X-CRM114-Status: GOOD (  15.76  )
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
> With the settings used in the commit 9c56a1de296e ("phy: qcom-qusb2: add
> QUSB2 support for IPQ5424"), complaince test cases especially
compliance
> eye-diagram (Host High-speed Signal Quality) tests are failing.
> 
> Reuse the IPQ6018 settings for IPQ5424 as suggested by design team,
No mention of team. Write it as generic.
> which helps to meet all the complaince requirement test cases.
compliance
> 
> Fixes: 9c56a1de296e ("phy: qcom-qusb2: add QUSB2 support for IPQ5424")
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qusb2.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> index 81b9e9349c3ebb4d303cb040b5c913336bb6b6d6..49c37c53b38e70db2a1591081a1a12db7092555d 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> @@ -929,6 +929,9 @@ static const struct phy_ops qusb2_phy_gen_ops = {
>   
>   static const struct of_device_id qusb2_phy_of_match_table[] = {
>   	{
> +		.compatible	= "qcom,ipq5424-qusb2-phy",
> +		.data		= &ipq6018_phy_cfg,
> +	}, {
>   		.compatible	= "qcom,ipq6018-qusb2-phy",
>   		.data		= &ipq6018_phy_cfg,
>   	}, {
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
