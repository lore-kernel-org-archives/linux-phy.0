Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64577C25B4F
	for <linux-phy@archiver.kernel.org>; Sun, 12 May 2024 15:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QLeGIYs5Uv8Ur+KE1h0TVvUihPQ1mi+tNHyLW+seiGw=; b=0mHJtzGpsmiM36
	8f5OKlTHvFLTkTUcmD2mIiwD1YNvudNepJ9mJ2UFVQRlRcJPfGvIv/99Kz7/Y8mAmiyuAyxp4jvP0
	N9kD5WhHUZtFlYZsNt+mErXXR5FIxhp/j60wpc6d1HxW4NZ2uGOi7CVjCziAz8/nqrDXoy7Le+sug
	okAoYYuFkgGPiZPIQtyKqw+Te7lDlaSlsdfxYqAMDhg4e3SJt/W0+T/nqvQ3JP3peXysmfCEPFIBo
	Av0gXad4+1KvwxYulPJpG4j+hJRM+0kPrPITIGovzsGVS2Fks/8HrTy4STqx4CJcmVbGdeOE5sGxv
	aX3q1ThGDtSGAH7N5g/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6B7j-0000000ACkZ-2sjW;
	Sun, 12 May 2024 15:28:27 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6B7d-0000000AChd-0LCt;
	Sun, 12 May 2024 15:28:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 79263601B9;
	Sun, 12 May 2024 15:28:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4DA6C32782;
	Sun, 12 May 2024 15:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715527700;
	bh=CadrEAvZxardWr9wcRjy/vD6QYBk2rFxYysHEJ7/E6M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DVlAsSFOSn+usXOuHTgz5g6TDoSo3W1u67afeQDBSibrat+PcddKMexl70xJ3NMTT
	 FgNaG7H+8CGvG8Ox1E9NlTdRH6RBYpfYHpLTGKMh/x0z2RQSfLUDZAHXi9bXvidwKI
	 GFLK60kyjel+ul/mDi9VYxvo3XzB/Vg6fkUgyN3V2U/zWK+rwIFoBIvWbfaDX2EqQi
	 tt2A/4orAIQLnudzMd5YrRIsJsjIkf6EicnctOYRqtHDohOfOX7od1i3JmEz4+Qv+V
	 IGz0C+andAD5tEm1iqloAmJd+ZqxsCo6Vskr5zH8ohj0LJ8Hn/YTdtel4atq6BmfML
	 cOmpykbvGFqZA==
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
	angelogioacchino.delregno@collabora.com
Subject: [PATCH 2/3] arm64: dts: airoha: Add EN7581 pcie-phy node
Date: Sun, 12 May 2024 17:27:39 +0200
Message-ID: <333ce5d4877facd7a7f262bdd8e53f2b772effff.1715527166.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <cover.1715527166.git.lorenzo@kernel.org>
References: <cover.1715527166.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240512_082821_194985_ED7B1A9C 
X-CRM114-Status: UNSURE (   6.74  )
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

Introduce the Airoha EN7581 PCIe-phy node in Airoha EN7581 dtsi

Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/boot/dts/airoha/en7581.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
index 98c2a86086e1..77fd37222a6a 100644
--- a/arch/arm64/boot/dts/airoha/en7581.dtsi
+++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
@@ -178,5 +178,14 @@ spi_nand: nand@0 {
 				spi-rx-bus-width = <2>;
 			};
 		};
+
+		pciephy: phy@1fa5a000 {
+			compatible = "airoha,en7581-pcie-phy";
+			reg = <0x0 0x1fa5a000 0x0 0xfff>,
+			      <0x0 0x1fa5b000 0x0 0xfff>,
+			      <0x0 0x1fa5c000 0x0 0xfff>;
+			reg-names = "csr_2l", "pma0", "pma1";
+			#phy-cells = <0>;
+		};
 	};
 };
-- 
2.45.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
