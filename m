Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F36B606A32F
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 10:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2+wrDgNi;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=cGtFmEJQ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=A7eYHNel
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=aPeSZCF6BqFKrJHOiE0ns6ZEiPq7aZQeX8OlzvuAk0g=; b=2+wrDgNij2KpglMPo+QGXYnafi
	kaVGRqBfs0s8tJb26oUwI+sphShZGT/Lm7L+nwO8EC8X9oUd2rLlGZWoWi82LS5VoOd4iExGu9Yeb
	x8ZpLbQqVhORpzOjLnTncxlEclceEXLGD7zwNFFsdXkHD8fVK82vViY22A8h/2PvPrDFfSQVqy8gT
	brEIchO5Ja/DxRC4L8dQHtlwEoZ4vCfHiaVCnarQZLDy2WMB9kgc8E5QrSMJll+aVNdhQ+RIrHsf1
	bY87FL7kgn1bRG8alJIqeeeCyztmr0kQDGVKT7k95JuZ6Ism4kXGIyv6su3n6P8sjpogYmTt7J8fT
	69OrwOSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJqGo-0000000DxCB-1fLD;
	Thu, 22 Oct 2026 10:43:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJqGm-0000000DxBJ-2w2i
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 10:43:37 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69MAIpxE4036738
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 10:43:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=PwdaQerBGB8
	VsbcjFamZ8BEBVtAJ0iXtzS5m4MtJtyY=; b=cGtFmEJQProFGNk6CkQzARX3mrr
	b8549rtK993orTnRw4Qec6eB7DSScyUBbKfAf318H3wovZwqWTqFk15lcZG5WBsI
	829pXhLAqI/zRjSuhl0bvNov8nwF6nUJbeQdDX4gn7Sfw6gEDByE1wPz6pxBKu8W
	ze5BjrpqFP+qfapTILGnIn1IQrq+6cNDVQeMFeG/K6f/Fc0zyx/LSl4RkGJcUG06
	5x4moI9HM59h/uHgiShbp8gyxy2XAFV6s91xeMNBvRChYasdBjqvl+IQlnly64ve
	2zCErlBXy/yeGblzWObSYeufKrV3lw7JCN3C7l6C6iiaUfnROBEe7BJKvrQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hf93ca583-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 10:43:35 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2ea63087d79so7709555ad.3
        for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 03:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792665815; x=1793270615; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=PwdaQerBGB8VsbcjFamZ8BEBVtAJ0iXtzS5m4MtJtyY=;
        b=A7eYHNelOvnYOcLzGj8EU8SgcQtOoTw2ZJ5YziKhBL7GoYt9ac2cX46AvcIinByC0R
         UY2hlUUPpTPL6VmKrFpcCbTThFglPcfmZQsF8LJ9cJGY2wZe8YarnUjA0vYthjOhczE4
         xHwe9/s7GMFJpdKMhdy2Hnuo36yt8njVu1miE+8Y1U38ZwtjKVHUji7d1c/MS53/AaPj
         SlE+JYhC23UJ2O2z7C7nl+iAHkUZK3Fjim6qne6URSW8WLrOq8Xf6BCUakXvVHuDBiEy
         54dnjZj5cLgl0DwZBgqNDI84qKQRJ9poGus7IN0Yn+W/JeAqJvFzu8nnrEbkNnDmXB04
         lg6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792665815; x=1793270615;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=PwdaQerBGB8VsbcjFamZ8BEBVtAJ0iXtzS5m4MtJtyY=;
        b=yGn6XQog/jmPsER2cQV/zN/oDu+OUX1XSQMEQAKNz/rw9wr/Dp0/SZ31Tp1/As0rCg
         pPwxQ2fPN5sB+CYZzLvT8KTv5QDVUo2+t0zTUu6rUaaa4AHOzMxH5eaDcIL9HmEODapG
         KDixn2HPVtBSdlOsBD83rZkw5fdoD33427NKZnH8Fnr7ofP/K+ica0ghS1vz+pt8d7Cu
         KKjQHjaEROGId/s24JcmsCBRsQzLQc8VgIVIAInVjoZQaliTkBDIx0V4QQqybkqXQS3P
         SRmrzbskinmabTN2leARVzoNznlQVQSm15etFTIojuIIhQww3sTaEmtHW7BnQqyqpt/j
         cg8w==
X-Forwarded-Encrypted: i=1; AKwUvBzMhRYREuIG9lAMcnnAqxD+oBokpyRW2gU1NFXO2yVwPfg7Bs5lzyP/qJ/2HFzUvwB6ZIz6MTjZ5Mw=@lists.infradead.org
X-Gm-Message-State: AFq9FYLe3ve9FSNSQCQUxJSOpZtfSWQzgT0R54UMbcdNzXiu7svJJ4/R
	udeK8hRXaaKzymh7QSWPEE46v8o1MIngHaeb6A4gBYpBdd61eu4KyatQ/IkvGRrtbp7NxaQl9em
	FFZkr1osFe6gtiZgGLI+pZAv/KuLaGyYl07+nYtRgFpgviEbtp5+XFZ/5EqWdrpvQruWT
X-Gm-Gg: AYBFou0BqwgtZJanXiVTmiuzAjRAhUjHzSKI/mdab8yTW4TcNFn6wLGW16fFu/DbFAb
	xCJV+rrmmZ08yBjwQgYNpwuXywBK+4HGXfilmdahwzeEoEEfCS7S3Lgqy2lEISClmFzgdeHo04L
	Iu11COBOY+cRb00B5OsfZ9AlgMKB77YoHZd5sRClAxRR33iT0PeUiTHitdK7MVzHJU4xREWBTyQ
	Ud/vuax3E9/MJXhnzHUbP6rxGkdmnjS3HOx2d2/t/+hWU37OzZSXAYh5Y17wl14Q4vOe78XcGil
	aaTL3R92UZxuwz2Xht2e7UUG2hvC7L0KpcEz3p0cYU0+iXW5N8fa78SrnTLiaOzRVKNMCqjCexd
	+g5WWw9f6+/0RrI1P1Cx7Zp8T2khG
X-Received: by 2002:a17:903:8cd:b0:2e9:851a:7188 with SMTP id d9443c01a7336-2ea43d8873bmr41711785ad.23.1792665814944;
        Thu, 22 Oct 2026 03:43:34 -0700 (PDT)
X-Received: by 2002:a17:903:8cd:b0:2e9:851a:7188 with SMTP id d9443c01a7336-2ea43d8873bmr41711635ad.23.1792665814505;
        Thu, 22 Oct 2026 03:43:34 -0700 (PDT)
Received: from hu-prashk-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ea3b43b53dsm22327565ad.39.2026.10.22.03.43.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2026 03:43:33 -0700 (PDT)
From: Prashanth K <prashanth.k@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Prashanth K <prashanth.k@oss.qualcomm.com>
Subject: [PATCH v1 2/2] phy: qcom: qmp-usb: Add PM suspend/resume callbacks
Date: Thu, 22 Oct 2026 16:13:21 +0530
Message-Id: <20261022104321.306679-3-prashanth.k@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261022104321.306679-1-prashanth.k@oss.qualcomm.com>
References: <20261022104321.306679-1-prashanth.k@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIyMDA0MiBTYWx0ZWRfX86FT96zuKqF/
 gudJPrcsexN70NI1iC5pSHEr4D5eMxyGHcmTEnYY6aE1QE0C7GkIM17CuA4j3aqcJw5UDhuJGXq
 5u1BqIssBi28O5weT2bqtjJse+knYd4=
X-Authority-Analysis: v=2.4 cv=ReAFmFtv c=1 sm=1 tr=0 ts=6ad9e8d7 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=AU_F4iWOBUEdUAq3O7UA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: __k_r_QJ-NVqQMDO--VhPXIbZFiRbA1-
X-Proofpoint-ORIG-GUID: __k_r_QJ-NVqQMDO--VhPXIbZFiRbA1-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIyMDA0MiBTYWx0ZWRfX3npEk8kqU+0a
 QPeQChUoonH6WdhoGGfoBweA2OCOLyoatsSQ9Vp7Oqq0qHiJ7mh7283C0W/TpfPb8BgopVKkjB3
 Fvk1Nl263ndER6zhl5eaVWuoGUK3Es35l+cm4CGEQHsL8RBQmfeX3jEpRd+BLMvqB+Zzm7MjsML
 EiMPWglQFxsbkmwJBNir+zZGhraYEEtGyHmlDeQfJltLUvkNlH5qaA7QkbIfw/wP6juqx3si/Yt
 nyIi2s25R4ZijZRph0kL+sEEt/dB4aGa7I/XpCpLLDb5ak3d8SvEZe0a6vzcJPf6cQ5CLIcRYVo
 cmJeAXiMSCOON32mvjStkJ0CHnF/6Kac7Zs3+NNMinlVp1flcshTaaoFAtfeZrsRqUvWNz0rb+f
 g8E0Kw3aIlHxdFCmt41msk0xSDQKrQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-22_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0
 bulkscore=0 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610220042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_034336_855366_C848C6B2 
X-CRM114-Status: GOOD (  11.96  )
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
turned off, this leads to power leakage. Prevent this by adding
PM suspend/resume callbacks for the qmp-usb phy which toggles
clocks on/off correspondingly.

Signed-off-by: Prashanth K <prashanth.k@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index b0790bcf0bc8..d2863633007d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2150,9 +2150,26 @@ static int __maybe_unused qmp_usb_runtime_resume(struct device *dev)
 	return 0;
 }
 
+static int __maybe_unused qmp_usb_pm_suspend(struct device *dev)
+{
+	if (pm_runtime_suspended(dev))
+		return 0;
+
+	return qmp_usb_runtime_suspend(dev);
+}
+
+static int __maybe_unused qmp_usb_pm_resume(struct device *dev)
+{
+	if (pm_runtime_suspended(dev))
+		return 0;
+
+	return qmp_usb_runtime_resume(dev);
+}
+
 static const struct dev_pm_ops qmp_usb_pm_ops = {
 	SET_RUNTIME_PM_OPS(qmp_usb_runtime_suspend,
 			   qmp_usb_runtime_resume, NULL)
+	SET_SYSTEM_SLEEP_PM_OPS(qmp_usb_pm_suspend, qmp_usb_pm_resume)
 };
 
 static int qmp_usb_reset_init(struct qmp_usb *qmp,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
