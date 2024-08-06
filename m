Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F1A0C52D71
	for <linux-phy@archiver.kernel.org>; Tue,  6 Aug 2024 15:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rS0q4ELC9c1ncOFI40TVeWxHZ4kmGHP/Bbrp+v828VU=; b=ibRVkqu23WL9RK
	v7R74OET55Y8BTdXRs0O/A/ax3oEchUxy2uZ/bpVlWxk6CosRcQTTsoq9E9YhUvbChVJE97cmJMm8
	IcIbWdhjmv1YnmWeERII5keJ5XIOsNMjLj46R+QHAofFGu+RPyQSrt77xEp3v75mFTW8+Cpr7y70B
	0lLfiuPfIf1EeSoX32kS1O2DIvBumq5WzkViDXrOxT0b2uMRsGCZLmXMUku6gorZkPkQQP8mdr4PG
	G27nFzjh1lLL06pyp5ptmMskwZZL/4AhIEUqSCoLsJ0eu8hrljqIA8Cn33QpyhIgGe5MJ+jvhOkQy
	dRsmbRNb0pFP9T3+LJJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbMYG-00000002FYJ-0O0d;
	Tue, 06 Aug 2024 15:56:44 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbMXi-00000002FQA-0nNL;
	Tue, 06 Aug 2024 15:56:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7A52160FF3;
	Tue,  6 Aug 2024 15:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5D1AC32786;
	Tue,  6 Aug 2024 15:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722959769;
	bh=kCfBzoppW38UaZfFWdxMgASm/9xiPeuaXe7b97vR2R4=;
	h=From:To:Cc:Subject:Date:From;
	b=ud690dZA3zuA/UW9oZeKWZ8GkNIKgD5sGygDol4edq49cbf7ifVplLKFgeIqig+3m
	 yYz3Y+vu9jZS4PPwMU1MEzTaBklPgxjNI1Nyti3P+KUnqdpmkBeyLFw2zapxf5JoCU
	 REsTZrvHXtTqoe7bGZS73X7MbUH1gefB+XkhZblBD7plwK20o6vG4B07XFe/MZZLUb
	 kDmdHiBndqMPKgR6+MZa98ooEguuuODRSZxjhLt/CFupwLTv8Qiw5k5+FGhm7l/tvo
	 dn22QQ+M33eX+LPrhsAJ0UkAtW40LfIVeMq7lA06NlcOjqlysrTq0DNJpphnvLYE+v
	 pi0XZe5bQpSjA==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-phy@lists.infradead.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	lorenzo.bianconi83@gmail.com,
	nbd@nbd.name,
	john@phrozen.org,
	dd@embedd.com,
	upstream@airoha.com,
	angelogioacchino.delregno@collabora.com
Subject: [PATCH v3] phy: airoha: adjust initialization delay in airoha_pcie_phy_init()
Date: Tue,  6 Aug 2024 17:55:48 +0200
Message-ID: <8af6f27857619f1e0dd227f08b8584ae8fb22fb2.1722959625.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_085610_291825_B2E18A04 
X-CRM114-Status: UNSURE (   9.68  )
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

Align phy-pcie initialization delay to the vendor sdk in
airoha_pcie_phy_init routine and allow the hw to complete required
configuration before proceeding

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
Changes since v2:
- fix comment
Changes since v1:
- use msleep() instead of mdelay()
---
 drivers/phy/phy-airoha-pcie.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/phy-airoha-pcie.c b/drivers/phy/phy-airoha-pcie.c
index bd3edaa986c8..1e410eb41058 100644
--- a/drivers/phy/phy-airoha-pcie.c
+++ b/drivers/phy/phy-airoha-pcie.c
@@ -18,6 +18,9 @@
 #define LEQ_LEN_CTRL_MAX_VAL	7
 #define FREQ_LOCK_MAX_ATTEMPT	10
 
+/* PCIe-PHY initialization time in ms needed by the hw to complete */
+#define PHY_HW_INIT_TIME_MS	30
+
 enum airoha_pcie_port_gen {
 	PCIE_PORT_GEN1 = 1,
 	PCIE_PORT_GEN2,
@@ -1181,7 +1184,8 @@ static int airoha_pcie_phy_init(struct phy *phy)
 	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_SS_DA_XPON_PWDB0,
 				 PCIE_DA_XPON_CDR_PR_PWDB);
 
-	usleep_range(100, 200);
+	/* Wait for the PCIe PHY to complete initialization before returning */
+	msleep(PHY_HW_INIT_TIME_MS);
 
 	return 0;
 }
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
