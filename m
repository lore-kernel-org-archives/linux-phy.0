Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96FF2606A330
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 10:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KthJhr4+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=mEVaPfaq;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=i1Ps1OMA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=+rAUkdghP1aeMYmsn2dJ1CZKw8TyS/LImIn68W0AOQY=; b=KthJhr4+DnEUV7CbPmuDfDEbMB
	NBGNrrs1hSfD2fzXJU3gu6eWtCvTn6FPdVMNdeuK1c9fnj1Dk3wLouSUugLxa17JicKvTcQ/snDvb
	uaX1ihQ+88c5vEz2RRFPa4cUbFlUzynKoqqgGY6ethlhyGul3GtG98iPnES/FRzIgwEtYJCQYKu9i
	qe2qj2OfwWsru0bl6UPsNH5VrZyCVzTi+J0LyZBfzOch8b97iL/cW7OSUfrk7MQ97kz5DvxZjHh01
	RK0Xm2OzO+kFJ8Oe5KeQ9bP+ItyR4jjc028+FbzM6nRR8HRI6UhZ8j7iOh+qwUCm03T2ERhxlG7uH
	Naz/CAzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMk5p-0000000BQTo-0k52;
	Fri, 30 Oct 2026 10:44:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMk5m-0000000BQTR-1yb4
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 10:44:15 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69U8FKed2733275
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 10:44:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=cn0+TvX9BXUQVDjeMpm9KWwaLbjp+F7HHjA
	Ce6s+iQo=; b=mEVaPfaq0ZQ0PRhcz8til02k9WMOTx3PQoCpKYvXiJzV9mDAKdg
	9pizcuBqmyGdSjrtQySr2ay4r+RodCmsdD4JnSJ6+M7HI8AdsigtUF9HXuQx1exN
	n7J1obprpNHFRxdcBOspCog/JVnA/bWYz0hVvT1mXBfnoqwlDI3LOcMZ9QMGeNgL
	eg8yeXT80ebObsw80Nxp2DQJqQDlrRMOzQoTkkvMF3IhR9Hs9w7DQLeijdDW352N
	ABIFB8y4BUqGgqO93a7bDLy/PmBxKjqY6LVSFI/qkzIDvVJ3cSh9AegdvIyyP1ZJ
	430XgbDInJY/D8oIkOUhCK0cJXJtJUXAj5w==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hme6qjh54-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 10:44:12 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-1383723dfddso1091346c88.0
        for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 03:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793357051; x=1793961851; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=cn0+TvX9BXUQVDjeMpm9KWwaLbjp+F7HHjACe6s+iQo=;
        b=i1Ps1OMAvMpT6r7h2GXN1wtXlwrM1ELRvIAOO1fPYrPwaU/L3T//IkvZCiCp45evLZ
         xTYZgjOhkR8p0JFqTHR54DqvNVL+b07nii2ooYce4cLpgrLtckB8uRuOpPyeDXSEnWZ4
         CXyfklayPdtFPU0gjDWcxFdQexJD94dTMqGxi+AkssU8AY/C82exATl86tgLgf9aXRrs
         fqW7MWsBF118nJ/DYxHe+5HU3GGEWzZB4WgHJqPoUaChythFOFejrgucqih1SlzoewbN
         DfPOVxNXSYnUo+n5yzmUHkl8RtkUG9z3csMz2OYQREZfx8ymXFpZZ7/M+0yRZ8Mv1kmg
         Pq5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793357051; x=1793961851;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=cn0+TvX9BXUQVDjeMpm9KWwaLbjp+F7HHjACe6s+iQo=;
        b=qrkuTH+8jUzaEEuylI2KYVpS26V9+Xq5xGYvNfjzXXh22ZnFkawb84ac4FVkejDR2G
         Q7WvfqOItJmt+H2TlcKHNV1mYhdC2zzELBIKdYw6KU0DgzKNF5w1y48UteQcifWAwSG3
         7F5h0laoz5lkHTIIoO55VIy7in4asQcrexp1b0IgYVQqfeZmFu+kti4Mi/b+Ai5p4wqV
         X4C5x5C+qAUO94Ov95YzqBiIYol9HRm2djv9aqtZnH9RFdIlrNWRPp+aLiDEnLcFIRgR
         cTgVt0pqgSwbeETvWeVPwPs+NhIL82fp9tHfd21o1Wgc48+vewXFUYyJD4KQ7HVu/R02
         wJpw==
X-Forwarded-Encrypted: i=1; AKwUvBzqJOzEA7qJEdyQFEguSwuIdij4af7QVMNXNq00mjPEQ0mOSGIBmWT9VqmMN5MPvgzuK0pfBttavsE=@lists.infradead.org
X-Gm-Message-State: AFq9FYK4kZRDMlDJ7ds5SoA0lNzWO9FG36Ohm3Wxi8s0BO2aKfPBdDJ1
	VgR7b582rSaVbQid53YXCH/f0yzJawJrVpDvhK1kjwKBD13zfthZIvd+JvcZD3t+eB+lA+QMsaQ
	xenIPym5i8PdtSSaGQ84d4JO9Kob4GPh6WfmvrXf/Wuy6GfR+P+9ktnIUIiHL7e4+eLBA
X-Gm-Gg: AYBFou0nkM5fe6bkcJXbCWpvAwqUFvEhGpzkFy2UIr+IojE1XHumGTw7GcL215uPxVp
	K3rZa+UuXKcIRQ++I/hqLeiA/EiqYZOLZ2QdeONfFuwuH7TsR5kWr55bCgX6WHtDG2dCleuBR0Q
	Q0dPfuN7qLyHCpWQxevnK7VSNMw9Bg1Tz8H91uIZcu47TwAtebMHxDGOixr1aoSDzYv9+bQBdzA
	k6U/51NuNe92inm2fD7IKb2LY96KU3kRkKKjg/RfDLHSxE8wg9nLzHaOPRnRsEgrRxC3bqB5CL7
	MGGFOV5EnTliRZtfxP7X71+DdQBv8VAN4u50vC0cr8AU0RMJuxW0Tk2RgUd/GIpIgxuw9h4dwkv
	gqevgd+Z8XxyvzH8jEYbDapvDuPQy0P8pbXM6u2l15Y5/acXhOv+m+hjgH80CMkDnKgZFuzRPal
	I53g==
X-Received: by 2002:a05:7022:2606:b0:1a3:65d7:efae with SMTP id a92af1059eb24-1ac5d0da4a1mr2844800c88.21.1793357051023;
        Fri, 30 Oct 2026 03:44:11 -0700 (PDT)
X-Received: by 2002:a05:7022:2606:b0:1a3:65d7:efae with SMTP id a92af1059eb24-1ac5d0da4a1mr2844763c88.21.1793357050267;
        Fri, 30 Oct 2026 03:44:10 -0700 (PDT)
Received: from hu-taparana-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1ac19c6b969sm6097035c88.14.2026.10.30.03.44.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2026 03:44:09 -0700 (PDT)
From: Tapas Rana <tapas.rana@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Prashanth K <prashanth.k@oss.qualcomm.com>,
        Tapas Rana <taparana@qti.qualcomm.com>
Subject: [PATCH] phy: qcom: qmp-combo: update offsets table for x1e80100
Date: Fri, 30 Oct 2026 16:13:55 +0530
Message-ID: <20261030104404.1945160-1-tapas.rana@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-GUID: 5rwu798wAUmhJ_5wz25ZoUsZPTZiNkgW
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDMwMDA0MiBTYWx0ZWRfX97x4sfBDrIZI
 1CtYeBFsU472P7lvTOXDfW+q4FXk8lyC5RW5CL9tBuO12waon8wa8oPR0RT7j8HgPngKJ47aVGu
 YSMhi8vfQGCzHLHMm2sY6OyAV1lbh/Q=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDMwMDA0MiBTYWx0ZWRfX9pWjdWct4SH6
 46yZav41pzqB8u0w3i+8uHy+c9VoxsI/YcNAY3VT8xulL8HzN6V02TvP2eHkYjFtf6kA+uGGJ+2
 xhmKr0qSko2qO/XyyFo0tnoYNV9Bp3aUF70DBDc5SYe+R70ucyAzMMWkIPgLBhPA/fCbKGV4UoK
 LdrfU2F3IC46Hn7iqy9lqJkg9FRMOKJ4PyDMruvFBe4ozSU3xnjo13jxAHryLnlOn7yCriahOvc
 6Or4q7Y2BhRY3XDO/eSJ2T6Obfz/ERdWLF+7WjWTRwhEXS+JN+CEoWUsPFfqYXTB3+XzFWam3CW
 DDlh97ZgQSDkWPyAz8WCAu7t/LqqlbCLyz9o4ZsdVWZMYz23R+1Q7pzc/A53xldAlvbxb2fd/Tp
 TMZFoCvT6vX1Y2MoW7Kr6d6pkraMM8z9jtvveORdnZLqtOsRr7+NDk1S9rhepIVr0bQBbl2a5W0
 QeTczW4bew41G6K2kiQ==
X-Proofpoint-ORIG-GUID: 5rwu798wAUmhJ_5wz25ZoUsZPTZiNkgW
X-Authority-Analysis: v=2.4 cv=TpVzFzXh c=1 sm=1 tr=0 ts=6ae474fc cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=WK3x7LZNRzmlshLj7x4A:9 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-30_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 impostorscore=0 adultscore=0 suspectscore=0 clxscore=1011 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610300042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_034414_622667_F1F68BA3 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

x1e80100_usb3dpphy_cfg uses qmp_v6_n4_usb3phy_regs_layout, which
places QPHY_PCS_CLAMP_ENABLE in the PCS_AON register space. However,
it uses qmp_combo_offsets_v5 currently, which does not define the
usb3_pcs_aon region. As a result, qmp->pcs_aon is not mapped and
autonomous mode falls back to pcs_misc for clamp control.

Add a dedicated USB3+DP V6 offsets table with usb3_pcs_aon included
and use it for x1e80100_usb3dpphy_cfg so clamp control is performed
through the correct PCS_AON register space.

Signed-off-by: Tapas Rana <taparana@qti.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 187f0cd11f6c..aa9dc9716574 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2762,6 +2762,21 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v10 = {
 	.dp_dp_phy	= 0x3c00,
 };
 
+static const struct qmp_combo_offsets qmp_combo_usb43dp_offsets_v6 = {
+	.com		= 0x0000,
+	.txa		= 0x0400,
+	.rxa		= 0x0600,
+	.txb		= 0x0a00,
+	.rxb		= 0x0c00,
+	.usb3_serdes	= 0x1000,
+	.usb3_pcs_misc	= 0x1200,
+	.usb3_pcs	= 0x1400,
+	.usb3_pcs_aon	= 0x0100,
+	.usb3_pcs_usb	= 0x1700,
+	.dp_serdes	= 0x2000,
+	.dp_dp_phy	= 0x2200,
+};
+
 static const struct qmp_combo_offsets qmp_combo_usb43dp_offsets_v8 = {
 	.com		= 0x0000,
 	.usb3_pcs_aon	= 0x0100,
@@ -3003,7 +3018,7 @@ static const struct qmp_phy_cfg sc8280xp_usb43dpphy_cfg = {
 };
 
 static const struct qmp_phy_cfg x1e80100_usb3dpphy_cfg = {
-	.offsets		= &qmp_combo_offsets_v5,
+	.offsets		= &qmp_combo_usb43dp_offsets_v6,
 
 	.serdes_tbl		= x1e80100_usb43dp_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(x1e80100_usb43dp_serdes_tbl),
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
