Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0A62C001B2
	for <linux-phy@archiver.kernel.org>; Wed, 14 Dec 2022 22:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VQJjlAleYufx0ve5rKFdDEdXdpdu99O3gHoy+LPr+e4=; b=IBwzPQMwZoUI8+
	mNLVWM/PvWmQPizPodltAwMDsCaM4W0N6KfSLU8r/UtwBTqmn/9C+S2TMdQmz4GbEHn3jZuh8Dcam
	v9++5h3jR3dasMfUbWMrfY/6r/D1n8cG9p17nX9UrumodoSikNV4RUBnVA4rEPUvdevQrGSFh9Fa1
	6yHvDGbSL8fmWvXWViD+R1zKCCfmSTMXrZs79KdQ5QLJtHNAMXUdP4Vor/dI102AVTy3x7OFOLU88
	DNGI1/08ZqsByeKeftdxY/6noL/lnL0vNQ6nZAd3LhyJ7ibWvhU9KM4mqoyT7gK91nBQIJ5rC4qiy
	g0ltk//5xGxdAGVLvecw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5aO2-003lRc-RW; Wed, 14 Dec 2022 22:38:02 +0000
Received: from relay02.th.seeweb.it ([2001:4b7a:2000:18::163])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5aNy-003lJN-UH
	for linux-phy@lists.infradead.org; Wed, 14 Dec 2022 22:38:01 +0000
Received: from localhost.localdomain (94-209-172-39.cable.dynamic.v4.ziggo.nl [94.209.172.39])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by m-r1.th.seeweb.it (Postfix) with ESMTPSA id 5F54620376;
	Wed, 14 Dec 2022 23:37:47 +0100 (CET)
From: Marijn Suijten <marijn.suijten@somainline.org>
To: phone-devel@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Martin Botka <martin.botka@somainline.org>,
	Jami Kettunen <jami.kettunen@somainline.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Michael Srba <Michael.Srba@seznam.cz>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] Revert "phy: qualcomm: usb28nm: Add MDM9607 init sequence"
Date: Wed, 14 Dec 2022 23:37:32 +0100
Message-Id: <20221214223733.648167-1-marijn.suijten@somainline.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_143759_175558_ACFD3AEB 
X-CRM114-Status: GOOD (  12.93  )
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

This reverts commit 557a28811c7e0286d3816842032db5eb7bb5f156.

This commit introduced an init sequence from downstream DT [1] in the
driver.  As mentioned by the comment above the HSPHY_INIT_CFG macro for
this sequence:

    /*
     * The macro is used to define an initialization sequence.  Each tuple
     * is meant to program 'value' into phy register at 'offset' with 'delay'
     * in us followed.
     */

Instead of corresponding to offsets into the phy register, the sequence
read by the downstream driver [2] is passed into ulpi_write [3] which
crafts the address-value pair into a new value and writes it into the
same register at USB_ULPI_VIEWPORT [4].  In other words, this init
sequence is programmed into the hardware in a totally different way than
downstream and is unlikely to achieve the desired result, if the hsphy
is working at all.

An alternative method needs to be found to write these init values at
the desired location.  Fortunately mdm9607 did not land upstream yet [5]
and should have its compatible revised to use the generic one, instead
of a compatible that writes wrong data to the wrong registers.

[1]: https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/arch/arm/boot/dts/qcom/mdm9607.dtsi#585
[2]: https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/drivers/usb/phy/phy-msm-usb.c#4183
[3]: https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/drivers/usb/phy/phy-msm-usb.c#468
[4]: https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/drivers/usb/phy/phy-msm-usb.c#418
[5]: https://lore.kernel.org/linux-arm-msm/20210805222812.40731-1-konrad.dybcio@somainline.org/

Reported-by: Michael Srba <Michael.Srba@seznam.cz>
Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>
---
 .../devicetree/bindings/phy/qcom,usb-hs-28nm.yaml   |  1 -
 drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c         | 13 -------------
 2 files changed, 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-28nm.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-28nm.yaml
index abcc4373f39e..ca6a0836b53c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-28nm.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-28nm.yaml
@@ -16,7 +16,6 @@ properties:
   compatible:
     enum:
       - qcom,usb-hs-28nm-femtophy
-      - qcom,usb-hs-28nm-mdm9607
 
   reg:
     maxItems: 1
diff --git a/drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c b/drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c
index 8807e59a1162..a52a9bf13b75 100644
--- a/drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c
+++ b/drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c
@@ -401,26 +401,13 @@ static const struct hsphy_init_seq init_seq_femtophy[] = {
 	HSPHY_INIT_CFG(0x90, 0x60, 0),
 };
 
-static const struct hsphy_init_seq init_seq_mdm9607[] = {
-	HSPHY_INIT_CFG(0x80, 0x44, 0),
-	HSPHY_INIT_CFG(0x81, 0x38, 0),
-	HSPHY_INIT_CFG(0x82, 0x24, 0),
-	HSPHY_INIT_CFG(0x83, 0x13, 0),
-};
-
 static const struct hsphy_data hsphy_data_femtophy = {
 	.init_seq = init_seq_femtophy,
 	.init_seq_num = ARRAY_SIZE(init_seq_femtophy),
 };
 
-static const struct hsphy_data hsphy_data_mdm9607 = {
-	.init_seq = init_seq_mdm9607,
-	.init_seq_num = ARRAY_SIZE(init_seq_mdm9607),
-};
-
 static const struct of_device_id qcom_snps_hsphy_match[] = {
 	{ .compatible = "qcom,usb-hs-28nm-femtophy", .data = &hsphy_data_femtophy, },
-	{ .compatible = "qcom,usb-hs-28nm-mdm9607", .data = &hsphy_data_mdm9607, },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, qcom_snps_hsphy_match);
-- 
2.39.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
