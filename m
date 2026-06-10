Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A15D3CD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 12:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMvuJgX4ckStiaqobK5c3yMeapP4JU4sOh2cg52l3To=; b=Nz4xBF2ZsrsIjU
	LkjqoM3U8PCE5VqeWUPxG79xm6Ko+pxdkriF2y6kG2NYT93jSU9fw8DGrXcZGicqq9LuFmzqGLHhl
	GEMCzjm0YEjfk/w3DIAp9AhhtF7c9/Nlog40KxT/eNFE6wkA0+0U8y1AOF/AkO/dOx3qC3vwipN2x
	zRh8gQsGtYD7K56jeEsJcOoTeeosmjRriVgWMWNFCaUWU8X+zXp8vbO9ZGyleXCvo8VwFzaf2euM0
	ptK5/Le495GvFvCWOg7pfrTHaZhLizJYxv6VBsuE1Y2EaapRLwtfII7FyaNVDj3UNPCbRJdrKbRmD
	9smHNIFzmQGgyrmdZrGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXHfl-00000007c9v-1jNW;
	Wed, 10 Jun 2026 12:04:41 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXHfk-00000007c9o-1mbH
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 12:04:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8356D6025A;
	Wed, 10 Jun 2026 12:04:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76A7F1F00893;
	Wed, 10 Jun 2026 12:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781093079;
	bh=6MxkLfVTgOymLs1OLxd1A3Z0JsUSiCEc8rBNsWbG15E=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=Ouj5CA/LY6QBdjBUjZt/2iUcJ1cEcJYBD/p/oSlwdA6Xg64rPeha1ewLGHbg1mA9a
	 55ww20MlyqpeE5W74mncid3rtMrOZ59USrRLbMm7KTuCeQVhBm22/JsLnLdAEV1uVm
	 Z+vY0y2XXKBjZrrSxxBkDnVEHHicIrZVK70XkUMhN+ZJBf2nHEIl8ZH8xQgcFSN4gy
	 IYzSnicBP0v+VFRpiOY1HFMRO/aRc3zI7SoQmWuV+3H5/TP9dABeQ8yry3DSTu2T2J
	 mcxb7kpQpKLQEKBIUKTZl+2PRToyin/M42JY08eWeN+og7sV4TrgxneVhNyQugAeOf
	 i/GfdDCfN7rZg==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Wed, 10 Jun 2026 14:04:15 +0200
Subject: [PATCH 2/4] phy: qcom-qusb2: Fix SM6115 init sequence
MIME-Version: 1.0
Message-Id: <20260610-topic-8996_61x5_qusb2phy-v1-2-d7135980e78f@oss.qualcomm.com>
References: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
In-Reply-To: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Iskren Chernev <me@iskren.info>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781093064; l=1433;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=/ui5Yg3LXmtp1fdq4VydD+WQDMD4O0VCJcitDenV/8Q=;
 b=tkd/Jk16gkRkcT+qIYZbr5ZcVGq1sOxVojrGlMYXbobcSlJSVXo7JxkDJDgkv4wPnts+YBGYo
 FvJg/ryl2mWCr2uIJziGZn2QPlHToH6ltcxgnTf6G67pzDtW9GQYAfS
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
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

From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

I don't know where the existing one came from, but it's apparently
wrong, according to both docs and a downstream DT [1]. Fix it up.

The updated values also happen to match SM6125, which will allow us
to fix that platform too.

[1] https://android.googlesource.com/kernel/msm-extra/devicetree/+/refs/heads/android-msm-bramble-4.19-android11-qpr1/qcom/bengal-usb.dtsi#145
Fixes: 7756f1d6369e ("phy: qcom-qusb2: Add configuration for SM4250 and SM6115")
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index eb93015be841..c304ccd9f31f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -233,9 +233,9 @@ static const struct qusb2_phy_init_tbl msm8998_init_tbl[] = {
 
 static const struct qusb2_phy_init_tbl sm6115_init_tbl[] = {
 	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE1, 0xf8),
-	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE2, 0x53),
+	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE2, 0xb3),
 	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE3, 0x81),
-	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE4, 0x17),
+	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE4, 0xc0),
 
 	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_TUNE, 0x30),
 	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_USER_CTL1, 0x79),

-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
