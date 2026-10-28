Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B150B606A334
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 10:39:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=FZ57dOAn;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=oT7vkNZB;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=NjEK5qV7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=q+l+BmStRrdnMZk0aBd85XlKDvIa2iDMRJ5B2O7nRe8=; b=FZ57dOAnHy8jct0HGdF9EPtI5x
	n4WaWVijeYc463CgkoiuOQyHeqMyT51G9cxHhrJ5Hi5wgBw1eWabZhU2PBxSFj+aDrHFJ642WEU3S
	oRzrSSWH4lY6jGfl8FYyrZwwaj2EAzHziE/9tFKzn8HMO0P/jFKdht1l2Gu98eOxVaZI0NqNwOdy2
	pPoXFghIbmAmpsiHyWw4n2qrh+bM12mokYjctqVD9Z55Ak05htU1VhOiLR/Fg9UETMsAR4wLVdx0s
	0Sw76T8k4Cdpyhtmj6aqSjLen6xWK/8YSnEtWakfNmQbXHPm7YdTXc6MKyDen+dSdvXvU03crTMLD
	XF/qAs5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM13i-00000006m8B-1NOe;
	Wed, 28 Oct 2026 10:39:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM13f-00000006m6e-3dNp
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 10:39:04 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69S8K9AO1642886
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:39:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dVEkpwRchLW+AC9+Ye0UAnXpImSjkQjdIlFmsdPvXLM=; b=oT7vkNZBIslN3EUv
	Swm1Gyhe3dO+Ca9Eqe/YX3+NPagls77GUT7i7cMmYgdgw9l1tUO8bPCXpI3YvkKA
	NYlTaacwnuanejFii04r4OOnz+Vo3Q5zspzdAHqPH8sL/yErlL46fv44nslANsRO
	YQmxqGOdsECpcr6W9dSP6JqBWQ3lWC1XVNWNOQ/6O9Kcy3FIj7glVxbJFJvvB58r
	zbL2/aYyFcUEvZSSJXGhJ6n2nDNe2bsm1oOZuSk+2XQstSclAumwdmZ+h3r2/304
	8eMiUf41/JbG0j3e7TyjVOZr9aSHXf5rRvHx/Bi2d+3GTAM1NNh4lkZgiIPITeHx
	XRSGxw==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hjyjpuk0u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:39:03 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-36a1e2485fdso2003945eec.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 03:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793183943; x=1793788743; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=dVEkpwRchLW+AC9+Ye0UAnXpImSjkQjdIlFmsdPvXLM=;
        b=NjEK5qV7C9WVXXMTdwn8EcKtIDQDVlndSK9czNn6GBrS8cZMhvTBHRjClK/1d6ordc
         d6h/2h2wnr74qnXn+IhKO6k+V4BL0ewdhOE0BWMGFJYpXwcKaTEnAPu+SSalGHDXe00g
         IWiIx5xF/TycR4UlY5h1dQg75qm/VBGuVh7BSY7TjfsFO5JC7F0nIcEBov4FWAgCxrSj
         RYbYq4fXbodJX0Mq0xd/5usBHQZfuvboYoecnJ67/vMYczxJDFaHNg5rslIdyNPtSN38
         vIJzrC6v9kq12YSGov71o0Hg+4wxurre+RB4uF6gCXUxdp+KoFNVv4KDPJIQeeU/05D9
         ozqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793183943; x=1793788743;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=dVEkpwRchLW+AC9+Ye0UAnXpImSjkQjdIlFmsdPvXLM=;
        b=RaZGfeNPWZXn/Lf+mn20+lqR6QM4nRNI8JScYDwP8tdPOcjDTllgzuuWbCG9N5k6VP
         L/ZbkQFVH95axuPpQEUkLTGRYXNvuGJ8OBQDSi9HevCOBz4UqQMjuFCCD6NrmG40HT0T
         XhGkC0YfKkBACIkAM/uCzwhxcohxwNOwkOTVXJtj/yRTQSfKelCw0Gxc25QqfHEUDc6f
         hD8m6vEIIv3oRH9qFxDM9pBrQb+Af2/u1oOkEWv1QketQppf2cXhzCkx+KJKO7DG2NpQ
         8JY/iBD2IxvD/7EK16lqCadwr98H9LkX2yRqLtb1zpBfPPIghXQrnju2Fm/rmbyUB/xG
         lktg==
X-Forwarded-Encrypted: i=1; AKwUvBwP3GplekXzE3hElxF3eC87frGSWamIe/Ddi+QbfGQnU2IHPC4KiH3P/RToJ1RmQzbwOP0qLgxRwPI=@lists.infradead.org
X-Gm-Message-State: AFq9FYL1ZzF3x0LHhocmSKX7lRuFUTS/Uprua8Nt4s5t5Cew6tmlVNdp
	ex9B7r1j32X4Si9B8rrzifFGxMitaRbJ7/tBs96SVd/PXJxmOFmLKXFm6fHj+zr59N9Bg7gFLvr
	qT3Ei7OixP81wwfJbSUduRxN8tpFErb+Buz6ExVjC0ERpbD5fDD/Q/uAREsrR9XhVm3QWt9Xoj5
	Ud
X-Gm-Gg: AYBFou3lgk4pZahelnqC/8o0mKpGQ/TWY6D1Rj6NGqs7aqlxg/zrMhhoYXaTZHLrugN
	23t7b90YAEhabESNIvlwHmpeW7LIk06F5E88i4QgzYwscoAU6vGKgLldQ0xhsg2EwFH9GV6YZvr
	xl4zO89i/nyDHjfh8dTzfmoJNFzODC9ZYyuVPrPxs9xB9Zc7Uw5znfLVv3Kp55IwEApVVxJbeF+
	olQwshuedTYlOpYXOzHEVi77wqR9fk1ph2kB63d6Qo1sxeo5ilqaA6AyLbESL0wV45G6XhwPlxZ
	dgrdnLVMDaWR3N+zJSAc2vSpZYhsHc9jlSh1DdkFqOXrsiTo10mmx+zjAVoYPAaJYcijdskYmmx
	BqPL5jgGiL33BnfIbIlNqtxduZeidhrd/+vmIDo/C81ji3yGHorIMpO4PxDATDzcCMWRW3K9aZb
	o=
X-Received: by 2002:a05:7022:298:b0:19a:20d3:a3d6 with SMTP id a92af1059eb24-1a6c85d1368mr2406144c88.1.1793183942619;
        Wed, 28 Oct 2026 03:39:02 -0700 (PDT)
X-Received: by 2002:a05:7022:298:b0:19a:20d3:a3d6 with SMTP id a92af1059eb24-1a6c85d1368mr2406097c88.1.1793183941757;
        Wed, 28 Oct 2026 03:39:01 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1a75e5c6d4fsm8340186c88.14.2026.10.28.03.38.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 03:39:01 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 16:08:02 +0530
Subject: [PATCH v6 06/11] phy: qualcomm: qmp-combo: Add v8 PCS-level drive
 level tables for Glymur
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-glymur-phy-v3-v6-6-1f1d2e565a66@oss.qualcomm.com>
References: <20261028-glymur-phy-v3-v6-0-1f1d2e565a66@oss.qualcomm.com>
In-Reply-To: <20261028-glymur-phy-v3-v6-0-1f1d2e565a66@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>,
        Jeff Roach <jeff.roach0@gmail.com>, Luke Macken <luke@phorex.org>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793183900; l=3473;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=Sw/ZYky4CdDLEqQ56kVf3VBPp3puE2q+tG/wrOIoOkI=;
 b=QOf2Pp20q935BMbruY039v/Akr5VHgW6GludkCp0SNgHOpzum3yZIAamoK3AKiyG96lQwZRJn
 WlklC7ydUTHDlJH/zUr32tPDMYQExlwpujL9OdTOq/TLDEPJYcn4mrR
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA0MiBTYWx0ZWRfX2Azd8sMY/mjA
 b+Dde8rCXzcczX4Ye2d2GGupLXgzljlAp4qy082ugKFSvud6t26c+WRc/6dKhWBxiwZ8YnX9TP+
 fUl8l4vJDqAidj8XqBsMPEKXWdWqz0eZVfEvSSfA2EnVl3qEe9Zm9KUuTvpbYwjOZJWx79ff/p3
 zkdhk8zNNhj2/weicGildXllDWje6jKueF8uuTijqjzMspVqmLvEY8V6fAdk6i18YOUqzTgx9/d
 jda6Y3ppCpUFwY2N5unkQ29H+5dbvHXQxHVjmGf5mKplaCD/QOH0NbtmnHuwakfDAMy+tjNy8Tv
 0peefzfy8xYNwyEDIEAq/ozQmTvgRGn/JN/DIfSj1vrgdvv7Sia9GbaHHNz7mvxsNaheOEWTz+E
 mZQAfTnCCWaZv828MTrLwRHGmwyzs7na1ya4hm1M+uYJxGsbCrHfCqvuYHIh4BEDZQx+POtkHI6
 jxkbXLsz3ROm/1PjZ2Q==
X-Proofpoint-ORIG-GUID: FpuuURWqsbHQpmI1ZG1GkDlHOHO65Dl8
X-Proofpoint-GUID: FpuuURWqsbHQpmI1ZG1GkDlHOHO65Dl8
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA0MiBTYWx0ZWRfX8ZvVWd3Ya7Wq
 Gb1sitEuJQZ24T3rOEmBFCPqWpJveYA6yRFAXrIDyIcYCUYw8TAuwWxkBtnYiazswxv79r5MWQd
 iK40WpAywHNmmNN8tG03iyE3XbpnSfc=
X-Authority-Analysis: v=2.4 cv=JodkP84C c=1 sm=1 tr=0 ts=6ae1d0c7 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=mO8_gwkcAAAA:8 a=pJ9Jp-POzqCVGtXzzgwA:9
 a=QEXdDO2ut3YA:10 a=6Ab_bkdmUrQuMsNx7PHu:22 a=InTEqNb8lIr1xazlwGwc:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 malwarescore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 spamscore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_033903_918696_C52DA6C0 
X-CRM114-Status: GOOD (  13.87  )
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

From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>

Add PCS-level drive level tables for the Glymur (V8) DP PHY:
- qmp_dp_v8_ln_drv_lvl_hbr3_hbr2: LN0/LN1_DRV_LVL settings for HBR3/HBR2
- qmp_dp_v8_ln_drv_lvl_hbr_rbr: LN0/LN1_DRV_LVL settings for HBR/RBR
- qmp_dp_v8_pre_emphasis_hbr_rbr: updated TX_EMP_POST1_LVL values for
 HBR/RBR

Add ln_drv_lvl_hbr_rbr and ln_drv_lvl_hbr3_hbr2 pointer fields to
qmp_phy_cfg to allow per-platform PCS drive level table selection.

Wire the new tables into glymur_usb3dpphy_cfg, replacing the previously
used qmp_dp_v6_pre_emphasis_hbr_rbr with the corrected v8 table.

without the correct v8 table following issue can occur:
- Link training failures or instability at higher rates (HBR2/HBR3)
- Incorrect LFPS signaling timing, potentially breaking USB3+DP combo
mode entry/exit

Fixes: d10736db98d25 ("phy: qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms")
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Tested-by: Jeff Roach <jeff.roach0@gmail.com> # HP OmniBook X 16 (Mahua)
Tested-by: Luke Macken <luke@phorex.org>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 30 +++++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 2a4cc45d6daa..2ca67c70b17a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2478,6 +2478,27 @@ static const u8 qmp_dp_v6_pre_emphasis_hbr_rbr[4][4] = {
 	{ 0x22, 0xff, 0xff, 0xff }
 };
 
+static const u8 qmp_dp_v8_ln_drv_lvl_hbr3_hbr2[4][4] = {
+	{ 0x02, 0x12, 0x16, 0x1a },
+	{ 0x09, 0x19, 0x1f, 0xff },
+	{ 0x10, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff }
+};
+
+static const u8 qmp_dp_v8_ln_drv_lvl_hbr_rbr[4][4] = {
+	{ 0x07, 0x0f, 0x16, 0x1f },
+	{ 0x11, 0x1e, 0x1f, 0xff },
+	{ 0x16, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff }
+};
+
+static const u8 qmp_dp_v8_pre_emphasis_hbr_rbr[4][4] = {
+	{ 0x20, 0x2d, 0x34, 0x3b },
+	{ 0x20, 0x2e, 0x35, 0xff },
+	{ 0x20, 0x2e, 0xff, 0xff },
+	{ 0x22, 0xff, 0xff, 0xff }
+};
+
 struct qmp_combo_lane_mapping {
 	unsigned int lanes_count;
 	enum typec_orientation orientation;
@@ -2566,6 +2587,10 @@ struct qmp_phy_cfg {
 	const u8 (*pre_emphasis_hbr_rbr)[4][4];
 	const u8 (*pre_emphasis_hbr3_hbr2)[4][4];
 
+	/* PCS-level drive level tables (v8 / Glymur) */
+	const u8 (*ln_drv_lvl_hbr_rbr)[4][4];
+	const u8 (*ln_drv_lvl_hbr3_hbr2)[4][4];
+
 	/* DP PHY callbacks */
 	int (*configure_dp_clocks)(struct qmp_combo *qmp);
 	int (*configure_dp_phy)(struct qmp_combo *qmp);
@@ -3457,10 +3482,13 @@ static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
 	.serdes_tbl_hbr3_num	= ARRAY_SIZE(qmp_v8_dp_serdes_tbl_hbr3),
 
 	.swing_hbr_rbr		= &qmp_dp_v6_voltage_swing_hbr_rbr,
-	.pre_emphasis_hbr_rbr	= &qmp_dp_v6_pre_emphasis_hbr_rbr,
+	.pre_emphasis_hbr_rbr	= &qmp_dp_v8_pre_emphasis_hbr_rbr,
 	.swing_hbr3_hbr2	= &qmp_dp_v5_voltage_swing_hbr3_hbr2,
 	.pre_emphasis_hbr3_hbr2	= &qmp_dp_v5_pre_emphasis_hbr3_hbr2,
 
+	.ln_drv_lvl_hbr_rbr	= &qmp_dp_v8_ln_drv_lvl_hbr_rbr,
+	.ln_drv_lvl_hbr3_hbr2	= &qmp_dp_v8_ln_drv_lvl_hbr3_hbr2,
+
 	.dp_aux_init		= qmp_v8_dp_aux_init,
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v8_configure_dp_clocks,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
