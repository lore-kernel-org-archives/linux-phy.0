Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12EFBC6FD1C
	for <linux-phy@archiver.kernel.org>; Tue, 14 Mar 2023 13:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQD8a4qM2enrmNbRty2DYN3qUaZM2eeFtZMfRUXzbYU=; b=nypnKxSkT9X4gk
	EumVXgD0V33CgNYWJPPBHkF5p/294g/QZpD/jtM+fUQJV9dhNzGvkB8kD3pVrriBxhDE4jMjW1CeK
	VlKLE4Bx5Zis3EeRtuIdVj3YUDLHDmyeIoHm9SCKjY3Az0hpr1sYW+61NClCmb7EwpGN/nv7AsAH4
	Pl1vvv+NfziRY0BQbWtGg7HRFhxmLymEENDZt1bI1u/REo11rpJOJoBxXp6RjgfRa+6KttaBn/DsU
	NkZ8deIaOvH227RCwhQiEukp8N4aPdxQ+0vIx1ruzN57kBZRkCh/oY6vcxwQyKDx04B57ESINLnMO
	3Y50YOgeSooYq7R88S6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc58M-00AMkL-2K;
	Tue, 14 Mar 2023 13:56:10 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc58D-00AMgo-2L;
	Tue, 14 Mar 2023 13:56:06 +0000
Received: from cryzen.lan (cpc87451-finc19-2-0-cust61.4-2.cable.virginm.net [82.11.51.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: tanureal)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0E79B6603090;
	Tue, 14 Mar 2023 13:56:00 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1678802160;
	bh=ZZahE9JSrPkzg/zm+yoNFoJeAVT05GCmvbz2DG+yJLc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NdLLqqV0r45R4BiDUuh1aO+O2+2TIvmpCVTh9TAQ3FWmD73sJghKtJMYT+DvfLySq
	 mX2PtFPSiBB8TnEkhgG8/unbLra/ywdkvsIaAri9WMWc3SxTTTerW4uzICsp2CnD9V
	 aZ97sXZ8eGxUYHLHRWQJMZTa7xhSFvJcJBdI6BObuIQAsJPFadPG7xYTWAbUKZZHvP
	 j34o672CQArcczJu8DyTQSJsaVTy6wYIeWi4zz0JXLcbDKg2us43UofnBFz+mLForN
	 RCf/vfoZSZ+PywHiwEyeZEwdgqZBJs+xxFH9JzSMsYl3kaNKox5dGbTtq20EduxciE
	 lnKS/9Th/j+nA==
From: Lucas Tanure <lucas.tanure@collabora.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: Qu Wenruo <wqu@suse.com>,
	Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Lucas Tanure <lucas.tanure@collabora.com>,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCHv2 2/3] dt-bindings: phy: rockchip: Add rk3588 compatible
Date: Tue, 14 Mar 2023 13:55:54 +0000
Message-Id: <20230314135555.44162-3-lucas.tanure@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230314135555.44162-1-lucas.tanure@collabora.com>
References: <20230314135555.44162-1-lucas.tanure@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_065601_942774_C5710C90 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
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

RK3568 Naneng Combo Phy driver can support RK3588 with the additional
clocks and initial configuration, so add the compatible line.

Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 8d8698412de0..9ae514fa7533 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -13,6 +13,7 @@ properties:
   compatible:
     enum:
       - rockchip,rk3568-naneng-combphy
+      - rockchip,rk3588-naneng-combphy
 
   reg:
     maxItems: 1
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
