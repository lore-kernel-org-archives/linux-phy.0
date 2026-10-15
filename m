Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED54DCCA462
	for <linux-phy@archiver.kernel.org>; Thu, 15 Oct 2026 22:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gsy5E98LbcFZaP4vbgLGXjfemRdOJxiHUX+K/FEgSyw=; b=F8S6SpzPwmo1og
	Lgj1IiP9RvuyicKjG9Nd2codPjcdk3cVlmJB1LgUhBnCAAd5EIV7fe0lBVKb0ITIaccQP8200qLx7
	4Dhdtzyo2XywH8v4WiaE4VTKxMBRIj4J7k/ebC56FoATwEDr2yIfPeLkHUdDiDGDj7AKYuYNwTMwp
	gkxe3+fpn0r+vnGOGhaM6wzHn9ZhZTen6/eLvnBkRpI3L0SSEOWoGZ2euuEt43HAILfbkI2zPEheI
	tGyIZhInp555EkgNFzrRxA8lk1VJ0xlJiF54oAoI/L1b9WHCwQjf90EJ2skEB26Cf0OfU7pTVbv6Z
	Gm1fsoOUTKASix9R9Abg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHToV-00000001UEt-1NTw;
	Thu, 15 Oct 2026 22:20:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHToU-00000001UER-0GoM
	for linux-phy@lists.infradead.org;
	Thu, 15 Oct 2026 22:20:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8802743F99;
	Thu, 15 Oct 2026 22:20:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 60E0AC2BCFF;
	Thu, 15 Oct 2026 22:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792102837;
	bh=uJOH69sAakDOgLkjFww6q1aB0GM/pUFm+9OqUgtS+X0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=qVBlvbM0QCZA1hyi7SsFVlyq9jBzUcMCCdiS5YKEE6v+P8p96l1NXMyaww73CL1Dl
	 oCXkaaajeYxtKJuaSxuNjwgrDQfr3JEJyMbkfu30jbceSU1OJ1kSMCvp3lIx5FBxB/
	 RJoM+ww8nx+Df2Zf0ERBW798zW/pL500mtkb6TZhCUEzkkEb1IJQuJV6UwihCfNjAD
	 Fv/YMSt4BgAgtVVTLcWTQJOEHkht05tWSE7XhHAQf4FmLRco4O8wRA/E9cNiucyUNj
	 WFjlCMNjBw9UZcCeylo4pcuWxDRhC7oQxN2uyQSKjGlF6USG2tri/h2aWEw/OWdZtX
	 tgfFh6vzmr1gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CC65CCA465;
	Thu, 15 Oct 2026 22:20:37 +0000 (UTC)
From: George Neacsu via B4 Relay <devnull+geocausa.gmail.com@kernel.org>
Date: Thu, 15 Oct 2026 23:20:39 +0100
Subject: [PATCH RFC 4/4] media: qcom: camss: Configure C-PHY through the
 PHY API
MIME-Version: 1.0
Message-Id: <20261015-x1e-cphy-rfc-v1-4-1f3fa9af940a@gmail.com>
References: <20261015-x1e-cphy-rfc-v1-0-1f3fa9af940a@gmail.com>
In-Reply-To: <20261015-x1e-cphy-rfc-v1-0-1f3fa9af940a@gmail.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 David Heidelberg <david@ixit.cz>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, George Neacsu <geocausa@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792102835; l=2783;
 i=geocausa@gmail.com; s=20261015; h=from:subject:message-id;
 bh=TrW9HxBrbhZsq4EBR8HwxBI6x1lIFRbaMbGLoCMihE0=;
 b=mJbdWh87bdTZxwdovvLTqT1YLJZ7GTzTkFuy7n1Fo0lK2PcHmSi6ZNJiatw1CZ1+XFqmUzbnx
 TMxuPnShS9mAAS0QDBKLz7B0ltv+BOS6zCLMUCYQUZ0NuIBW17icFpD
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

With a PHY API CSIPHY, csiphy_stream_on() always asks for D-PHY. Ask for
C-PHY when the endpoint is C-PHY, and pass the trio count and the symbol
rate, which by the V4L2 convention is twice the link frequency.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: George Neacsu <geocausa@gmail.com>
---
 drivers/media/platform/qcom/camss/camss-csiphy.c | 35 ++++++++++++++----------
 1 file changed, 21 insertions(+), 14 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.c b/drivers/media/platform/qcom/camss/camss-csiphy.c
index f44f2aeb9..8e1b4335a 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy.c
+++ b/drivers/media/platform/qcom/camss/camss-csiphy.c
@@ -329,17 +329,15 @@ static int csiphy_stream_on(struct csiphy_device *csiphy)
 	u8 bpp = csiphy_get_bpp(csiphy->res->formats->formats, csiphy->res->formats->nformats,
 				csiphy->fmt[MSM_CSIPHY_PAD_SINK].code);
 	struct csiphy_lanes_cfg *lncfg = &csiphy->cfg.csi2->lane_cfg;
-	struct phy_configure_opts_mipi_dphy *dphy_cfg;
-	union phy_configure_opts dphy_opts = { 0 };
+	const bool cphy = lncfg->phy_cfg == V4L2_MBUS_CSI2_CPHY;
+	union phy_configure_opts opts = { 0 };
 	struct device *dev = csiphy->camss->dev;
 	u8 num_lanes = lncfg->num_data;
 	s64 link_freq;
 	int ret;
 
-	dphy_cfg = &dphy_opts.mipi_dphy;
-
 	link_freq = camss_get_link_freq(&csiphy->subdev.entity, bpp, num_lanes,
-					csiphy->cfg.csi2->lane_cfg.phy_cfg == V4L2_MBUS_CSI2_CPHY);
+					cphy);
 
 	if (link_freq <= 0) {
 		dev_err(dev,
@@ -347,23 +345,32 @@ static int csiphy_stream_on(struct csiphy_device *csiphy)
 		return -EINVAL;
 	}
 
-	ret = phy_mipi_dphy_get_default_config_for_hsclk(link_freq, num_lanes,
-							 dphy_cfg);
-	if (ret < 0) {
-		dev_err(dev, "Invalid config for link frequency %lld\n",
-			link_freq);
-		return ret;
+	if (cphy) {
+		/* A C-PHY link frequency is half the symbol rate. */
+		opts.mipi_cphy.symbol_rate = link_freq * 2;
+		opts.mipi_cphy.lanes = num_lanes;
+	} else {
+		ret = phy_mipi_dphy_get_default_config_for_hsclk(link_freq,
+								 num_lanes,
+								 &opts.mipi_dphy);
+		if (ret < 0) {
+			dev_err(dev, "Invalid config for link frequency %lld\n",
+				link_freq);
+			return ret;
+		}
 	}
 
-	ret = phy_set_mode(csiphy->phy, PHY_MODE_MIPI_DPHY);
+	ret = phy_set_mode(csiphy->phy,
+			   cphy ? PHY_MODE_MIPI_CPHY : PHY_MODE_MIPI_DPHY);
 	if (ret) {
 		dev_err(dev, "Failed to set phy mode\n");
 		return ret;
 	}
 
-	ret = phy_configure(csiphy->phy, &dphy_opts);
+	ret = phy_configure(csiphy->phy, &opts);
 	if (ret) {
-		dev_err(dev, "failed to configure MIPI D-PHY\n");
+		dev_err(dev, "failed to configure MIPI %s\n",
+			cphy ? "C-PHY" : "D-PHY");
 		goto error;
 	}
 

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
