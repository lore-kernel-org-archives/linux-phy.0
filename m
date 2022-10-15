Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4D69C433FE
	for <linux-phy@archiver.kernel.org>; Sat, 15 Oct 2022 20:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KrbHRkiYSH8Mv1peRZpOMUPTVXnUrFd4STMCCcEqCcE=; b=mygXPWc8vjpx5H
	fQ2o0maXgz+9vg9069Sl5M9qg5wrhr6dgpBvYEB3DTr+G4+CTjMsDs9itQUD1S8taXGpU/XR97Yjb
	ezL27OpKZibsQiNO6O/N54lM5iVA+S/xNhg13V+dUHAGfFLEfOtze6loT+lpwK8t/MvR03efGMH7b
	Nj0nUg6MuPhmpYbofZgPBDGgldajlDeOb/+7A4VEZ5RZJ+FILc4Vy1jJMV85QLYTKiQMiNDYbzAEb
	y5GjjGiw74aamF61BgQqpEgq5v3KXHv4TUUDH3swWIZ7m0yLDjj2tww23JXycVlDa1FaGjn/9UCnk
	9u6iYRmOUuZkex/bQ0aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojnVf-00HaIx-0f; Sat, 15 Oct 2022 20:11:51 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojnVc-00HaI5-HJ
	for linux-phy@lists.infradead.org; Sat, 15 Oct 2022 20:11:49 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29FKBYMu109094;
	Sat, 15 Oct 2022 15:11:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1665864694;
	bh=3W8w7YFCxLwMM646wryVFkXGy2Rq3g7xmmUtsBKbeTI=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=AiZSzQCzMhctn+ejXUd5oLWqvq/OKVEdwl4BlfUZA7SgNJNbO1LQNF1gzJNmxbg4l
	 a3TUf27eaBLNDaKhUEfIjshauZqOW6eYvxgCzsjouf7pcSIHbkAkj4zypMAOGYOg0j
	 q5Wot77preiXM65ls11vdMQ90H3M+YPi6e3uIUL4=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29FKBY08124379
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sat, 15 Oct 2022 15:11:34 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Sat, 15
 Oct 2022 15:11:33 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Sat, 15 Oct 2022 15:11:34 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29FKBVV5013992;
	Sat, 15 Oct 2022 15:11:32 -0500
From: Matt Ranostay <mranostay@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <vigneshr@ti.com>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        Matt
 Ranostay <mranostay@ti.com>
Subject: [PATCH 1/2] dt-bindings: phy-j721e-wiz: add j784s4 compatible string
Date: Sat, 15 Oct 2022 13:11:22 -0700
Message-ID: <20221015201123.195477-2-mranostay@ti.com>
X-Mailer: git-send-email 2.38.0.rc0.52.gdda7228a83
In-Reply-To: <20221015201123.195477-1-mranostay@ti.com>
References: <20221015201123.195477-1-mranostay@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221015_131148_637166_0769D624 
X-CRM114-Status: UNSURE (   6.95  )
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

Add ti,j784s4-wiz-10g compatible string to binding documentation.

Signed-off-by: Matt Ranostay <mranostay@ti.com>
---
 Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
index 2225925b6dad..a9e38739c010 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
@@ -17,6 +17,7 @@ properties:
       - ti,j721e-wiz-10g
       - ti,am64-wiz-10g
       - ti,j7200-wiz-10g
+      - ti,j784s4-wiz-10g
 
   power-domains:
     maxItems: 1
-- 
2.38.0.rc0.52.gdda7228a83


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
