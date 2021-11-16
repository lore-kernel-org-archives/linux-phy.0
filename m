Return-Path: <SRS0=azk1=QD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0656C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:40:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9E00E61C15
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:40:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9E00E61C15
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTyFiT6PG5ga9vyjvGreNe1Wc1hjEuGiqKaT+rQQdVQ=; b=vMMezzrkeEMjvO
	97TEJ8EdSem3x2A5JivAZYtZpo5fGnrnd5U5OPAgRuewJnbHy8HHC5evqb61XVQ2MmSx/M72Oy5Eu
	isX3iuoufpdssrUEQgYr5PNzjStqJAZY7cJuHHQNv3dlgyPuZ3DNd+Z+L1urx+zMhrOtBT9XeCeQb
	XZP4s3DPIcCh40uuL4HBi6xYd0skhEkQEQENXT6SvuSw+0G1yixcHTfHRsMFPdd6nfacHSP3Ws0wP
	wenBnhnISHGy67bBeUb2ULH2fXf1dALw1mAI7xO38QJpuIRF7TZkEb56zu5ok6sYrqkTNu298y35M
	niRdgPuLsNjJOpAJv69g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmvtG-001F8v-MB; Tue, 16 Nov 2021 10:40:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmvsj-001F0d-8o
 for linux-phy@lists.infradead.org; Tue, 16 Nov 2021 10:40:06 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6B1B36321B;
 Tue, 16 Nov 2021 10:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637059204;
 bh=LKtUNo+Ptcd/YQ16xYGBnhORd2bTIpSekrD4tpIsZdQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UzwjbUFweX+788xhBrvLd9Xh/zFX58bQe92APMBTm8LEnJT7XzdLDoLnFFlZmsgzm
 M3x1dyTkT/VxEI5/6yQSp7RZxMnMtecpmx1mpVza27Ap8LVDGMmALiMjIHRxXIocRS
 1sJgNAhUWMXmsaCsuKM5jLwn42e+UC0NnMKm7uW9F/q4YupjqZQCnvd89n6G3siOzu
 TRVyabPV5eBsYy8hEDW2T5ne3874s7tCYTJvkuIB/ulMyQqzreRCFuVSC+BXhq3PBM
 x2C/sOG/yvEyuViQwivz+llKeWUCemC1xqqCIXZ9X3AUlqd3ag7XKHxeDy+K7HGSoZ
 uJR1bBbrukSlA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/6] phy: qualcomm: qmp: Add missing struct documentation
Date: Tue, 16 Nov 2021 16:09:48 +0530
Message-Id: <20211116103951.34482-3-vkoul@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211116103951.34482-1-vkoul@kernel.org>
References: <20211116103951.34482-1-vkoul@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_024005_369331_0A930F52 
X-CRM114-Status: UNSURE (   6.79  )
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

dp-* members were added to qmp_phy_combo_cfg but documentation was
missed, so add that.

drivers/phy/qualcomm/phy-qcom-qmp.c:2995: warning: Function parameter or member 'dp_aux_cfg' not described in 'qmp_phy'
drivers/phy/qualcomm/phy-qcom-qmp.c:2995: warning: Function parameter or member 'dp_opts' not described in 'qmp_phy'
drivers/phy/qualcomm/phy-qcom-qmp.c:2995: warning: Function parameter or member 'dp_clks' not described in 'qmp_phy'

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index 456a59d8c7d0..c96639d5f581 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -2973,6 +2973,9 @@ struct qmp_phy_combo_cfg {
  * @qmp: QMP phy to which this lane belongs
  * @lane_rst: lane's reset controller
  * @mode: current PHY mode
+ * @dp_aux_cfg: Display port aux config
+ * @dp_opts: Display port optional config
+ * @dp_clks: Display port clocks
  */
 struct qmp_phy {
 	struct phy *phy;
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
