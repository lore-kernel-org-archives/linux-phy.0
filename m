Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E413BC369B2
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 13:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/E8Yob7LyAM0AEbEU8p2MOBu3SuMb5LHZbns1L/hhrY=; b=S+q6LTbQs1LErt
	6aD8FIgJHsjKl7Ijtac9ZiiHwYoLXePHByoAVfx5kZczZDICVQYl5mv3rCafIagiKm7j/VdJH+XeZ
	/XCCLqW4rMYkFLGh3BSA/aUKNURPgcABgYQO+zcB6U3YrSRMpI2FDYd3FykmN8mf7tWCq3cO0Omzz
	yqzTGVPHUNYZJnmIRE03xLIVPfd437/Sx1Kt7LrUkQdLbzSSNWng2aPIxcod7/7BVDocVgsfu53V7
	yfoBD9dq+wGGDNzXYKIEEKbiW6WFdmy9dLSjPugNF3V42S79vXHpla8EwJE5h3zCjiZKxY2Nf80Wi
	c1QOY0brRFYoYplx42TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4JxL-00000002BQI-2kOv;
	Mon, 14 Apr 2025 13:34:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Jwj-00000002BHW-2s6B
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 13:33:59 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53E99qQv011401;
	Mon, 14 Apr 2025 13:33:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mE4uX+vxgpHDarPW+ZqKGnS8M5JEFxG7A6Uzrsnl4xs=; b=HomnYs11I1VybGdH
	/3w+looEIqrXeZvkGch0WAvrShnX+HieLl++HTTpq/stbbXW3yNrhOvzcA7RwfMJ
	i8xrvyv+6KIQzk6oYU0Gc4F2r33cLTmI8hn7SCz3n+UyxQ7I8SSKhO3aP1LdMwkW
	XqPgxo/JYCB+UeM/FgV/gikRM0VXMT6vWQ5Zi3ZKFRkWiM6PB6ayn41COKNE63sm
	G+f8p4WSKYMd+kE59rQUYOs5YvjNVQjai+fRlRLbMJWgVHCTui7hB92RJ6GUy+HD
	7Jboy2sshH6K9qaIZMXoFQKSiN0qvwfArfR/SnlKbW0i8VWfTfqDGxn4f1VAhQPr
	0DyInA==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yg8wcnn2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Apr 2025 13:33:43 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 53EDXgQ0023501
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Apr 2025 13:33:43 GMT
Received: from [10.217.219.207] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 14 Apr
 2025 06:33:40 -0700
Message-ID: <5ccf0252-c16c-44e6-bfac-7f94597c5493@quicinc.com>
Date: Mon, 14 Apr 2025 19:03:34 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] Revert "phy: qcom-qusb2: add QUSB2 support for
 IPQ5424"
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
 <20250414-revert_hs_phy_settings-v2-1-25086e20a3a3@oss.qualcomm.com>
Content-Language: en-US
From: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
In-Reply-To: <20250414-revert_hs_phy_settings-v2-1-25086e20a3a3@oss.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=E9TNpbdl c=1 sm=1 tr=0 ts=67fd0eb8 cx=c_pps a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=QCUm2x46sNXBIlw5B6kA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: QPZG2RSQaSO9qYdVuW0LmrN1ZrrmrxKW
X-Proofpoint-GUID: QPZG2RSQaSO9qYdVuW0LmrN1ZrrmrxKW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 mlxscore=0 bulkscore=0 clxscore=1011 phishscore=0 lowpriorityscore=0
 suspectscore=0 mlxlogscore=999 spamscore=0 priorityscore=1501
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_063357_917192_B18397A2 
X-CRM114-Status: GOOD (  15.68  )
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
> With the current settings, complaince tests especially eye diagram
compliance
> (Host High-speed Signal Quality) tests are failing. Design team
Write it as "recommended by Hardware design document/guide" instead of 
design team.
> requested to reuse the IPQ6018 settings to overcome this issue.
> 
> So revert the change which introduced the new settings and reuse the
> IPQ6018 settings in the subsequent patch.
> 
> Fixes: 9c56a1de296e ("phy: qcom-qusb2: add QUSB2 support for IPQ5424")
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qusb2.c | 28 ----------------------------
>   1 file changed, 28 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> index 1f5f7df14d5a2ff041fe15aaeb6ec5ce52ab2a81..81b9e9349c3ebb4d303cb040b5c913336bb6b6d6 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> @@ -151,21 +151,6 @@ static const struct qusb2_phy_init_tbl ipq6018_init_tbl[] = {
>   	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_AUTOPGM_CTL1, 0x9F),
>   };
>   
> -static const struct qusb2_phy_init_tbl ipq5424_init_tbl[] = {
> -	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL, 0x14),
> -	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE1, 0x00),
> -	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE2, 0x53),
> -	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE4, 0xc3),
> -	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_TUNE, 0x30),
> -	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_USER_CTL1, 0x79),
> -	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_USER_CTL2, 0x21),
> -	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE5, 0x00),
> -	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_PWR_CTRL, 0x00),
> -	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TEST2, 0x14),
> -	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_TEST, 0x80),
> -	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_AUTOPGM_CTL1, 0x9f),
> -};
> -
>   static const struct qusb2_phy_init_tbl qcs615_init_tbl[] = {
>   	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE1, 0xc8),
>   	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE2, 0xb3),
> @@ -359,16 +344,6 @@ static const struct qusb2_phy_cfg ipq6018_phy_cfg = {
>   	.autoresume_en   = BIT(0),
>   };
>   
> -static const struct qusb2_phy_cfg ipq5424_phy_cfg = {
> -	.tbl            = ipq5424_init_tbl,
> -	.tbl_num        = ARRAY_SIZE(ipq5424_init_tbl),
> -	.regs           = ipq6018_regs_layout,
> -
> -	.disable_ctrl   = POWER_DOWN,
> -	.mask_core_ready = PLL_LOCKED,
> -	.autoresume_en   = BIT(0),
> -};
> -
>   static const struct qusb2_phy_cfg qcs615_phy_cfg = {
>   	.tbl            = qcs615_init_tbl,
>   	.tbl_num        = ARRAY_SIZE(qcs615_init_tbl),
> @@ -954,9 +929,6 @@ static const struct phy_ops qusb2_phy_gen_ops = {
>   
>   static const struct of_device_id qusb2_phy_of_match_table[] = {
>   	{
> -		.compatible	= "qcom,ipq5424-qusb2-phy",
> -		.data		= &ipq5424_phy_cfg,
> -	}, {
>   		.compatible	= "qcom,ipq6018-qusb2-phy",
>   		.data		= &ipq6018_phy_cfg,
>   	}, {
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
