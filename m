Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35D79C47073
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jan 2024 22:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5eQmZP1MeU4/pMyjz9yCWbmyFnc0CQMiETIH2Ch8t5c=; b=1fCxYpaLX4Oima
	hqFI1F6zO2LlxkVSd8p/fU6VwwZl87EDWV+DGQUURB+18ufncLzsc2TuWFzcpSMbsi5pxQXcp26yG
	CCEedysCGb43hqIgIbO6yq9JKLAvyowsGyzLontDGWHbNx9suwUocq8/eaVUlen8JyThjkSN5FxHk
	UmMozZtnJPwsYhCuuqVRwDlPyNxLYfs39PUySeGVQjL19botJl+BsDOiCB1830deXogXLWE/cRINS
	VCqPcmtZzFbahQAgETQcrKf5IKvIu5mX29JurJfYHkfLm0/2Gc9BZGMDSL/+Ax8ZKA+zHqyEoD/Yx
	OjUVNBEEoOBezYMJNM+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLWff-00FPDJ-2u;
	Thu, 04 Jan 2024 22:58:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLWfc-00FPCm-37
	for linux-phy@lists.infradead.org;
	Thu, 04 Jan 2024 22:58:38 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 404Mhfd0010981;
	Thu, 4 Jan 2024 22:58:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=HptTqmPQ1Pxy0XsGa3EiuulInmHFr8LzcaXL6ybczHA=; b=Ib
	dD9WfVbkslO5ioVWwkPMHulUDcKTFithYgFTvHl0MZoFQB+LQZe7k9KSv+CGyxTi
	IPzT5b+OABbfjxr1X8NLj7U1ccBb5GguXmzvW2Wo0MXh0BBXwd/dD4L5O7GQktFZ
	jQIVHJVIVbboeQcnLFcA/kQ2hlSfQDikSRcp5dRbR/WMtUeWnsFIvUhaS+o3hKte
	yXwLt/bI13Vph07LivpzKuwH5YUNeb86zvuzHFjzyIEXXGpeilzuiqyIrs8Y9voN
	u4+yqMoHzmhAQ/nuSe7tW1Zp3qTr44VIy/WISnZvRfZMQARTE6ugON7qj1TAfNIE
	/R272n7BtKSQ/m6Ksx1A==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ve1sgghj4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 04 Jan 2024 22:58:31 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 404MwUIu027484
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 4 Jan 2024 22:58:30 GMT
Received: from [10.71.108.105] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Thu, 4 Jan
 2024 14:58:29 -0800
Message-ID: <1e9fd6f2-3fdb-4779-b79a-274e51c4cbba@quicinc.com>
Date: Thu, 4 Jan 2024 14:58:29 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] phy: qualcomm: eusb2-repeater: Some fixes after the
 regmap rework
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20240104-phy-qcom-eusb2-repeater-fixes-v1-0-047b7b6b8333@linaro.org>
From: Elliot Berman <quic_eberman@quicinc.com>
In-Reply-To: <20240104-phy-qcom-eusb2-repeater-fixes-v1-0-047b7b6b8333@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: OdiNoiUE90c92Fr3UrgSrfVNDcasfR6y
X-Proofpoint-ORIG-GUID: OdiNoiUE90c92Fr3UrgSrfVNDcasfR6y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-09_01,2023-12-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 clxscore=1011
 spamscore=0 bulkscore=0 mlxscore=0 mlxlogscore=546 impostorscore=0
 adultscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2401040174
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_145837_151492_E8ECD70F 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 1/4/2024 6:52 AM, Abel Vesa wrote:
> Found the first issue (from first patch) while adding support
> for X Elite (X1E80100) which comes with more than one repeaters.
> The second fix is just bonus.
> 

Tested-by: Elliot Berman <quic_eberman@quicinc.com> # sm8650-qrd

> ---
> Abel Vesa (2):
>       phy: qualcomm: eusb2-repeater: Fix the regfields for multiple instances
>       phy: qualcomm: eusb2-repeater: Drop the redundant zeroing
> 
>  drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 23 ++++++++++-------------
>  1 file changed, 10 insertions(+), 13 deletions(-)
> ---
> base-commit: 0fef202ac2f8e6d9ad21aead648278f1226b9053
> change-id: 20240104-phy-qcom-eusb2-repeater-fixes-c9201113032c
> 
> Best regards,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
