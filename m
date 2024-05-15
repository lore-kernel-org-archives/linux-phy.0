Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B23DC25B7A
	for <linux-phy@archiver.kernel.org>; Wed, 15 May 2024 10:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yo002B8wk7LkwmaiVAQsjNx9F9c4v4Wk0ghCwbmuP/8=; b=CLH8QCwTOFhvsr
	azt7vO8N1KzIJJ/rjNDGhDKEh40/0s99YJyaDHwHg0hDQjVK1ly+NnFqNNNRpJALgOjR0+xZ8CZ29
	zJzOj60syPTtL5M39ZMF1rekqqBfIdPRrhnY2zXDagyL9YDaTTKopUZV/QNNzenA3HGiYrxG122B2
	NirG7SX39ZwHoiLlYjg90VqmzxXvH6XFw5ifSNpD4GVg9OO6TxdlUCXPROSNZXO+7j9OolTP1Jh1W
	8g07llLfZhVqi3hfOkdgabhwWrS95lWZu7KgS+TUj4A/f+52ygnwqBi4OXU8b4+IGEvDLaC7ZJz7l
	TMtmydCI/dMI3QDYDHdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7C8E-00000001GLZ-0ZKr;
	Wed, 15 May 2024 10:45:10 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7C8A-00000001GJw-1KeH;
	Wed, 15 May 2024 10:45:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1DEEB6143F;
	Wed, 15 May 2024 10:45:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42C9EC116B1;
	Wed, 15 May 2024 10:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715769904;
	bh=0AqwnoWg0qUWqYivq786ftCWg2bKprgrRsPpbZwKRW0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RLV7HrdXeZR8YIXwRg1HiSbRTKx5sOvJ+emKIyn2tbVVSFquh1kIkW1dT0WqKYpT4
	 9uSf/3CuVwP+47liCpZYPthhO/TWClSxFwDNW+U8r3/dVWMz26cMHTTqmZU4WOYzNB
	 mWHVXRyqNtW7LhFKOuYT6YcoZDCs6cC893v+1DPwiuGh91QpartZVnJd1QTHYfZDdO
	 1JgtVTn6pI0dZ7ObnGTFwWdTLRhEIF3j4XKK4FwijVN3F/nI7kGtv60GsWaMKKGGf3
	 i1abpFd2nXi6vCwG4VLFIkZVGKnmbr1eHrOPEhSct4+JkYd6ls2IYSrad1rNhr3ggE
	 cqsTKjw65gr2Q==
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
Subject: [PATCH v2 2/4] arm64: dts: airoha: Add EN7581 pcie-phy node
Date: Wed, 15 May 2024 12:44:46 +0200
Message-ID: <9bde509426a0c74230a237e64be2381c986da23c.1715769325.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <cover.1715769325.git.lorenzo@kernel.org>
References: <cover.1715769325.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_034506_446672_F5E0E375 
X-CRM114-Status: UNSURE (   7.11  )
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

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
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
