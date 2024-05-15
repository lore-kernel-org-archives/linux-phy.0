Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F2F1C25B75
	for <linux-phy@archiver.kernel.org>; Wed, 15 May 2024 10:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iHMFVVL1Zwq82xl+h4RDgpcSQ99oEI63p6nApwjOOMI=; b=tiuKtaYgNkQkRZ
	Ahx4Jq4OAOSWcHVaqZvuSOHq7c4Vhz/V5paZcOchwwgtr7CQYE4tOQP0rFA0mfd01qXnWJ9AYNSe7
	8rEuc4gxcN7Lf+dQlj9YDsh+W9nUcBBo0Gp6zu6ieWKPFGXBfQfJVF3+P8DQfvl0jktE3QRtQbpq4
	w4RHCFuqYwj2qZnBHNn/9nMvPBcREPCvV3qYWKkEziVqvEwdE7+5G510yw+JBRBJDBDXML0/X/TGo
	yf4ldSo3NFCEbI6SISbOV3ivKa5WKmcXQIXU1Sg/EgzgEbVGIeClx3570+I3MLriYw1+Ga0+T9Wl2
	qA1pjcPBz2VBJblTmnhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7C8M-00000001GPD-0Yms;
	Wed, 15 May 2024 10:45:18 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7C8H-00000001GN2-31mm;
	Wed, 15 May 2024 10:45:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2E07F61472;
	Wed, 15 May 2024 10:45:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76D27C4AF07;
	Wed, 15 May 2024 10:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715769913;
	bh=AnFR5qPMw1kGgoI87g6NMIoNqxYv5v092iW1SnSHyZQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IZ3h9RVDYBhTzKYoKc/15mPM6Hes+FDavK8RSGpw2z5+8XsT8Sgaz9MoE2dVjS6/w
	 LucpZo8VjpPgMvWnwAhZAziQmVDKbyxCq7EHBny4Xv/BVOmys4RScn3Xl5FAR5B5b9
	 9Qw4v9KokC9ozlU4JGgVzCrxqqu6iJpK2EgmtOQOdju3JJ0iloTgAL2+DDo5Syvthc
	 p5Aai7k9hHnTjwVyyy1ftUVKrqwhVo1MEHRmDQdvS2Dwg98M6Vr3RtfhRAtQJ07qQf
	 hYziQHQxc1cefOMgidPSwEVUw4fCbmAWhUW5Uvn3xIgYDXYXMC8glG33uyiYDYdWDA
	 vAZTi+NA7UMGw==
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
Subject: [PATCH v2 4/4] arm64: defconfig: Enable Airoha pcie phy driver
Date: Wed, 15 May 2024 12:44:48 +0200
Message-ID: <3ed6056ff5aa71312e5e60d70267ea9663bbf2c8.1715769325.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <cover.1715769325.git.lorenzo@kernel.org>
References: <cover.1715769325.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_034513_909499_D641E378 
X-CRM114-Status: UNSURE (   6.73  )
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

Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index a53c58584bcf..c0eacced5d41 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1479,6 +1479,7 @@ CONFIG_RESET_QCOM_AOSS=y
 CONFIG_RESET_QCOM_PDC=m
 CONFIG_RESET_RZG2L_USBPHY_CTRL=y
 CONFIG_RESET_TI_SCI=y
+CONFIG_PHY_AIROHA_PCIE=y
 CONFIG_PHY_XGENE=y
 CONFIG_PHY_CAN_TRANSCEIVER=m
 CONFIG_PHY_SUN4I_USB=y
-- 
2.45.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
