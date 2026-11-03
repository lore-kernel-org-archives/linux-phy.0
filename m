Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C18E606D839
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 22:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UAvmHDuz;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.a=rsa-sha256 header.s=mail181024 header.b=pRsrycO4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=WtSlzHMqBzu2/13pFxPf0ukxvz3HfiXbCHIQchbl8rI=; b=UAvmHDuzAqjroFbCrLe09BezDk
	W0sB0O+UwNCwy/rdPScAyOWBe0QZPpfk/mOROsMTcTRDYJH29Or0D18s5/xNYAqo6vSHF0fxTBb8u
	m/mCYDIK82TQhZBKmHtVz5SKcLw+dz5OVKGzkruS81eLIdm4RPFcDDCUyDRaxKwBHUAQWdMUqWyqi
	FS2OS+D0ICfrWlBJvvio50Z2ksnlXnL9MJ32y7nE3WXA38LKy6s2bik0lnlTsJhV+z6wi1z82ThJF
	rgEvmB91TDH0rkxRcQ8M6cCv0NZCzKMLQspUy8XY+ANOcdgcYEB0PxezA6OO/Ny1uw29D9yqZCwrX
	Xk9T8h6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOMmQ-00000003oE5-0vz3;
	Tue, 03 Nov 2026 22:14:58 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOMmL-00000003o92-412m
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 22:14:56 +0000
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id DFFC52C04EA;
	Wed,  4 Nov 2026 11:14:46 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1793744086;
	bh=tr2XYt+rQawaJdTAFA7Un12tgCTvUH+cv9g9vRpJbIw=;
	h=From:To:Cc:Subject:Date:From;
	b=pRsrycO42lAxtTkFSDZtNuMG1mbcDj7RTa0TYmAvNwLOYWBgibUTwV1aO7DjB8jdy
	 uYkkaMbO3K0UOc4Ldax+lYtdG9VscE18ums6t+tWW5fgMfIeWsmuK8AJ2c3SGX+S5R
	 JRl+tNRDjge3Q260ddRMHxyg+Trr8szWYMx6CDFoTqN8uNpoIxDPMvdWUwwIduzkf3
	 OV17w+/rX/Px2mS9TapIQuwjR1FtZDQrIHtMXRAIiEkCiZxD2LNZj+zADNG9VyW3XZ
	 p7MTRA09VF68m9JS0YqRUtGsABnX2Xsf2E/ty5jhDvK5lT9sN0CB9X2nc+x9ys7eCI
	 AC1KPM+SoGArg==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B6aea5cd60000>; Wed, 04 Nov 2026 11:14:46 +1300
Received: from joshuas-dl.ws.atlnz.lc (joshuas-dl.ws.atlnz.lc [10.33.25.18])
	by pat.atlnz.lc (Postfix) with ESMTP id 8B1D513EDEC;
	Wed,  4 Nov 2026 11:14:46 +1300 (NZDT)
Received: by joshuas-dl.ws.atlnz.lc (Postfix, from userid 1634)
	id 855495AEECE; Wed,  4 Nov 2026 11:14:46 +1300 (NZDT)
From: Joshua Scott <joshua.scott@alliedtelesis.co.nz>
To: Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org,
	Joshua Scott <joshua.scott@alliedtelesis.co.nz>,
	stable@vger.kernel.org
Subject: [PATCH] phy: realtek: usb: fix the USB 2.0 PHY's port range check
Date: Wed,  4 Nov 2026 11:14:41 +1300
Message-ID: <20261103221441.1550058-1-joshua.scott@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.56.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-SEG-SpamProfiler-Analysis: v=2.4 cv=H8t4wPYi c=1 sm=1 tr=0 ts=6aea5cd6 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=zJRp6_cAMcgA:10 a=VwQbUJbxAAAA:8 a=yqH7g-pp0JMGHG9r5zMA:9 a=3ZKOabzyN94A:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_141454_921317_3800E646 
X-CRM114-Status: GOOD (  12.10  )
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

rtk_phy_toggle() checks the port number before using it to index the
phy_parameter array, which has num_phy entries. Ports are numbered from
zero, so the check should reject port == num_phy, but it only rejects
ports greater than num_phy. Fix the off-by-one.

Found by code inspection.

Fixes: eeda494542e5 ("phy: realtek: usb: add new driver for the Realtek RTD SoC USB 2.0 PHY")
Cc: stable@vger.kernel.org
Signed-off-by: Joshua Scott <joshua.scott@alliedtelesis.co.nz>
---
Prepared with the help of Claude Code (claude-opus-5-5), which drafted
the change and changelog. I reviewed it and tested it on an RTL9311B
board, where USB devices still connect and disconnect normally.

 drivers/phy/realtek/phy-rtk-usb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
index 1f08b151d90a..e43ad5fa6d64 100644
--- a/drivers/phy/realtek/phy-rtk-usb2.c
+++ b/drivers/phy/realtek/phy-rtk-usb2.c
@@ -670,7 +670,7 @@ static void rtk_phy_toggle(struct rtk_phy *rtk_phy, bool connect, int port)
 {
 	int index = port;
 
-	if (index > rtk_phy->num_phy) {
+	if (index >= rtk_phy->num_phy) {
 		dev_err(rtk_phy->dev, "%s: The port=%d is not in usb phy (num_phy=%d)\n",
 			__func__, index, rtk_phy->num_phy);
 		return;

base-commit: cbbddb6b08cc9900a87cccaa9b22bbe06aa4f50a
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
