Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43517606A330
	for <linux-phy@archiver.kernel.org>; Thu,  5 Nov 2026 19:19:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xxwYhQxW;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=fqwqf.xyz header.i=@fqwqf.xyz header.a=rsa-sha256 header.s=resend header.b=SKcdGcue;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=amazonses.com header.i=@amazonses.com header.a=rsa-sha256 header.s=zh4gjftm6etwoq6afzugpky45synznly header.b=Sp4/guqN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:Cc
	:To:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=wshFaF44nnWnEV0IaWUi/qJpwMpp/LPAwVuYsaptTwo=; b=xxwYhQxWLlXRPXB9/WVeXc0UnT
	H1Xah6gX7lBqWmmvOT31dIYb6BfgpitroKOh02yvI19gbZ7qVOyBDSvUQJ/qxZTf69JYJiArlGraM
	WX75vVnLTeNpELZV9g+tiFEVmhBpWXC+VkQV+Dt5rNPF8RsyReXa6uNzKfsIr51k6Xx/aXMrpSq/S
	k6Z3Tu/4Gh/mNm1HxybOmr8naFmewKiiYAKmfxjtr3B/HERTAN9I08Nckc02fFmXMu7QLmE2lOIXP
	2UbeoZecWCd/rijlqI7pQMqiea3tZIrNkKjNN43kHHFvxG4raiqu/ACujDhQgmL9cB33Oq1+y6fZG
	eSerZpBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP2zX-0000000AJD4-48UW;
	Thu, 05 Nov 2026 19:19:20 +0000
Received: from e234-53.smtp-out.ap-northeast-1.amazonses.com ([23.251.234.53])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP2zR-0000000AJAB-0Jz1
	for linux-phy@lists.infradead.org;
	Thu, 05 Nov 2026 19:19:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple; s=resend;
	d=fqwqf.xyz; t=1793906349;
	h=In-Reply-To:References:From:To:Cc:Subject:Message-ID:Content-Transfer-Encoding:Date:MIME-Version:Content-Type;
	bh=3a2TKKu6c488cLrk+vcl0HofWRPkemnN04CQHxiDno0=;
	b=SKcdGcuepwvngqsgSoaGpbShB52xUs5KCnngDi3HlsTevSrUzttAkSwwzxAIn7vC
	knUzOSPTtJ7ctlYUd1HjuOKTLwkbgOWS3iiGoRYUoZO2+LN7B4UXF7sHi037JbgiorU
	iSyLwgG/bcZ76lfKZln5vDReHqw9mKPuBTzKjjI4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=zh4gjftm6etwoq6afzugpky45synznly; d=amazonses.com; t=1793906349;
	h=In-Reply-To:References:From:To:Cc:Subject:Message-ID:Content-Transfer-Encoding:Date:MIME-Version:Content-Type:Feedback-ID;
	bh=3a2TKKu6c488cLrk+vcl0HofWRPkemnN04CQHxiDno0=;
	b=Sp4/guqNOezlkOeBBq+FekxGvteZOXi3rbxsYxhhUzY+6zSedYeFdRCjV/e5WFma
	+itVfomaxqBteLNIfh0vWhnkPwpnkvWL4yAmcQU1rifO7xv50udrwBYbM8oM8dBamEN
	yxQdi9YNhWgJ6SPlnt+fjH6XRe7ski2457TXwKrc=
In-Reply-To: <791c7eed-f0c2-47c3-9595-77be72f29771@kernel.org>
References: <791c7eed-f0c2-47c3-9595-77be72f29771@kernel.org>
X-Mailer: git-send-email 2.53.0
From: Jizhou Tong <fqwqf@fqwqf.xyz>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org
Subject: [RFC PATCH] phy: qcom-mipi-csi2: clamp the programmed settle count
 to six
Message-ID: <010601a1ad2694f9-a9be628a-40db-4074-b0bd-1fce00cdb65f-000000@ap-northeast-1.amazonses.com>
Date: Thu, 5 Nov 2026 19:19:09 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Feedback-ID: :1.ap-northeast-1.6BGMgStFQE7EJYq5syaCRzdneEHVt/+DAaGDrqUmDs9QLO4/SllUBZ3fHvnZ8rcAX/3IjUyTRgi5JFZsWrikFHwlPJqCkqEMlxDFM4JXh+ycxH/J5Tudg5bGdz6h4331g1L1EFsGR8kuYNfGLsrxz4Nym4YXoPcZxeVkrHry4Zx21n8vEVLEjc7s+OCM8PU9:1.ap-northeast-1.DTXDV/V9GPBWozcllKo8innbNB2qs2O/3F8XZSzd9ZM=:AmazonSES
X-SES-Outgoing: 2026.11.05-23.251.234.53
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_111913_257639_E29D16D1 
X-CRM114-Status: GOOD (  11.23  )
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
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
	HEADER_FROM_DIFFERENT_DOMAINS,HK_RANDOM_FROM,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	T_PDS_OTHER_BAD_TLD,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The settle helper returns zero for intervals no greater than the
six-tick hardware offset. lanes_enable() then rejects the configuration.
For slightly larger intervals it can program a count between one and
five. Bryan requested a minimum programmed count of six instead of
rejecting the zero-count case.

Keep the six-tick offset separate from that minimum: first calculate the
rounded interval in ticks, then return six when subtracting the offset
would yield less than six. Check before subtracting to avoid underflow
for intervals shorter than the offset.

Link: https://lore.kernel.org/all/791c7eed-f0c2-47c3-9595-77be72f29771@kernel.org/
Signed-off-by: Jizhou Tong <fqwqf@fqwqf.xyz>
---
Hi Bryan,

This implements the minimum you described in the October 19 reply,
separately from the rounding patch. I have interpreted six as the minimum
programmed register value, after subtracting the existing six-tick offset.
Please confirm that this is the intended hardware policy.

For example, the rounded interval of six ticks at link_freq=600000000 Hz
and timer_clk_rate=66666666 Hz previously returned zero and failed lane
enable. It now programs six. Intervals of twelve ticks also program six;
thirteen ticks program seven. The offset itself is unchanged.

This is based on the accepted rounding RFC v3 [1]. The ARM64 W=1 object
build and 20,571 ASan/UBSan actual-helper cases pass. The previous helper
fails the minimum-count checks. No hardware test of the new floor is
claimed, and it is not installed in my running kernel.

[1] https://lore.kernel.org/all/010601a154d848df-37257f7a-0553-43ed-93c2-4fcc5b690d14-000000@ap-northeast-1.amazonses.com/

base-commit: d7e7bca7169873b46e857c025c10f3336c1258d8
prerequisite-patch-id: 1f072b82125ac6272dc2a011688afc6cabb0f99c

 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index f07699ba1f..dd70f29669 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -223,19 +223,20 @@ static u8 phy_qcom_mipi_csi2_settle_cnt_calc(s64 link_freq, u32 timer_clk_rate)
 {
 	u32 timer_period_ps;
 	u64 t_hs_settle_ps;
-	u8 settle_cnt;
+	u64 settle_ticks;
 
 	/* Round the complete 6 * UI term up, avoiding an intermediate truncation. */
 	t_hs_settle_ps = 85000 + DIV64_U64_ROUND_UP(3 * PSEC_PER_SEC, link_freq);
 
 	timer_period_ps = div_u64(PSEC_PER_SEC, timer_clk_rate);
 
-	if (div_u64(t_hs_settle_ps, timer_period_ps) < 6)
-		return 0;
+	settle_ticks = DIV_U64_ROUND_UP(t_hs_settle_ps, timer_period_ps);
 
-	settle_cnt = DIV_U64_ROUND_UP(t_hs_settle_ps, timer_period_ps) - 6;
+	/* The programmed counter has a minimum of six, in addition to its offset. */
+	if (settle_ticks < 12)
+		return 6;
 
-	return settle_cnt;
+	return settle_ticks - 6;
 }
 
 static void
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
