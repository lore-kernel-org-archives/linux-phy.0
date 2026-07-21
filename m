Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56D5CC4452B
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 09:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AwdqsTtGP1QULHs74kSOsRQXANv1E/y7hSTO7a4/Kmk=; b=N3MqsSl0Q3Bu6Y
	7C4ogKiNBRFv5H/CKEE2vWsb9Fxc1yGLmoB0KMciJVRKKYm62vaimdUKc/B8RFLBBo4YAciHw907R
	49ks87Z1HdvwshQ9nk0vnu0m5HCnIrz/dz3JxqQpfWMqgr2wjX2iiHW7w/upLSiadCbRx+Qb/oqwP
	roT9Mqn8SrI0B2Yx8UHSUd08Gx/J5KOHFk/Z1awujUKxQdk8g6e60FNGY9i8IDN0STSb0yOQwrQPo
	qXhNwKibDlLQe2t3Wek7gmrkOHrTrqOYqoymv4WST4sFxptFnTtYRu/zU5GhN0uCpgI8+DEbDgH2c
	zZIjz6uO57pl6hvtR0UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm6tx-000000090F3-3uhc;
	Tue, 21 Jul 2026 09:36:37 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm6tu-000000090Cz-39EJ
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 09:36:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784626592;
	bh=UjfNXgF3s7L3FTzKJThRG5oNM8jZglNFcKi7mxpewEs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JwwI4juou5roxp/z2ALzzKtSkD9s5yP505LwJBEY4To2VYfc+BqIh5TJ8HGY85MEw
	 sSY6H6GTNiL4adCOL9V6XD6yXON/DrcVBLkYovYQMaRH0+aV70mXmYE6cDm40ZcEBm
	 9+MTXGQ/XGgmVZ7UVI2NgF/cIICgml4BTI7AmZP/XBTNmdPWWxaSsD7Y91q7mcrKh+
	 dmr5TIzW4Wte/S2zFahF/f7407pYNHGxAsTxBEiZB57tvFd2zjaC0zrsaTdI8qceBX
	 MrSIuH3fFOZFTWYqoVst0Cju4wRDTxN3LgrzIPkYj2SWtnywrKty8oiVUUM/NF0Vnf
	 tQL6OCh8FQl+w==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7F41817E071A;
	Tue, 21 Jul 2026 11:36:31 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: jic23@kernel.org,
	sboyd@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	arnd@arndb.de,
	gregkh@linuxfoundation.org,
	srini@kernel.org,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	sre@kernel.org,
	angelogioacchino.delregno@collabora.com,
	krzk@kernel.org,
	dmitry.baryshkov@oss.qualcomm.com,
	quic_wcheng@quicinc.com,
	melody.olvera@oss.qualcomm.com,
	quic_nsekar@quicinc.com,
	ivo.ivanov.ivanov1@gmail.com,
	abelvesa@kernel.org,
	luca.weiss@fairphone.com,
	konrad.dybcio@oss.qualcomm.com,
	mitltlatltl@gmail.com,
	krishna.kurapati@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org,
	kernel@collabora.com,
	stable@vger.kernel.org,
	Sashiko Bot <sashiko-bot@kernel.org>
Subject: [PATCH v13 01/12] spmi: Fix potential use-after-free by grabbing of_node reference
Date: Tue, 21 Jul 2026 11:36:15 +0200
Message-ID: <20260721093626.96264-2-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260721093626.96264-1-angelogioacchino.delregno@collabora.com>
References: <20260721093626.96264-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_023634_940208_1B4F40B2 
X-CRM114-Status: GOOD (  10.91  )
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

As noticed by Sashiko during a review run of an unrelated patch,
in of_spmi_register_devices(), for_each_available_child_of_node()
is used to loop through children, and to also assign a node to a
newly created SPMI child device.

Problem is that the refcount is dropped at every iteration so, in
the specific case of DT overlays, a use-after-free may occur when
an overlay is dynamically unloaded!

To resolve this, increase the of_node refcount when assigning (in
function of_spmi_register_devices) and release the reference in
spmi_device_remove().

Fixes: bc32bbd04011 ("spmi: Set fwnode for spmi devices")
Cc: stable@vger.kernel.org
Reported-by: Sashiko Bot <sashiko-bot@kernel.org>
Closes: https://sashiko.dev/#/patchset/20260608100949.36309-1-angelogioacchino.delregno@collabora.com?part=2
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/spmi/spmi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/spmi/spmi.c b/drivers/spmi/spmi.c
index 57b7c0cb4240..f6d2f4bddfcd 100644
--- a/drivers/spmi/spmi.c
+++ b/drivers/spmi/spmi.c
@@ -24,6 +24,7 @@ static void spmi_dev_release(struct device *dev)
 {
 	struct spmi_device *sdev = to_spmi_device(dev);
 
+	of_node_put(dev->of_node);
 	kfree(sdev);
 }
 
@@ -517,7 +518,7 @@ static void of_spmi_register_devices(struct spmi_controller *ctrl)
 		if (!sdev)
 			continue;
 
-		device_set_node(&sdev->dev, of_fwnode_handle(node));
+		device_set_node(&sdev->dev, of_fwnode_handle(of_node_get(node)));
 		sdev->usid = (u8)reg[0];
 
 		err = spmi_device_add(sdev);
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
