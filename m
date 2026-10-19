Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227CC606AF86
	for <linux-phy@archiver.kernel.org>; Mon, 19 Oct 2026 15:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QoThDefZ;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=fqwqf.xyz header.i=@fqwqf.xyz header.a=rsa-sha256 header.s=resend header.b=Il467r68;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=amazonses.com header.i=@amazonses.com header.a=rsa-sha256 header.s=zh4gjftm6etwoq6afzugpky45synznly header.b=GgWoqVAS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:Cc
	:To:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iXq4MtVpdFzIAi+ZtQHYKJCV2rsig3MM+H8MMDmdk3Y=; b=QoThDefZmcB8CV
	mAPI2cS19qImTihY+DAnIjoSs45Mt2Vx0t8bJ2gknv5fA299g+B21lOxz/2PVWadjy7fcSHILIpRT
	qmOBMLwCvuxyJzIOoNJv85M1XIE/FuS3vk/0PBGtGTtaijGQWl+TY45N/+cJnPsQ8YSg68myL5vsU
	LvXXzMqwQ0MmayHJGDTHdRRxrlqgwK+eeybNyeXe/NnsCx1hl8rNpXupiswYn5MfWvJT9ueQM2xb3
	/sG+tmB8bgwFLd7spQg54G3hU5FjAcWDlAyyp0C9CeMBedMpv6FJC39jz21D4QYMfFVV26HVznwy8
	cIhjYxtV6BjvrsS+ejLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIpZv-00000007sbz-3Vr0;
	Mon, 19 Oct 2026 15:47:11 +0000
Received: from e234-61.smtp-out.ap-northeast-1.amazonses.com ([23.251.234.61])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIpZr-00000007sY2-3han
	for linux-phy@lists.infradead.org;
	Mon, 19 Oct 2026 15:47:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple; s=resend;
	d=fqwqf.xyz; t=1792424823;
	h=In-Reply-To:References:From:To:Cc:Subject:Message-ID:Content-Transfer-Encoding:Date:MIME-Version:Content-Type;
	bh=wJNmKU58xAgxoa/KviAfa8I8qVK1OsW4hKhPWbnbLQM=;
	b=Il467r68EiJHGU9WPfNvfBuBCA9aLKRjmVqEi2GhxYIPEYGa2qeoFGdLDIROxk+y
	xakL/L9zy2UVshbyCpkWMiwChFiBHByV1OorfXgfjvJh4zk3F1jaj6Bz1MrgfCZWRYc
	uYo1YPOf+qpgAQ9EEK5U699+aVBR04jMqnLFa7xM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=zh4gjftm6etwoq6afzugpky45synznly; d=amazonses.com; t=1792424823;
	h=In-Reply-To:References:From:To:Cc:Subject:Message-ID:Content-Transfer-Encoding:Date:MIME-Version:Content-Type:Feedback-ID;
	bh=wJNmKU58xAgxoa/KviAfa8I8qVK1OsW4hKhPWbnbLQM=;
	b=GgWoqVASP7/bjigY9NQpgESIigjcuKdIe0qMz7E48VgHxtAocHf2i0utsR1pAFlp
	a/NTylg/YDMR70In5GUMEccaePzL8nuc9MJoSui2TrRy62q7WXx+Csxh/dRVtCEgQ3/
	rwPlp4lESWlx4iG8AMoVLKzt86YaGFyuu1EzRazc=
In-Reply-To: <010601a1332f343c-b1381230-9344-4bef-a709-99e07b18d513-000000@ap-northeast-1.amazonses.com>
References: <010601a1332f343c-b1381230-9344-4bef-a709-99e07b18d513-000000@ap-northeast-1.amazonses.com>
X-Mailer: git-send-email 2.53.0
From: Jizhou Tong <fqwqf@fqwqf.xyz>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org, 
	sashiko-reviews@lists.linux.dev
Subject: [RFC PATCH v3] phy: qcom-mipi-csi2: round the requested settle
 interval up
Message-ID: <010601a154d848df-37257f7a-0553-43ed-93c2-4fcc5b690d14-000000@ap-northeast-1.amazonses.com>
Date: Mon, 19 Oct 2026 15:47:03 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Feedback-ID: :1.ap-northeast-1.6BGMgStFQE7EJYq5syaCRzdneEHVt/+DAaGDrqUmDs9QLO4/SllUBZ3fHvnZ8rcAX/3IjUyTRgi5JFZsWrikFHwlPJqCkqEMlxDFM4JXh+ycxH/J5Tudg5bGdz6h4331g1L1EFsGR8kuYNfGLsrxz4Nym4YXoPcZxeVkrHry4Zx21n8vEVLEjc7s+OCM8PU9:1.ap-northeast-1.DTXDV/V9GPBWozcllKo8innbNB2qs2O/3F8XZSzd9ZM=:AmazonSES
X-SES-Outgoing: 2026.10.19-23.251.234.61
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_084708_036253_94676CAE 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.5 (/)
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
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
	HEADER_FROM_DIFFERENT_DOMAINS,HK_RANDOM_FROM,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_ZEN_BLOCKED_OPENDNS,SPF_HELO_NONE,SPF_PASS,T_PDS_OTHER_BAD_TLD,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The settling counter represents the requested interval in timer ticks,
with the existing six-tick hardware offset. Truncating the division
programs fewer ticks than requested when the interval is not an exact
multiple of the timer period.

Rounding the final division alone is insufficient: the earlier unit
interval calculation already rounds down before multiplying by six.
At a 599.9 MHz link frequency and a 100 MHz timer, the exact requested
interval is approximately 90000.833 ps. The truncated unit interval
produces 89998 ps, so even a rounded-up final division programs nine
ticks (90000 ps) instead of the required ten.

Compute the complete six-unit-interval term as 3 / link_freq and round
it up to picoseconds with a 64-bit divisor. Then round up the conversion
to timer ticks. Retain the timer-period calculation, minimum counter
handling and six-tick hardware offset.

Link: https://lore.kernel.org/all/sashiko-outbox-166399@kernel.org/
Signed-off-by: Jizhou Tong <fqwqf@fqwqf.xyz>
---
Changes in v3:
- Base directly on media-next d7e7bca71698, which contains the PHY
  driver, and remove the old prerequisite patch IDs.
- No source changes from v2.

The v2 CI report lists only the two prerequisite patches and names the
PHY driver addition as its branch head. This revision supplies just the
rounding fix on media-next, without asking b4 to reconstruct that series.

v2:
https://lore.kernel.org/all/010601a1332f343c-b1381230-9344-4bef-a709-99e07b18d513-000000@ap-northeast-1.amazonses.com/
CI report:
https://linux-media.pages.freedesktop.org/-/users/patchwork/-/jobs/112510220/artifacts/report.htm

Validation: ARM64 W=1 driver-object build on the stated base, and
128482 ASan/UBSan cases using the actual helper against independent
rational bounds. The baseline fails the rounding tests. The source
file after applying this patch is byte-identical to v2.

The timer-period convention and zero-count rejection are unchanged.
Zero is also rejected by the base driver; whether hardware permits it
is a separate question for the PHY maintainer. This remains an RFC for
the rounding policy and six-tick offset. No new hardware test is claimed.

 .../phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c    | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index 966d79c98f9b21e1a235b8397c4c84b25d869427..f07699ba1fde63536b4d63cc4008ff936f78cc7d 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -9,6 +9,7 @@
 #include <linux/delay.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
+#include <linux/math64.h>
 #include <linux/time64.h>
 
 #include "phy-qcom-mipi-csi2.h"
@@ -220,23 +221,19 @@ static void phy_qcom_mipi_csi2_reset(struct mipi_csi2phy_device *csi2phy)
  */
 static u8 phy_qcom_mipi_csi2_settle_cnt_calc(s64 link_freq, u32 timer_clk_rate)
 {
-	u32 t_hs_prepare_max_ps;
 	u32 timer_period_ps;
-	u32 t_hs_settle_ps;
+	u64 t_hs_settle_ps;
 	u8 settle_cnt;
-	u32 ui_ps;
 
-	ui_ps = div64_u64(PSEC_PER_SEC, link_freq);
-	ui_ps /= 2;
-	t_hs_prepare_max_ps = 85000 + 6 * ui_ps;
-	t_hs_settle_ps = t_hs_prepare_max_ps;
+	/* Round the complete 6 * UI term up, avoiding an intermediate truncation. */
+	t_hs_settle_ps = 85000 + DIV64_U64_ROUND_UP(3 * PSEC_PER_SEC, link_freq);
 
 	timer_period_ps = div_u64(PSEC_PER_SEC, timer_clk_rate);
 
-	if ((t_hs_settle_ps / timer_period_ps) < 6)
+	if (div_u64(t_hs_settle_ps, timer_period_ps) < 6)
 		return 0;
 
-	settle_cnt = t_hs_settle_ps / timer_period_ps - 6;
+	settle_cnt = DIV_U64_ROUND_UP(t_hs_settle_ps, timer_period_ps) - 6;
 
 	return settle_cnt;
 }

base-commit: d7e7bca7169873b46e857c025c10f3336c1258d8
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
