Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D31B4C6FA94
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 15:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ty5X8WOTrwB/MJdRUa7pAe6Dtpn0wNLhi0KfbyzH2TU=; b=qAqu9i4qsDbadq
	/2MI5Cx91ZnKeI6JWlyFOWKLAGJw1fvu7QRikFjewI9uqZdNZWOzag/qCy0mTN/PPraWLmMSkuBLp
	qIIXRzsCvlmhcKiXXhUvzJXC9FaVinQEy+HL8C9BJbc8SNuaAbM0QXuaPK8x5kLeqG/+WqSpS0tXZ
	KPozEqqjXqawDGJpsHLRXG7I9A8vWX3hy03rqcWI5bv/xT0iW/qho9L69FLtIoqdh0Ql7Fvzxvegd
	UOsLKf7xrGFEwGQ1EfcRCBg9g/M8L08Ramz2n8dHdY+AWPe0t3gpuUGH1tNZWhU4zXAd2KkJQZ4hE
	jcumWQoPw2UxDADgzhtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odYzM-00GtyX-6n; Wed, 28 Sep 2022 15:28:44 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odYzI-00Gtv5-Hm
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 15:28:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 764E161F03;
	Wed, 28 Sep 2022 15:28:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC018C433C1;
	Wed, 28 Sep 2022 15:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664378918;
	bh=alOUuEhnRUZiQBgz0BxBl3gcJ5fFOe0ChoITh0h2imI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qqmCjb7bmm/MqBmSUeSNVyrUL9sThmkv1gFznet8qVrLgFSsrG8z9X5sgvpfIwbx/
	 6IRArMJD+JHMBufiLSRnS8STfGjwnWzXCcN1yZ29jm2Q3FVFmMBVBHRS+6IpR8+QVU
	 O0riOl/2nn3L4z+sAb7/1qoT90g+0g2IRCjLHGRIdwYNQJZpnWEQ9Kw5bELt0VdJIl
	 gZPS1gfEy5wLFCVtL8xByR2eDtkYbxXoJnhTvcslKD7LhF+lBdaZ3VIiQEHOAteA6+
	 WlqJVB6hDmB+ZtGAysLyC2ta8w5aPw2Ls7HxgHeZLKjmaXu2lfIutbihjuZl1Cchcq
	 AX18UMGG2gYVw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1odYzL-000808-CB; Wed, 28 Sep 2022 17:28:43 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 13/13] phy: qcom-qmp-pcie: clean up clock lists
Date: Wed, 28 Sep 2022 17:28:22 +0200
Message-Id: <20220928152822.30687-14-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928152822.30687-1-johan+linaro@kernel.org>
References: <20220928152822.30687-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_082840_686038_9FDE40D6 
X-CRM114-Status: GOOD (  10.38  )
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

Keep the clock lists together and sorted by symbol name.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 150dc58147ce..0b048e32f39b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1409,6 +1409,10 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
 }
 
 /* list of clocks required by phy */
+static const char * const ipq8074_pciephy_clk_l[] = {
+	"aux", "cfg_ahb",
+};
+
 static const char * const msm8996_phy_clk_l[] = {
 	"aux", "cfg_ahb", "ref",
 };
@@ -1423,10 +1427,6 @@ static const char * const qmp_phy_vreg_l[] = {
 	"vdda-phy", "vdda-pll",
 };
 
-static const char * const ipq8074_pciephy_clk_l[] = {
-	"aux", "cfg_ahb",
-};
-
 /* list of resets */
 static const char * const ipq8074_pciephy_reset_l[] = {
 	"phy", "common",
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
