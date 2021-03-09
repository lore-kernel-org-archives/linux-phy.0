Return-Path: <SRS0=CLz0=IH=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA00C433E0
	for <linux-phy@archiver.kernel.org>; Tue,  9 Mar 2021 08:27:05 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3C47E6523B
	for <linux-phy@archiver.kernel.org>; Tue,  9 Mar 2021 08:27:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3C47E6523B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=foss.st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e3dh70lYsbrnPARGAKtFypFra1oWOiPhmp0DpSPAFOs=; b=KZlXrBqqzdlIKIO060uV1hysj
	Hon3t93bmgJ+87eV/f+P08VYZ8xRCsDZxJIcJMuVDAaynds0IQVXMp2H6vvnAu34Ke1wXLpS5AXhL
	vB3WKOP1W6dcCT3Gmbj4fSmvAR62apfosQ++r1Cu3pwc+Vp5W55EbZMyjIskZdUBTRQu7beFgtdlR
	L6JqgVl3ejm1C328nl9Ffz97m3ydXdrqpaOI4g5wpegkvxFoHCHzuyGd3L3Zqqq4mwKU/sAe4/K7A
	0t5eqmTiIQlqX11pYlpJUUyYcnhMEChXUMewbkvlz8WHMFP9yJUAnptpOVGCYBanWu0Xoocv2B24z
	klYbrfGqA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJXhn-0041pE-No; Tue, 09 Mar 2021 08:27:03 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJXhc-0041nA-36; Tue, 09 Mar 2021 08:26:54 +0000
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 1298Pxog010515; Tue, 9 Mar 2021 09:26:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=selector1;
 bh=oLvuUpvGKibfsuzVWM/OQOO33y/CmonVA+gnsrS2MG4=;
 b=iM3dT3iXVISHDFgS/6+r/4AKqRjQn+21NhR9/fMU7OvkIs7CxfFbsAFqAHMC4+Z/zu+v
 xykVU21CCUo1NnppJLanqbdVuRbUDZ2+yYY0aXcqM1GePrrTf79fqWz1B8gxCRQB18lk
 GaE1w9XTGlNVOABbtNfhJRhLWoMt8yHG57JAQQzUHiEaJnsnZZkVFlhWgnWNPfn6WXPz
 4RUD9n5EAIqH2Y36SnbHh56hUGOC+xLPI7EzYVUaVQO9OCX9US5lYTuAFyxAko0WA0Kn
 SZV69LjuVHO+BZLc7xOtqA7IzPmkWODidByntkeDS6XWxO9TADKf2OiPyFGTdkbJ0we5 ig== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3741y6qrj4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 09 Mar 2021 09:26:41 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 16AE3100034;
 Tue,  9 Mar 2021 09:26:41 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag2node3.st.com [10.75.127.6])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 05C88221795;
 Tue,  9 Mar 2021 09:26:41 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG2NODE3.st.com (10.75.127.6)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 9 Mar 2021 09:26:40
 +0100
From: Amelie Delaunay <amelie.delaunay@foss.st.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, Amelie Delaunay
 <amelie.delaunay@foss.st.com>
Subject: [RESEND PATCH v3 2/2] phy: stm32: register usbphyc as clock provider
 of ck_usbo_48m clock
Date: Tue, 9 Mar 2021 09:26:33 +0100
Message-ID: <20210309082633.8213-3-amelie.delaunay@foss.st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210309082633.8213-1-amelie.delaunay@foss.st.com>
References: <20210309082633.8213-1-amelie.delaunay@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG2NODE3.st.com
 (10.75.127.6)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.761
 definitions=2021-03-09_06:2021-03-08,
 2021-03-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210309_082652_388300_BCE8C59D 
X-CRM114-Status: GOOD (  21.19  )
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

ck_usbo_48m is generated by usbphyc PLL and used by OTG controller
for Full-Speed use cases with dedicated Full-Speed transceiver.

ck_usbo_48m is available as soon as the PLL is enabled.

Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
---
No changes in v3.
Changes in v2:
- fix COMMON_CLK dependency issue reported by kernel test robot
---
 drivers/phy/st/Kconfig             |  1 +
 drivers/phy/st/phy-stm32-usbphyc.c | 65 ++++++++++++++++++++++++++++++
 2 files changed, 66 insertions(+)

diff --git a/drivers/phy/st/Kconfig b/drivers/phy/st/Kconfig
index b32f44ff9033..3fc3d0781fb8 100644
--- a/drivers/phy/st/Kconfig
+++ b/drivers/phy/st/Kconfig
@@ -36,6 +36,7 @@ config PHY_STIH407_USB
 config PHY_STM32_USBPHYC
 	tristate "STMicroelectronics STM32 USB HS PHY Controller driver"
 	depends on ARCH_STM32 || COMPILE_TEST
+	depends on COMMON_CLK
 	select GENERIC_PHY
 	help
 	  Enable this to support the High-Speed USB transceivers that are part
diff --git a/drivers/phy/st/phy-stm32-usbphyc.c b/drivers/phy/st/phy-stm32-usbphyc.c
index d08fbb180e43..c184f4e34584 100644
--- a/drivers/phy/st/phy-stm32-usbphyc.c
+++ b/drivers/phy/st/phy-stm32-usbphyc.c
@@ -7,6 +7,7 @@
  */
 #include <linux/bitfield.h>
 #include <linux/clk.h>
+#include <linux/clk-provider.h>
 #include <linux/delay.h>
 #include <linux/iopoll.h>
 #include <linux/kernel.h>
@@ -70,6 +71,7 @@ struct stm32_usbphyc {
 	struct regulator *vdda1v1;
 	struct regulator *vdda1v8;
 	atomic_t n_pll_cons;
+	struct clk_hw clk48_hw;
 	int switch_setup;
 };
 
@@ -295,6 +297,61 @@ static const struct phy_ops stm32_usbphyc_phy_ops = {
 	.owner = THIS_MODULE,
 };
 
+static int stm32_usbphyc_clk48_prepare(struct clk_hw *hw)
+{
+	struct stm32_usbphyc *usbphyc = container_of(hw, struct stm32_usbphyc, clk48_hw);
+
+	return stm32_usbphyc_pll_enable(usbphyc);
+}
+
+static void stm32_usbphyc_clk48_unprepare(struct clk_hw *hw)
+{
+	struct stm32_usbphyc *usbphyc = container_of(hw, struct stm32_usbphyc, clk48_hw);
+
+	stm32_usbphyc_pll_disable(usbphyc);
+}
+
+static unsigned long stm32_usbphyc_clk48_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
+{
+	return 48000000;
+}
+
+static const struct clk_ops usbphyc_clk48_ops = {
+	.prepare = stm32_usbphyc_clk48_prepare,
+	.unprepare = stm32_usbphyc_clk48_unprepare,
+	.recalc_rate = stm32_usbphyc_clk48_recalc_rate,
+};
+
+static void stm32_usbphyc_clk48_unregister(void *data)
+{
+	struct stm32_usbphyc *usbphyc = data;
+
+	of_clk_del_provider(usbphyc->dev->of_node);
+	clk_hw_unregister(&usbphyc->clk48_hw);
+}
+
+static int stm32_usbphyc_clk48_register(struct stm32_usbphyc *usbphyc)
+{
+	struct device_node *node = usbphyc->dev->of_node;
+	struct clk_init_data init = { };
+	int ret = 0;
+
+	init.name = "ck_usbo_48m";
+	init.ops = &usbphyc_clk48_ops;
+
+	usbphyc->clk48_hw.init = &init;
+
+	ret = clk_hw_register(usbphyc->dev, &usbphyc->clk48_hw);
+	if (ret)
+		return ret;
+
+	ret = of_clk_add_hw_provider(node, of_clk_hw_simple_get, &usbphyc->clk48_hw);
+	if (ret)
+		clk_hw_unregister(&usbphyc->clk48_hw);
+
+	return ret;
+}
+
 static void stm32_usbphyc_switch_setup(struct stm32_usbphyc *usbphyc,
 				       u32 utmi_switch)
 {
@@ -473,6 +530,12 @@ static int stm32_usbphyc_probe(struct platform_device *pdev)
 		goto clk_disable;
 	}
 
+	ret = stm32_usbphyc_clk48_register(usbphyc);
+	if (ret) {
+		dev_err(dev, "failed to register ck_usbo_48m clock: %d\n", ret);
+		goto clk_disable;
+	}
+
 	version = readl_relaxed(usbphyc->base + STM32_USBPHYC_VERSION);
 	dev_info(dev, "registered rev:%lu.%lu\n",
 		 FIELD_GET(MAJREV, version), FIELD_GET(MINREV, version));
@@ -497,6 +560,8 @@ static int stm32_usbphyc_remove(struct platform_device *pdev)
 		if (usbphyc->phys[port]->active)
 			stm32_usbphyc_phy_exit(usbphyc->phys[port]->phy);
 
+	stm32_usbphyc_clk48_unregister(usbphyc);
+
 	clk_disable_unprepare(usbphyc->clk);
 
 	return 0;
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
