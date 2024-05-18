Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70966C25B74
	for <linux-phy@archiver.kernel.org>; Sat, 18 May 2024 11:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IK8Ts9qu4f0vKxFhMcaRlTNZx4OajKbivLaiqVezfZM=; b=jIIB3rSxM4QQsU
	bOxFf7saqtXP/4jghu6ZHM1/aTO57C3SJH7i7NteAZlvnlyRmzPjlmrEZf7UiKMv4rhddGqH5Rv4V
	/E/qpO/8T860UYfXUAaxx0znK6eajTmiWHC3zT6VFiqIXQhIC0R57CsLRsafys4klUpkOO7PYHhiP
	QFrX7AVWWkjyptS3Tj52XPXZIPKD3cMzs1e2Ldt+m+AsaB7QgugZAIO54/r0JVanZjyfhACtMbKFU
	2NUY2rytyxSZxVAjQDRTh+yJ2BehswViUTwuoXsogoTiozQHgpO9rg0XpxH9aikWguW2UZyx33ytT
	DAr7R9l93Sb/pP7JYtsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8IJ3-00000009zNN-3eDe;
	Sat, 18 May 2024 11:32:53 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8IIt-00000009zIP-2mPo;
	Sat, 18 May 2024 11:32:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 58422CE0921;
	Sat, 18 May 2024 11:32:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EE82C113CC;
	Sat, 18 May 2024 11:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716031960;
	bh=FOaNOhnQCAYUzSOEttbjHnYtDiKqnkUNaK+WVRAR68c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=d1frlWGiVW7vgjT+FZK0Lx46iPYZGF/nPPhSB/QxLlzsJfDLmvxxefDOit9xBfY1Y
	 vuuENYvVhu872YdhALPLTvzRjsGf2FlmiQ2uDdmDfdCusrERRsaKzAEF5wbSuIzOBl
	 GWVoXPPjAZNKedfdv8Y/UJZI5q1I8u2rfMxHT0Tc7z44HvzXIJo+vx2n7pBeHc+jMf
	 RZ5xEDeCTvfyicR5ZhTi9xNwmlc5tLe4yudCi5HaRU6+u7/6Q5QkeHTLkLpuiAWl4R
	 RDCAqFdWqhloyCp0NW7AeSuCdn52blLWrLRfV0Mb/9oRyub4m+kcrMIG+FL9zxaG1Q
	 N5y6INwp1Km7g==
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
Subject: [PATCH v3 4/4] arm64: defconfig: Enable Airoha pcie phy driver
Date: Sat, 18 May 2024 13:31:44 +0200
Message-ID: <10f28b494988882187ec4c870c70ed09edc9c064.1716031610.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <cover.1716031610.git.lorenzo@kernel.org>
References: <cover.1716031610.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240518_043244_001731_28C9E486 
X-CRM114-Status: UNSURE (   6.44  )
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
index a53c58584bcf..de3feacde776 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1479,6 +1479,7 @@ CONFIG_RESET_QCOM_AOSS=y
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
