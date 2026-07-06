Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C50CFC43458
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jul 2026 22:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WgZHnIrbY/xVvrDW466pcqmSQPwg5xyEnxbwg31c0y4=; b=4VbRtwOmvcwCNK
	5OCUpmEtF84WL6XdPD8DgecYBWFmJvnLmkk9CF6IwzP2fl4pIAyb6wpBlKBI7lNAd3TrSKV/vVM6p
	DvqCCirWlU8x+0SLqPzLcHtrIjlkDVIpGuPmh815xfQ6qFvKhvWivOasRkX+11Nk+oMXldzy2GiMz
	cYxFnB9nowI2bYw4ytrAI6QceevD0OutLkY3R+Z2A4dud9PwZMLdQ0PZH/6iTCYI2rCENiRlsDu1c
	qwVJpX07x9684v+yqv9+p3uw8djq7KYDgXVR8IKvBmSYA5KkdWvzjhkOshNRB29ottQc9AQ6eC/5g
	RzSbNGHUCoG9D5O33ECA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgrvf-0000000Dj6V-043B;
	Mon, 06 Jul 2026 22:36:43 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgrvb-0000000Dj1u-0TXI
	for linux-phy@lists.infradead.org;
	Mon, 06 Jul 2026 22:36:41 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-475417f010dso1938864f8f.2
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 15:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783377397; x=1783982197; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yAJbvFky4pXbE6G3CrtVZQ+RGiAcp1hVwbCEVyEV8E0=;
        b=CeQ/U4+KBSVQcoHBP+knAMCPl86HCVWpFJe5qQTE2S3ldgHce/En0OuEFGp+AVCH3l
         fupCE+XdFPA+sifte2M9cknOOqamm31podLD0qxSrZ4fdgi0qXGw0nj5SscyMs7IceGw
         ntonf7LA/VY/2c2leRoeAzYlLUcQV9VdCWcASv+IcF6IjSTkQAGpzkkNTJsnQqMj+8Um
         zAl9LR5fMYaap2mvyqyRKiI8peKg3oAl7s5jbeSCEKtUF5PsrIbBydbJbWN25ANB7Qt9
         Rmf8sxxXXGGvTeKxWjNsG2xMZgM7RhnrYPhLzQ2Ax1KeV2X6zrvkD+aYqdMqAbbxk0uR
         5vqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783377397; x=1783982197;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yAJbvFky4pXbE6G3CrtVZQ+RGiAcp1hVwbCEVyEV8E0=;
        b=aYlSr1hMFK4H+ErVigpRR+F30RW7/m41X8PQ+ZEaT/iIqNZp9qJz0trOpFZQw+2y1N
         7++O33+2oheNXk0ubSt2VYw7c6V3v5ERvJDf5xb7cxL66GePDLFvkzcYgjokTBxryjNL
         q3+EgVwgPjy9TOpddkoWaeAlXPj3ZQKDrtWIgubO08L9UUcquU/m+0YnVce8323suRvI
         2DF7MvJBhqu0WIu3aztuamrcqC2weoH9kSDoiu2bj3KZRIac3gD+sQj7D70eyg6i3+Ga
         M3JJlxYcESmB5rC/Haa2jy3qSJX4wx+VXPs9w0xVTZp5z8WnJngj5LNAVrTDkR0iF2dR
         b1+Q==
X-Forwarded-Encrypted: i=1; AHgh+RpVxRNE2+4UKG3rvLEoS5EdcTVLvOasvt8E9rICL8vyv9fiiDTIjmGPIf4m/+BMbyulEBqwvir+eXk=@lists.infradead.org
X-Gm-Message-State: AOJu0YyByFPC44If5Xv0Tqw/lMw2DBjqMWuo5in088vEQg/ZGg1Nxdez
	6/jx1fk+afALFLkRFboD4TAXlRYRNGil6Rsd8ZZpjoy390lT6jTRrWZo
X-Gm-Gg: AfdE7cngodSWnQ4h84h3s2KignsuPCrbYDy8o0pDaFcsFPBAFOGSaDSWMny1j6fQuly
	0SsluV532ecKPm5LBnEhAe+LK367HLoODTU2Y8C54NNk0x3HaX2f04NtbS9RS6aue+s1iZv/1QI
	FX+8jXv3/hYGRlcgFyzY9aooCXmqkbagED7u6KSbdH/tDa6+RFAxEylZFC07mJABLDPEGHKrpcw
	ggr7lS3feF7sJm8llQxmgXU429cqAbA4H/9DJkZHbFmTX8xdyoVmG0DJgSJ8PMSKWGv8XxxEWng
	5p+ulxSqUqelEOLkxKLufCwBXjOy1Fm/7u/8/+s2ELrFYl5aHdalPyaOeI6d8xkVT3v/sk7d9fm
	Y9GhJG10qS1AfRnvjbaFPru/259XOQxkQ41A7aDs3YqTTHB7D0P3BrS3B+k62zxhtQ4QeQRpJJs
	dZMlW9sDcLZR+kArsDMAf0MJa1mqDvRpw9FxPt5AbSAaakiMVkhfs3fZq8y96mgg==
X-Received: by 2002:adf:f043:0:b0:475:cd6f:720a with SMTP id ffacd0b85a97d-47de666af65mr1504971f8f.1.1783377397013;
        Mon, 06 Jul 2026 15:36:37 -0700 (PDT)
Received: from turbine.fritz.box (p5785b224.dip0.t-ipconnect.de. [87.133.178.36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9e4d6da9sm27491387f8f.12.2026.07.06.15.36.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 15:36:35 -0700 (PDT)
From: Andreas Zdziarstek <andreas.zdziarstek@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Frank Wang <frank.wang@rock-chips.com>,
	Louis Chauvet <louis.chauvet@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Andreas Zdziarstek <andreas.zdziarstek@gmail.com>
Subject: [RFC PATCH v1 1/2] phy: rockchip: inno-usb2: keep peripheral-only OTG port active
Date: Tue,  7 Jul 2026 00:36:26 +0200
Message-ID: <20260706223627.113814-2-andreas.zdziarstek@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260706223627.113814-1-andreas.zdziarstek@gmail.com>
References: <20260706223627.113814-1-andreas.zdziarstek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_153640_269450_C04232E1 
X-CRM114-Status: GOOD (  14.78  )
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

The OTG state machine autonomously suspends the OTG port whenever it
decides no usable VBUS session is present. On the initial sample after
init, when a dedicated charger is detected, on peripheral disconnect
and on host-session end. It calls rockchip_usb2phy_power_off()
directly, underneath the USB controller.

For a dr_mode="peripheral" port this kills the USB gadget on any boot
without an attached cable. The state machine suspends the port shortly
after init, resulting in "failed to enable ep0out", ep0 start transfer
returns -EINVAL). The gadget remains unrecoverable in user space
afterwards.

Skip the state machine's autonomous power-offs when the port is
peripheral-only. VBUS detection, extcon signalling and charger
detection are unaffected, and controller-initiated power management
via phy_power_on()/phy_power_off() keeps working.

Signed-off-by: Andreas Zdziarstek <andreas.zdziarstek@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 27 +++++++++++++++----
 1 file changed, 22 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 7d8a533f24ae..9b138b7aaeb8 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -670,6 +670,23 @@ static const struct phy_ops rockchip_usb2phy_ops = {
 	.owner		= THIS_MODULE,
 };
 
+/*
+ * Autonomous power-off from the OTG state machine or charger detection.
+ *
+ * A peripheral-only port shouldn't be power-gated behind the controller's
+ * back. If the gadget (re)binds while the PHY is suspended, the
+ * controller's ep0 setup fails and the gadget stays dead even when a VBUS
+ * session appears later. Keep the phy active on peripheral ports for
+ * correct connection detection.
+ */
+static void rockchip_usb2phy_sm_power_off(struct rockchip_usb2phy_port *rport)
+{
+	if (rport->mode == USB_DR_MODE_PERIPHERAL)
+		return;
+
+	rockchip_usb2phy_power_off(rport->phy);
+}
+
 static void rockchip_usb2phy_otg_sm_work(struct work_struct *work)
 {
 	struct rockchip_usb2phy_port *rport =
@@ -693,7 +710,7 @@ static void rockchip_usb2phy_otg_sm_work(struct work_struct *work)
 	case OTG_STATE_UNDEFINED:
 		rport->state = OTG_STATE_B_IDLE;
 		if (!vbus_attach)
-			rockchip_usb2phy_power_off(rport->phy);
+			rockchip_usb2phy_sm_power_off(rport);
 		fallthrough;
 	case OTG_STATE_B_IDLE:
 		if (extcon_get_state(rphy->edev, EXTCON_USB_HOST) > 0) {
@@ -719,7 +736,7 @@ static void rockchip_usb2phy_otg_sm_work(struct work_struct *work)
 					break;
 				case POWER_SUPPLY_TYPE_USB_DCP:
 					dev_dbg(&rport->phy->dev, "dcp cable is connected\n");
-					rockchip_usb2phy_power_off(rport->phy);
+					rockchip_usb2phy_sm_power_off(rport);
 					notify_charger = true;
 					sch_work = true;
 					cable = EXTCON_CHG_USB_DCP;
@@ -765,7 +782,7 @@ static void rockchip_usb2phy_otg_sm_work(struct work_struct *work)
 			rphy->chg_type = POWER_SUPPLY_TYPE_UNKNOWN;
 			rport->state = OTG_STATE_B_IDLE;
 			delay = 0;
-			rockchip_usb2phy_power_off(rport->phy);
+			rockchip_usb2phy_sm_power_off(rport);
 		}
 		sch_work = true;
 		break;
@@ -773,7 +790,7 @@ static void rockchip_usb2phy_otg_sm_work(struct work_struct *work)
 		if (extcon_get_state(rphy->edev, EXTCON_USB_HOST) == 0) {
 			dev_dbg(&rport->phy->dev, "usb otg host disconnect\n");
 			rport->state = OTG_STATE_B_IDLE;
-			rockchip_usb2phy_power_off(rport->phy);
+			rockchip_usb2phy_sm_power_off(rport);
 		}
 		break;
 	default:
@@ -838,7 +855,7 @@ static void rockchip_chg_detect_work(struct work_struct *work)
 	switch (rphy->chg_state) {
 	case USB_CHG_STATE_UNDEFINED:
 		if (!rport->suspended && !vbus_attach)
-			rockchip_usb2phy_power_off(rport->phy);
+			rockchip_usb2phy_sm_power_off(rport);
 		/* put the controller in non-driving mode */
 		if (!vbus_attach)
 			property_enable(rphy->grf, &rphy->phy_cfg->chg_det.opmode, false);
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
