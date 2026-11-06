Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDE2C606A334
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 15:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Ue21tx+k;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=pengutronix.de header.i=@pengutronix.de header.a=rsa-sha256 header.s=20260414 header.b=JbA+oDNX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=QI0BZoJgWZ6qk6i354KUZU9OSHVCuRm8Z6jYCNUHwac=; b=Ue21tx+kPfOBR4xl+ixxD9s7bT
	K2qX9YvS9UTvNPrWlvnbnerQ38ej/SoAO55nUp2FdFmauDNNCF87In92IlGOSVlRlk6Lm/nLcz0VF
	eXppw0FAhQ3F6Lbdim5jcza4zh1NVOG+3q8iEnhAaRrAtoD6zX7xXK/ttSyvMGA5VHmysRWcrjnQU
	HlR3Xhe+9NbdXPLlAjJbGiB8DKGpe6tA/ljgMLGvWlpuNYlNde5ma0bMtKFXObxxIC1Fc8UhtDB2W
	Y9oTOiogDqgh+1mLbMgZcSfuzHXQpZQGXNwCtXArqPxmyTzYHtV+lA8OEi1E86VwAZZeoQrdInLJN
	YLUgOYSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPLRT-0000000ClmG-2pYn;
	Fri, 06 Nov 2026 15:01:23 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPLRO-0000000Clic-0Cbq
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 15:01:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5B41620039C;
	Fri, 06 Nov 2026 16:01:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793977274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=QOSfFfKgNyCA0ifvnyaw2Um6hrt2CJRTPoz0Nc739L8=;
	b=JbA+oDNXY+91mVKd4rXWmemuFqDclVIiquUfR5r8ffZEmkA7+G/VyGCnCQiZdsX5qVvRcJ
	ByfYpgV379zWZf+LY6GqDL31ymwKBpN49LGwz7w8piV23gy920jB767dxwcyhV0IKAcMt4
	434RXKchnuU+CMamffvqu+8OMJTK3ZuHnW2m3rD5aNJgpEToC02JToD4ws00Xw+EB+TuFH
	dlED4IZxR5Vhd908PoFSfxplsREFGnmhQdrLkmjG9isuPOg5oF1YIXmAPynwKrhaQWHIuf
	xLbsyBvHLofs1qDxFU0YJLrouYyLmVN/ly1gBF3Ef4uHrg9kpKKx3R9Mf+sbnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793977274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=QOSfFfKgNyCA0ifvnyaw2Um6hrt2CJRTPoz0Nc739L8=;
	b=bwDlA+Nt9LlHaKa/RfsRL0lTrx44xb0y8iLCX/8t5vlKNU9JNZYJmfMFdmtREFNJbWBYop
	7E4+JpzfskpT1uQpwffTL7Mk6Q/RDoBGz/329Qe5P/WaMvW8PmME+Ch8T6u3UAYSBzsoN3
	rEac3TWASq+sXbmCtG9qfBUHtiLLhL/Hfx/0+q6tdyF8VoQ88epLb4xEPMeY9HOe0tgkIE
	RW0xhRoIZ5izMgzj1k/B5Kxdu3wLXnZZ2zzw5gKhAOnVF3xTLrXX/ITvGw4COQa7bT31ZV
	b0xdi1D5TPuMeOjIeg0xNYMsSnl14OYtpFSZaBw8LZBO5mVnSJLKnAvNhX/GLA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=p.zabel@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793977274; a=rsa-sha256;
	cv=none;
	b=GWKT9WNaVL6vIsWby1CeXKRmowmxcR5W2F7w4cA5Pgf/Q1epPw9feqVreFxco/O5aKCJiY
	EpanfILXEGPePIPl8a2PDocixHtiKS64K7QxbV63bvIMM0rWlTa7AjwaQp37V4QPTe+f3a
	dBOE2pqHNq68/4TaterwKH4ZGhUEYFeXDAaT79387i2Z5tFlNRICZds8FVTSj6mxCdqD+J
	OfGagpLSphur8mbi1IfFAjJmRXcXONAGHWmtTyezYXVts6nrrVM3UcjpQX9IAX/sA/t0TI
	ruQAotouwUBTCvg2BJKCFtCTrYKerRGqHSodikr8XCHTUSR2X1o5sQegTBchCw==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1xPLRK-002v0X-0n;
	Fri, 06 Nov 2026 16:01:14 +0100
From: Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 0/4] phy: Do not request resets by index
Date: Fri, 06 Nov 2026 16:01:08 +0100
Message-Id: <20261106-reset-deindex-phy-v1-0-6a9c9f428be8@pengutronix.de>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALTr7WoC/yXMQQ6CMBBG4auQWTtJC6FErkJcSPsXxkUlHTQYw
 t2puvwW7+2kyAKlvtop4y0qz1RgLxX5+Z4msIRiqk3trDWOMxQrB0gK2HiZP9yaJvpmjLi6jkq
 3ZETZfs/h9re+xgf8+h3RcZzkvhdEdQAAAA==
X-Change-ID: 20261106-reset-deindex-phy-503fc3bfe967
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_070118_249592_768A6E10 
X-CRM114-Status: UNSURE (   6.21  )
X-CRM114-Notice: Please train this message.
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

There is no need to request a single reset (or even the first
of multiple resets) by index.

Replace usage of devm/of_reset_control_get(_exclusive)_by_index()
with devm/of_reset_control_get_exclusive() so the _by_index() API,
which is only ever called with index == 0, can be phased out.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
Philipp Zabel (4):
      phy: qcom-qusb2: Do not request reset by index
      phy: cadence-torrent: Do not request reset by index
      phy: qcom-qmp-pcie-msm8996: Do not request reset by index
      phy: qualcomm: qcom-m31: Do not request reset by index

 drivers/phy/cadence/phy-cadence-torrent.c        | 2 +-
 drivers/phy/qualcomm/phy-qcom-m31.c              | 2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 2 +-
 drivers/phy/qualcomm/phy-qcom-qusb2.c            | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)
---
base-commit: 6628e7d4c6b25c8d18f1345e3a20d21829aae7e4
change-id: 20261106-reset-deindex-phy-503fc3bfe967

Best regards,
--  
Philipp Zabel <p.zabel@pengutronix.de>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
