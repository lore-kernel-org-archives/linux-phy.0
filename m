Return-Path: <SRS0=YzZ0=OR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AC3AC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 07:16:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4365360F12
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 07:16:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4365360F12
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=trX4wO4tbup98xjJyWLFfFgJ/N1bAeBAxS1i7Cp0ZZo=; b=Y3NTe7Cx0Wmdsu
	3+5cmt5CtRSOIBDoFt7G9ASW2BzwZyoVYpfCyo+oTgqWhkOhdFHVyw1datYxhx8zO1fM2y41OxjIC
	sMS/oLYXkWfAmK0XxCxxkQKjjTal2H2uD/M2BlYYm/d013cAGoItUNrFfbOVpgc8dnsZ8CaoYiiUG
	gOOHnJkZ6+VLlJnAtGEAWkOXyyukqurUv8wJywblDUWWWeeXDyWQvcthkf4+WvONtp7HRU+gMoU8i
	4umCE3dW/rVYG2jOGfZm9oUPEGNiXURK+YAGHVUzH3GUePKkJK5OVe2f/EdTx0QwMpUW7loyofs9C
	VnMP5K/bngntZLwR/thw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUksc-001nTk-S3; Mon, 27 Sep 2021 07:16:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUksa-001nTS-0S
 for linux-phy@lists.infradead.org; Mon, 27 Sep 2021 07:16:49 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C34CD61166;
 Mon, 27 Sep 2021 07:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632727007;
 bh=GhTlDAW0xH7ir0UUmr56Jr65UbGSTVOTfqjzCV3Kv+w=;
 h=From:To:Cc:Subject:Date:From;
 b=JnIbnSuOys/SVDL0oyxsv/9UfmTS7yefkPZg/Z3aV4613nbC0YzKmR2NNn/cdOAWO
 Ylz2rHHdVnsfmzgJne9GKHJk4byL1gLESLbkmiMTEFBUrhAU2TRfBT4TksCCPwZVCt
 BowQMkJMITela0Zt+zJHTawXYnR1lq0NNdao+0KW0+LQQL0X5suyEaF6KPRRS/jfpS
 GyB7uRjPOHoAu2IdxDzRqBStKDWcSNc/QiHRMghsq6d53QR0dMZTDKJdVOTFVYSD1R
 1O+Aw4QrxZotAaSdJIy8N4FnEpDkXdlKToUUH/D6QkotGY2SzRJVd2d580KNjZyjiB
 mso4ZaKu1jlDA==
From: Shawn Guo <shawnguo@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH] dt-bindings: phy: qcom,qmp: Update maintainer email
Date: Mon, 27 Sep 2021 15:16:39 +0800
Message-Id: <20210927071639.6225-1-shawnguo@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_001648_088326_453F3C3F 
X-CRM114-Status: UNSURE (   7.32  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Shawn Guo <shawn.guo@linaro.org>

Manu's codeaurora.org email address bounces.  Before he comes
back with his new email, fill Vinod's address in there.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 75be5650a198..a167b5c1ae17 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -8,7 +8,7 @@ $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 title: Qualcomm QMP PHY controller
 
 maintainers:
-  - Manu Gautam <mgautam@codeaurora.org>
+  - Vinod Koul <vkoul@kernel.org>
 
 description:
   QMP phy controller supports physical layer functionality for a number of
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
