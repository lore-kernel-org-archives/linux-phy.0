Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AA88C3ABAA
	for <linux-phy@archiver.kernel.org>; Sat,  3 May 2025 16:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VqDrNQKxOsikwG8zq1jOkDjFW1Ae0F+Gpgqpz/0ua9s=; b=VOeFZx3k+xS5z1
	2X84Y0tSqOaGixLYHEWm2d0IHByxR3LHr0ock9L725paX9iat6v7kwAy9ounfp1Whpp9+5An61ecr
	3v3fmrH1KjhumFOuJW8NeCIukSJLx5UBIxWiuZNrhOWMkefkpzVXvVg1QRMrXRYt9J1LVp+o0ogbj
	+nNHVjhNPCRFDL9WLZH+wxoNdPvOPRSBIP+Z1XAyTUu40IcNdGu9g+ELcwWeoqHBdhvFwQ3mMSsLd
	EdaHnSwxv+LsgYmjjkqcD28CnrpPx0Ij1qEWd0VBqi6uSRBoORCL1Q9aYhWONLwBdFR6Z+gpEye6l
	Z7gHjOWkgAmyF98ithyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBFg0-00000004A8h-0TLv;
	Sat, 03 May 2025 16:25:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBFfw-00000004A5x-3c0B
	for linux-phy@lists.infradead.org;
	Sat, 03 May 2025 16:25:18 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 543AuOi2013388;
	Sat, 3 May 2025 16:25:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=v+VnIbxF890
	Du9AsveZG/tNEfQ0Ybfeh8g60ENdwZ8A=; b=kMWzIEiYfqzFKqaY89rwUZMWXUo
	0dITNk+8ovH98ypi8H+itqBWqAxbyIPOTESY3C6k7Si+tbK01lgWAgqATUoVkY3f
	8frJxcGtIbEhXZq0vfTejhp8nXwAKpggrQdMaz+dB2JsTsKQ+/+74q+/S4IJ2i1K
	25mkB8RZ3PW+ZFlpJserCHHbbLHSuQCVr/iSMK+PhYwCdIudH3xcZ1tPveCh8zvq
	l1/ioUCXqKvpmlKKwljUtRkux1dAgFkbfvrpuqAcoWsXAHUqgC0y5WdDzj1HVG1r
	3r3+Cm5DMMrCPVDxiHr0zqZZxjkpv7KoQ0szjinG/hOPyB5/dJgu3S+AaYw==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dbwfgsfb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 03 May 2025 16:25:00 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 543GOrbA029903;
	Sat, 3 May 2025 16:24:57 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 46dc7kb1h4-1;
	Sat, 03 May 2025 16:24:57 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 543GOhc5029761;
	Sat, 3 May 2025 16:24:57 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 543GOudt029961;
	Sat, 03 May 2025 16:24:57 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 668155015A2; Sat,  3 May 2025 21:54:56 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V4 11/11] scsi: ufs: qcom: Prevent calling phy_exit before phy_init
Date: Sat,  3 May 2025 21:54:40 +0530
Message-ID: <20250503162440.2954-12-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250503162440.2954-1-quic_nitirawa@quicinc.com>
References: <20250503162440.2954-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: uqxELhWuceALrZBbTPSLVvCWouGReras
X-Proofpoint-GUID: uqxELhWuceALrZBbTPSLVvCWouGReras
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAzMDE1MCBTYWx0ZWRfX8KdvWmMh7BZh
 gns7ZV1gvPfRdw40jgJKDcgDFRFrgeav/240nlSKOPJHhtT+rhlVBCOdlEOezs5XvbpThFv5K5n
 rodBf20q7x4sEg2NIalQ+4R4bH9ZXPZG1mziXBltbA7kTuGBWAnfWEFg9+Pxl+hPCcmgBRRVwix
 XiMWAfdYVaVwix3qorf8NODPwzR9L+gNg7zBKxwv0+CBddU5lY+P+7tk5D+rFjJHSxfBHrFyyeU
 vZR9qRIhgBI6jnY8BEMOWVeVklsJjBSx1UvKZFQASFiqizRyLV+b1p+Uyt3u/ws4kOkmC9mWq8+
 Zc8ubLGAaJDjeXbd7W4n53QMR4ZOs0ls6zWGQxKSNc7qLeXczVXoMulp7fy3XMIgHPQx1cWqb7G
 2WUkWK0MaobBO8S2qRb3sJRjgccgYUjz6vhx6Yvd97uWGvZt8iqifzoEBBnHG52j/ExdwrD5
X-Authority-Analysis: v=2.4 cv=AfqxH2XG c=1 sm=1 tr=0 ts=6816435c cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=6qkdr0EpClcQ5iOZAa0A:9 a=zZCYzV9kfG8A:10
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-03_07,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 priorityscore=1501 phishscore=0 impostorscore=0
 mlxscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 mlxlogscore=999
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505030150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250503_092516_918174_566BD1C6 
X-CRM114-Status: UNSURE (   9.62  )
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

Prevent calling phy_exit before phy_init to avoid abnormal power
count and the following warning during boot up.

[5.146763] phy phy-1d80000.phy.0: phy_power_on was called before phy_init

Fixes: 7bac65687510 ("scsi: ufs: qcom: Power off the PHY if it was already powered on in ufs_qcom_power_up_sequence()")
Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 drivers/ufs/host/ufs-qcom.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
index a7e9e06847f8..db51e1e7d836 100644
--- a/drivers/ufs/host/ufs-qcom.c
+++ b/drivers/ufs/host/ufs-qcom.c
@@ -482,7 +482,6 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)

 	if (phy->power_count) {
 		ufs_qcom_phy_power_off(hba);
-		phy_exit(phy);
 	}

 	/* phy initialization - calibrate the phy */
--
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
