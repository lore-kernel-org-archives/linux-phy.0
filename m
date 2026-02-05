Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4745EC1EA6
	for <linux-phy@archiver.kernel.org>; Thu,  5 Feb 2026 12:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-ID:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yxtq2HNB4qz08T+CC8K6F8s8zDeuGcy2wkzoeSIJ824=; b=fp4M+YbiXgONAY
	rv/kcoHs/t36AYvr4yD4/SI/ifcXs/9tOem+6J35ShGvg5oYE5LW5T36YU2kZuhW3ud/93SnOwUnp
	YIoaOWbdOcGIy+AsD642RQLxRSNv9WPQH6OwCH3tepAntEwCaR3SFVj9zQyZ7Ge9eHNAfSOp4AHyU
	e4GwRIOASEfQeno4NmHIcvhKiUOIjZlSS4Adpb7SA+d+z/He1BsJQXurHE5UInyucP0skhjfrLeOd
	nMffHjt13KDT9A5HmvW3+3Vdpqvhm8NgcfgXYqWJYyInB/b7jZUdWNo3XBeJhrmsCF4hHIfdMbRCs
	lY6Ht2CzykR2ORtc1Sug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vny4I-00000009rFn-2AHY;
	Thu, 05 Feb 2026 12:02:42 +0000
Received: from mxout70.expurgate.net ([91.198.224.70])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vny4F-00000009rFQ-1NQI
	for linux-phy@lists.infradead.org;
	Thu, 05 Feb 2026 12:02:40 +0000
Received: from [194.37.255.9] (helo=mxout.expurgate.net)
	by relay.expurgate.net with smtp (Exim 4.92)
	(envelope-from <prvs=451014665c=fe@dev.tdt.de>)
	id 1vny43-00H705-S1; Thu, 05 Feb 2026 13:02:27 +0100
Received: from [195.243.126.94] (helo=securemail.tdt.de)
	by relay.expurgate.net with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <fe@dev.tdt.de>)
	id 1vny42-00H6yV-9N; Thu, 05 Feb 2026 13:02:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dev.tdt.de;
	s=z1-selector1; t=1770292945;
	bh=7tYuSUIFO3bNlvD56jcySwCVe0ZQSlHEZveCIdZShmc=;
	h=From:Date:Subject:To:Cc:From;
	b=KPQCjZ/kGxxzve4GOq0lDTPtuufT7AL6PjpiztTMxr9OOpf1PN7Kz7rl2JkSQYWA1
	 eUuidcdPsHRuJG+Tnn2K7Nc1t85JnPrGWG1CULMUfT0tHB/+qoBHY+UYFIbi9tX8Bq
	 twTQ+XbtY6AJA11ki+IJnOygF/BHxsjHRhIQOTKSbolPVaRnRklqKNlOy/FtDDLjpn
	 X7baniZxOtbXxRMlZHfaLdkHdbrzZEVVfLDlUJvl+G4IEnESuO2uF8tzq6QIxgw+h/
	 NOmzkAj3eq7PXX1F9xFz9WXsBQ2yjbKZQQ/jvaSUHi4S3/jYJ6c3+JCLmJb3kp6Hvw
	 FFtcVuaiwfx8g==
Received: from securemail.tdt.de (localhost [127.0.0.1])
	by securemail.tdt.de (Postfix) with ESMTP id D1EB7240040;
	Thu,  5 Feb 2026 13:02:25 +0100 (CET)
Received: from mail.dev.tdt.de (unknown [10.2.4.42])
	by securemail.tdt.de (Postfix) with ESMTP id CB7FE240036;
	Thu,  5 Feb 2026 13:02:25 +0100 (CET)
Received: from [10.2.3.40] (unknown [10.2.3.40])
	by mail.dev.tdt.de (Postfix) with ESMTPSA id A6BA22282D;
	Thu,  5 Feb 2026 13:02:25 +0100 (CET)
From: Florian Eckert <fe@dev.tdt.de>
Date: Thu, 05 Feb 2026 13:02:11 +0100
Subject: [PATCH] phy: intel: phy-intel-lgm-combo: Add missing boot trigger
MIME-Version: 1.0
Message-ID: <20260205-phy-intel-lgm-combo-v1-1-dc6e58919585@dev.tdt.de>
X-B4-Tracking: v=1; b=H4sIAMKGhGkC/x3MTQ5AMBBA4avIrE1SQwlXEQs/g0lopRUhjbtrL
 L/FewE8O2EPTRLA8SVerInI0gTGtTcLo0zRQIpKRUrjsT4o5uQNt2XH0e6DxamqSZPOirzOIZa
 H41nu/9p27/sB4qpCEmUAAAA=
X-Change-ID: 20260205-phy-intel-lgm-combo-d79252514393
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Dilip Kota <eswara.kota@linux.intel.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Florian Eckert <Eckert.Florian@gmail.com>,
	Florian Eckert <fe@dev.tdt.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770292945; l=1629;
 i=fe@dev.tdt.de; s=20260205; h=from:subject:message-id;
 bh=H2b9qe82F3NXpW5+PmGfSXkyJVfUW6/VsUT/F2lRB8A=;
 b=jlcmrRnyqyHtHGxvEfkimYfaUomV9WJNsim11m/h2MIjd02Ljz2jcamqh+AazeFaID2fZKMkS
 ibMmEm4Vsf6Axx6oxk0RNGjBVpnjx6ymDhB3tf5RRbAxOzqskgYV+gl
X-Developer-Key: i=fe@dev.tdt.de; a=ed25519;
 pk=q7Pvv3Au2sAVRhBz5UF7ZqUPNxUwXQ78Jdqu8E6Negk=
X-purgate-ID: 151534::1770292946-B6E69F62-166307F9/0/0
X-purgate-type: clean
X-purgate: clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_040239_541471_1A66E6B1 
X-CRM114-Status: GOOD (  12.17  )
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

In the current implementation, the PHY firmware is not started on the LGM.
The PCIe RC cannot establish a connection to the PCIe EP via LTSSM, because
the PCIe RC on the PHY is never started. Setting the bit 1 in the
PCIE_PHY_SRAM_CSR app register boots the PHY firmware.

This changes are based on patched kernel sources of the MaxLinear SDK,
which can be found at https://github.com/maxlinear/linux

Signed-off-by: Florian Eckert <fe@dev.tdt.de>
---
 drivers/phy/intel/phy-intel-lgm-combo.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/phy/intel/phy-intel-lgm-combo.c b/drivers/phy/intel/phy-intel-lgm-combo.c
index 9ee3cf61cdd00439f6a9b76c715aec0fa95c8a15..61690d418a5632d4b0c685116a443edba1fe8363 100644
--- a/drivers/phy/intel/phy-intel-lgm-combo.c
+++ b/drivers/phy/intel/phy-intel-lgm-combo.c
@@ -24,6 +24,9 @@
 
 #define PAD_DIS_CFG		0x174
 
+#define PCIE_PHY_SRAM_CSR	0x08
+#define PCIE_PHY_SRAM_LD_DONE	BIT(1)
+
 #define PCS_XF_ATE_OVRD_IN_2	0x3008
 #define ADAPT_REQ_MSK		GENMASK(5, 4)
 
@@ -345,6 +348,16 @@ static int intel_cbphy_init(struct phy *phy)
 
 	cbphy->init_cnt++;
 
+	combo_phy_w32_off_mask(cbphy->app_base, PCIE_PHY_SRAM_CSR,
+				PCIE_PHY_SRAM_LD_DONE,
+				FIELD_PREP(PCIE_PHY_SRAM_LD_DONE, 1));
+
+	mutex_unlock(&cbphy->lock);
+
+	/* 15ms is required for the FW to take effect after load */
+	mdelay(15);
+	return 0;
+
 err:
 	mutex_unlock(&cbphy->lock);
 

---
base-commit: 18f7fcd5e69a04df57b563360b88be72471d6b62
change-id: 20260205-phy-intel-lgm-combo-d79252514393

Best regards,
-- 
Florian Eckert <fe@dev.tdt.de>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
