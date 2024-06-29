Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61E1BC27C4F
	for <linux-phy@archiver.kernel.org>; Sat, 29 Jun 2024 17:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RRAPPgRC8fToYMFswqxeRGaUq0o0z1oVZ1zoksocKes=; b=f6CzfrrWeezKNM
	E1Azg7KyprxDTH+DeHbGECHawWNLvAVXT4tsiCHgErzJjm65pAu1C6KqycTRmwxT7fXlxqHpsJPOf
	KeJJlSbSl8KZssQiqJtLTt+bXzgAHLP8JSq1MSIvvoGpDYjNOhrF2kU86Whq2WoKs6/f4ibseFG08
	uqt5exC5vi94A0oQa5mxjCUtCppRtun/6Kt0OYmSTL90FfQ48v8lZQ5KVSDwPnSSBafBIRREiok5a
	F++UFKNh5zD1kofxkwsoYAsMW5UeAC6QrWW+Fsb+s3skPe6DWuEerMFpiUwkFO0Hb/U+x3gqsFvkB
	VhGW2c1Ao5H2jIii7Wtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNcFg-0000000Gk63-447C;
	Sat, 29 Jun 2024 17:52:44 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNcFO-0000000Gk2W-3F5s;
	Sat, 29 Jun 2024 17:52:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6F29A60B4E;
	Sat, 29 Jun 2024 17:52:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C273AC2BBFC;
	Sat, 29 Jun 2024 17:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719683537;
	bh=gVIxk8cHCVHUdA3fTQzmUY1+r/VjucLVQod4LejfzhI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TTs49XYfP3ql5lIR6MW6ictTaIjmRBmIZoBsUXFdretopDobLw2UkMRTJ0BFLJ+3o
	 9dBCeW6gnK5+gjDVs7V2t52KeL/3Yn6xIfrzt0oK7ACLQwZ/iX5xHSf+PkjQaNkmNu
	 lHrFVM1icb731iQ1EdvvMDIWOQVdsrTPF82JEV/Wn561vvtpZTAJJ732mseq544Vr7
	 TU2Tmn0WEoKh7x2V11PPo4Mvw2i3yu+8YU2bVO7tuzWk81BPh6g36s6QdZHMJm+N7y
	 GLpr9BLHSpmOWLdK8ac0iqpn8AaGqgiT5mgV4osMjftqSptjXM0GhOupfvGmNNtJYj
	 tQ2lczTcCjtEA==
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
Subject: [PATCH 1/2] dt-bindings: phy: airoha: Add dtime and Rx AEQ IO registers
Date: Sat, 29 Jun 2024 19:51:48 +0200
Message-ID: <a018329ff9678f3360bc6381294f95c62d34f3e3.1719682943.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <cover.1719682943.git.lorenzo@kernel.org>
References: <cover.1719682943.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240629_105226_867075_0D5BA04E 
X-CRM114-Status: UNSURE (   7.41  )
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

Introduce Tx-Rx detection time and Rx AEQ mappings in Airoha EN7581
PCIe-PHY binding. This change is not introducing any backward compatibility
issue since the EN7581 dts is not upstream yet.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 .../bindings/phy/airoha,en7581-pcie-phy.yaml      | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
index e26c30d17ff0..98fcb1b364de 100644
--- a/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
@@ -21,12 +21,18 @@ properties:
       - description: PCIE analog base address
       - description: PCIE lane0 base address
       - description: PCIE lane1 base address
+      - description: PCIE lane0 detection time base address
+      - description: PCIE lane1 detection time base address
+      - description: PCIE Rx AEQ base address
 
   reg-names:
     items:
       - const: csr-2l
       - const: pma0
       - const: pma1
+      - const: p0-xr-dtime
+      - const: p1-xr-dtime
+      - const: rx-aeq
 
   "#phy-cells":
     const: 0
@@ -52,7 +58,12 @@ examples:
             #phy-cells = <0>;
             reg = <0x0 0x1fa5a000 0x0 0xfff>,
                   <0x0 0x1fa5b000 0x0 0xfff>,
-                  <0x0 0x1fa5c000 0x0 0xfff>;
-            reg-names = "csr-2l", "pma0", "pma1";
+                  <0x0 0x1fa5c000 0x0 0xfff>,
+                  <0x0 0x1fc10044 0x0 0x4>,
+                  <0x0 0x1fc30044 0x0 0x4>,
+                  <0x0 0x1fc15030 0x0 0x104>;
+            reg-names = "csr-2l", "pma0", "pma1",
+                        "p0-xr-dtime", "p1-xr-dtime",
+                        "rx-aeq";
         };
     };
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
