Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B75EC369B2
	for <linux-phy@archiver.kernel.org>; Thu, 17 Apr 2025 12:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8XKTBZLRncSl/MFFdt00eEvm3OIXIqRH+0SXDD+wgC8=; b=h2aB5fcMDWrAjz
	LcBrcjJiLYLXXeHQUaM826uXLGSXORPM0B5XOxTSOBY1O9AHIpHvKbX1XO7yDK9qvjfcxoqqWbL4B
	S13Tp2A1NPYe8Mi/Lyw7Z2zlT1Z26PfjruxG70Qi+olMGDOg7j5sdvpMl6iKfbh1403Viv6UEnlwu
	7FqazMg+xRhOmtKRteD7QZiobDS+5vLuonzsEXc7JCNK0HdiNCXdm9pY/B9s5H+T3NnBuEFk2IpFz
	E+1zzMLrxLoON1Ca3rcRHgMCmNJ6NsueJ4N6ITbfbKVjIpK3bYz2tOT9uawmT0HSXAnwYmE21ZyLJ
	Z+lD88XV/t4/yQYn3qDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Oob-0000000D3oV-3WVh;
	Thu, 17 Apr 2025 12:58:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Ofa-0000000D2e3-48Xk
	for linux-phy@bombadil.infradead.org;
	Thu, 17 Apr 2025 12:48:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=L0s6NH4EfbdI/NoCy+qt2CX429B3oXubeEvjOqW0w3k=; b=IZR38IlfGPYZFZtRVaSygvWQE/
	sCIvSN34PdBjALHAP3byjrkV0leonIe1oEgq8t0Jfho5d1R2pxWAzTv36Q/gXCMGGUWSTVp5+xJz4
	8UBAYWULFaCGqwK9kFixwoTg6qjGbkVDQAmLIvbwl1rWFjA3et5ALiCzkK4Hubbe49QVUef7R65CB
	my7Ke7KhlCGEHcNvTlgRTKB1hcSaGK8dh/BUvD9ZeRG81EIpkEQ3D1l+0/Imrk5X2FAfjKt93FfG2
	7GX0hXepNTLrv4waOn8Z/Wo6n/o+1G3Zka4dhtasw8xBcghW++dgl0kqHU3AB3vn7e/kuhWQsGQZS
	h/uX0bjQ==;
Received: from mout.gmx.net ([212.227.15.19])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u5OfX-0000000AHRq-3hMC
	for linux-phy@lists.infradead.org;
	Thu, 17 Apr 2025 12:48:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1744894093; x=1745498893;
	i=markus.stockhausen@gmx.de;
	bh=L0s6NH4EfbdI/NoCy+qt2CX429B3oXubeEvjOqW0w3k=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:
	 MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=YVzDSKnJriafvw/Hba+QUb4yY+/U1LFsVUn9LA8na5ZXypirJPSMdJ2FaBOZENhi
	 N9JAkgLGmyTPYw3xSNBUitgnyCyyJ6kN65fpob5429EweqLnGM7kD6X8fOzTT/+T+
	 OuaOo63Mw6RRAQrVGScCkTmksDzYLqbGLKG2GAHpNmmzkW7xFGljy2edv1rKx7lHz
	 t7TygROiOXzmSvFUPgUAU/qBwQQnq5nOizX3szYJtBmmmUp47bYhseFvbSUzgjwxy
	 TfugzzetfVB5sFJ8NdjCtjCb7Jb3KKUHY3WavvFcV4cvlLq6OHYwCcEUHHMRB2NHb
	 fb8q1Q/62YCbbgbdBw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.55]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MzhnH-1v0e5M0ofR-0129v1; Thu, 17
 Apr 2025 14:48:13 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: markus.stockhausen@gmx.de,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	chris.packham@alliedtelesis.co.nz,
	daniel@makrotopia.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 1/2] dt-bindings: phy: add realtek,rtl8380m-serdes
Date: Thu, 17 Apr 2025 08:48:04 -0400
Message-ID: <20250417124804.2405994-1-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:wrO1KRtti8sZtE1KHEASk/QMlmfqW23lGCpELILjWj54FZFKOfg
 q1QSOw246obIW29LOlaViZAbgExp1JJLABotzdaPMhuiiDjupUMt7XU3Wc2iKYFQkSWeEXi
 mhVVdeTDSEchdlyBMmWzN6vBS2fMO1QeUYkfj72+WC1L2D6PPOqBygvvRYxakNWIZ9qSh26
 BvP5zbknhI8sbbY8QkHpA==
UI-OutboundReport: notjunk:1;M01:P0:vJZdkRCxIao=;wj+6ph4BSIYvKmJE8JJBoIP/eQb
 e3QMImFARMa8Ucn3N3EGX/E6Xw6/qvIBE8gheI+nTdUfbnalSCJEGWh7lhns6yfdyb/3QSC00
 QBadNMAFzO4IlzQPZlQV0Wywp8fkMMrOx8m1p+EnclMupGFj9HP2D0xiE5bwYVa4Zr13klZ+B
 aztwXsHHfcfWxej9MVQOyRHno5qMU8re0KzNz7PtUw56voJY1FiZz6uc1ewV1TfGuNRU3KYUJ
 7q+S+RgsFA7V6HYyewvjYtK03SBvurnxvK/p0sph+NOHjEVK++DbtW7pIxgjD7BmhfHSZvtDM
 sJQMCZPSa2/9zU8wMXpfWgpEW1nTHeiX38hEsT+mLY0dhhGSFIFbHqQBXVxqbSKV8Sa9M3tet
 Tpl5ScL8INhSHqFnRFwFt0KxRZJRZWqNIRjaUqrrLDka3caUkU0llJ4Mcs9M6DvrJ3OA8LcQw
 0LAOSlMggcF8cO5S90jUsXCmUTLOTiOFWqN4dSRlbjMcnm/Noe4vXbHjspeoTMN4FsIkfi6Id
 gZJQpiUK2nW/hcsr9LVK+9XgRAv8UkeXwvYc55NVkoJ0qzvFJ6BV1AZkZZ88ozODUagEI126M
 OiWW8vmtvPL42WIIRzvQZ4dJ4L1YIEIelwiL3g9SKU7Sza3vyGv6lNfUpyg5txuZLCEdOotgo
 4JtARKmr90bVkfTpFeTLULM2R/TGC/E9Ki0YrUjK0fiDGg1AxEbiDuTE9li2uAyCUfB08CJ11
 CpwIuUYD24vKZcpHuf8DFtAmOtO+dlqUKRiCEltHoy5L8uOiuAmjeYTeaYtHeIRsLJknfn6VF
 tq55YKGUptbEl8fx8H26z5MXrbWr5fmgR7N0JeJVwB/Gy0Oc8rBw/IrkX7cT3w8QbwAVxy/EJ
 3wVmHyrMuWmPQiDqFXkzX2w5kjB7hbyuHlSvZlmcAXME+i+gP+qthXMUFcUCI3e605gRQqQFu
 vvEIN2wXJJ+6OasKjbWHOgtv9Su/n3ev5kUM11qlw6Y27dniHrhmRUbNDPcEC4fhqPonZFgLQ
 mqDnTw9gBxka3wHkimolkGt7h61F7kk+S72dl8tsnbvtd7hsHGVj6XLEpJx0AEU2gzYNM1JUb
 oE9Tv26KEKKHh4X86PukushlHXxba7xyn+s/KExXV89uMaQORlQAGFWdap07B3i8LlqU6XQGb
 FqjBI1J3ITmQKN4QhyK+/odQMf0AJYqY7F3QRoQHBnsVs/y1DVdrAs7aiDO95DnG3BWkT4h6l
 Sb4l2Yp9ffPo7vysVhMjGTsSPWBzIzGXG3NcB7BPCZlebhNQtib2NSKgtd+GUxc96DSEcl+aI
 mSxzdgC5yt5CdTiypV0JtecNLZYEHeQsoRsOnMrHVRfTbo3Dr+LnVgFAD2dE/Kc4C8fMLMXHW
 OnV+7GdGjpvyfETfJGtFaFqBkH5biMJz7OCDDDshOYXFT1yNOTq/oPFFh2kZ5nKx2Smb2yZNM
 ysoA0UpJJyzXyYnkvk+PmcO+WOjGqmqNiBNvwJD+Iea3CUPsI+1h9BQBeZ2PnkxMODNk4t89n
 7iQH+6j8QyfUspTf/T47hTaifaEED8vG+Lwp5+iwQB3kY9nm0uXsUKOMo7VKj7Y3jq4OFOWIb
 AVtKTBS0gsPaEVq2dSk0rKKAENWXu2K/fuhs13bu3a1EGoGelzf3kqKwgj0DFxGCov4mv8U5A
 vyQFD4kpxiVKJIjODrrGQ/v5ClfUbcSgbtQCZDxbQR0JEC+E9aeJ657ZyyusnB5Ge4apcbJiz
 lKy689h1b2ofxq2tzZBqjNngMwDlaiUExzwkOC81o4g0CRhXAAU0FoHvVutGtNQCfFEXe3Ouq
 AHUrWNc77Xy9dLQv3NBn02W7reZZ7orh5mhzUERMxmtwM+LVBsL/howvWnOAG64yzEGTY6c07
 TXi6QnufetMsDF2zTUOVwWxkxAvBP//ivTcHFjXT04FfhZGAJYQiz8Yt1zURNyEE0EnuAaCQF
 ZSyq9U+GZmu8lu9HFr9wm3jC32xartxuJEXNVTdhvjdvRykjcStOBXl6r8/HR54NABnbyLrfg
 Dwvk1jM4ZI9odfKfpZg0B5UlqecneVXvsPd5bHSMeDlPbBQnvAB85B/jtukO/VYIaiuzWT0F3
 K2U+cFAopCmERXUvRd8TAcdFIHNlHJU7HnUyC2nGxaHCC6mr8R4GkWSL2lmOjjklPXVlNAicO
 +JObzXwzxRwPZ1AGxE8qm6gbC7C6rk05qTMtgPe1Mn1JkPrq2MAVXIDU/LW4G/qvDfqXihnF+
 qquURkU6W3TxQA2kDoGjLxNXGIctk30bcqvnVoZ9Ekt85tvjziHmEImFxB91duA+4Y9xps3G0
 fVs7TkWAmHmyMllXKsOp0EpKhZ+arcLpLpK6m8rLTqkj9P6QWBfMnRxwkL9hm/HmG3S3cJ2M6
 NFoIhhxUr4jC43UrKJ119p+jJ/KtXeMYHD6/1FM16dkl3m80A6egNtN5fRS2X0BQOW2sfEEh+
 24DizST1BuQW3OC4VaG4vTHuoGzNTXRn4o28MGbzI1TgEM/KYmLJoP70gVs6GiVftLg1C3Qn4
 hiIxNgW/mRSvuL7EYTqHRCy89PDHCvtdaiFFNstjajJx6c7yzjbknMF71dt+Qup+eg+oFgHYT
 KxqNfb0U+2BiX407ep+SapVFg9AH9j7cgRAiUfH64twSF2mHQWS5S35FhdD5NewN6xtVcDPC/
 ts0ftBTNoAgPE7DDmjnIuqF2n0bpvhaT6SAVRItYftRxNU9q+m5ZOWinQvi7y5IlDdO8d4408
 Swtv/DASbSU9LBAnLkH8+K1Lu+39YTNsn65syXyaX0rJadPPI3INgQUwczEmALy3cOSBjEsAq
 lAxvUyLRjda/5653FvxamYRORKtoaRPoODWeQfP8tT+8AiGa7V1OffyUGpGFGRUAuC0Uo8iuU
 HBcPZ8wUEcWQVgJMaK9OKzxFeY65EGoRZr4uAeg2oAYFJW1zi//yoYSiloS26gvgEIrcMVbkB
 AvmnBL5wX2FhMrLqhbHjPEpPsTqRonuurRwhrC5xlMra26J9bdfIqLAqojqdArKlaxuDyJUXV
 WAs0IHqxR7ZNG6tQ0ohT6TvABVOmikss+f6spF5FgDIIaeOoVc3zrjbH53vd14b6w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_134840_185651_88D7A2C5 
X-CRM114-Status: GOOD (  10.46  )
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

Add bindings for the SerDes of the Realtek Otto platform. These are
MIPS based network Switch SoCs with up to 52 ports divided into four
different model lines.

Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Changes in v6
 - add Reviewed-by

Changes in v5

 - drop nodename
 - drop items from compatible

Changes in v4

 - fixed addresses in example
 - missing firmware-name denotes "skip firmware" instead empty string
 - fixed reg porperty

Changes in v3

 - renamed to realtek,rtl8380m-serdes.yaml
 - removed parameter controlled-ports
 - verified with make dt_binding_check
 - recipient list according to get_maintainers

Changes in v2:

 - new subject
 - removed patch command sequences
 - renamed parameter controlled-ports to realtek,controlled-ports
---
 .../bindings/phy/realtek,rtl8380m-serdes.yaml | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml

diff --git a/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
new file mode 100644
index 000000000000..13b11c011153
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/realtek,rtl8380m-serdes.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Realtek Otto SerDes controller
+
+maintainers:
+  - Markus Stockhausen <markus.stockhausen@gmx.de>
+
+description:
+  The MIPS based Realtek Switch SoCs of the Realtek RTL838x, RTL839x, RTL930x
+  and RTL931x series have multiple SerDes built in. They are linked to single,
+  quad or octa PHYs like the RTL8218B, RTL8218D or RTL8214FC and are one of
+  the integral part of the up-to-52-port switch architecture. Although these
+  SerDes controllers have common basics they are designed differently in the
+  SoC families.
+
+properties:
+  compatible:
+    enum:
+      - realtek,rtl8380m-serdes
+      - realtek,rtl8392m-serdes
+      - realtek,rtl9302b-serdes
+      - realtek,rtl9311-serdes
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 4
+    description:
+      The first number defines the SerDes to use. The second number a linked
+      SerDes. E.g. if a octa 1G PHY is attached to two QSGMII SerDes. The third
+      number is the first switch port this SerDes is working for, the fourth
+      number is the last switch port the SerDes is working for.
+
+  firmware-name:
+    maxItems: 1
+    description:
+      If present, name (or relative path) of the file within the firmware
+      search path containing the firmware image to patch the SerDes.
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    serdes: phy@1b0003b0 {
+      compatible = "realtek,rtl9302b-serdes";
+      reg = <0x1b0003b0 0x8>;
+      firmware-name = "zyxel-xgs1210-12-serdes.fw";
+      #phy-cells = <4>;
+    };
-- 
2.47.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
