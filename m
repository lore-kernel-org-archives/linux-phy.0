Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF619C79FA0
	for <linux-phy@archiver.kernel.org>; Sun,  6 Sep 2026 14:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/hQBzmgx2kTFx3B983H+VV+7oFQRNJMr8z/2uALUZg=; b=ftb2OHwjW5NrU4
	ihpgfvx0M88IiSwU5UJVYfemCQC6LbjQwxoN8BQ8AAn0T7Omyy1Irrh2mmx/HtsRLnOvjsDttXsdW
	gPEf/pa+cUOinrY9z/eiCYGrw+JEcl9AMJ4tfN+/IIxO/eHVktY9CwsWkgef3imesoU3PSniGJQhx
	ldNq5OI7f8p6t9RfClQcMoCiy6dqMFrxa2CFyrF5nuTUuuJoHlVOD0sqPUi7AOwbQCK5ERgQ9zF3l
	5/Za2cq1TV71o27eRLeVQXu3o0e0y4XzMeYSlk//CoWLdOg1/EFjsvlKwc8XILlkkydksUfetI45W
	HgcSxZH9u7hlX7MCALyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3DgT-000000054vZ-2VJh;
	Sun, 06 Sep 2026 14:17:25 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3DgQ-000000054td-3WWM
	for linux-phy@lists.infradead.org;
	Sun, 06 Sep 2026 14:17:24 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-482e4998d28so1969775f8f.2
        for <linux-phy@lists.infradead.org>; Sun, 06 Sep 2026 07:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788704241; x=1789309041; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SFRs5gGLiDPOnHZoeYS5F95xIoLCLe/yvxqAbvUutf4=;
        b=irabBxfdX/C7d7flQKQenXBBms1JHDYtW1QhMtoI6THMqZUVpNnP43VK8EMdFngjaS
         lL91AQhRaq911hdYAQVlWUk0NdU0YaiHtJ/EA3qvKR0g0pGrK7dfi0DcUVBC/qgJsSHc
         WdvG0RlrqEbNCe6JR9UvvFH3tpbfAp7acT2K85vclkXmZBnkk/XyvrGJLKOXVpBQvKH3
         +6PlpNFcvohSluSPyy8fgDMlzA2nP0EPeI9EsxKG0PhrXMlwhHdb/ylRv2Xtl2PUVzaW
         r/SZqZok2HNrDk+yIc5+bmWw2UNujHrDdnKuQ4i3yJVPYXuzOjhEekjuDvKUCAgXDBra
         AUTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788704241; x=1789309041;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SFRs5gGLiDPOnHZoeYS5F95xIoLCLe/yvxqAbvUutf4=;
        b=dSgG5MDOOHV8iE74/1O7CCVvrcCWuZxeZM8ZqBY78rOmE1PnjTa+TprV2YbyP59ZLW
         uBVF2ksnsJYTwCMQuJMFqzLApWOLOB3pIz5c76CueLY14pmZSl3WZqUYnhGy0Djck6rm
         CfegqA9dTkwuViH4xim7e34jrPu1pK94ppaiqYTlpWBEX5AaHYQjddb8u/SAOiR62ZFl
         LHvF3HDBjojS0dRunteA+NWZv2iiJ7iCAz6GrMgCNuxzP9LFiKlH2XO1WS5XoVvT0W7N
         ZOsQQw5aUkjqrcUjrlB+FR0x0f+0xJ5/9XlgLhQBM7ddhATeiPS9rl9Q/ELgUQwMj31N
         ADzQ==
X-Forwarded-Encrypted: i=1; AKwUvBy39wCaBbQ7IWyBYQU5FKhPhPEoFU9e5xn8jV9o8goVSBVbsZpzAremikkiC9vfPCSjDz0ImLkJ9no=@lists.infradead.org
X-Gm-Message-State: AFuF++nQvP9rf+Y3i88JHseVMMSok5SbVZcZlsQYe1LkKgLNsmgU13vw
	izhsC/Aeemaw222srN/xzWNz3iV7jREZMqu616lNkNr8DPUz7uhkKaClkpMjijwGf4c=
X-Gm-Gg: AYBFou2feYOiueFWLkZbct4toc88qojAG0kQCoHkg0ImOXQihc5vpraLwHFsvRj1BYo
	+xSUxeF8Mq7DH3uhBF9/8gI4yyr2vyxd8Jt7uqobELGhvnkd0B4R1mEYy8pPvNOFj1wE99FtsJZ
	97eHH20pFhQLtzZSh/aLLIuoFqcZEm7lL46eCsl5mOgsIT/z5uZ16k3KKWNRWgCxM9QSjUAgx9+
	SavFH+pmOJRR8UxgQ94GoOCVDLU4AVcw/ZAgVuRP6BUUefGppdU/EZhl3vsf15Q0zNl9M8AfDwe
	VMnZ+EC/Bn6/RvUfhBce7OYEvl5GjNV8u3STdycdikxx1qmeXOE9mS+hd8YgGPLJs/UicsrhhpM
	xqsnmhi78fUbFGbOosinHcgjKzmiayMn8nrKBLwkUNHrpNoocvtqGTeveKYbIraj3wBpDi9DXiS
	4QR1YoOMv/VmhnTDQTy8jR6aU5fhZ6k9kI235sgFM4n5dzj4wSh1qTiAi0+PJHz9K1MOVO/pn7q
	A==
X-Received: by 2002:a05:6000:2c11:b0:485:8c16:a34d with SMTP id ffacd0b85a97d-4858c16a841mr15860285f8f.37.1788704241137;
        Sun, 06 Sep 2026 07:17:21 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.250.151])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48588390e30sm21669763f8f.7.2026.09.06.07.17.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Sep 2026 07:17:20 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Sun, 06 Sep 2026 15:17:08 +0100
Subject: [PATCH v17 4/5] media: qcom: camss: Add support for PHY API
 devices
MIME-Version: 1.0
Message-Id: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-4-e2197a3e2551@linaro.org>
References: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-0-e2197a3e2551@linaro.org>
In-Reply-To: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-0-e2197a3e2551@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Bryan O'Donoghue <bod@kernel.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=17246;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=YIJJdG8F7qvkpKCTmBVhA8FGxfejNI1V+jwzJ32M+4o=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqnXXoW9IKvjK6Apo9Hkd8WvO8TkHdDRwDY0TBM
 0b7HabJvMmJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCap116AAKCRAicTuzoY3I
 OnQiEACWnEcKd0JFehBfDSdDBB6c84jZDymOx5Cqa2r1omrITI9m7ihhcfR5waMn/C791Uun1p7
 p60Mi1WvfEulNZSxIZTmFQxe/IjTKTts5KUZ6xzUh6JEhtHNWkIeefKmZIupfKsTQx0tNYn9mNH
 3pHKIrLGBIIjEcEfqr+W1dsjVRadc3GNYchmHLAHK3q5CfHKJtZ11EwoEA3IbhROKacjSAIwk2D
 3MVJjV2TWH7qPeTd9zDk0YekK8CP0dSwHKjhx7JgYMtu/I7sJaOgGejUYmqsp0o+S1aiQVdrUpi
 zrQFbLYboNWxmEYvAIeTAYTpnmHcquqqnalz+PaTKPjl4hKTGd66LlSgwuZcXGp3JwiVPtIcpRr
 MVRxSy32H/Wbnv94VyG4gD9gckx4mY85YvhUbHJmPIUsg6Rx8xoOWLuNpAZ9E2UnV4qxKRehe4u
 jvSOVS95c33OaWatsLVN0WHc/NwNgdt9MTcLRoTBNA2mOzF4mN69ck/QNfznNrXqt1rcUyOutxG
 7cGHkiZeHyjQtfwCH0RnHdbviXxODST76XeRheme40cW1/qrhRxJoLyTDfFBqejP8gPHQe7aOQR
 NRwPyNtef4QhMKDnxf1+KhyL2sAyVO7BUuMMPrANSc1/gugssp63v77xd68sgsvg59IE0t77osa
 9pUOWcM0DPBhxhQ==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260906_071723_054250_2BD3BEC0 
X-CRM114-Status: GOOD (  22.78  )
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

Add the ability to use a PHY pointer which interacts with the standard PHY
API.

In the first instance the code will try to use the new PHY interface. If no
PHYs are present in the DT then the legacy method will be attempted.

Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/platform/qcom/camss/Kconfig        |   1 +
 drivers/media/platform/qcom/camss/camss-csiphy.c | 177 +++++++++++++++++++++--
 drivers/media/platform/qcom/camss/camss-csiphy.h |  11 +-
 drivers/media/platform/qcom/camss/camss.c        | 104 +++++++++++--
 drivers/media/platform/qcom/camss/camss.h        |   1 +
 5 files changed, 263 insertions(+), 31 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/Kconfig b/drivers/media/platform/qcom/camss/Kconfig
index 4eda48cb1adf0..1edc5e5a1829e 100644
--- a/drivers/media/platform/qcom/camss/Kconfig
+++ b/drivers/media/platform/qcom/camss/Kconfig
@@ -7,3 +7,4 @@ config VIDEO_QCOM_CAMSS
 	select VIDEO_V4L2_SUBDEV_API
 	select VIDEOBUF2_DMA_SG
 	select V4L2_FWNODE
+	select PHY_QCOM_MIPI_CSI2
diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.c b/drivers/media/platform/qcom/camss/camss-csiphy.c
index 539ac4888b608..e00748dd83b02 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy.c
+++ b/drivers/media/platform/qcom/camss/camss-csiphy.c
@@ -13,6 +13,8 @@
 #include <linux/io.h>
 #include <linux/kernel.h>
 #include <linux/of.h>
+#include <linux/of_graph.h>
+#include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 #include <media/media-entity.h>
@@ -131,10 +133,10 @@ static u8 csiphy_get_bpp(const struct csiphy_format_info *formats,
 }
 
 /*
- * csiphy_set_clock_rates - Calculate and set clock rates on CSIPHY module
+ * csiphy_set_clock_rates_legacy - Calculate and set clock rates on CSIPHY module
  * @csiphy: CSIPHY device
  */
-static int csiphy_set_clock_rates(struct csiphy_device *csiphy)
+static int csiphy_set_clock_rates_legacy(struct csiphy_device *csiphy)
 {
 	struct device *dev = csiphy->camss->dev;
 	s64 link_freq;
@@ -200,7 +202,7 @@ static int csiphy_set_clock_rates(struct csiphy_device *csiphy)
  *
  * Return 0 on success or a negative error code otherwise
  */
-static int csiphy_set_power(struct v4l2_subdev *sd, int on)
+static int csiphy_set_power_legacy(struct v4l2_subdev *sd, int on)
 {
 	struct csiphy_device *csiphy = v4l2_get_subdevdata(sd);
 	struct device *dev = csiphy->camss->dev;
@@ -219,7 +221,7 @@ static int csiphy_set_power(struct v4l2_subdev *sd, int on)
 			return ret;
 		}
 
-		ret = csiphy_set_clock_rates(csiphy);
+		ret = csiphy_set_clock_rates_legacy(csiphy);
 		if (ret < 0) {
 			regulator_bulk_disable(csiphy->num_supplies,
 					       csiphy->supplies);
@@ -254,7 +256,7 @@ static int csiphy_set_power(struct v4l2_subdev *sd, int on)
 }
 
 /*
- * csiphy_stream_on - Enable streaming on CSIPHY module
+ * csiphy_stream_on_legacy - Enable streaming on CSIPHY module
  * @csiphy: CSIPHY device
  *
  * Helper function to enable streaming on CSIPHY module.
@@ -262,7 +264,7 @@ static int csiphy_set_power(struct v4l2_subdev *sd, int on)
  *
  * Return 0 on success or a negative error code otherwise
  */
-static int csiphy_stream_on(struct csiphy_device *csiphy)
+static int csiphy_stream_on_legacy(struct csiphy_device *csiphy)
 {
 	struct csiphy_config *cfg = &csiphy->cfg;
 	s64 link_freq;
@@ -306,11 +308,88 @@ static int csiphy_stream_on(struct csiphy_device *csiphy)
  *
  * Helper function to disable streaming on CSIPHY module
  */
-static void csiphy_stream_off(struct csiphy_device *csiphy)
+static void csiphy_stream_off_legacy(struct csiphy_device *csiphy)
 {
 	csiphy->res->hw_ops->lanes_disable(csiphy, &csiphy->cfg);
 }
 
+/*
+ * csiphy_stream_on - Enable streaming on CSIPHY module
+ * @csiphy: CSIPHY device
+ *
+ * Helper function to enable streaming on CSIPHY module.
+ * Main configuration of CSIPHY module is also done here.
+ *
+ * Return 0 on success or a negative error code otherwise
+ */
+static int csiphy_stream_on(struct csiphy_device *csiphy)
+{
+	u8 bpp = csiphy_get_bpp(csiphy->res->formats->formats, csiphy->res->formats->nformats,
+				csiphy->fmt[MSM_CSIPHY_PAD_SINK].code);
+	struct csiphy_lanes_cfg *lncfg = &csiphy->cfg.csi2->lane_cfg;
+	struct phy_configure_opts_mipi_dphy *dphy_cfg;
+	union phy_configure_opts dphy_opts = { 0 };
+	struct device *dev = csiphy->camss->dev;
+	u8 num_lanes = lncfg->num_data;
+	s64 link_freq;
+	int ret;
+
+	dphy_cfg = &dphy_opts.mipi_dphy;
+
+	link_freq = camss_get_link_freq(&csiphy->subdev.entity, bpp, num_lanes);
+
+	if (link_freq < 0) {
+		dev_err(dev,
+			"Cannot get CSI2 transmitter's link frequency\n");
+		return -EINVAL;
+	}
+
+	phy_mipi_dphy_get_default_config_for_hsclk(link_freq, num_lanes, dphy_cfg);
+
+	phy_set_mode(csiphy->phy, PHY_MODE_MIPI_DPHY);
+
+	ret = phy_configure(csiphy->phy, &dphy_opts);
+	if (ret) {
+		dev_err(dev, "failed to configure MIPI D-PHY\n");
+		goto error;
+	}
+
+	return phy_power_on(csiphy->phy);
+
+error:
+	return ret;
+}
+
+/*
+ * csiphy_stream_off - Disable streaming on CSIPHY module
+ * @csiphy: CSIPHY device
+ *
+ * Helper function to disable streaming on CSIPHY module
+ */
+static void csiphy_stream_off(struct csiphy_device *csiphy)
+{
+	phy_power_off(csiphy->phy);
+}
+
+/*
+ * csiphy_set_stream - Enable/disable streaming on CSIPHY module
+ * @sd: CSIPHY V4L2 subdevice
+ * @enable: Requested streaming state
+ *
+ * Return 0 on success or a negative error code otherwise
+ */
+static int csiphy_set_stream_legacy(struct v4l2_subdev *sd, int enable)
+{
+	struct csiphy_device *csiphy = v4l2_get_subdevdata(sd);
+	int ret = 0;
+
+	if (enable)
+		ret = csiphy_stream_on_legacy(csiphy);
+	else
+		csiphy_stream_off_legacy(csiphy);
+
+	return ret;
+}
 
 /*
  * csiphy_set_stream - Enable/disable streaming on CSIPHY module
@@ -572,16 +651,16 @@ csiphy_match_clock_name(const char *clock_name, const char *format, ...)
 }
 
 /*
- * msm_csiphy_subdev_init - Initialize CSIPHY device structure and resources
+ * msm_csiphy_subdev_init_legacy - Initialize CSIPHY device structure and resources
  * @csiphy: CSIPHY device
  * @res: CSIPHY module resources table
  * @id: CSIPHY module id
  *
  * Return 0 on success or a negative error code otherwise
  */
-int msm_csiphy_subdev_init(struct camss *camss,
-			   struct csiphy_device *csiphy,
-			   const struct camss_subdev_resources *res, u8 id)
+int msm_csiphy_subdev_init_legacy(struct camss *camss,
+				  struct csiphy_device *csiphy,
+				  const struct camss_subdev_resources *res, u8 id)
 {
 	struct device *dev = camss->dev;
 	struct platform_device *pdev = to_platform_device(dev);
@@ -709,6 +788,56 @@ int msm_csiphy_subdev_init(struct camss *camss,
 	return ret;
 }
 
+/*
+ * msm_csiphy_subdev_init - Initialize CSIPHY device structure and resources
+ * @camss: CAMSS structure
+ * @port: DT port index
+ *
+ * Return 0 on success or absence of link, negative error code otherwise
+ */
+int msm_csiphy_subdev_init(struct camss *camss, u8 port)
+{
+	const struct camss_subdev_resources *res = &camss->res->csiphy_res[port];
+	struct csiphy_device *csiphy = &camss->csiphy[port];
+	struct device *dev = camss->dev;
+	struct device_node *ep, *remote;
+	int ret;
+
+	ep = of_graph_get_endpoint_by_regs(dev->of_node, port, -1);
+	if (!ep)
+		return 0;
+
+	remote = of_graph_get_remote_port_parent(ep);
+	of_node_put(ep);
+	if (!remote)
+		return 0;
+
+	if (!of_device_is_available(remote)) {
+		of_node_put(remote);
+		return 0;
+	}
+
+	csiphy->phy = devm_phy_get_by_of_node(dev, remote);
+	of_node_put(remote);
+	if (IS_ERR(csiphy->phy)) {
+		ret = PTR_ERR(csiphy->phy);
+		goto done;
+	}
+
+	csiphy->camss = camss;
+	csiphy->id = res->csiphy.id;
+	csiphy->res = &res->csiphy;
+
+	snprintf(csiphy->name, ARRAY_SIZE(csiphy->name), "csi%d", csiphy->id);
+
+	ret = phy_init(csiphy->phy);
+	if (ret)
+		dev_err(dev, "%s init fail %d\n", csiphy->name, ret);
+
+done:
+	return ret;
+}
+
 /*
  * csiphy_link_setup - Setup CSIPHY connections
  * @entity: Pointer to media entity structure
@@ -743,8 +872,12 @@ static int csiphy_link_setup(struct media_entity *entity,
 	return 0;
 }
 
-static const struct v4l2_subdev_core_ops csiphy_core_ops = {
-	.s_power = csiphy_set_power,
+static const struct v4l2_subdev_core_ops csiphy_core_ops_legacy = {
+	.s_power = csiphy_set_power_legacy,
+};
+
+static const struct v4l2_subdev_video_ops csiphy_video_ops_legacy = {
+	.s_stream = csiphy_set_stream_legacy,
 };
 
 static const struct v4l2_subdev_video_ops csiphy_video_ops = {
@@ -758,8 +891,13 @@ static const struct v4l2_subdev_pad_ops csiphy_pad_ops = {
 	.set_fmt = csiphy_set_format,
 };
 
+static const struct v4l2_subdev_ops csiphy_v4l2_ops_legacy = {
+	.core = &csiphy_core_ops_legacy,
+	.video = &csiphy_video_ops_legacy,
+	.pad = &csiphy_pad_ops,
+};
+
 static const struct v4l2_subdev_ops csiphy_v4l2_ops = {
-	.core = &csiphy_core_ops,
 	.video = &csiphy_video_ops,
 	.pad = &csiphy_pad_ops,
 };
@@ -785,10 +923,15 @@ int msm_csiphy_register_entity(struct csiphy_device *csiphy,
 {
 	struct v4l2_subdev *sd = &csiphy->subdev;
 	struct media_pad *pads = csiphy->pads;
-	struct device *dev = csiphy->camss->dev;
+	struct camss *camss = csiphy->camss;
+	struct device *dev = camss->dev;
 	int ret;
 
-	v4l2_subdev_init(sd, &csiphy_v4l2_ops);
+	if (camss->legacy_phy)
+		v4l2_subdev_init(sd, &csiphy_v4l2_ops_legacy);
+	else
+		v4l2_subdev_init(sd, &csiphy_v4l2_ops);
+
 	sd->internal_ops = &csiphy_v4l2_internal_ops;
 	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 	snprintf(sd->name, ARRAY_SIZE(sd->name), "%s%d",
@@ -828,6 +971,8 @@ int msm_csiphy_register_entity(struct csiphy_device *csiphy,
  */
 void msm_csiphy_unregister_entity(struct csiphy_device *csiphy)
 {
+	if (!IS_ERR(csiphy->phy))
+		phy_exit(csiphy->phy);
 	v4l2_device_unregister_subdev(&csiphy->subdev);
 	media_entity_cleanup(&csiphy->subdev.entity);
 }
diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.h b/drivers/media/platform/qcom/camss/camss-csiphy.h
index 9d9657b82f748..7a357044b9fdb 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy.h
+++ b/drivers/media/platform/qcom/camss/camss-csiphy.h
@@ -12,6 +12,7 @@
 
 #include <linux/clk.h>
 #include <linux/interrupt.h>
+#include <linux/phy/phy.h>
 #include <media/media-entity.h>
 #include <media/v4l2-device.h>
 #include <media/v4l2-mediabus.h>
@@ -97,6 +98,7 @@ struct csiphy_device_regs {
 
 struct csiphy_device {
 	struct camss *camss;
+	struct phy *phy;
 	u8 id;
 	struct v4l2_subdev subdev;
 	struct media_pad pads[MSM_CSIPHY_PADS_NUM];
@@ -104,6 +106,7 @@ struct csiphy_device {
 	void __iomem *base_clk_mux;
 	u32 irq;
 	char irq_name[30];
+	char name[16];
 	struct camss_clock *clock;
 	bool *rate_set;
 	int nclocks;
@@ -118,9 +121,11 @@ struct csiphy_device {
 
 struct camss_subdev_resources;
 
-int msm_csiphy_subdev_init(struct camss *camss,
-			   struct csiphy_device *csiphy,
-			   const struct camss_subdev_resources *res, u8 id);
+int msm_csiphy_subdev_init_legacy(struct camss *camss,
+				  struct csiphy_device *csiphy,
+				  const struct camss_subdev_resources *res, u8 id);
+
+int msm_csiphy_subdev_init(struct camss *camss, u8 port);
 
 int msm_csiphy_register_entity(struct csiphy_device *csiphy,
 			       struct v4l2_device *v4l2_dev);
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 2123f6388e3d7..84097d82d99c9 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -4799,8 +4799,43 @@ static int camss_parse_ports(struct camss *camss)
 	fwnode_graph_for_each_endpoint(fwnode, ep) {
 		struct camss_async_subdev *csd;
 
-		csd = v4l2_async_nf_add_fwnode_remote(&camss->notifier, ep,
-						      typeof(*csd));
+		if (!fwnode_device_is_available(ep))
+			continue;
+
+		if (camss->legacy_phy) {
+			csd = v4l2_async_nf_add_fwnode_remote(&camss->notifier, ep,
+							      typeof(*csd));
+		} else {
+			struct fwnode_handle *phy_out, *phy_node, *phy_in, *sensor_ep;
+
+			phy_out = fwnode_graph_get_remote_endpoint(ep);
+			if (!phy_out)
+				continue;
+
+			phy_node = fwnode_graph_get_port_parent(phy_out);
+			fwnode_handle_put(phy_out);
+			if (!phy_node)
+				continue;
+
+			phy_in = fwnode_graph_get_endpoint_by_id(phy_node, 0, 0, 0);
+			fwnode_handle_put(phy_node);
+			if (!phy_in)
+				continue;
+
+			sensor_ep = fwnode_graph_get_remote_endpoint(phy_in);
+			fwnode_handle_put(phy_in);
+			if (!sensor_ep)
+				continue;
+
+			csd = v4l2_async_nf_add_fwnode(&camss->notifier, sensor_ep,
+						struct camss_async_subdev);
+			fwnode_handle_put(sensor_ep);
+			if (IS_ERR(csd)) {
+				ret = PTR_ERR(csd);
+				goto err_cleanup;
+			}
+		}
+
 		if (IS_ERR(csd)) {
 			ret = PTR_ERR(csd);
 			goto err_cleanup;
@@ -4819,6 +4854,29 @@ static int camss_parse_ports(struct camss *camss)
 	return ret;
 }
 
+static void camss_detect_legacy_phy(struct camss *camss)
+{
+	struct device_node *remote;
+	struct device_node *ep;
+
+	camss->legacy_phy = true;
+
+	/* Find first remote-endpoint and determine if its a PHY */
+	for_each_endpoint_of_node(camss->dev->of_node, ep) {
+		remote = of_graph_get_remote_port_parent(ep);
+		if (!remote)
+			continue;
+
+		camss->legacy_phy = !of_node_name_eq(remote, "phy");
+		of_node_put(remote);
+		of_node_put(ep);
+		break;
+	}
+
+	dev_dbg(camss->dev, "legacy phy mode %s\n",
+		camss->legacy_phy ? "true" : "false");
+}
+
 /*
  * camss_init_subdevices - Initialize subdev structures and resources
  * @camss: CAMSS device
@@ -4832,14 +4890,21 @@ static int camss_init_subdevices(struct camss *camss)
 	unsigned int i;
 	int ret;
 
+	camss_detect_legacy_phy(camss);
+
 	for (i = 0; i < camss->res->csiphy_num; i++) {
-		ret = msm_csiphy_subdev_init(camss, &camss->csiphy[i],
-					     &res->csiphy_res[i],
-					     res->csiphy_res[i].csiphy.id);
+		if (!camss->legacy_phy) {
+			ret = msm_csiphy_subdev_init(camss, i);
+		} else {
+			ret = msm_csiphy_subdev_init_legacy(camss,
+							    &camss->csiphy[i],
+							    &res->csiphy_res[i],
+							    res->csiphy_res[i].csiphy.id);
+		}
+
 		if (ret < 0) {
-			dev_err(camss->dev,
-				"Failed to init csiphy%d sub-device: %d\n",
-				i, ret);
+			dev_err(camss->dev, "csiphy %d init fail\n",
+				res->csiphy_res[i].csiphy.id);
 			return ret;
 		}
 	}
@@ -4917,6 +4982,11 @@ inline void camss_link_err(struct camss *camss,
 		ret);
 }
 
+static inline bool csiphy_enabled(struct camss *camss, struct csiphy_device *c)
+{
+	return camss->legacy_phy || c->phy;
+}
+
 /*
  * camss_link_entities - Register subdev nodes and create links
  * @camss: CAMSS device
@@ -4930,6 +5000,9 @@ static int camss_link_entities(struct camss *camss)
 
 	for (i = 0; i < camss->res->csiphy_num; i++) {
 		for (j = 0; j < camss->res->csid_num; j++) {
+			if (!csiphy_enabled(camss, &camss->csiphy[i]))
+				continue;
+
 			ret = media_create_pad_link(&camss->csiphy[i].subdev.entity,
 						    MSM_CSIPHY_PAD_SRC,
 						    &camss->csid[j].subdev.entity,
@@ -5056,6 +5129,9 @@ static int camss_register_entities(struct camss *camss)
 	int ret;
 
 	for (i = 0; i < camss->res->csiphy_num; i++) {
+		if (!csiphy_enabled(camss, &camss->csiphy[i]))
+			continue;
+
 		ret = msm_csiphy_register_entity(&camss->csiphy[i],
 						 &camss->v4l2_dev);
 		if (ret < 0) {
@@ -5131,8 +5207,10 @@ static int camss_register_entities(struct camss *camss)
 
 	i = camss->res->csiphy_num;
 err_reg_csiphy:
-	for (i--; i >= 0; i--)
-		msm_csiphy_unregister_entity(&camss->csiphy[i]);
+	for (i--; i >= 0; i--) {
+		if (csiphy_enabled(camss, &camss->csiphy[i]))
+			msm_csiphy_unregister_entity(&camss->csiphy[i]);
+	}
 
 	return ret;
 }
@@ -5147,8 +5225,10 @@ static void camss_unregister_entities(struct camss *camss)
 {
 	unsigned int i;
 
-	for (i = 0; i < camss->res->csiphy_num; i++)
-		msm_csiphy_unregister_entity(&camss->csiphy[i]);
+	for (i = 0; i < camss->res->csiphy_num; i++) {
+		if (csiphy_enabled(camss, &camss->csiphy[i]))
+			msm_csiphy_unregister_entity(&camss->csiphy[i]);
+	}
 
 	if (camss->tpg) {
 		for (i = 0; i < camss->res->tpg_num; i++)
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 93d691c8ac63b..ba3d51d9c0bf8 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -138,6 +138,7 @@ struct camss {
 	struct device_link *genpd_link;
 	struct icc_path *icc_path[ICC_SM8250_COUNT];
 	const struct camss_resources *res;
+	bool legacy_phy;
 };
 
 struct camss_camera_interface {

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
