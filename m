Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB5DAC4332F
	for <linux-phy@archiver.kernel.org>; Mon,  5 Dec 2022 19:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wiw777cWWlbvC2bG9Bk1IbiuckTWkqGLOCsf2XLtTWI=; b=HJ1TRfMUVUwNqsnUlIJ7/4jcFK
	Hh7HSbqfCnsn3FOvAt08JoKtnAnQ91w1bwkCq9WxJkjvVWvm1dvOHjeWv2oDaHPIg4XtgDSk8uH/U
	Tu+b9XbrbdXzLSraXy6N5/4G3Yqgfy5gwpJ+7tTa8TELETEDzh3UfDFIw6PnmbYJTvi+QHXU6NMrn
	TKXXw3AE+j63Gspge0Z4CP5d1wjCmVCUY/Uqn/Mktj3epsEjwVObifik+snIFLMiBq5mJPotcq9st
	htp/O4J80EYFlP7gd0UXmW/HVELbTZ0tswWrLkW7hTsTdMevTqJ304asDpHH5zwIL1Cw7jfAKJvRK
	YilGT+hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2HYZ-009i4K-Ae; Mon, 05 Dec 2022 19:55:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2HYX-009hwY-2G
	for linux-phy@lists.infradead.org; Mon, 05 Dec 2022 19:55:14 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2B5Jl4SD019136;
	Mon, 5 Dec 2022 19:55:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=2jN8CsTBm2ZHuGB0wdV52iEf3uKhXLmvCIlSxAXzXQc=;
 b=fyoZw48I2B7O47dXS4buZc1mJ4FdJA5WXD0V01aiQlA8ftFiPIYXZraTRwsoCiB66Pb+
 raEtfK9Ar3QxfrVPKx0MYfPZMuBMOsA0Fv0iq/+fw7Y86KYjSzTZGrSr+sz7wuG+Z1Y3
 lza6HVHM81J8Qcsxte3alDzHwC+nxHz7SzdIk23JdySQKHz6kJ4GslWG01+dNX3Ui1ga
 VqiLiyZrGd95FraMpUzqJQsUjTV4c7qu4jOxt9tpgxyCwEl1GCd61pEkCPlGYThI/J5y
 E5LJzbiXmRWv08nM7OQyuzO1mJ2T4y1JW06QlAJAJLIpO1HVvIqnAYWKhz15CmAu6jyH eA== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3m7yrf51x8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 05 Dec 2022 19:55:06 +0000
Received: from nasanex01a.na.qualcomm.com (corens_vlan604_snip.qualcomm.com [10.53.140.1])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 2B5Jt5xw016220
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 5 Dec 2022 19:55:05 GMT
Received: from asutoshd-linux1.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.36; Mon, 5 Dec 2022 11:55:05 -0800
Date: Mon, 5 Dec 2022 11:55:04 -0800
From: Asutosh Das <quic_asutoshd@quicinc.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
CC: <martin.petersen@oracle.com>, <jejb@linux.ibm.com>, <andersson@kernel.org>,
        <vkoul@kernel.org>, <quic_cang@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-scsi@vger.kernel.org>,
        <dmitry.baryshkov@linaro.org>, <ahalaney@redhat.com>,
        <abel.vesa@linaro.org>, <alim.akhtar@samsung.com>,
        <avri.altman@wdc.com>, <bvanassche@acm.org>
Subject: Re: [PATCH v4 14/23] scsi: ufs: ufs-qcom: Remove un-necessary
 WARN_ON()
Message-ID: <20221205195504.GC15334@asutoshd-linux1.qualcomm.com>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
 <20221201174328.870152-15-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221201174328.870152-15-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: f_1Lx_-etjM3_OYk7-vb1-KvX_nW5PmD
X-Proofpoint-ORIG-GUID: f_1Lx_-etjM3_OYk7-vb1-KvX_nW5PmD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-05_01,2022-12-05_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=999
 phishscore=0 malwarescore=0 impostorscore=0 suspectscore=0 adultscore=0
 clxscore=1015 mlxscore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2210170000
 definitions=main-2212050166
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_115513_134230_E22898BE 
X-CRM114-Status: GOOD (  14.48  )
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

On Thu, Dec 01 2022 at 09:45 -0800, Manivannan Sadhasivam wrote:
>In the reset assert and deassert callbacks, the supplied "id" is not used
>at all and only the hba reset is performed all the time. So there is no
>reason to use a WARN_ON on the "id".
>
>Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
>Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>---
> drivers/ufs/host/ufs-qcom.c | 4 ----
> 1 file changed, 4 deletions(-)
>
LGTM.

Reviewed-by: Asutosh Das <quic_asutoshd@quicinc.com>

>diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
>index 7cd996ac180b..8bb0f4415f1a 100644
>--- a/drivers/ufs/host/ufs-qcom.c
>+++ b/drivers/ufs/host/ufs-qcom.c
>@@ -895,8 +895,6 @@ ufs_qcom_reset_assert(struct reset_controller_dev *rcdev, unsigned long id)
> {
> 	struct ufs_qcom_host *host = rcdev_to_ufs_host(rcdev);
>
>-	/* Currently this code only knows about a single reset. */
>-	WARN_ON(id);
> 	ufs_qcom_assert_reset(host->hba);
> 	/* provide 1ms delay to let the reset pulse propagate. */
> 	usleep_range(1000, 1100);
>@@ -908,8 +906,6 @@ ufs_qcom_reset_deassert(struct reset_controller_dev *rcdev, unsigned long id)
> {
> 	struct ufs_qcom_host *host = rcdev_to_ufs_host(rcdev);
>
>-	/* Currently this code only knows about a single reset. */
>-	WARN_ON(id);
> 	ufs_qcom_deassert_reset(host->hba);
>
> 	/*
>-- 
>2.25.1
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
