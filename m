Return-Path: <SRS0=oIvu=KB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3B7DC433B4
	for <linux-phy@archiver.kernel.org>; Thu,  6 May 2021 11:50:02 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 99F88613D9
	for <linux-phy@archiver.kernel.org>; Thu,  6 May 2021 11:50:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 99F88613D9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=vivo.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SGbnv/MED0YZu9q5GKbNK70RhdCL0pAYbnADauoYUEw=; b=k5bNODtR+U9vZGIDrs2D1QpquS
	B3pmJZMWKJYtOThgmKpknzthtMyNxl4+Em+eQGt6yq6QDgg1JEJvhhu+x8i4jK8KMpq7Tp5M+/r5I
	X9lAiQxbUW/PSjAVkDx456RtzWVsEtG1RsZBHqzrQT57o4qCtIQffaETeDtxHNZAg/KOS1cKEN0j/
	uwK3auVfq2QO+g9hTHVldWOWxGHSVfiz7K1D+lsjk8AQN8KMTNkGWzWh2/eoNXK1IMcb+Xz1ZgusD
	x47ioQ3MWvSBlQ0emu7UzlpAZlMkqV8v5oYr6jJAx3bQzkNjCuA4o7aMRyDpJm43nxVQlWLE665l+
	xBSSAB1g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lecW0-004Avb-Qi; Thu, 06 May 2021 11:50:00 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lecVz-004Av8-AI
 for linux-phy@desiato.infradead.org; Thu, 06 May 2021 11:49:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=hEb9PY51eF1OoPJpfjES/iT9G7VlSKAzGgXiKQ4Wpv0=; b=Cjf+3OQM8iamwveKkFRdz7i/mP
 FDXe2A0UmReeuUnYmwCXb6ytKaetWS5iRQuEdy9awpCQQcbyyy23IeCse1ylQvPSm2wyWR77biNk0
 /iyJwKY3+AlXEPy0bxO/0eTYjVnrqhFvCoQj+0lBMdlrMthH+4mokf00OOBJhBPSjQNcJWdW8c6AU
 Kzez64pw5//4vudaX7fL4Jm3yyn//liMgG55UmHf0b0Q6IlFm4tfDSqEq8aZSMNG9qj+LYfyB7pqB
 Kdotciftv5pvPP5ZVFOGuj/JPaU4J3wdHXNO5Ugtso+Vv3QkuZb2iC7HF6UDy4/BLngn4p98PDQQI
 aE3LbZGg==;
Received: from mail-m176216.qiye.163.com ([59.111.176.216])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lecVu-005zxR-I4
 for linux-phy@lists.infradead.org; Thu, 06 May 2021 11:49:56 +0000
Received: from wanjb-virtual-machine.localdomain (unknown [36.152.145.182])
 by mail-m176216.qiye.163.com (Hmail) with ESMTPA id 52B17C2019C;
 Thu,  6 May 2021 19:49:46 +0800 (CST)
From: Wan Jiabing <wanjiabing@vivo.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Swapnil Jakhade <sjakhade@cadence.com>,
 Yuti Amonkar <yamonkar@cadence.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: kael_w@yeah.net,
	Wan Jiabing <wanjiabing@vivo.com>
Subject: [PATCH] dt-bindings: phy: cadence-torrent: update reference file of
 docs
Date: Thu,  6 May 2021 19:49:39 +0800
Message-Id: <20210506114940.22215-1-wanjiabing@vivo.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZS1VLWVdZKFlBSE83V1ktWUFJV1kPCR
 oVCBIfWUFZGkMZGlYZQkgfTRhLSR5MSxhVEwETFhoSFyQUDg9ZV1kWGg8SFR0UWUFZT0tIVUpKS0
 hKQ1VLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mio6CCo6HD8SQ0IWSR0YMQNP
 GUwaC0JVSlVKTUlLSEtKTENNQ0NJVTMWGhIXVQwaFRESGhkSFRw7DRINFFUYFBZFWVdZEgtZQVlI
 TVVKTklVSk9OVUpDSVlXWQgBWUFJSE9ONwY+
X-HM-Tid: 0a7941832da0d976kuws52b17c2019c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_044954_781077_FA49DB03 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

In commit fd7abc3c5b87 ("phy: cadence-torrent: Use a common header
file for Cadence SERDES"), phy-cadence-torrent.h was renamed to
phy-cadence.h. Fix it of the Documentation.

Signed-off-by: Wan Jiabing <wanjiabing@vivo.com>
---
 Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
index 01dcd14e7b2a..320a232c7208 100644
--- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
@@ -118,7 +118,7 @@ patternProperties:
         description:
           Specifies the Spread Spectrum Clocking mode used. It can be NO_SSC,
           EXTERNAL_SSC or INTERNAL_SSC.
-          Refer include/dt-bindings/phy/phy-cadence-torrent.h for the constants to be used.
+          Refer include/dt-bindings/phy/phy-cadence.h for the constants to be used.
         $ref: /schemas/types.yaml#/definitions/uint32
         enum: [0, 1, 2]
         default: 0
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
