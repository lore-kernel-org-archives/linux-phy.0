Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16AC9C44501
	for <linux-phy@archiver.kernel.org>; Sun, 12 Jul 2026 03:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u6n57cOz7JsGjbiF+jpXp66YpEILAYfiOBqrOgKwlNI=; b=j+fCLLQ/jXJjqT
	/V7ZY42IO3nqRinq5yfSSJhBMUDC1lzDZpK0VdSDE7KfBex86WZ9Ai722T6Kofe9GhKBDgEr45aAU
	RJielJazh+mijCVY9z/kZ7aqCzFOojWRJB9zR1sv4JvpsBiAaoMuwW9n6hDn8TaXqCkdyTYIcrLJO
	BI4Mmag9JB2Ym1/WI3DM0i+4tMoPM7LSTUA/EmZEi5KMMgbXBLCL8Pd31lYVT6RJF7FKm6It8IQlH
	KYx0vwtvNPyUe+E2n5VbmR+FVSs59haJBJdWptriLWFwa3l4IBBnG/ULyVuh0lV04lIN7KpAv40zm
	gL0VCiSaqoQSr/3rMjyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wikdC-000000074G3-2UCN;
	Sun, 12 Jul 2026 03:13:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wikdB-000000074Fj-0nYc
	for linux-phy@lists.infradead.org;
	Sun, 12 Jul 2026 03:13:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 546A243A18;
	Sun, 12 Jul 2026 03:13:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 35BF3C2BCF4;
	Sun, 12 Jul 2026 03:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783826004;
	bh=CnxT7IX+/QaPvXduAC/yoSfn8VJxlMb0Yx8cduWN740=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=uESS+pR3GAV8aR9X8DeB8g6ApxXOKaOt+6RUs4KP7g67pBbdNyN9MvyTD3A6+Z4r1
	 sKRF9irMt2IAYJ6xBaXa+mQC3ThIqJ+2/WWTlSZdgo7psgkFtYqZOysU0Gz+5WjYXY
	 +9qITov1Edz+LwPQpDxVxuTlN7x/Yw8e5JmuYDPzJuH3ndPyYY0p6RTBphBMqJrxTV
	 n5hsAplLWDvcWJLKOA078DHVmkuAK0fPmmpipqYKkZd6vW0UIFuOAr4r2mV+QjZPnm
	 zVkexYLsIbMbMTi/FnC/5PSmXp37QJhpqpjbGvXs+STMK4mOJoYG+Jf6z+tNPCr+vA
	 ldWrGNA2eh+vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25522C44501;
	Sun, 12 Jul 2026 03:13:24 +0000 (UTC)
From: Esteban Urrutia via B4 Relay <devnull+esteuwu.proton.me@kernel.org>
Subject: [PATCH v2 0/2] SM8450 QoL changes (qmp)
Date: Sat, 11 Jul 2026 23:13:16 -0400
Message-Id: <20260711-sm8450-qol-qmp-v2-0-d14353bd6ff4@proton.me>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/02Nyw6CMBBFf4XM2jHtIC9X/odhwWOQGmmhxUZD+
 HcLbFye5NxzF3BsFTu4RgtY9sopowPQKYKmr/SDUbWBgQSlIpMS3ZBfEoGTeeE0jJjEXc1NURf
 EOYTRaLlTnz14Lw927/rJzbxVNqNXbjb2uz96uXlHPCX6j3uJAuOMiTlvu6KtbqM1s9HngaFc1
 /UH0Nswv7oAAAA=
X-Change-ID: 20260711-sm8450-qol-qmp-53fbec9b92e8
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, 
 Esteban Urrutia <esteuwu@proton.me>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783826002; l=809;
 i=esteuwu@proton.me; s=20260622; h=from:subject:message-id;
 bh=CnxT7IX+/QaPvXduAC/yoSfn8VJxlMb0Yx8cduWN740=;
 b=gFTD4IDaLgOS67N2qExQKGIXVwukbZhnviwPA81Xq+PlqE6e/hDwEJe1mLhb86Q01IOMncjPs
 d1IwSV9+EDhCVQ3SFjV4VqECrN9/UQcG/2z8ICawtQtRwsKnR79v1f9
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

These two patches drop qmp_v4_calibrate_dp_phy() and modify a pre-emphasis
table for v4 DP PHYs to match downstream behavior.

Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
---
Changes in v2:
- Split series in subseries (dispcc, dts, qmp, smmu)
- Link to v1: https://patch.msgid.link/20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me

---
Esteban Urrutia (2):
      phy: qcom: qmp-combo: Correct pre-emphasis table for QMP v4 DP PHYs
      phy: qcom: qmp-combo: Drop qmp_v4_calibrate_dp_phy

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 33 +------------------------------
 1 file changed, 1 insertion(+), 32 deletions(-)
---
base-commit: 96615101b3caf73612f80a217abb9a0da0effbc7
change-id: 20260711-sm8450-qol-qmp-53fbec9b92e8

Best regards,
--  
Esteban Urrutia <esteuwu@proton.me>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
