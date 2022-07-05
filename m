Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AE30C43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 14:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hvNzKPD1QdAaws01r1L1iBPkZ/rr8ZxGrbiJKYaqPQg=; b=O1+/sVWUOf1VVz
	GBJrJ6yxT9j5z7N5TsX6NmZQhydt2QFJHhDHPCo4RvHBNYBS1bijPc4U0DpbWQVEq3/KNrVBUyB8n
	zX3WtJTsDdNPe6VjHnE3yDJos5AZTjKYr0WgIK/QeNnCDEo4XNHF9BiTyPvrMsNmrTH8bJgYcZbtd
	xmPIZNj6KPnYWEoVY+LErj8XyoCwMBW6YbCayN7ZCDnhpGkRhXykQ7dlEq72qZ8y5lFWxJ7cxLePg
	ncUbnrREyXVkaaGseM8hXiuxhJoPjzKaA3Aot9/UwOC6+bZwtnO1sGqkyyClIxDgRS+k87xl9br7Y
	9rgSujfLpVWUFVMAY9Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8jza-000yn5-Ly; Tue, 05 Jul 2022 14:57:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fO6-00H219-U6
	for linux-phy@bombadil.infradead.org; Tue, 05 Jul 2022 10:02:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=U9bJi0VdYXlIuvfUqDR00CD41UnZjgmVcuIMZmorKdo=; b=Zb65CxAA6qL9OkZYwmm2NjdoLv
	kKduEqzxe/R87MqxqeyMXda5Tq5ze+meB0KgW9BQ3I/SEdEUAvVWvnV/4cTtN43zGJYwmAbaOzeF1
	VntnE7jA200Z68KvUz2jk1IN1xQkbNYdMwMwRHMn4+O3bfw+n2XnBjoMna07Ymu94jh3Yps7pn6Ob
	Aic76ZfGkfU1E/DeuDjhyM6lCGeJ9QZo47+GSp2SDxy2bQh9uAmPYxz3IAvT4oMLSoQwFL8gSJnvk
	O+ZWkL8MepdtdKcA0ihmIKCecq4RYe/xcLvKotzV/jNyuANq6hZZljsMrdYiwVZzygMPJ3pQLlOnl
	KoqQ4t1w==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBC-00HV5r-4q
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 94D6861957;
	Tue,  5 Jul 2022 09:49:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D495C36B1D;
	Tue,  5 Jul 2022 09:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014543;
	bh=wTKx6W4Z5/SzoW6B7e1sclkQeLott98hZJzN8+cbLRE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=a1UDkjhpJ1LiiTnUQPuLSaqHWqYQFRlsJGrzkibKBYJ4jCreF8eurpVYBJjp3nTv2
	 W75AZYLhkemjAHPBqoDHSiFkCNiWyq6jpB2+9KYWXC9VWd1oOBW1ieA0SbOYOa2OaM
	 5eGBgE45DC2Y+B1I4X4XNPZhtiQEOso3CPRUSI/txEWXQiZ5752KB4+xnJ78Spove5
	 pZpUDaKBDPA2/HRzgYQTF9JNl96Stzrlc1nzYe0Ww1HzSiBUjHoBH4YH2jChjg6VLV
	 trwQFK8BszFRFovHoIg3DBS9QP5ZyeM7YPw5qzlB+wQ7lVdrXyy31arMbk+ceHriVh
	 DT/JFSbh3mhNw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB2-0004Xj-7H; Tue, 05 Jul 2022 11:49:04 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 19/43] dt-bindings: phy: qcom,qmp-pcie: deprecate PIPE clock name
Date: Tue,  5 Jul 2022 11:42:15 +0200
Message-Id: <20220705094239.17174-20-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_104915_664824_332EADDB 
X-CRM114-Status: GOOD (  10.31  )
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

Drop the bogus "lane" suffix from the PHY PIPE clock name and mark the
old name as deprecated.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml     | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
index 3fc08af41144..32f872de8f4b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
@@ -80,8 +80,12 @@ patternProperties:
           - description: PIPE clock
 
       clock-names:
-        items:
-          - const: pipe0
+        oneOf:
+          - items:
+              - const: pipe
+          - items:
+              - const: pipe0
+            deprecated: true
 
       "#clock-cells":
         const: 0
@@ -295,7 +299,7 @@ examples:
                   <0xe00 0xf4>;
 
             clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
-            clock-names = "pipe0";
+            clock-names = "pipe";
 
             #clock-cells = <0>;
             clock-output-names = "pcie_1_pipe_clk";
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
