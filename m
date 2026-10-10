Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02E7CCA9EC0
	for <linux-phy@archiver.kernel.org>; Sat, 10 Oct 2026 09:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:Cc
	:To:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G5ljWLeeUEum1iwUaZhlFBqeGcemXEcPmS/Pr74R5pA=; b=PMYltfJjTK/jiG
	BhovOVef7dIDyRAedVIYiNw6XCC9GD/eBUu9H/vm9nbV6hMmyrPeeuXxVUWyEru18RTAnrTsnmSvF
	8N2WSJK+TKlKPwvCsR0+H+ujJdDlKTTIEO6sD8L52HW9JAPZGYaU5Sr0yW50B0FjF6GWMwXg44Ob4
	yfpomRGwW/glby1bFHUVwr7MtAldoW6lC2NcHplR/j8s+7FpGQoSrsliJKk7hnjgCyXe9KfHMY0wr
	A8LWyi8qc2SeXM2eq00t3cWaOSIRW+CkxZQWm3ThSkrJ8i4gfvj3iaHIa5eD/NlcT1CEjajB32X4E
	F4nqWjACyrKfLvI/bP7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFTIf-00000007k7s-1xm0;
	Sat, 10 Oct 2026 09:23:29 +0000
Received: from e234-55.smtp-out.ap-northeast-1.amazonses.com ([23.251.234.55])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFTIc-00000007k7P-49yL
	for linux-phy@lists.infradead.org;
	Sat, 10 Oct 2026 09:23:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple; s=resend;
	d=fqwqf.xyz; t=1791624200;
	h=In-Reply-To:References:From:To:Cc:Subject:Message-ID:Content-Transfer-Encoding:Date:MIME-Version:Content-Type;
	bh=delSSJoOAFqL+sKNM3FQb+5AQMHdDkVqX01un2hNa8g=;
	b=1FnM/bEJtzJVyqRS3XRX0ifd8/iAnJSVSCQzuKrLpP50oXOM39TDs61SXQ1wcArz
	l/vUg/LTuyxRf1KPt6jTpIi5gSBuuZa22zqvdFHNW5c9QshxguY8IfZjr9rxRlJiHEQ
	WiaiNJjQKGFjKnMUPGV5c/GU+b+ENb9BY5jWiS5s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=zh4gjftm6etwoq6afzugpky45synznly; d=amazonses.com; t=1791624200;
	h=In-Reply-To:References:From:To:Cc:Subject:Message-ID:Content-Transfer-Encoding:Date:MIME-Version:Content-Type:Feedback-ID;
	bh=delSSJoOAFqL+sKNM3FQb+5AQMHdDkVqX01un2hNa8g=;
	b=ko6mhqii+ZshFLCKilIR4Jh0hzjcGt6IKOVeQHKtmnzBlH2bybjYvNsmxS8GJvQG
	wQUklJ99Sst7AoWvdfdSjnInBT/y27E96pLni8rVfAijPaHJuzx0j99Y4AIk/dVB7n5
	IiQvJQjlirScbd+pyt45oCfDu/7DZ0MAGQrsvWok=
In-Reply-To: <20260917-x1e-csi2-phy-v18-2-6515b5255fa9@linaro.org>
References: <20260917-x1e-csi2-phy-v18-2-6515b5255fa9@linaro.org>
X-Mailer: git-send-email 2.53.0
From: fQwQf <fqwqf@fqwqf.xyz>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org
Subject: [RFC PATCH] phy: qcom-mipi-csi2: round the requested settle
 interval up
Message-ID: <010601a1251fbfb9-9afc4070-5194-4714-86b1-5358791e7770-000000@ap-northeast-1.amazonses.com>
Date: Sat, 10 Oct 2026 09:23:20 +0000
MIME-Version: 1.0
Feedback-ID: :1.ap-northeast-1.6BGMgStFQE7EJYq5syaCRzdneEHVt/+DAaGDrqUmDs9QLO4/SllUBZ3fHvnZ8rcAX/3IjUyTRgi5JFZsWrikFHwlPJqCkqEMlxDFM4JXh+ycxH/J5Tudg5bGdz6h4331g1L1EFsGR8kuYNfGLsrxz4Nym4YXoPcZxeVkrHry4Zx21n8vEVLEjc7s+OCM8PU9:1.ap-northeast-1.DTXDV/V9GPBWozcllKo8innbNB2qs2O/3F8XZSzd9ZM=:AmazonSES
X-SES-Outgoing: 2026.10.10-23.251.234.55
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_022327_194810_47436783 
X-CRM114-Status: UNSURE (   8.95  )
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

The settling counter represents the requested interval in timer ticks,
with the existing six-tick hardware offset. Truncating the division
programs fewer ticks than requested when the interval is not an exact
multiple of the timer period.

At a 402 MHz link frequency and a 100 MHz timer, the existing calculation
requests 92458 ps but programs nine ticks (90000 ps). Round up to ten
ticks instead. Preserve the existing minimum-counter handling and
hardware offset.

Signed-off-by: Jizhou Tong <fqwqf@fqwqf.xyz>
---
Incremental change against media-next at ee2e9bf41d3e, which includes
the v18 CSI2 PHY driver. The settle calculation still truncates.

Original series:
https://lore.kernel.org/all/20260917-x1e-csi2-phy-v18-2-6515b5255fa9@linaro.org/

An extracted-function test checks 7105 link/timer combinations. The
previous calculation violates the computed lower bound; rounding up
passes those cases. This validates the arithmetic, not the electrical
timing model.

I am sending this as an RFC to confirm that rounding up is appropriate
for the hardware counter and its existing six-tick offset. This change
has been used in my SL7 camera stack, but I have not isolated its effect
on capture reliability from the other camera changes.

 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index 966d79c98f..ce1de1a689 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -236,7 +236,8 @@ static u8 phy_qcom_mipi_csi2_settle_cnt_calc(s64 link_freq, u32 timer_clk_rate)
 	if ((t_hs_settle_ps / timer_period_ps) < 6)
 		return 0;
 
-	settle_cnt = t_hs_settle_ps / timer_period_ps - 6;
+	/* Do not round the requested settling interval down. */
+	settle_cnt = DIV_ROUND_UP(t_hs_settle_ps, timer_period_ps) - 6;
 
 	return settle_cnt;
 }
-- 
2.53.0

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
