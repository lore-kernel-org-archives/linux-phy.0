Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC482606A331
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 11:31:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=k8wj7svM;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=uJ3srX7D
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=N3syg5se3WjDv+JnIk0qpgiCvpuKLvo1v+FMr4EE2ZM=; b=k8wj7svMJrL2KLb5AO/oH73Mzj
	xEOzDB/2sS0V1APiDm61DPkjj4sAM6sWCoWH8NDGC4JC5xJ69uFA3LxzEES1th3tpqx/0OZQci7Nf
	6BS7mWYFKDsb76lAAiDHw+fRUy2FhKT8R9GfBSNCe/ywgRStDEvPt6DlV42DN3Ux3p0o/t2wFVLyi
	pnM9Su/EoUGWK0rlOfvhaW4eufBmJQAQH4k7MMYDcoI9GPF0MIGe9zCYg7JQNWeqhybp1UMX5AFaa
	2CHwu1rcYOWGmyj1jJba4Odctvd0+IS8h8Pg1ZbCSDuFdY0q6lK2e1Ruy+1K4tOLIiXYvquygw6uM
	QF2HI1RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQNbJ-00000000WzJ-1Uxu;
	Mon, 09 Nov 2026 11:31:49 +0000
Received: from mail-dl1-x1236.google.com ([2607:f8b0:4864:20::1236])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQNbG-00000000Wys-1Otp
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 11:31:47 +0000
Received: by mail-dl1-x1236.google.com with SMTP id a92af1059eb24-1931ff67a29so1963398c88.1
        for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 03:31:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794223905; x=1794828705; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=bIa1ynwYPh6ExB4St17D8gCLUqTxfSws2zY1owFapPk=;
        b=uJ3srX7D4hd3InhTPMnDBQKuKQ5Tn3BYYL6UHntoA3qz9tC0lOC5xixmXKUKTbJ1SI
         mPXhRrhl/XQX2wRH6vyVlCdF1JZxnZQN9fLuGDXKs41GbH43I2nb4bgW81DWWgxA+jqo
         0nE6cS+DH0O+LgvMpRcBB0r+QsuIqcHfyYA9EaEznMDyGA6MdH/VKAypn8v0Ul15uUFz
         Xc9k3sxbIlxnGIZXa2fZbUEJP9wtKUTKocLSAt9pi9/kfOaSH3ueD+7u2KdriFPttVDe
         CusylGWQBE6W4hj5K09e/PCqdlb8aKwz0dQ/Zk5DMFRKdiGBbKxmEaXQPSCwHJ0NRTRL
         PPvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794223905; x=1794828705;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bIa1ynwYPh6ExB4St17D8gCLUqTxfSws2zY1owFapPk=;
        b=auCkz80/dC3V/k0gvYGqdZwpTCN8op/418vOUUw68iBkAdoQE98ZFNrcndypq43teG
         KpDISKENSAOkoMBwwhdIiss3vLXo4kpCQxCz6Jh/WeaLMzl2vsuGNotxFsijj3lno3TU
         79L82f9xycSuE+dWsV0pkL6Ru6XOQ9Hgjr58FrOnSyhSIh77d/BY04giDT6Ys4JAi5HY
         LhKXKpj3b9X4j/kxu8WkKDWaquLWhxh1b5ZSoZ8MFl078nADWI1AetP0sygF2EBXAQQG
         BL/+qLadj98hpUHaXmK4OvfFu9ppb05btCmB9BRBzC38AEKBohc0CtyHQxK06XBjFinV
         93Mw==
X-Forwarded-Encrypted: i=1; AL+hErEeU3MDpxgHCuZbTBkUyhP1cTq9WYWoEiOb0X/hlsYUBwg/vFM8JDspNYnPPf7XSsxhj5TCq5dueEc=@lists.infradead.org
X-Gm-Message-State: APuU4Z8zEp1bX0XPXzIO7UuhgWIClhvxM1ps0VZSphgPvmwm/IW577/f
	60+C47YM5P6TW4WVpuj5J0SZZ8DLBThG3/RLU+SgAwAFPcCmVzc0sPoP
X-Gm-Gg: AYBFou2W/eeCspmsub8YyXogt80H0mwfHwaNsBph+2KTE4Vew115TCmZ6zf8FD/K3VW
	6jqdqJqdicpaM7YdSjd+faDoPG3jTopXX0tjWKoV6ZAAz0R/qtYWy7TRCYnENjmU+jLzLbjFEAd
	0jP/kDht5RdWice3FFxVry0RT3T2udcQEhrqIRzeKiSNotJc9b43pGlH69EMMxYY2OtAYEBt4W2
	Cy7VxN/fUeIDnV4UO6binmvQL0B/AoiSx5g3Rv2GRnMx+CPzZ27eUR6IHOeoyMiGXW07318axH5
	ZNL3SRPCxJr4hZAjE887Xc5GxTnMwoQz3DuxtvBQDiTUNdd7EBxXNi1CmKUnUx0H/UUKwYhoJR8
	zo8k4Yy5ZYAS3Gj6TquxrCaVG9kc4WFGpz3bE/wUXZ6QoIRxx3tjjXfPinSDYrgU1sVTCO3bAOL
	3s6PgPgm2uwvU7VRY9ZTm78fVaAc7K91Z0bdKp5zeIVh+Yza0ZM7l4Ko0MFO5IpuSuBXHKjLDpw
	X7TzJ5x7n5cT090d+Ruq2MXKVwc3d9MPs3VtLQgvfumrKkUOAER9/uhH5kLiK0M9+19DOeo/373
	XShiFb4fcM1BjmHjycq3ltSf0rx19QCS/9F3SvvtfMeP2RRWc04HkuzclWwMdOwO5QCcCw==
X-Received: by 2002:a05:701b:2401:b0:1a1:47b2:5512 with SMTP id a92af1059eb24-1b39feececfmr6126165c88.26.1794223905110;
        Mon, 09 Nov 2026 03:31:45 -0800 (PST)
Received: from hj.. ([163.239.22.29])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b3771f0e0fsm17762322c88.20.2026.11.09.03.31.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2026 03:31:44 -0800 (PST)
From: hyunjungg <hj351016@gmail.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org,
	Hyunjung Ko <hj351016@gmail.com>
Subject: [PATCH v2] phy: rcar-gen3-usb2: cancel OTG work on unbind to avoid use-after-free
Date: Mon,  9 Nov 2026 20:31:21 +0900
Message-ID: <20261109113121.1534929-1-hj351016@gmail.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_033146_377927_A6D5F795 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Hyunjung Ko <hj351016@gmail.com>

The OTG role/VBUS interrupt (rcar_gen3_phy_usb2_irq) and the role sysfs
attribute schedule channel->work (rcar_gen3_phy_usb2_work), whose handler
dereferences the channel (ch->extcon). The channel is devm-allocated, so
it is freed at unbind, but nothing cancels channel->work:
rcar_gen3_phy_usb2_remove() only drops the role sysfs file. A work
scheduled just before unbind can run after the channel has been freed, a
use-after-free.

Cancel the work via devm, registered before the interrupt is requested so
that on unbind devm frees the interrupt first (no new work can be
scheduled) and then runs the cancel action before the channel is freed.

Fixes: c14f8a4032ef ("phy: rcar-gen3-usb2: fix mutex_lock calling in interrupt")
Cc: stable@vger.kernel.org
Signed-off-by: Hyunjung Ko <hj351016@gmail.com>
---
Changes in v2 (thanks to the Sashiko AI review):
 - correct the Fixes: tag to c14f8a4032ef, which introduced channel->work
   and rcar_gen3_phy_usb2_work(), rather than 2b38543c8db1 which only added
   synchronous extcon handling
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index b5ba751..35e519a 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -1171,6 +1171,13 @@ static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan *cha
 	return rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(channel, enable);
 }
 
+static void rcar_gen3_phy_usb2_cancel_work(void *data)
+{
+	struct rcar_gen3_chan *channel = data;
+
+	cancel_work_sync(&channel->work);
+}
+
 static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -1277,6 +1284,17 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 		return irq;
 	} else if (irq > 0) {
 		INIT_WORK(&channel->work, rcar_gen3_phy_usb2_work);
+		/*
+		 * Registered before the IRQ so that, on unbind, devm frees the
+		 * IRQ first (no more work can be scheduled) and then cancels any
+		 * work still pending before the channel is freed.
+		 */
+		ret = devm_add_action_or_reset(dev,
+					       rcar_gen3_phy_usb2_cancel_work,
+					       channel);
+		if (ret < 0)
+			return ret;
+
 		ret = devm_request_irq(dev, irq, rcar_gen3_phy_usb2_irq,
 				       IRQF_SHARED, dev_name(dev), channel);
 		if (ret < 0)
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
