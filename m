Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 447ECC25B7A
	for <linux-phy@archiver.kernel.org>; Sat, 18 May 2024 11:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XYV9/XuXM2tjTZzLrkabDTp7D1dLVR6H7aDR+5XWUpA=; b=GeUysr4OchQioo
	iaVbwJd8B1pEAgDXwRMKewtlazjqNL2gllS0jTWg/bp8oK6ta3tiyMHCPCXSXUNWKSVmnqslm2kEJ
	tpkO/oL0n8UeS7tNAKe6ytUJXsRXMm45isX7F2Dp0RSGow4sliA+IIZbNxlNIGieVXXn8zx2qo3p8
	zhVnh4AIyrC8GZpzV3PFBWswGvtlfTaVQp1N2l1pK8RUyypk8TfgfY+rGFaO4OLZBD7oLNVsVkmEH
	fgvQn1hMWg6ErJYf2Lp/R3TPbF8B8SdCc+WcWu0TWCVaWvI+5H62+CPrPLe4ILin32+3a37Yd6QDz
	Davs+GQiuskQUyIFI1qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8IIt-00000009zJH-3U1i;
	Sat, 18 May 2024 11:32:43 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8IIm-00000009zFo-1V2S;
	Sat, 18 May 2024 11:32:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 89FE1CE0936;
	Sat, 18 May 2024 11:32:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A5E8C113CC;
	Sat, 18 May 2024 11:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716031952;
	bh=J9f4RY388jqTJWOa9Bom2Vfei5JBhJ4HicYIDuZ3sRo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IQfMa/LnZXuPMc1K3ckCgt0CIpm2h/VHbCU90QSbv++zrpwtaPm0nKsHd+LZeg3Nn
	 h2GJ5fl8S0oIE5f1lmJoGsVmdaURqMzY/sy3FRIxZ3pIGWl37tyH1N5zdxZU1uTs4a
	 cfacZkMT25KRaP44hkiTfkgzXCGa7zmTyGf4gOmnbvvdX5gMn0uEC7LCNJYyiHyEN/
	 GI7WMGDhh+abpX8A1i8piya5qIy/830ZlAZC4152O8r4hB9Zp2hTTVtiyVTqJKa+N5
	 FJ/AWsiRsNA+A2QwTa8rlruTGuN2ygBIPx/4GaPUef2UFm+UN9J7GphGSpxxbe9FWb
	 1TQ+TqP13U8qQ==
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
Subject: [PATCH v3 2/4] arm64: dts: airoha: Add EN7581 pcie-phy node
Date: Sat, 18 May 2024 13:31:42 +0200
Message-ID: <6c0d16b086135243d856e26e61cc1813d9fc6f7a.1716031610.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <cover.1716031610.git.lorenzo@kernel.org>
References: <cover.1716031610.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240518_043236_618035_86A7B74E 
X-CRM114-Status: UNSURE (   6.82  )
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
index 98c2a86086e1..95a9ec534cdf 100644
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
+			reg-names = "csr-2l", "pma0", "pma1";
+			#phy-cells = <0>;
+		};
 	};
 };
-- 
2.45.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
