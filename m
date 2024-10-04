Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 054E3CF885E
	for <linux-phy@archiver.kernel.org>; Fri,  4 Oct 2024 21:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=245AkTMe9F4qcB/PQFQKHsp+Y+i/qhtP7yNj2xJg/68=; b=bky2dvP80AJXCi
	wPEtM5sDirqv/qyjnDm3AiwQa5vaLWdQRNA047BVIR5TrkSMv82BnxtjPbpdg5EdC7kVKxclbhC8T
	y1bOfg7zEoyKNvq16YJEq+dSO5HuNEhTe25paMpA4rmjdsrJ1V4qYXP/GQbO5qYaGcEIFFEccQrfH
	mR6kMaxivO6gwcThlJalrpRLaeCte3juEHtszToQTCRlWQMBe9CkhQIjMZ2x48JDQvytuYxECQMWn
	FipuNwHzUN9TQx1g2GG3P2I8LlzhG0f/Qzwgpd5/W8yYWY6Ei6x+VVMgy0vDI+JsBzsYOQicxSasW
	leqbSTGsUVAopk838uoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swpR9-0000000EE9A-2qmY;
	Fri, 04 Oct 2024 21:02:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swoQq-0000000E13q-0Uq3
	for linux-phy@bombadil.infradead.org;
	Fri, 04 Oct 2024 19:57:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ENOGBk8X+eUq87I8HTpA/2gVrXQahUsEx8TMjQAwQoo=; b=gkB9GErwabfj6cG6WLWIR0BS1c
	nrrBFBPqKQRXXzY0Z8AqNMFVS0O3ps92IJUyJkbSdK3CfVA7seX9GURQ7zAiEoDb+CiJFRxPjUgIf
	JE9yfSbvgveZhYGL+TJi2YRLxxwsyDNy4DOpKigbzpR+KUA08KkUyFTkOF8uFiA7tuVPbB5AO22nY
	iiy0J2r7GbljWpnYHSUJ4DMccGMW23zME+xGiYYNZO9TnXEkmguASPraVhVJxfTPQATzQjz6Ucfs/
	sQT0Pa9HRLg2CZUHfIfIOYEIlxevLE/qLAchMZxwiTmZuHq5rveMdH0miAXZ/YPpRaDblwPmpCSiD
	aVn36JZw==;
Received: from mout.gmx.net ([212.227.17.22])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swoQl-00000003vw2-2g3W
	for linux-phy@lists.infradead.org;
	Fri, 04 Oct 2024 19:57:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728071836; x=1728676636;
	i=markus.stockhausen@gmx.de;
	bh=ENOGBk8X+eUq87I8HTpA/2gVrXQahUsEx8TMjQAwQoo=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=t3C42UF2pkBWiq8MqF+839GSWwey6QYOVwvp7djQB63Ems76n9aqcWk0kzKh0YC+
	 JCklHxBO7KH8qj83lb+BfMcs8Rzsdc1WrkUFAl2Y+FyaaxtctZdkXOLNwLbFu0oMh
	 aN+uFNLMtLNuPjCfwN1k6vCzb3VgEMlAbAQxxJs4hhkofzM77iCFrywtBaa3Mp5OR
	 KJskAS1oaCu47tMfCMmqDuB6rrTGwqpZCXxgcsWCW4zXaT3uhUWGCm0kxnnvVro6v
	 9scE/paWPVtpv1DXEpqSqPy9p9iqQcwZBwUuxMnSQsEsHwrA1M0v01dVykh833Vrj
	 wY0xcFmiBBe5wlB6SA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.81]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MxlzC-1tvwSA1Ppe-00uVLu; Fri, 04
 Oct 2024 21:57:16 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: linux-phy@lists.infradead.org,
	chris.packham@alliedtelesis.co.nz
Cc: Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: [PATCH 4/4] phy: Realtek Otto Serdes: add devicetree documentation
Date: Fri,  4 Oct 2024 15:56:10 -0400
Message-ID: <20241004195712.1891488-5-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241004195712.1891488-1-markus.stockhausen@gmx.de>
References: <20241004195712.1891488-1-markus.stockhausen@gmx.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:V2yymqao580B3jJBfAD/X1WvigV+RxDv5yKAkgCQp5oVrhMPTVR
 AVCxGja98BQ5IqwJAjtjMgTyVDqmzYyMQsmDg43rXz5zHwCv1vxgX1BI3tfxLFN3dP28nrp
 y0l4pk9Ad7fizquGL3IoZsSrpcNKwc5iwum8hzwkxlor09AaqlTCWQrl39O07qvuA5fWgy7
 nlraGflh7zmXTUfsvkmTA==
UI-OutboundReport: notjunk:1;M01:P0:mX9Uk5DTFEc=;6dD3jlZfjP5b+ykIloq5HRCfUk6
 5iAdF6VWj941oChM0FLTwMDHLhKzL/PkECP+raaT2JDLJ6tmidB8xq/u9HsvTICqoHRrBLUzh
 H/Ej9dSwaK+qVjXiBEtmn+wZOiBFj9UjDxpgwxptXZoLg1G46tpqSfwM7ICxuS7Byu5jmrzF4
 0lyPPxHIEg2Lr9SpuzBdMBjnnOcZyu1IAa62bcgRlhIh9BLo4rimKhpSzdZunPZchRgeOgDyU
 BBZWE3n3PpKSv3nU7OQCOcwjx+Hz5eKRYgQD4Cn4bUReBWx6z4EcAR8UtFWslVQiHwlPw0x1A
 wzCTRD6VQbsQ90P9LjguDPsTn1FBLIDV0V1RjwrxMFK0eyCkIssnxeTfSLV3oxcK8c/Qq+Fn7
 xzqkmQHVPzTDyhNEh/fsphsfpiMCGawkuqzKYaA0tM96utDVybpg4C76YAvYieWumBAOoVZlo
 9u1J9CBRvejGy6eVnohDuMCwNX19upUkfWwC6MZ+3C+Xmn+jVNBvG6m28ts46QCwf9wc1bbYz
 zlpUwXMsSusCuHBoghrdavj0Ni958HVBZhoBNkb+3jJMqYlmFSoCzbUQTsQ8VVMRi4zaGDiBg
 FVx1PWWR7kgqLRunBHaP7DKKW6m08a6xZPzpFdcIFovjdIW2CAp/IIyUP4nEmvRCojjxi9pyl
 Q3cGYPzKHqsTh1e/423QVWg8WPfwIRWPr+oJ50tb+D1mjuc473DSl4MGpLthbs4r0oa+x3ZxL
 y4Nx3JaKCpOqSGTvURYGGJUFqfKSqpxCddplnGxgLGDlG4FmphIj5PSwjFSuj1LNwOmWdD0U7
 LiHuYQbWhmX443VZ6CRamLcA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241004_205740_134097_C6F59B55 
X-CRM114-Status: GOOD (  17.51  )
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

To help others to integrate the driver provide the devicetree documentation.
---
 .../bindings/phy/realtek,otto-serdes.yaml     | 167 ++++++++++++++++++
 1 file changed, 167 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml

diff --git a/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml b/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
new file mode 100644
index 000000000000..b6dad1089c6f
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
@@ -0,0 +1,167 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/realtek,otto-serdes.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Realtek Otto SerDes controller
+
+maintainers:
+  - Markus Stockhausen <markus.stockhausen@gmx.de>
+
+description: |
+  The MIPS based Realtek Switch SoCs of the Realtek RTL838x, RTL839x, RTL930x and
+  RTL931x series have multiple SerDes built in. They are linked to different single,
+  quad or octa PHYs like the RTL8218B, RTL8218D or RTL8214FC and are the integral
+  part of the up-to-52-port switch architecture.
+  Although these SerDes controllers have common basics they behave differently on
+  the SoC families and rely on heavy register magic. To keep the driver clean it can
+  load patch sequences from devictree and execute them during the controller actions
+  like phy_init(), ...
+  The driver exposes the SerDes registers different from the hardware but instead
+  gives a consistent view and programming interface. So the RTL838x series has 6 ports
+  and 4 pages, the RTL839x has 14 ports and 12 pages, the RTL930x has 12 ports and
+  64 pages and the RTL931x has 14 ports and 192 pages.
+
+properties:
+  $nodename:
+    pattern: "^serdes@[0-9a-f]+$"
+
+  compatible:
+    items:
+      - enum:
+          - realtek,rtl8380-serdes
+          - realtek,rtl8390-serdes
+          - realtek,rtl9300-serdes
+          - realtek,rtl9310-serdes
+
+  reg:
+    items:
+      - description: |
+        The primary serdes register memory location. Other SerDes control and
+        management registers are distributed all over the I/O memory space and
+        identified by the driver automatically.
+
+  controlled-ports:
+    description: |
+      A bit mask defining the ports that are actively controlled by the driver. In
+      case a bit is not set the driver will only process read operations on the
+      SerDes. If not set the driver will run all ports in read only mode.
+
+  "#phy-cells":
+    const: 4
+    description: |
+      The first number defines the SerDes to use. The second number a linked
+      SerDes. E.g. if a octa 1G PHY is attached to two QSGMII SerDes. The third
+      number is the first switch port this SerDes is working for, the fourth number
+      is the last switch port the SerDes is working for.
+
+  cmd-setup:
+    description: |
+      A field of 16 bit values that contain a patch/command sequence to run on the
+      SerDes registers during driver setup.
+
+  cmd-init:
+    description: |
+      A field of 16 bit values that contain a patch/command sequence to run on the
+      SerDes registers when a controller calls phy_init().
+
+  cmd-power-on:
+    description: |
+      A field of 16 bit values that contain a patch/command sequence to run on the
+      SerDes registers when a controller calls phy_power_on().
+
+  cmd-pre-set-mode:
+    description: |
+      A field of 16 bit values that contain a patch/command sequence to run on the
+      SerDes registers when a controller calls phy_set_mode() and before the driver
+      actually sets the mode.
+
+  cmd-post-set-mode:
+    description: |
+      A field of 16 bit values that contain a patch/command sequence to run on the
+      SerDes registers when a controller calls phy_set_mode() and after the driver
+      has set the mode.
+
+  cmd-pre-reset:
+    description: |
+      A field of 16 bit values that contain a patch/command sequence to run on the
+      SerDes registers when a controller calls phy_reset() and before the driver
+      actually resets the SerDes.
+
+  cmd-post-reset:
+    description: |
+      A field of 16 bit values that contain a patch/command sequence to run on the
+      SerDes registers when a controller calls phy_reset() and after the driver
+      has reset the SerDes.
+
+  cmd-pre-power-off:
+    description: |
+      A field of 16 bit values that contain a patch/command sequence to run on the
+      SerDes registers when a controller calls phy_power_off() and before the
+      driver actually powers off the SerDes.
+
+  cmd-post-power-off:
+    description: |
+      A field of 16 bit values that contain a patch/command sequence to run on the
+      SerDes registers when a controller calls phy_power_off() and after the driver
+      has powered off the SerDes.
+
+reguired:
+  - compatible
+  - reg
+  - port-count
+  - page-count
+  - "#phy-cells"
+
+additionalProperties:
+  false
+
+examples:
+  - |
+    serdes: serdes@1b00e780 {
+      compatible = "realtek,rtl8380-serdes", "realtek,otto-serdes";
+      reg = <0x1b00e780 0x1200>;
+      controlled-ports = <0x003f>;
+      #phy-cells = <2>;
+    };
+  - |
+    serdes: serdes@1b00a000 {
+      compatible = "realtek,rtl8390-serdes", "realtek,otto-serdes";
+      reg = <0x1b00a000 0x1c00>;
+      controlled-ports = <0x3fff>;
+      #phy-cells = <2>;
+    };
+  - |
+    serdes: serdes@1b0003b0 {
+      compatible = "realtek,rtl9300-serdes", "realtek,otto-serdes";
+      reg = <0x1b0003b0 0x8>;
+      controlled-ports = <0x0fff>;
+      #phy-cells = <2>;
+    };
+  - |
+    serdes: serdes@1b005638 {
+      compatible = "realtek,rtl9310-serdes", "realtek,otto-serdes";
+      reg = <0x1b005638 0x8>;
+      controlled-ports = <0x3fff>;
+      #phy-cells = <2>;
+    };
+  - |
+    #define _MASK_ 1
+    #define _WAIT_ 2
+    serdes: serdes@1b00a000 {
+      compatible = "realtek,rtl8390-serdes", "realtek,otto-serdes";
+      reg = <0x1b00a000 0x1c00>;
+      controlled-ports = <0x3fff>;
+      #phy-cells = <2>;
+      cmd-setup = /bits/ 16 <
+        /*
+         * set clock edge bit 14 during driver setup for ports 10-11 on page 0,
+         * register 7. Wait 128 ms. Afterwards set whole register 0 on page 10
+         * of ports 8, 9, 12, 13 to 0x5800.
+         */
+        _MASK_ 0x0c00 0x00 0x07 0x4000 0x4000
+        _WAIT_ 0x0c00 0x00 0x00 0x0080 0x0000
+        _MASK_ 0x3300 0x0a 0x00 0x5800 0xffff
+      >;
+    };
\ No newline at end of file
--
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
