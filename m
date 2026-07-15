Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41790C4450B
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 07:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2IClbPtCdg8nqtf1nVBaN8oI2PQq1H/Dy67w0t/ksRA=; b=GOfm92wHmsFc3W
	K6pDSkrAFjxlMVzpIuCYolL1RdUE+QXUID7We7mWC/8gnVPA9ACcsv9A/V+Iu7KAoO3vvkV/5KQRC
	+o/XykRfyTx64H6TPBysjOOiEu/RReJn/GauFqC9V4Ns5Bd493mLUBHSNIoMG/ZibGBGVR91eMEGS
	+MnO25ewIHWvTbYC7WPJ8dQp80fXy+afJNoUPxWjIDCL5TOlxU5GSDR37KXj1bggpBKmezlseffUw
	ugkiLcOBW3QGEXoD+g0hyy6upoK7uqzbuUCKLb0F1qqb3pfc3ayIDzOhsWXmcYxrDD4W5KFGnGcLg
	AiqhZv31LMGSB93bGwNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjtiP-0000000DyLz-38eh;
	Wed, 15 Jul 2026 07:07:33 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjtiO-0000000DyKt-1jwQ
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 07:07:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2796641413;
	Wed, 15 Jul 2026 07:07:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0744EC2BCB9;
	Wed, 15 Jul 2026 07:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784099252;
	bh=t27yyUkbtJ63OblVXNLeuoM4AskzDQ+ORg37wek6PuI=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=D5RuqhSLkZoVwuCln1qvC4lIQwE3yE2a5jKf2NWTItHuBD68nACDmRXND/rnNiGjG
	 0tqcOIAXFCx6nwEoS/uHciOKvRBjkHqzJGhhe/DZbYO9WOQl8kSe3Rks4bYofely+o
	 lWh3IpY7pf6fyc5GwtbPHn88Boxn2dP7BhhqpEhm1Gz3HSayc01FcZ/qJuPameScOS
	 0wCSrcxMRzzB9R/erbjVK3nbPsaX87Bbnrxq8hgyu8exDWyOuUePjZIl2/15LYYgaL
	 sTgNu5O8+6EVccnL6VSOmQopoSh7nEWv0yZAiJcT4aHpkBcm3zx89aWSERWBRE4aeR
	 PM7xoH2akDHAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F44C4450B;
	Wed, 15 Jul 2026 07:07:31 +0000 (UTC)
From: Esteban Urrutia via B4 Relay <devnull+esteuwu.proton.me@kernel.org>
Subject: [PATCH v2 0/3] Initial QMP USB PHY support for SM8475
Date: Wed, 15 Jul 2026 03:06:53 -0400
Message-Id: <20260715-sm8475-bup-usbss-v2-0-2d8def39b190@proton.me>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/22OwQ6CMBBEf4Xs2TW0VIqe/A/DweIiNZFityUaw
 r9bwKPHl8y8mQmYvCWGUzaBp9GydX0Cucug6a79ndDeEoPMZZlroZCfldIHNHHAyIYZqawKdVS
 6aEuCVBs8tfa9Ki/1xhzNg5qweJZEZzk4/1k3R7Hk/upHgTkaWWlhSBpFzXnwLrh+/ySo583s6
 RXT5/Cbm+cvKsStF9EAAAA=
X-Change-ID: 20260714-sm8475-bup-usbss-e68349473f6e
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org, Esteban Urrutia <esteuwu@proton.me>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784099250; l=1426;
 i=esteuwu@proton.me; s=20260622; h=from:subject:message-id;
 bh=t27yyUkbtJ63OblVXNLeuoM4AskzDQ+ORg37wek6PuI=;
 b=uPsi2rUF9M6thEvBqtonyXw0DDhZ28DRs8306mJSSJr6aU7F+JMjb6FUMycE6xaK/Hh8it/ja
 66CgB/sqH9QD/64RCz05pjGvrNtrUnMJcF89KalVmF0uJ3Aun3u4LJ5
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

Based on the following patch:
[1] https://lore.kernel.org/all/20260711-sm8450-qol-qmp-v2-2-d14353bd6ff4@proton.me/

This series adds support for the QMP USB PHY found in the SM8475 SoC.
The initialization sequence varies noticeably when compared to the one used
in the SM8450 SoC, hence the need to add support for this PHY.

Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
---
Changes in v2:
- Split series in subseries (pcie, usbss)
  - Sorry, it should have been like this from the start!
- Add notice about base commit
  - Reason why calibrate_dp_phy is not present
- Modify referenced swing and pre-emphasis tables
- Move v1 PLL tables to SM8475 support patch
  - Warnings are generated at build time otherwise
- Link to v1: https://patch.msgid.link/20260714-sm8475-bup-v1-0-b2871be2b4ec@proton.me

---
Esteban Urrutia (3):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add SM8475 QMP PHY
      phy: qcom: qmp-combo: Specify PLL version in qmp_v6_dp_serdes_tbl structs
      phy: qcom: qmp-combo: Add SM8475 support

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 259 +++++++++++++++++----
 2 files changed, 215 insertions(+), 45 deletions(-)
---
base-commit: 43d250aa1ba24a4124162b7310a7010ff6a141be
change-id: 20260714-sm8475-bup-usbss-e68349473f6e

Best regards,
--  
Esteban Urrutia <esteuwu@proton.me>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
