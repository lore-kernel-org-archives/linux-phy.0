Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13E1FC43458
	for <linux-phy@archiver.kernel.org>; Sun, 12 Jul 2026 03:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IDL0DAHovUUvMXfEPe7WfxivCFYSBsrUk7QDuxfKeIQ=; b=WC3qQZx+hxH+I/
	ntTd65KESRAeZf5ouPnM0wxEMpN2ZRyXLB/ryc/Cf+yAk4E5t1a1ki+hR31naW9qthVwF1PVon40Z
	+xCj1nF3XPaZsX8YHB4I28x3Z1/7xpnAKpCkJQFFyfjEzwzwJ0bhPAXNkqlgiGNAHKFOQNUzxtECI
	efakTxH58pzmKEp85VYOv3W2/pjr0MR1v3SoS4REdD/ptCjwuYAsdTtmp94eJzMheF0xx7XdygdEZ
	sRon8TEGuzqAO8t2u6jO7ZyFKvk79xxhHmkz0Yxw/gnXp0TcaK3Dr9iYrln9Ve1dx2yUZ/96xa6fV
	z1i8huoVuJVrQD6RqhWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wikdC-000000074GF-30dL;
	Sun, 12 Jul 2026 03:13:26 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wikdB-000000074Fi-1ZKK
	for linux-phy@lists.infradead.org;
	Sun, 12 Jul 2026 03:13:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8E06560103;
	Sun, 12 Jul 2026 03:13:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 44D10C2BCC9;
	Sun, 12 Jul 2026 03:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783826004;
	bh=DKPMlvVzmwc1lG5celyEdrQ0cGNAS6Srx+f2rta+Lic=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=nYX0lFSd+ZhEPeU0iTdOcIJPFOwpwYcX9iaZMJSsydM56629yjn/I+bMiJVXZCTJh
	 Lk/u6F2Qu+cC1j+NUeR9/q3R67Do0E3FUBdP2u6QZ6iBZOvTXlOpRjWPzVduTcqPK3
	 XQQVJAdOpUL7CX+TQA7Hdnlo7Xgka1ufhc1NEZrowudhgT7TZ5wunabqS9X12bQG3m
	 Cd/ftCSB+VXOu2zRp1lCR0Hr0LPJyG5hlaRCFLOjocG8K3AEVQYvpJuqdkTATDZGoU
	 j8mhmH8c6BzGKWJviKQDMsZC1s3OdawSQa5aqop1O2XZ8Hmnyki+u0xyG0FC8/cuwu
	 sSMHkiPFKLTcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 337EFC44506;
	Sun, 12 Jul 2026 03:13:24 +0000 (UTC)
From: Esteban Urrutia via B4 Relay <devnull+esteuwu.proton.me@kernel.org>
Date: Sat, 11 Jul 2026 23:13:17 -0400
Subject: [PATCH v2 1/2] phy: qcom: qmp-combo: Correct pre-emphasis table
 for QMP v4 DP PHYs
MIME-Version: 1.0
Message-Id: <20260711-sm8450-qol-qmp-v2-1-d14353bd6ff4@proton.me>
References: <20260711-sm8450-qol-qmp-v2-0-d14353bd6ff4@proton.me>
In-Reply-To: <20260711-sm8450-qol-qmp-v2-0-d14353bd6ff4@proton.me>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, 
 Esteban Urrutia <esteuwu@proton.me>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783826003; l=858;
 i=esteuwu@proton.me; s=20260622; h=from:subject:message-id;
 bh=ttOwHTqD5JdqKOp7yycqD22zqZB91giULaJsKWEhUOg=;
 b=okopUU6ct22uAyQBjs0owdIiioEOIrEhqKrIr1KVHvVpz0useNbiGQNX9x27TuH89XfR2pG23
 7yPnCez5FIoC1ydOEbM1E4q+5j5y1JMdAdgi2kpqYLbN9h009Wa+rBM
X-Developer-Key: i=esteuwu@proton.me; a=ed25519;
 pk=wToFt4mOAWkzbqb15Ye1hrhevI13vK9BcMUFiQ/me1M=
X-Endpoint-Received: by B4 Relay for esteuwu@proton.me/20260622 with
 auth_id=835
X-Original-From: Esteban Urrutia <esteuwu@proton.me>
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
Reply-To: esteuwu@proton.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Esteban Urrutia <esteuwu@proton.me>

Comparing sm8350 and sm8450 tables, this seems to be a typo.

Fixes: ef14aff107bd ("phy: qcom: com-qmp-combo: add SM8350 & SM8450 support")
Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index cdcfad2e86b1..a72c3b9654ec 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2108,7 +2108,7 @@ static const u8 qmp_dp_v4_pre_emphasis_hbr3_hbr2[4][4] = {
 static const u8 qmp_dp_v4_pre_emphasis_hbr_rbr[4][4] = {
 	{ 0x00, 0x0d, 0x14, 0x1a },
 	{ 0x00, 0x0e, 0x15, 0xff },
-	{ 0x00, 0x0d, 0xff, 0xff },
+	{ 0x00, 0x0e, 0xff, 0xff },
 	{ 0x03, 0xff, 0xff, 0xff }
 };
 

-- 
2.55.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
