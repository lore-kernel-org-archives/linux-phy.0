Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFB01606A8B2
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 10:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=B7KJyeO3;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=LTE/ZDYW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=UarG4Sc+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nuKuXCvodz0o87lKSUtaI7lBzYNq9tiDO/p2bLYlNrA=; b=B7KJyeO3HoxNDQsuXfPyyxc7vf
	fMJ6nicd55RUj6cdum7H16hFnyKGbroOOteVlTLr9TaGFdwTiPWpgnmT17EjGN2EGJbQcZ9MnjLqf
	PKCVfWhD1MPF9bG6rQJZW8DwbIFMDEShz31VY74DwUbsHUro/jmegdvG4/I8YPuoSfDbFHgvudyG9
	CRZzEWZI2OngLc2ZjI6WU6GL4rc+ovpRrymVtprDBBn7+JafazHKlfvyivH87mHy0e6Bk7PeePEe8
	77AiF6dtYZoh21qHYD/1zF+zBzAH/PI6HmnunOpqZYrq8+s7YhbOdhQCx6Yt/BzLpO0paeoOFvLPm
	/whzY75g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRoZ6-0000000CNPb-2vLH;
	Fri, 13 Nov 2026 10:31:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRoZ4-0000000CNNw-3yCL
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 10:31:28 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AD8VKbp2515666
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 10:31:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Tx4E2ww8dsW
	+6LTyMUOjX+lhfVjHpUsJPXL9LPfsiiQ=; b=LTE/ZDYW9ed7rGU6xUSntu6hvb9
	tZ+JlLhUYg+yOcumRvBrhLXbamvUcMteM1Ipsr4euRc9qWWW5Iaca0KVxkaULwJv
	T+VneMVeYvjZq3+Yhac8xpp20UhEPHkX/niX7zpI9BJrDwxtlXTyTTY3l/BqDOyF
	g9kWcoczcV6CG44gju1qSH5bmc4rF4KjBAdDRZ6nzRQ3IqhxoZi4dhs7dqZDpuMp
	jd6tYwTv9lNhieBpJBxR+rdD0b1RTMclqYTE5gVD2vVNZYrKAKzmcYhGU9kRtWbE
	e+uES5lvCJxsaNhhi/EV0GYn6AMZ0YMeQBk3+aBnIxQjNMyHM4bhi0cAP+g==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwg1bbmdk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 10:31:26 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2e8dd9b9743so11219115ad.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 02:31:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794565885; x=1795170685; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Tx4E2ww8dsW+6LTyMUOjX+lhfVjHpUsJPXL9LPfsiiQ=;
        b=UarG4Sc+vuEcyauaISWlihmJZ9ELFgteIXGEFjdL0kGaHhfMO5C/GXh5WQHyUmMFPq
         H9Ggq5HLAaobriOP4jTILlQO3h4mykYrv9uFN4f8X+FAGm7xWmimCa9eSDPvgJZrK5oo
         ejZlzR6XAyS2ge6UlDufSyVDzmpysNun+2Jx6RuKWWwBdLXvyl4u9HSlZqAL2J6+0o2F
         yHTvQ5hM+V82Ah4GRQ2sfMDx3O9WiWgN4Cz52dTZf6MTUAT2l145B1Qyfh0ZsFn5i4VJ
         5yGWZIHKuOv95F9iDCmYl/GEjJFpMDLKHJyQJX2zl6aSz65hmhuz/bn612U0VZ5MIEbC
         TKBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794565885; x=1795170685;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Tx4E2ww8dsW+6LTyMUOjX+lhfVjHpUsJPXL9LPfsiiQ=;
        b=tvRbdDJRuANOkuwJwxM95VbiRRBhLQU9239FB4UKsK6tJmfjnmhDVcIRJvx0oUITBf
         t1GGZTBoLqAQg9uYz/KfAXKjTmQZaL1MLxDLQZYVUOnYFV2r9xcnyQxvk/04pJ/OSF3E
         UzwRVPmKFJklwJn690omEm2VsYwLWRpkovT8j4vbo/GvdsmjLHTrjYDL2EMMPSB7MrlL
         /4PGohYI9w5RfWa/UhIz0EqsX8RZH+ksYAQW2WpZvG6g88Eo5szc3NGXz3HS8VNBZDlI
         vA11fDdHymvlBD4eiOZoSQeWkbaj56TAStSmaLzT91uO/QOnd0r2GfIE4/t0tmLvRK52
         9ubA==
X-Forwarded-Encrypted: i=1; AL+hErFW/1FoqpUO6+SQq9j+uTBA6RLF2cUfIWpZrlErNd0Pmfjnfu11VtcUnvDYM1jyoLp5x9xSxO2ngQM=@lists.infradead.org
X-Gm-Message-State: APuU4Z8jYEA5yb926mvOVgjKv8yZP7aCW5bnyT68wnSbuqbQwpy0t79D
	0no7m26esC7I7SxWKV4LnW0e19bSTF6TsEYpP+CUpoh3SzxgBXOt7RLwWsxhtnmBV6P5Ixrofq2
	goN/gU/ahBfC6fyyCDYghA2uT5W51tPdiibSODTCCwqDka/ojqL7Nmpe6gdZ7LmExJ+7Z
X-Gm-Gg: AYBFou10RaOp1/hRcY2gfHSAWuDZm0khd9kS0TQnZK2txU6w5E4uqaXJsjgeduOpkh+
	5FTvxMZNpnuUZiZDTls5ViwJkgS+KRnMRPRHTgWdCZ8FWLalgFBHedsPNAL8Yp0Y74eJnUEvUiU
	aEH9VZGWXl7JWtpXPlaHVe1ezceoWivK29GWxoG1Kg0zOmo6XD/9P536tzB+kG8tt2zRdpbegrw
	Me6HVhO/Ei3uHkHHilPuX9y85ahMOzBqzlxvP2ZUXK+PSTM79HNn0ny8pyDziwG9s7t9TuTTjM7
	xx0YbcrGtXHU+sfHnVwx2jPO24hnP0AgEk2slSXrlTkKyvsyw97w/IPAkzmpiVmGf9OK/QK9V+f
	yqIxCPkAUJSA2HYV1jj+INPXFhLosPVIIQ9T1pCHsuVSA9QBdxvJWz0vmm3PrLLGwYD5e2akHm6
	896Q==
X-Received: by 2002:a17:903:1c1:b0:2e9:6333:fbb7 with SMTP id d9443c01a7336-2ee0dcada65mr23699365ad.51.1794565885393;
        Fri, 13 Nov 2026 02:31:25 -0800 (PST)
X-Received: by 2002:a17:903:1c1:b0:2e9:6333:fbb7 with SMTP id d9443c01a7336-2ee0dcada65mr23699105ad.51.1794565884771;
        Fri, 13 Nov 2026 02:31:24 -0800 (PST)
Received: from hu-prashk-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ee0f8d4612sm8072585ad.57.2026.11.13.02.31.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2026 02:31:24 -0800 (PST)
From: Prashanth K <prashanth.k@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Prashanth K <prashanth.k@oss.qualcomm.com>
Subject: [PATCH v2 2/2] phy: qcom: qmp-combo: Add PM suspend/resume callbacks
Date: Fri, 13 Nov 2026 16:01:11 +0530
Message-Id: <20261113103111.156476-3-prashanth.k@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261113103111.156476-1-prashanth.k@oss.qualcomm.com>
References: <20261113103111.156476-1-prashanth.k@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=c6Q+0h9l c=1 sm=1 tr=0 ts=6af6e6fe cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=OhzqtntE-aYjV8cgDogA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: 1HQO_IUKEKM1sDl4H19z1s444pxhw1Tt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDA0MSBTYWx0ZWRfX1/yfzICu6c7X
 gGZF1jg/T4Dp7Z62d5Ki1AOE4LSDqnL2B0MwTZCYR0Se5MmAu6JSlXeSJTvekkace2MEXdIltE8
 64NxgAmRi8rZw0EIR0YNkZZ2eXwpDRIp/QRl920eV/494SnL4w+Vs8JKlthEzRbd0qqo3gyHHbO
 rRitq7NXnGVyJmBmSMHmStMRgqSQ2EOvW379FXfm8sHQqrmwX9yyJXimYRvEByasSmfgiAHWQLP
 WW/jvq6iQgnTkpFy1/1F+PR89GaKoBCBDrTxTpN+NhaPhGLEefamQT39fA9rN/D+y85WKdgtaA/
 5Xd7MTokAPAleV+yj6y6hdSeJeG8xqTBPIbweH7hJhdgz0QjPUIhFqYjkMvs9eOseYIrFGsavuJ
 GA4/yPJmao3Gt0kC0KQdF3F9xq3AT4VNF7++4GyvFT/x7qmLXKmfn35Q3bi4ieJ6ZIUSBUAE5YN
 jEAkR/1wZoVo4p+QBOw==
X-Proofpoint-ORIG-GUID: 1HQO_IUKEKM1sDl4H19z1s444pxhw1Tt
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDA0MSBTYWx0ZWRfX7tkMQ/hIRJdA
 gEASkA4Kib0FLEX6jxaJVoUwxnGadSuaLaOmZGMvGYq2YSroF3gfAj/ONRDsmanAaz+CCPiGXDj
 sGnj8DGzruU/yB33fC2y0CPAd7GJfYI=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611130041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_023127_033318_A2DB3414 
X-CRM114-Status: GOOD (  14.46  )
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

Currently when we perform system suspend, the phy clocks aren't
turned off leading to power leakage. Prevent this by adding PM
suspend/resume callbacks for the qmp-combo-phy which toggles
clocks on/off correspondingly.

While at it, add mutex guard in runtime_suspend/resume in order
to prevent any race between RT operations and phy_init/exit(),
as it can lead to unclocked register access crash, underflowing
the clock enable counts.

Signed-off-by: Prashanth K <prashanth.k@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 187f0cd11f6c..65d280f45db1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -4717,6 +4717,8 @@ static int __maybe_unused qmp_combo_runtime_suspend(struct device *dev)
 
 	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->phy_mode);
 
+	guard(mutex)(&qmp->phy_mutex);
+
 	if (!qmp->init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
@@ -4737,6 +4739,8 @@ static int __maybe_unused qmp_combo_runtime_resume(struct device *dev)
 
 	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->phy_mode);
 
+	guard(mutex)(&qmp->phy_mutex);
+
 	if (!qmp->init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
@@ -4761,6 +4765,7 @@ static int __maybe_unused qmp_combo_runtime_resume(struct device *dev)
 static const struct dev_pm_ops qmp_combo_pm_ops = {
 	SET_RUNTIME_PM_OPS(qmp_combo_runtime_suspend,
 			   qmp_combo_runtime_resume, NULL)
+	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend, pm_runtime_force_resume)
 };
 
 static int qmp_combo_reset_init(struct qmp_combo *qmp)
@@ -5749,7 +5754,7 @@ static struct platform_driver qmp_combo_driver = {
 	.probe		= qmp_combo_probe,
 	.driver = {
 		.name	= "qcom-qmp-combo-phy",
-		.pm	= &qmp_combo_pm_ops,
+		.pm	= pm_ptr(&qmp_combo_pm_ops),
 		.of_match_table = qmp_combo_of_match_table,
 	},
 };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
