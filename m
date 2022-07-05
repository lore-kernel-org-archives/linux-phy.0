Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3966CCA47B
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CO8pR3bmX3jjc5SG2/RwFmTHmSgXEtFoehtSelQuHlk=; b=YGp+EkJ1zFCW0k
	E7z+Hy3ySh2PO4s37Ff/ZvEo0MfBfcQpPAy2Z7VK6cH9WNyqFe16nlcLo+Bs4ns6sSZupgSUZeomR
	ZKAoXxUWSwAQ3tL2ZWlItcp075fubofQQGRjitbGeF+ppjbBBjw8Re6d9OQeE0Vj3/zUU0ADK2hXi
	otTxQzYo6e/JWsaEX5zFyd4mOUxKtO3A01Vy+2ZvbreYtG7TYOVVpKd52WFWVtI4mHyyck5DRGDkR
	rmb2M+7xPd7lWaeZBtIvQYxGlBUdftif1FV8BIdkHKEa87Fl0aX4LIsqJ78BCsoiu9ROssFwIjs35
	kdt2KGdiboXARQsLxMpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDX-00GwNh-1J; Tue, 05 Jul 2022 09:51:39 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fB3-00GuRl-Gt
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2F08C6192A;
	Tue,  5 Jul 2022 09:49:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BF3AC341D4;
	Tue,  5 Jul 2022 09:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014542;
	bh=p3mr02cgG6LBw6uKHFUORY4E7Plh2e80DzO9eY0jrjY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=siJmP5GC30d2xtj3Kb3hqdhf7zj64JqJrLfzkxBYmC07SbtgPWGc5hCYfn8r1iuHc
	 X97IkQYdoNN1YV9FHminpSHkd5DmUT9xUChgKkJGQ9TLHDwYnACcnTL2qceaOENNPA
	 NdnIGt+PymemGBy9xQIAy1GoMVTyWc1nlBFATmSzXZc0Pfc+KbIRJ40JcC0jhIc9+a
	 4RRvS+o4Wwt1K8+KWISBWUns3W0oTxgdY/ZCsdImfZNygF9DdhqO1gTLPiip47V6Us
	 2rOmHc5rNaG4CsCpt7HMcRPDbcq9D7oBvUpKrxy2My8aNv3qNRymTKCqPo07ei9L9T
	 7OBA5c7JRQ6IQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB0-0004X2-Uc; Tue, 05 Jul 2022 11:49:02 +0200
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
Subject: [PATCH 05/43] dt-bindings: phy: qcom,qmp: drop child-node comment
Date: Tue,  5 Jul 2022 11:42:01 +0200
Message-Id: <20220705094239.17174-6-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024905_652441_10D7E35A 
X-CRM114-Status: GOOD (  10.68  )
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

Drop the redundant comment about child nodes being required that was
copied from the old binding documentation.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index e678d7d5f675..bca006e41821 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -102,7 +102,6 @@ properties:
     description:
       Phandle to a regulator supply to any specific refclk pll block.
 
-#Required nodes:
 patternProperties:
   "^phy@[0-9a-f]+$":
     type: object
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
