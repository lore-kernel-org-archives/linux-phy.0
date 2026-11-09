Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8412C606A31C
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 07:47:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=YHH3slB8;
	dkim=pass (1024-bit key) header.d=cmss.chinamobile.com header.i=@cmss.chinamobile.com header.a=rsa-sha256 header.s=default header.b=Las7e4Vg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=dZyf3HgHZGRczqr389EEAO6IBVVUZUGeUU97OkjaTJM=; b=YHH3slB8wTJoBV6gA/i6XzS86G
	oeEd04O0t4B2bIxPruuAQ2CrRnhCT/0s0IdErOsj2+8q+aftmKYl/ZgeTwYhyZ8Gb+yzhjSnZH3OX
	UWSfiZFFRbZXG/QTdU4CqLdd8kp3F24nWFTfosfyMocxtVm4TITlmnQGYDz2isnmSAeC9O0xI3WKa
	H7K8wbvbTlcAk2NNv8XraGYEsAcXVox6cc1v6LqoIUb2pQYzyNYtiKmdtF1bcW3E9knBkMv0/qglO
	XXSZK2KvHPJyGsAl9bgKmnbR/1KbpX+dPUMKAejceaKxCNecG7E1d+mR9pj5uA7gJNLaZoa8lf6G+
	OojbBcXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQK6D-000000000LR-185D;
	Mon, 09 Nov 2026 07:47:29 +0000
Received: from cmccmta8.chinamobile.com ([111.22.67.151])
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQK68-000000000Kk-3Dpn
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 07:47:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cmss.chinamobile.com; s=default; l=0;
	h=from:subject:message-id:to:cc:mime-version;
	bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
	b=Las7e4Vgly68Tt4yJqjL339PowSdWRW3Byu/eHeiNLsdjTahV0B7oWUaVHD/BKoEYuurQhxIIuYdz
	 XYjc2m1tl0PAtXSUxlGlxAqvAA2abg99eaaNc8k0vS8NG21+ccHGy4Dp7RiczOFSTPFxynBJ21Ga7W
	 24D2QC+6psXQbef8=
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from spf.mail.chinamobile.com (unknown[10.188.0.87])
	by rmmx-syy-dmz-app06-12006 (RichMail) with SMTP id 2ee66af17a80760-8f2a4;
	Mon, 09 Nov 2026 15:47:14 +0800 (CST)
X-RM-TRANSID: 2ee66af17a80760-8f2a4
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from Z04181456177947 (unknown[10.55.1.71])
	by rmsmtp-syy-appsvr02-12002 (RichMail) with SMTP id 2ee26af17a8063c-87106;
	Mon, 09 Nov 2026 15:47:14 +0800 (CST)
X-RM-TRANSID: 2ee26af17a8063c-87106
From: Zhao Feng <zhaofeng2@cmss.chinamobile.com>
To: Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org,
	Thierry Reding <thierry.reding@gmail.com>,
	linux-tegra@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Zhao Feng <zhaofeng2@cmss.chinamobile.com>,
	stable@vger.kernel.org
Subject: [PATCH] phy: tegra: xusb: fix OF node leak on lane probe failure
Date: Mon,  9 Nov 2026 15:47:11 +0800
Message-ID: <20261109074711.1751-1-zhaofeng2@cmss.chinamobile.com>
X-Mailer: git-send-email 2.55.0.windows.5
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_234725_348782_88786CF8 
X-CRM114-Status: UNSURE (   5.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
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

tegra_xusb_pad_register() obtains a reference to each lane node via
tegra_xusb_pad_find_phy_node().  On success the reference is
transferred into the lane (lane->np), and the disabled-lane and
phy_create() failure paths drop it, but the pad->ops->probe()
failure path (e.g. tegra_xusb_lane_parse_dt() rejecting the
"nvidia,function" property) jumps to remove without dropping it,
leaking one node reference per failed lane.

Drop the reference on that path, mirroring the phy_create() failure
path right above.

Fixes: 53d2a715c240 ("phy: Add Tegra XUSB pad controller support")
Cc: stable@vger.kernel.org
Signed-off-by: Zhao Feng <zhaofeng2@cmss.chinamobile.com>
---
Verified against current upstream master.  Not runtime-tested (no
Tegra hardware).

 drivers/phy/tegra/xusb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -234,6 +234,7 @@ int tegra_xusb_pad_register(struct tegra_xusb_pad *pad,
 
 		lane = pad->ops->probe(pad, np, i);
 		if (IS_ERR(lane)) {
 			phy_destroy(pad->lanes[i]);
+			of_node_put(np);
 			err = PTR_ERR(lane);
 			goto remove;
-- 
2.39.2




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
