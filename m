Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 024D5C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 13 Dec 2021 13:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mSprDFp1OpndESyfLAxtXujIFwvKX9ms7OK8beIx7X0=; b=bAqIYfzC8ndBMI
	jqeseVZ7/WzOUPvzYxgi/ZFoRB0kGfbkIusJyfJCjlGPGJqcXKHCIqHokrhY0Ih9JOVcPx2GEVB2B
	V5McNqnAMy8T/joH8+1pzxBOUt+8bjIBFErEJKO1SXvDO7/RCKJ4rgouygTeqUcqpJ5HTo46uVT1Y
	uoQhzV9psQxGNxChQ9guG9GQW3/1hAzHwa+UtjOfg/4gAgta1QAZ0s7DUD/2rNXM9QMjtJfgFCNhA
	UdvJIixGtPPA/0KLHWw1ODYPcpwDYrnG+wR7ZxAcGqsm2enJw6hVmk3ygk0ydv0ce4wMQBKTcyw2s
	gGPcP5sA3CEJKesWuY8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwlAi-009diB-F0; Mon, 13 Dec 2021 13:15:16 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwlAf-009dhA-AA
 for linux-phy@lists.infradead.org; Mon, 13 Dec 2021 13:15:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 18433B80ED6;
 Mon, 13 Dec 2021 13:15:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B571C34601;
 Mon, 13 Dec 2021 13:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639401309;
 bh=cZk+G/uxRdIcbS2qNHDTMvTAAHkt6iWHVXw+x9mtf1M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pF+jHNSMao4zvFaYgX3+GJAXuQFv0OanSosnITkQs70StQQ+aYiheXr1f+slSMCl5
 +gS3ZqJszfK2RRfkC7IBb8sZTA3hWUUigfwthydOEvqrKdUtnCZKGk/wYjr2B0nsw/
 jrywZ+A7bQohMCabyvwxKtkvCYcfQcuM6rl+LoWl9NwVcmOmWaodL0tTSWbpeWMh2t
 7OLk9NOt+pZPXeC0RE3Ix+JJ+KuS4HbCovcaJD84BRfPaSdH3jv6H1uYNfPOJMaHoK
 rDMTYs83dDuZGv+YTC77gJcb3efyhHpMSWnhLHe3xpcVwougEi7wVfZnhHLyFxEZyY
 H0ccv95hvjm2w==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Wesley Cheng <wcheng@codeaurora.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] phy: qcom-qmp: Add SM8450 USB QMP PHYs
Date: Mon, 13 Dec 2021 18:44:50 +0530
Message-Id: <20211213131450.535775-3-vkoul@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211213131450.535775-1-vkoul@kernel.org>
References: <20211213131450.535775-1-vkoul@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_051513_520936_E401B702 
X-CRM114-Status: GOOD (  12.18  )
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

Add support for the USB DP & UNI PHYs found on SM8450. This is same as
the phy version used on SM8350 and sequences turned out to be same, so
use the same table from SM8350 for this as well.

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index a959c97a699f..13a249ec8ab6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -5777,6 +5777,9 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm8450-qmp-ufs-phy",
 		.data = &sm8450_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sm8450-qmp-usb3-phy",
+		.data = &sm8350_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,qcm2290-qmp-usb3-phy",
 		.data = &qcm2290_usb3phy_cfg,
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
