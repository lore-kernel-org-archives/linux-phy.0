Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2C4EC433FE
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 09:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14qwWThhrTdQDwbLVxOX/sdFdQru2JTOCYPle57NLe8=; b=S9ZMTSOOP1JXVd
	cCmL3n9kuqlFXW0acsh9xqP2ddP/PvQ5liQUXjTeLr8PDfXiNbptTEmltaEjnD7m2EJsSQcteL/Gr
	NoE2WNSA9cGDmqGSuuqXa59HjJBNw4bES3uHH1qiBso5p+goJYpEEa9GaE5ZkPnZSyzy/KtGhej2T
	PuM8np4/TlLZMmD7cTsljyqIjSMp5cyEK6X8oseAKtin2lu3GT2l4kH7D5Jubi2c3bDppBj3eM9/A
	TX4zQI6fqjkWcwA4RiVY8/qLUGVlhAFeUz6FpAAD3JE+jjRU/x07d0MLw19Dbicpvyu9A/5yNzMB5
	4qguzKjvZ01eja+0F4CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otmdd-004ZIG-TU; Sat, 12 Nov 2022 09:17:21 +0000
Received: from mxout3.routing.net ([2a03:2900:1:a::8])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otmcI-004YRr-2f; Sat, 12 Nov 2022 09:16:00 +0000
Received: from mxbox3.masterlogin.de (unknown [192.168.10.78])
	by mxout3.routing.net (Postfix) with ESMTP id ED28C60552;
	Sat, 12 Nov 2022 09:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1668244537;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SEI4bX6ZbGFvxrOMba7516wjM479jvcDqzWDjK5rS6g=;
	b=wwj2Si6ikFdLcbZtgtvYsw7RKUqXdPHDwkJFs+g/H+cKUn/LSVqr2zUOC1Vh43n5nn+PfF
	lUk/fptLRb6ZlK3i31sDtPN/rIdNEDkEg45aoKWki/yrxBFVbNwk+Fq6Zf3Ts3JrOV+VsP
	Uz1sub/MaQVfXSa1QxNvcOKnhCvCQ38=
Received: from frank-G5.. (fttx-pool-157.180.227.41.bambit.de [157.180.227.41])
	by mxbox3.masterlogin.de (Postfix) with ESMTPSA id DEE04360D0E;
	Sat, 12 Nov 2022 09:15:35 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-mediatek@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Paolo Abeni <pabeni@redhat.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Bo Jiao <Bo.Jiao@mediatek.com>,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org
Subject: [PATCH v4 03/11] dt-bindings: usb: mtk-xhci: add support for mt7986
Date: Sat, 12 Nov 2022 10:15:10 +0100
Message-Id: <20221112091518.7846-4-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221112091518.7846-1-linux@fw-web.de>
References: <20221112091518.7846-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 5285a62d-990c-4c48-be6a-b2182c6881ef
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_011558_411270_8689333B 
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

From: Frank Wunderlich <frank-w@public-files.de>

Add compatible string for mt7986.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
index 939623867a64..a3c37944c630 100644
--- a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
+++ b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
@@ -28,6 +28,7 @@ properties:
           - mediatek,mt7622-xhci
           - mediatek,mt7623-xhci
           - mediatek,mt7629-xhci
+          - mediatek,mt7986-xhci
           - mediatek,mt8173-xhci
           - mediatek,mt8183-xhci
           - mediatek,mt8186-xhci
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
