Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 019F2C001DB
	for <linux-phy@archiver.kernel.org>; Mon, 14 Aug 2023 09:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+b3545/VTOjvS7PheP7IIeDBNUpxRI8BAzeW0rWLzo=; b=QSJ3k4OrFvu/f9
	gZFuZYwHcnOYg23s3TGpYple2Z5rwJAIdm7cF1PY2n/GgI2eGL4qWIt0JTSMXXcJvuC58M2/QnxOa
	C7SFhI/eMzF3hcJoSENDtiX5TzZpnsiNg/gFLqjxV+C4d49+5Zqs7jLG3dtthmvweb6P8+Tkdk/Is
	eAsToFJEvAAvtOPZHdWGxCSo5RxChQyblUhomNHv8ff8IDvi6HRA0AmJC0iVZAklHhLz3didXjezg
	gXZJdcZ67fH63S7ps9h8D2vCwVzkvjYz6qXyFfbKlXFd5m1m6M89dfN0jzAbJdz3oYquxPN34K4RF
	wFfPHRf5HEkOZIj4GNpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVU37-00GdX8-2N;
	Mon, 14 Aug 2023 09:39:45 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVU34-00GdUz-0F;
	Mon, 14 Aug 2023 09:39:43 +0000
Received: from eugen-station.. (unknown [86.127.70.132])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: ehristev)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 79CD666071AC;
	Mon, 14 Aug 2023 10:39:39 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1692005980;
	bh=zUgp9Iz5W4GMT6SF5CUiqsfkOtNwHl0ff/0cYu1hmrE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FjmPvIPJBcugwq+fUn2of7pMdrac1FS0AaXXRfTAE05KyOtsBKPOvM2WjHJiSMp7u
	 nADv4MUt1qwnD1/CqO9zQwBJeeKo4m7/OwUnTHohzDVux94BU9Ie64dEWnOG2CBO8k
	 eLWA9GpcC9OntMob9mFdmXilDHnl6VISpz09lSuXeB1x64xubm4LDYd3etbeZySHkM
	 iyOwykOLFeWMrpOt6ooY74oWxkPZsful7WX/3V2shWrU3Mbz3EYHF7LkACl5gh4km2
	 FWP9WxX90JPU1WNA+gArcburQYvDHXm4Np6P0SQtNmy6kD4K2rXeKabbzSo0XBXG7D
	 UQ3jVyWwwyELg==
From: Eugen Hristev <eugen.hristev@collabora.com>
To: linux-mediatek@lists.infradead.org
Cc: chunfeng.yun@mediatek.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	sam.shih@mediatek.com,
	jieyy.yang@mediatek.com,
	frank-w@public-files.de,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	chris.obbard@collabora.com,
	kernel@collabora.com,
	Eugen Hristev <eugen.hristev@collabora.com>
Subject: [PATCH v2 2/2] arm64: dts: mediatek: fix t-phy unit name
Date: Mon, 14 Aug 2023 12:39:31 +0300
Message-Id: <20230814093931.9298-2-eugen.hristev@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230814093931.9298-1-eugen.hristev@collabora.com>
References: <20230814093931.9298-1-eugen.hristev@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230814_023942_238425_36322260 
X-CRM114-Status: GOOD (  10.45  )
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

dtbs_check throws a warning at t-phy nodes:
Warning (unit_address_vs_reg): /t-phy@1a243000: node has a unit name, but no reg or ranges property
Warning (unit_address_vs_reg): /soc/t-phy@11c00000: node has a unit name, but no reg or ranges property

The ranges is empty thus removing the `@1a243000`, `@11c00000` from
the node name.

Fixes: 6029cae696c8 ("arm64: dts: mediatek: mt7622: harmonize node names and compatibles")
Fixes: 918aed7abd2d ("arm64: dts: mt7986: add pcie related device nodes")
Signed-off-by: Eugen Hristev <eugen.hristev@collabora.com>
---
Changes in v2:
- mention dtbs_check in the commit message and blame some commits

 arch/arm64/boot/dts/mediatek/mt7622.dtsi  | 2 +-
 arch/arm64/boot/dts/mediatek/mt7986a.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7622.dtsi b/arch/arm64/boot/dts/mediatek/mt7622.dtsi
index 36ef2dbe8add..3ee9266fa8e9 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7622.dtsi
@@ -905,7 +905,7 @@ sata: sata@1a200000 {
 		status = "disabled";
 	};
 
-	sata_phy: t-phy@1a243000 {
+	sata_phy: t-phy {
 		compatible = "mediatek,mt7622-tphy",
 			     "mediatek,generic-tphy-v1";
 		#address-cells = <2>;
diff --git a/arch/arm64/boot/dts/mediatek/mt7986a.dtsi b/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
index 68539ea788df..24eda00e320d 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
@@ -434,7 +434,7 @@ pcie_intc: interrupt-controller {
 			};
 		};
 
-		pcie_phy: t-phy@11c00000 {
+		pcie_phy: t-phy {
 			compatible = "mediatek,mt7986-tphy",
 				     "mediatek,generic-tphy-v2";
 			#address-cells = <2>;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
