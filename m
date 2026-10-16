Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80F3CCCF2C3
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 14:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oS22LRjmIiV/oaiLl11c/q0XfLGpBeR/CETdPIegJbk=; b=BSCb3xY2lj2Jhi
	m5HXCT8dcemQ0Ax8xXXUDMeBQkqSxavNGzSJWzwSAubjMMDpyH8ooR6GSZv+nnKR+wtS+fJ00LZL/
	92iS5PtQ1DyA6hpn1jXGkdw++sswVvnk49PVkh89aHl5cmPh2PI1w+4WgI4xRFH4EnXtHaI7P0qf7
	gb4Sq7wJWSHuiSaHswT4PrbcMdddrND0CbIQiH050wlMZXmMsbukC0xcuEzorXPL9ul/LaK4tsY6X
	b5nR3QY6cIXA0vNppn4PKkuyBA93+D72NG4ZVPPcxX17IwijjRCJekAL9WLNy1BdpaGWPSE61lhJD
	koi90aR2M1AdBoZYwu1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHjLz-00000003DJ7-093h;
	Fri, 16 Oct 2026 14:56:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHjLx-00000003DHo-0rm7
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 14:56:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E97FC447A7;
	Fri, 16 Oct 2026 14:56:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC46C2BCF4;
	Fri, 16 Oct 2026 14:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792162572;
	bh=v0VrKMVD9fdxJiPOnY6hqXtSLPjhyVJ/XO5t9vz1WBc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=SUlmK3WbfMdCWw4Pmg+0VYWQCpCPq8g35A07GqlY938phGVVN5RYIxQZ94Bn+Du0u
	 tknTOtZylgCZ7MwVFBlbDkrzHo09+S2B6brYtWZ4WSl0/zsK7TcYzsVsiNk9mjweDN
	 Sqlq8FEeY4s9m4gkcfmeK8+aGhQ0giMQZlAOsd9CP3as1QIi5mH10IJ0Gq3kJzjgij
	 LvHnMernBUosqXffIkmmAn6uyoGLjLFPCPgGQUKFwcK3DIkE3c/3VVG6EmFqsP5kPO
	 i8vkDTj7WMaWL8y/aSnuiSqAR4r3spMmK6Bqoj2wieIjFgIXijQIesUcFzWN3xtKf/
	 PkgXWhXbS1xdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B577DCC6B38;
	Fri, 16 Oct 2026 14:56:12 +0000 (UTC)
From: George Neacsu via B4 Relay <devnull+geocausa.gmail.com@kernel.org>
Date: Fri, 16 Oct 2026 15:56:15 +0100
Subject: [PATCH v3 5/6] phy: qcom-mipi-csi2: Use fsleep() for init sequence
 delays
MIME-Version: 1.0
Message-Id: <20261016-x1e-cphy-rfc-v3-5-40a346a72153@gmail.com>
References: <20261016-x1e-cphy-rfc-v3-0-40a346a72153@gmail.com>
In-Reply-To: <20261016-x1e-cphy-rfc-v3-0-40a346a72153@gmail.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 David Heidelberg <david@ixit.cz>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>, 
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>, 
 Suresh Vankadara <svankada@qti.qualcomm.com>, tjose@qti.qualcomm.com, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, George Neacsu <geocausa@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792162570; l=1325;
 i=geocausa@gmail.com; s=20261015; h=from:subject:message-id;
 bh=9kgF6eCoWKoJtXzcHCM7JYWoQiK6MqWjKyWCuLZbYNo=;
 b=MJURgf8PcL2d1vyDxikxUMr1tK+dJRgdnoA1QAvGbpfjfoaSr74WoIqg0h+eUoZLDJNwlmfdv
 3WkbvGu0E2dAeafzBDOHgziTqZnzU5jtj8You2l1rWxSqY7RvWnwhae
X-Developer-Key: i=geocausa@gmail.com; a=ed25519;
 pk=KyQk/iWbxsikewDBh0SwlHI51RvAqahD3loqmRp9DVI=
X-Endpoint-Received: by B4 Relay for geocausa@gmail.com/20261015 with
 auth_id=1199
X-Original-From: George Neacsu <geocausa@gmail.com>
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
Reply-To: geocausa@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: George Neacsu <geocausa@gmail.com>

The init sequence delays are applied with udelay(), which busy-waits.
That is fine for the 1 us delays in the current D-PHY sequence, but the
X1E80100 C-PHY sequence added next waits about 3 ms after its reset
exit, and busy-waiting that long is wasteful. The sequence is written
from phy_power_on(), in process context, where sleeping is allowed; the
PHY reset just before it already uses usleep_range().

Switch to fsleep(). It still uses udelay() for delays of 10 us or less,
so the existing D-PHY sequence behaves as before.

Suggested-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: George Neacsu <geocausa@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index a44e104301..84c45f67fd 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -264,7 +264,7 @@ phy_qcom_mipi_csi2_gen2_config_lanes(struct mipi_csi2phy_device *csi2phy,
 		}
 		writel(val, csi2phy->base + r->reg_addr);
 		if (r->delay_us)
-			udelay(r->delay_us);
+			fsleep(r->delay_us);
 	}
 }
 

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
