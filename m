Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3BF7ECE579
	for <linux-phy@archiver.kernel.org>; Mon,  9 Sep 2024 15:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uIIlN9JgzXkSfTQ3it75bmm5Y8CGORNyjqyZrnjVk54=; b=u8BnmUfCacj/k4
	r5yyXloE1uaxqnW10/35hb9sztu2aOl7zKaBGfJ19RjidDHoownWceuKNlnVQUO1tCZEsiUkCA2WP
	ecg72OmDBJ1qf6uNomt5xE2XukcQ3bG1gzkla5lFD0ryqmRreJi8MiafFpfDSlWQiMJjpLvzItpWD
	/8EFKvbRtmMuq9pZ0auZHQ+b4c8lWtA2R269VHCWZzq+cK1YGj6wEUBk9whGAp6YYFuL1TkNaIGxR
	4OZSOWhNPB2kbb5mg7dbv4IvrfqgO4rGOxO89/MqH14mZGhLxc/7vWAUYxa0tIHNJs6DkXQyiLSKI
	YRL3kf95ek7KpNUrRnqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sngFf-00000002SWh-1tsz;
	Mon, 09 Sep 2024 15:24:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sng7F-00000002QJn-3VFh;
	Mon, 09 Sep 2024 15:15:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=CC:To:In-Reply-To:References:
	Message-ID:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=ZCk+j2H0XPX/Q3aX7SUvyW4ZZ3tGgwgFRkOsG1zo8Wc=; b=XUmd6aborjocS76/wAItoxUf8/
	SfmLMi84ZAtWQrs4fgfn/mTH36VuzXSFvRtKjpKjIuuDFVn+R1vumxLX1lp2b5HymQ17njugqA/Tk
	8zJhMSpiA9MY0QzDPROu23EcXiPjPlcSuMNGvZxG2j4PYH4vM+KlHMUuTNZtWynLkO75V846F3bzD
	3WWvL4w3PLH89W5pUxO2mYdfEIfJFEHDl8i7JNLOnEH5S1YAE79B4AZxuOnw78YZ53R/NJVGQX1gB
	zYQguTiHURSrFQsH/YFbr+yfvB4pB5/kh9KhavcXfKcfLswoe3uswnsp44XIwtsL1vMFyqFm2CTBh
	c5eKSS1w==;
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sng7A-00000000SIG-1DI8;
	Mon, 09 Sep 2024 15:15:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1725894940; x=1757430940;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=AlVAS36lPr5nte9AlFxlAgXuPIW2QqGeW0nzZYxYbUo=;
  b=kw6yYTOnFIR3i0JFqUWjHuzSNUcXXO7DdtTlbmhhSPOgpPJqXMtpHiUD
   iyexpm3VeIK7m8PQ+JoEm8RQYAfbISc9KdfNOlGXZPO4bYjCzmL4o5Nit
   0dbQ6ruPbbhGbOth7w1iihXd2ZliN4WF/Kzz1N8LJjAlxI5dXtBT8Rpnt
   tsIUb9V2A1twYT/F5p0YQCeu+evLAqXuRkTK1C6nFrxCxGhFKv9k7MLIe
   sAj/EKJfb/6K3pbMsS0CbYgxu9bXUg4Po4O1vFotlmOb5MwrIc5pGORNc
   2nuvi7Y8trO4+v9lOdj48If6ppK1CLpPBOAG2yIcV6G9ItvJu2UKzmY/i
   g==;
X-CSE-ConnectionGUID: 2asziJ13SmWKAWPwHD4niQ==
X-CSE-MsgGUID: /v6hnBtQRSi5YR2s2+JPHw==
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; 
   d="scan'208";a="198959135"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 09 Sep 2024 08:15:31 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 9 Sep 2024 08:15:06 -0700
Received: from DEN-DL-M70577.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Mon, 9 Sep 2024 08:15:04 -0700
From: Daniel Machon <daniel.machon@microchip.com>
Date: Mon, 9 Sep 2024 17:14:45 +0200
Subject: [PATCH v2 5/9] phy: sparx5-serdes: add function for getting the
 CMU index
MIME-Version: 1.0
Message-ID: <20240909-sparx5-lan969x-serdes-driver-v2-5-d695bcb57b84@microchip.com>
References: <20240909-sparx5-lan969x-serdes-driver-v2-0-d695bcb57b84@microchip.com>
In-Reply-To: <20240909-sparx5-lan969x-serdes-driver-v2-0-d695bcb57b84@microchip.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Lars Povlsen <lars.povlsen@microchip.com>, Steen Hegelund
	<Steen.Hegelund@microchip.com>, <UNGLinuxDriver@microchip.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
X-Mailer: b4 0.14-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_161540_827189_5DFBA56D 
X-CRM114-Status: GOOD (  12.59  )
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

The SERDES to CMU mapping is different on Sparx5 and lan969x. Therefore
create a function for getting the CMU index on Sparx5.

Signed-off-by: Daniel Machon <daniel.machon@microchip.com>
Reviewed-by: Steen Hegelund <Steen.Hegelund@microchip.com>
---
 drivers/phy/microchip/sparx5_serdes.c | 11 ++---------
 drivers/phy/microchip/sparx5_serdes.h |  9 +++++++++
 2 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/microchip/sparx5_serdes.c b/drivers/phy/microchip/sparx5_serdes.c
index b1376a142b14..5b918a2716dd 100644
--- a/drivers/phy/microchip/sparx5_serdes.c
+++ b/drivers/phy/microchip/sparx5_serdes.c
@@ -28,14 +28,6 @@
 /* Optimal power settings from GUC */
 #define SPX5_SERDES_QUIET_MODE_VAL 0x01ef4e0c
 
-enum sparx5_10g28cmu_mode {
-	SPX5_SD10G28_CMU_MAIN = 0,
-	SPX5_SD10G28_CMU_AUX1 = 1,
-	SPX5_SD10G28_CMU_AUX2 = 3,
-	SPX5_SD10G28_CMU_NONE = 4,
-	SPX5_SD10G28_CMU_MAX,
-};
-
 enum sparx5_sd25g28_mode_preset_type {
 	SPX5_SD25G28_MODE_PRESET_25000,
 	SPX5_SD25G28_MODE_PRESET_10000,
@@ -1648,7 +1640,7 @@ static int sparx5_sd10g28_apply_params(struct sparx5_serdes_macro *macro,
 	if (params->skip_cmu_cfg)
 		return 0;
 
-	cmu_idx = sparx5_serdes_cmu_get(params->cmu_sel, lane_index);
+	cmu_idx = priv->data->ops.serdes_cmu_get(params->cmu_sel, macro->sidx);
 	err = sparx5_cmu_cfg(priv, cmu_idx);
 	if (err)
 		return err;
@@ -2520,6 +2512,7 @@ static const struct sparx5_serdes_match_data sparx5_desc = {
 	},
 	.ops = {
 		.serdes_type_set      = &sparx5_serdes_type_set,
+		.serdes_cmu_get       = &sparx5_serdes_cmu_get,
 	},
 };
 
diff --git a/drivers/phy/microchip/sparx5_serdes.h b/drivers/phy/microchip/sparx5_serdes.h
index 785c7fe0bbeb..a7e92c1330e9 100644
--- a/drivers/phy/microchip/sparx5_serdes.h
+++ b/drivers/phy/microchip/sparx5_serdes.h
@@ -26,6 +26,14 @@ enum sparx5_serdes_mode {
 	SPX5_SD_MODE_SFI,
 };
 
+enum sparx5_10g28cmu_mode {
+	SPX5_SD10G28_CMU_MAIN = 0,
+	SPX5_SD10G28_CMU_AUX1 = 1,
+	SPX5_SD10G28_CMU_AUX2 = 3,
+	SPX5_SD10G28_CMU_NONE = 4,
+	SPX5_SD10G28_CMU_MAX,
+};
+
 struct sparx5_serdes_macro {
 	struct sparx5_serdes_private *priv;
 	u32 sidx;
@@ -44,6 +52,7 @@ struct sparx5_serdes_consts {
 
 struct sparx5_serdes_ops {
 	void (*serdes_type_set)(struct sparx5_serdes_macro *macro, int sidx);
+	int (*serdes_cmu_get)(enum sparx5_10g28cmu_mode mode, int sd_index);
 };
 
 struct sparx5_serdes_match_data {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
