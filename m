Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AF09C2BA12
	for <linux-phy@archiver.kernel.org>; Sat, 15 Jun 2024 21:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xLs1CuoFyaiaSnKTVHg5qOuhteEYf6GFP09QlFubb5A=; b=TtKCVaT5Gd2XqF
	10ePX0oHkl2LR5u7fef8l7MkZBH+BNEPllfaGoKKPa+oXpj3K4GJ4s3zlIZ2yRCU+Ry3A83l+Mt4W
	PalJQUzUNgsN1X7HwUW8TKy34yN3uQacVs+M4tjBk55frKZ51RsYKAX8VxR6SGKacmKQOz76JGeLc
	MppFz8oyjKz8KtMj+VNeD5fmq4f6nL41VyiyfyoDEYVV7/V8KSh2dp3m+sNeMcyWo3vPwTwn49q/C
	2u4mc9tcVasKjp/hJP1m5hW0hY7lI6EtXJr3Ejc9rQR8OcGnq9e4HtM9lffEecFuvsVMBtcDlq7+M
	rZRbuTeHPcMHRlJ8pHSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIalD-000000067eC-0g6U;
	Sat, 15 Jun 2024 21:16:31 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIal6-000000067b6-2FkT;
	Sat, 15 Jun 2024 21:16:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 41423CE0966;
	Sat, 15 Jun 2024 21:16:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB5D7C116B1;
	Sat, 15 Jun 2024 21:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718486181;
	bh=Ei3xb2tn6MotVLfGlVMycCcgvxSaZ1QDM3tqgfK9vv4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fuKySHuwo0SuLMdlFAgF+bRSK9aaPI8KKMW86GrjvETVYvI0aUYdJ/3FjcU56wKwz
	 ySyHTFRpPQOwP3s6WX0Tt9V0WKrWTrzG40FboeMF3kumRxN+N9RJWY8OwsyF3rTo6X
	 tsxvRIYsNJEZOrYVhfdwNxhe5MS2Ktsxc5HzdUQXWBCJsPVFSbKd3FwkaSOU2W7BEn
	 FtzZave/KdLINN/t+3VW+TAwkvd+ZJV88UKjrZSdU7I9k2EPhRrdsfiQxh1LQVIjWa
	 pUHUQQdz3R6pVaxXe4UyhRAz7oH8lSPKspybnshGddizCpJ9/YUlW38ldpOCFskv0N
	 AMsvmUpLc6U8w==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-phy@lists.infradead.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	lorenzo.bianconi83@gmail.com,
	conor@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	nbd@nbd.name,
	john@phrozen.org,
	dd@embedd.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	upstream@airoha.com,
	angelogioacchino.delregno@collabora.com,
	amitsinght@marvell.com
Subject: [PATCH v4 3/3] arm64: defconfig: Enable Airoha pcie phy driver
Date: Sat, 15 Jun 2024 23:15:43 +0200
Message-ID: <ecd38790c8cf5193507421458f0eda853ff58609.1718485860.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <cover.1718485860.git.lorenzo@kernel.org>
References: <cover.1718485860.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_141624_787454_9A8851BE 
X-CRM114-Status: UNSURE (   6.43  )
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

Enables the PHY_AIROHA_PCIE config by default.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 57a9abe78ee4..b338a9675c34 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1497,6 +1497,7 @@ CONFIG_RESET_QCOM_AOSS=y
 CONFIG_RESET_QCOM_PDC=m
 CONFIG_RESET_RZG2L_USBPHY_CTRL=y
 CONFIG_RESET_TI_SCI=y
+CONFIG_PHY_AIROHA_PCIE=m
 CONFIG_PHY_XGENE=y
 CONFIG_PHY_CAN_TRANSCEIVER=m
 CONFIG_PHY_SUN4I_USB=y
-- 
2.45.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
