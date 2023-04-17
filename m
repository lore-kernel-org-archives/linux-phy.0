Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6006EC77B7A
	for <linux-phy@archiver.kernel.org>; Mon, 17 Apr 2023 18:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8XGFRPh83Y+Mxg1/N0oebKP35T2ZUia1CovSsue6NKY=; b=cLABJO7x6vA2PX
	vKj2zYD6anDOLwg7f17mH3MbezvTlX1ExDA94Kpi3MGYbUYesAkkV9UY7HgFZvZ7warIB9IPZzpW/
	Us0esCHB6bXZBLfIne/Z+4RU0QEJ14qkiMRg8JdQKX5Yg7WRsFMAMf9d7S9r5UsmE1faPaLY6ybmB
	BFk5jX0agoPx5ta5OpoGSL/z+O6b26gggnmk5BAYFOpacPimNHAoPkz870t7MFH6seqerwWToyD3Z
	HrufkNQXhdkND0cpH8wW/rtcRXHuXdYcMqg+q5OSStxz3s1e6LpnvydS4RzU9k2CSYiJmHIzN48Fl
	AsRuTQ4lln+SQk21Akpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poTDE-00HGF6-06;
	Mon, 17 Apr 2023 18:04:24 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poTCv-00HFzw-11;
	Mon, 17 Apr 2023 18:04:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1681754645; x=1713290645;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=3HuikI716f2ys2CohTnjAOi+mGw2PSL74PJSePfvn8A=;
  b=0SMi9TqYOEijHumuQEKdUQNeXJIx1608hAc5+l/HhkQXwthrkWExKmkF
   0A1ff4Y7+oMXpo8Wmo+FLBPNxTYBTk5h1ybMQTMJgdN/8CgtSl624mPpT
   FbjXkzl5/8n+vfNQAO1OOH30VUkPgHADo8BOLhFI2UZoUtu/o6W3ekrNp
   oYrdadTo2iYHdpRDcX2rnc/l3sUS+Yx/pW+PakOIRcc8SLus2h2I+wD4i
   MP1YSFzm5vGuZcm0DJC6dm3XN6/iUKKJ7Jej/2N+LVHpOnuC1JGGI1bOr
   7LyLP2SEDIH5Ocs2NB8g5FjtU6+vC+WA45Rby/CT18ry6G5YE5MUJYD6o
   Q==;
X-IronPort-AV: E=Sophos;i="5.99,204,1677567600"; 
   d="scan'208";a="147469789"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 17 Apr 2023 11:04:00 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 17 Apr 2023 11:03:56 -0700
Received: from DEN-LT-70577.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.21 via Frontend Transport; Mon, 17 Apr 2023 11:03:54 -0700
From: Daniel Machon <daniel.machon@microchip.com>
To: <vkoul@kernel.org>
CC: <kishon@kernel.org>, <Steen.Hegelund@microchip.com>,
	<daniel.machon@microchip.com>, <UNGLinuxDriver@microchip.com>,
	<joe@perches.com>, <linux-phy@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 7/7] phy: sparx5-serdes: add skip_cmu_cfg check when configuring lanes
Date: Mon, 17 Apr 2023 20:03:35 +0200
Message-ID: <20230417180335.2787494-8-daniel.machon@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230417180335.2787494-1-daniel.machon@microchip.com>
References: <20230417180335.2787494-1-daniel.machon@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_110405_420257_5D5E6A74 
X-CRM114-Status: GOOD (  10.00  )
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

Add a check for skip_cmu_cfg when configuring the serdes lane.  All
individual serdeses are reset upon first configuration. Resetting the
serdes involves reconfiguring it with preset values. The serdesmode is
required to determine the clock-providing CMU, therefore make sure the
serdes is not reconfigured if the serdesmode is not set.

Signed-off-by: Daniel Machon <daniel.machon@microchip.com>
---
 drivers/phy/microchip/sparx5_serdes.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/phy/microchip/sparx5_serdes.c b/drivers/phy/microchip/sparx5_serdes.c
index eb9352d1de7e..01bd5ea620c5 100644
--- a/drivers/phy/microchip/sparx5_serdes.c
+++ b/drivers/phy/microchip/sparx5_serdes.c
@@ -1646,6 +1646,10 @@ static int sparx5_sd10g28_apply_params(struct sparx5_serdes_macro *macro,
 	u32 value, cmu_idx;
 	int err;
 
+	/* Do not configure serdes if CMU is not to be configured too */
+	if (params->skip_cmu_cfg)
+		return 0;
+
 	cmu_idx = sparx5_serdes_cmu_get(params->cmu_sel, lane_index);
 	err = sparx5_cmu_cfg(priv, cmu_idx);
 	if (err)
@@ -2111,6 +2115,7 @@ static int sparx5_sd10g28_config(struct sparx5_serdes_macro *macro, bool reset)
 		.rxinvert = 1,
 		.txswing = 240,
 		.reg_rst = reset,
+		.skip_cmu_cfg = reset,
 	};
 	int err;
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
