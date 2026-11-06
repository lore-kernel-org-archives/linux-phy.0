Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44E7606A33E
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 15:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NxbTLoEF;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=pengutronix.de header.i=@pengutronix.de header.a=rsa-sha256 header.s=20260414 header.b=T0CXUeMz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+67ed4wUskYorXYqSi95RGjYFO7K8Ly4XSgkuLeVvIQ=; b=NxbTLoEFawuYRs+9OGnj24Mexq
	sMMnwIsTKP/uuzZ+AoAaQjJaXyAxXnhRYaqAZ2s1rm8kin1nomPYrcECDNXxWROV9IDyhIY6uU0L1
	a1R+CLaaKkXNP5bhcRmdOELLtZdRVCCq9jAa8zHbdsP+M2HF7QlmOwn9u/DgAg5IAFmmZ2ax1Zsxa
	zwYGba1rsj3SUgvYmJ/kK8j48WY2r3FeUI20iH1c+Ybqo7JTm2bpmRmISgBUI5w3EOpQQ5GoqRyN8
	wx8Pq55l/bwe0TKyS7DVPoHOSbBzu0DlQ29ODCHEEHeXPEqDsXLidbMDPKIgRhK2X43CwhQOLeFWa
	D6N6J8OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPLRT-0000000Cllv-2T96;
	Fri, 06 Nov 2026 15:01:23 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPLRN-0000000Clif-4BKC
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 15:01:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 74493200F2F;
	Fri, 06 Nov 2026 16:01:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793977274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jzk0d1TWFfOxDMgxi/ZA6QS+OfheQFEh9pNyPTGjVLQ=;
	b=T0CXUeMzP2QYeuRjvsjuUJt+pVUrBzNLPhXpvmGHAgD+XQ1RVkRXphuCRNrR3puFn0t4W7
	W8FjeTUk3SAo0sVs5snxH3VDzLylMrsP7Tc3waIThQClVmp33DOR2a8duQvDG9cYxsHyBW
	GjQLrhF/PQGFUYfOgu7GkVlWGJIh8O677qnZGuuxqoFuFmO0f6Zo/7DlEXcyj2OIEGnNAB
	yPPUO5rD+NOb7ge4zfwIsox1B/VapTAzixwnxrw7A1kq1qbAmtLqKgPjk2AT35diwrhI57
	BBXSHODznpKe2guui62UhlYw7FwcOsGWuavwyOy02py3HQ7ONXgV3to6e3RVqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793977274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jzk0d1TWFfOxDMgxi/ZA6QS+OfheQFEh9pNyPTGjVLQ=;
	b=EdMuHwhlFsnDjqYtJlqoTtLOftIabz+LgG1xqWMAZN94d+myYAPwYHEDfStDC8OAR5LrZL
	dsjv+mJYpD0NwH+gzcxdXm7Y42Kb9BV2ouL0rbLSOwqrIz2ZLa18We24m5BC1Xa7UionFu
	Isi4mcpAe5mFXduIR9iF3mULaEkIux0AXT5GcwibIygVbVyuD6KSZWbAQ4Ah4qO2FuQDms
	YPSzyFtk/Ll0e2wv5ALY7/zm/kYpSKUdjgdsM5//sGorXaO29d1AteSeg4lFA9/oLnRNek
	sIFV+Rhof+cooiruOJnBnSgu1N8ogOIImGUZ44O369a8bfdzxxD6r0ftCFxYiw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=p.zabel@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793977274; a=rsa-sha256;
	cv=none;
	b=QbOMm10yIEPRYyBMO9JPJQvLxjDv/a135p1Gjs0IArhVHDXSaC7x4PfDw6w+/Noy9belfB
	L9BBa7rLXBwU13hOqeuB4zG0JYE6IbOA5DVvELBUE7vsPHkV1wDi2X+xgf6n6cjB6RLr8Z
	ZJPmrY3n7KLMbN3pY6UrTBrSBDVM0TTjgWKQ4XGNEWkyw20v6VcjNalMO4FfhKqdqCvbSV
	/O6dHDxtEsI7AwpYpxfzsxXNqjxYwJLj4jxvch9giPHMZ0JRb6qyY4d8Xiza+pNpUZJAcm
	tR/ovDuJ5LJvGN5DmbQ+mLdgzsm5aqqLDna94oDtHqi5z6H0+IyNVFSURtmQQQ==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1xPLRK-002v0X-1E;
	Fri, 06 Nov 2026 16:01:14 +0100
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Fri, 06 Nov 2026 16:01:11 +0100
Subject: [PATCH 3/4] phy: qcom-qmp-pcie-msm8996: Do not request reset by
 index
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261106-reset-deindex-phy-v1-3-6a9c9f428be8@pengutronix.de>
References: <20261106-reset-deindex-phy-v1-0-6a9c9f428be8@pengutronix.de>
In-Reply-To: <20261106-reset-deindex-phy-v1-0-6a9c9f428be8@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_070118_192980_A4AA3230 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -2.1 (--)
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

There is no need to request a single reset by index.
Use of_reset_control_get_exclusive() to request the first and only
reset.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index ed22b7a256ef..7c8ec7e2e5fd 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -662,7 +662,7 @@ static int qmp_pcie_msm8996_create(struct device *dev, struct device_node *np, i
 				     "failed to get lane%d pipe clock\n", id);
 	}
 
-	qphy->lane_rst = of_reset_control_get_exclusive_by_index(np, 0);
+	qphy->lane_rst = of_reset_control_get_exclusive(np, NULL);
 	if (IS_ERR(qphy->lane_rst)) {
 		dev_err(dev, "failed to get lane%d reset\n", id);
 		return PTR_ERR(qphy->lane_rst);

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
