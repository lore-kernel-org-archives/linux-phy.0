Return-Path: <SRS0=n1nF=QF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B765C19775
	for <linux-phy@archiver.kernel.org>; Thu, 18 Nov 2021 21:03:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1910761929
	for <linux-phy@archiver.kernel.org>; Thu, 18 Nov 2021 21:03:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1910761929
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=z3ntu.xyz
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y3vucZHykpGhqswOmP5mKKvEJEvEBTuXwstSvEUvseQ=; b=0rau8bz0doc7rd
	pwnlQmmO2ckBQstCov1yP5z0FS8WL4ioD+UZGMH4sRBdx1Q/0UBm9ePNwfoCUEH50j40rp9tnLrCf
	EdvMM6SIBGEg5FLAFi501omjQE1uPBI419VlrByhRSY+Z8xIvo489Kd+TvT94yleKEtxx0q6mkDLH
	Ok2HMSq5jnlEU0xYQ9s7prMoiLPyAUXKSCH6IxGKBk9WUsKdaaX2h1oTAISTErzNFcGK5beAXFUXG
	47FzZikFp1QXDrw6NFS1egE8b3bTg9+pSEWdPORyU763XC6ZQ80+dFnuwdwNu557MUc1gPDDQLKx6
	o74lt07/kwzbFrR5jAow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnoYk-008sh2-Kl; Thu, 18 Nov 2021 21:03:06 +0000
Received: from mail.z3ntu.xyz ([128.199.32.197])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnoYg-008sdh-JO
 for linux-phy@lists.infradead.org; Thu, 18 Nov 2021 21:03:04 +0000
Received: from localhost.localdomain (ip-213-127-109-54.ip.prioritytelecom.net
 [213.127.109.54])
 by mail.z3ntu.xyz (Postfix) with ESMTPSA id 6427BCADFE;
 Thu, 18 Nov 2021 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=z3ntu.xyz; s=z3ntu;
 t=1637269373; bh=hVhf8M1vf/Y7SjzoLmES1H4b9X86FBqukDCU7O27VBg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=sNAnKr46DkWHRcjSZ88Z0LG2AXaerQPLd7LkLWjypugwTiOUZ0aSG/3v0yk7Sskcz
 JKX7CoeMzhUo1TAElTagDyYbm1fIcMcozA17/HL2S52HPC7kQLfkpZQgONGEPvrX1F
 kc+PETY67XiMrQ/RDqnETj6qjvnCJw0c1Gom7M3s=
From: Luca Weiss <luca@z3ntu.xyz>
To: linux-arm-msm@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Luca Weiss <luca@z3ntu.xyz>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 5/7] dt-bindings: phy: qcom, usb-hs-phy: add MSM8226 compatible
Date: Thu, 18 Nov 2021 22:02:08 +0100
Message-Id: <20211118210210.160895-5-luca@z3ntu.xyz>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211118210210.160895-1-luca@z3ntu.xyz>
References: <20211118210210.160895-1-luca@z3ntu.xyz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_130302_820102_D4311736 
X-CRM114-Status: UNSURE (   7.34  )
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

Add a compatible for MSM8226 which also uses the USB HS PHY.

Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
---
 Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.txt b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.txt
index b3b75c1e6285..6814dccb390c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.txt
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.txt
@@ -9,6 +9,7 @@ PROPERTIES
                 following:
 
                         "qcom,usb-hs-phy-apq8064"
+                        "qcom,usb-hs-phy-msm8226"
                         "qcom,usb-hs-phy-msm8916"
                         "qcom,usb-hs-phy-msm8974"
 
-- 
2.34.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
