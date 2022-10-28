Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81823FA3742
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 16:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NT16b+Q2uTmNcuOwvcwhaDVO3+c++HQ4wESaWAs6Ot8=; b=nPYcjrqn0bDZe7
	PcZ58np9I5SWPwKG/Hc/eOs3Nv29q39hA31egHzUpj0CldIQ2RHlOckw7PcFzLZE3bSweLBYwJWnv
	1ZRHZWwEVH56S65/jnWNUX49fmauBlYecNs3Sm3c7laHEIgycZFK2NCyHS7O37g0+Z0z6oi136oWs
	6rIx25Gr43GctlZm6hsLjbDQj1n3X7Ixz04I83jcw0XaEhC7tX78Rg9tJscSrK8FEGN7BpfLJQ1vQ
	Jy5bO7UR0opcdLzcvWB8NWvIYDO+lAFISUeKonxsli0G/v4RuZNFYOQ/HRRVJdp0qEMPoj1EAx4/S
	iacHUSoAjIwvd663ayHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooRrD-000lh6-LN; Fri, 28 Oct 2022 16:05:19 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooRr6-000lau-VB
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 16:05:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6378062950;
	Fri, 28 Oct 2022 16:05:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DCBDC43162;
	Fri, 28 Oct 2022 16:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666973110;
	bh=pa4qRgP2TlnZgyliaD9iQA0RXiwo8Z4IYATkxJPpjoE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HatutvyqpkQDjmFEhAagubhsaDeteFwBXlnHiI3GMo/w2cxB6Ka6yQ1vygZeQEXV7
	 ZwqmxqDw4iCYxjfxEWtvfQyRRV4BgMPQkQKOkI1l1EgviZY6/449WWXAnMHKsEOcxt
	 lTDhiuV5Gtwmsb2aWedWPB7s4tyOWUVigkBitq+e4Nfa0Hj0UtYOES7ZNWQLFMotHQ
	 eXrIaQ4fUILAF+c61+v6f1YnnW/F7pw+MpwClVYbiqEko0hS+NJj83AGkh4mliNbw4
	 2pHq6G6YardNI96NujmbDEmRv4GBaUhFyJzYZwbRhHFBaqQRXYx1xq694vxB3cN6j5
	 Wy6Vyk2N0Bkrg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ooRqq-00071p-Gd; Fri, 28 Oct 2022 18:04:56 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH RESEND v2 09/13] phy: qcom-qmp-usb: clean up PHY init
Date: Fri, 28 Oct 2022 18:04:31 +0200
Message-Id: <20221028160435.26948-10-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221028160435.26948-1-johan+linaro@kernel.org>
References: <20221028160435.26948-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_090513_057165_3BA81E2B 
X-CRM114-Status: GOOD (  11.32  )
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

Clean up the PHY initialisation somewhat by programming both tx and rx
for the second lane after the first lane.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 4a7b961d2965..d5e62cfd93f8 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2058,14 +2058,12 @@ static int qmp_usb_power_on(struct phy *phy)
 
 	/* Tx, Rx, and PCS configurations */
 	qmp_usb_configure_lane(tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
-
-	if (cfg->lanes >= 2)
-		qmp_usb_configure_lane(qmp->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
-
 	qmp_usb_configure_lane(rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
 
-	if (cfg->lanes >= 2)
+	if (cfg->lanes >= 2) {
+		qmp_usb_configure_lane(qmp->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
 		qmp_usb_configure_lane(qmp->rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
+	}
 
 	qmp_usb_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
