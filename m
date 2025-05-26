Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 370E5C54FB3
	for <linux-phy@archiver.kernel.org>; Mon, 26 May 2025 15:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=weR8bmr4LBS5sS5M9Pn/cXTHs/BmzadR+c75nIu9s5U=; b=zan+Fa2aB9bO9r
	o30Z0Yrktv5XgvOjnkYHHyFXfsGpFiY30YeYZUDbACuCQ5G9zAjGGx5aiwUDRcPH0wklIWD3bGEFF
	09myIwRltrwr8nuuFyauQXz8L9h4bPjkE9uSEJc41iDeET4kvi/dtEZEqx6QIZZi0zeFwXYMwiSTY
	vVrYWTUsvtGEOFKmajGWXPFPrnU7OVLqVl8yXP8ZLuH2+8feC3mfrNE6iZjWwqRymtot8eORJwL3B
	2pHAbiv3diP+8y1AhjjxVwwzN6wLOtfCUbEr89zzyeEBPsqFm+1Z4pJ7hN+qoeLDoFINBKWvaPjyy
	OqG4wt7ra/auD8Xb/jcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJZuc-000000098tV-3dUF;
	Mon, 26 May 2025 15:38:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJZuZ-000000098qH-2JH9
	for linux-phy@lists.infradead.org;
	Mon, 26 May 2025 15:38:48 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54QAN9i4031141;
	Mon, 26 May 2025 15:38:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=XYtm8lGbLam
	sMbYv/yM32mGIMiPr3qVps0I3ur4VljM=; b=nBifKIKaAMd2JQ21PTPNguda1Sh
	sRya9AOPIluiSjjfQ1QqLMycFJs2z4GJrGmZQrQxABS8s6zRkE7tu1DVPJxodaQc
	1pbiI08VMnZlvpXEbkMEdSqLYo5ut4azn1JP+f1ov/ODDWbNh8MPC37XYm7i/1uQ
	v3jUn8BMSmRDMR7jWIwyxHFbDViOdCLFkGeip1lPNo1G1cahOXzV7AkKWm9wL/mv
	O9Fy5pEbIOhyq9e0Jq4Fdt4iTKzip8yvleZU6PORzImyhnQoIMxpPwIEshlh7ycs
	hkaeCEzlQRBPjyISWWqcz1vKl6xnH97J4fGylu+0pcmlHYhR1nX8dEjNQrw==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u66wcquv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 26 May 2025 15:38:28 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 54QFcPGe032423;
	Mon, 26 May 2025 15:38:25 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 46u76m73fu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 26 May 2025 15:38:25 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 54QFcOXS032414;
	Mon, 26 May 2025 15:38:24 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 54QFcONN032410;
	Mon, 26 May 2025 15:38:24 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id EAF3F61B877; Mon, 26 May 2025 21:08:23 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V6 01/10] scsi: ufs: qcom: Prevent calling phy_exit before phy_init
Date: Mon, 26 May 2025 21:08:12 +0530
Message-ID: <20250526153821.7918-2-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250526153821.7918-1-quic_nitirawa@quicinc.com>
References: <20250526153821.7918-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=aYJhnQot c=1 sm=1 tr=0 ts=68348af4 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=6qkdr0EpClcQ5iOZAa0A:9
 a=zZCYzV9kfG8A:10 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: koCz1gxtN4Ks19lEKiYO-V-ZG-nohNbA
X-Proofpoint-GUID: koCz1gxtN4Ks19lEKiYO-V-ZG-nohNbA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI2MDEzMiBTYWx0ZWRfX8NXoXzri/QUm
 DNQcGUd8/mt7IlwlCHXMRbxY8oH9fCOtGhbAFUoBE7SANcwspFMRXIIXPW+Z31s3Qlmq4/T2d7e
 K+v2Ug4OtXvgxAU/CSESv3hkkKwBWMuge4b7deqNR3kG18dZ+sWbVE5/eeDy/l9+q2dENRb41qO
 xMpcEbFqGwIaRb18OCMjDvhguCSlNuDNrGTrpU2fExUzqPA7V+KazGKxMpXruTXUhDBA9t+UmXl
 Mg3nvpdyyTmD3Bm6XYwKIMaBRc+jHZB1VdBCHnK+VabZHvijdzbYvukiP8Hdy40Gn4jZeCh1pVb
 ysltuc/RGL7jsKVg4fzY+KcEXOjqGC2ch2yI3MreNvKRtf2Cu5NfkMNigwPsSlbOAxPotz0rL3s
 7HC7U8adF6msDKyI6Qf67BqPlvnfcsOmr26mcpLjjnTMeizt0zrnYuUrvXlJMtM7gvckdrhk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-26_08,2025-05-26_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 impostorscore=0 adultscore=0
 mlxlogscore=999 lowpriorityscore=0 malwarescore=0 mlxscore=0 spamscore=0
 clxscore=1015 bulkscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505260132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_083847_705401_B5F3B59F 
X-CRM114-Status: GOOD (  11.13  )
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

Prevent calling phy_exit before phy_init to avoid abnormal power
count and the following warning during boot up.

[5.146763] phy phy-1d80000.phy.0: phy_power_on was called before phy_init

Fixes: 7bac65687510 ("scsi: ufs: qcom: Power off the PHY if it was already powered on in ufs_qcom_power_up_sequence()")
Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/ufs/host/ufs-qcom.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
index 37887ec68412..62a5d76450b6 100644
--- a/drivers/ufs/host/ufs-qcom.c
+++ b/drivers/ufs/host/ufs-qcom.c
@@ -506,10 +506,9 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
 	if (ret)
 		return ret;
 
-	if (phy->power_count) {
+	if (phy->power_count)
 		phy_power_off(phy);
-		phy_exit(phy);
-	}
+
 
 	/* phy initialization - calibrate the phy */
 	ret = phy_init(phy);
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
