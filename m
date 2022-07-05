Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67C56C43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6NvacTvfk/gB4Woc3sLMzilsIIa0xXzCJJ08+83ETz0=; b=XAYPlAprjaACo1
	TlgP+d/W67i0djTtIjBCPW4GUgnJy0yVjCDERQ+a+rg6UE7puOFDv/vK+nYkyUG3pehl2ifjWsLLE
	Ojfvr7LGMQhj/3HA+WbN7VwJ8nzikI4ZtGKyXM82Rrsr+br6/f1yUR97KBI8zKj+cwaiQj7dOUt3X
	7n8HsGkloREE9jwxOFNctrkuYh0VPo6WQucSDrnIxyvdOMvHZzzGEKzez2xKHbx31fAEOBWX2UE/X
	hiSxQo6MdSTes5kQN9hiCDO7/9qMcgsk6tmMn4MhzfuiwnBBzaD0jhIAidRcKlGWYWqEl4Byf4dhH
	nanLT5JGKIE7asRkS6qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDh-00GwZv-8t; Tue, 05 Jul 2022 09:51:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBB-00GuVn-5C
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2326861932;
	Tue,  5 Jul 2022 09:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2DCBC56749;
	Tue,  5 Jul 2022 09:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014543;
	bh=R6jQILHm1jgsSX2k7E2oYI//6NUmG3lm+PysvTkC4Ks=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Rbn/VUmjCJ3W7cBSnwYj9z8zsd4XBSrFwHtU89O013XdMMEFwdrUJoJaqc8w5hJU8
	 7FNkeEv9xpd9p2DkVXpCWWSyCh+KB/5iXRHCneZBnJRVM8V3PWj/P2bT0jRf2nqHrn
	 dAMHyO0ochFy3PbM3nY07r8mKjGfAeQmnvkND1uHVmuW4mYuxtcbsWa7QpVGKXnpaO
	 jdg4QcPlzdycMR98/uwmYcJ46ocVlWO9phJRXXIi+9Joc+mODnbf2rHT2ujU/QvJiE
	 scw1GDvbIJNomMlr1hynAi31sEnmLRFC3YLX/38tlw04ARoROYyHi3OaMGcIJPF7mn
	 Id72eHh46NdSw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB2-0004Y5-RV; Tue, 05 Jul 2022 11:49:04 +0200
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
Subject: [PATCH 26/43] dt-bindings: phy: qcom,qmp-ufs: add missing SM8150 power domain
Date: Tue,  5 Jul 2022 11:42:22 +0200
Message-Id: <20220705094239.17174-27-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024913_325436_643BACDC 
X-CRM114-Status: GOOD (  10.12  )
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

Add the missing optional power-domains property used by the SM8150 UFS
QMP PHY to the binding.

Fixes: fe75b0c4a691 ("arm64: dts: qcom: sm8150: Add ufs power-domain entries")
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
index d04cdb85f005..f1e3d70eb73d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
@@ -49,6 +49,9 @@ properties:
     minItems: 1
     maxItems: 3
 
+  power-domains:
+    maxItems: 1
+
   resets:
     items:
       - description: PHY reset in the UFS controller.
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
