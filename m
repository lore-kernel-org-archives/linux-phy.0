Return-Path: <SRS0=dQyd=NT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83057C432BE
	for <linux-phy@archiver.kernel.org>; Sat, 28 Aug 2021 11:12:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5258C60EBA
	for <linux-phy@archiver.kernel.org>; Sat, 28 Aug 2021 11:12:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5258C60EBA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FArYcx7tWu4aK5EBC7wgxGpwYYDhM53v6qPg+zjeKOY=; b=UrCKe1aBkO07fS
	2rnU+o10pU+C1TC6HUotUqjkU3FF0TBkLLY8rvLr302unq4CoHcuiKsuZcoxsvrI3Do1SG6J2fVMX
	rqmOIGbzC9iUaVA6+ZDkxlggCrxDM0H/6reu5NOiATDRiwhth7p9xID65oQ4M2gebnOZvqWGe6DXa
	dA3lTMDQtw5J/xSWbt85y29ml+jk14ApGnOp97WrmAwNTcYn1+BqlX3n2lwSLv5Qwyw4s6tT4OSyI
	I/ByrJvKo/OCRwyJIQ1pdQlsef6LPbAzCROYAUagkG2sDjdC+fjmQdXrLfrf5d6mniToOcrWFurcz
	ZX8VIDgW6U8nECBTv1hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJwGK-00E8Bx-Qw; Sat, 28 Aug 2021 11:12:36 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJwGB-00E88q-5z; Sat, 28 Aug 2021 11:12:28 +0000
Received: by mail-ed1-x530.google.com with SMTP id q3so13839640edt.5;
 Sat, 28 Aug 2021 04:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HNPNHeMY1pAufWRJDKpC4YVFgerQ8O6XdjZUjWL0NoY=;
 b=od/uqxeoSDEa9+9amuQv5t1T0uCN5kAoalGAmHeKNc/9b1GHvJ+kgInOP9Dr+pNw73
 idHtIMeA/Yk+H+B2awdqAf7Z6c+YX5/ZBQNkVH2hCTSg6KjoeSBC5AjxVjXfsaGcGhGz
 /lG4DhzvDy04x33Nle0X+TCL0nDTDH/dUF90vT34KXjsh7B6eRvTvSc5mbEeZJvjk+gK
 ksPws+Td9ORVhizSgv+ELhNvtcB6mJ0UNbABLCsSxT1/xIQwggBMVAnh5TO2LBICsmfy
 pqJqeDD6+Ddq1t1YHO2UrcTyOcv2+0jZ2LkLJYbZBdXfFnpIIHgteCBsFUHgh+clORZO
 /aXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HNPNHeMY1pAufWRJDKpC4YVFgerQ8O6XdjZUjWL0NoY=;
 b=DnpSEphcWQKLB/WWNHj2H3Lp5pPfYkfo3aNYOAAIUwwiI5LLmh+fTG2hY4jPnF9sLW
 xg2mcJ1MCTuxR/78sPv46cO+qw/MVZdhuyCwNn0w0BbUKa8A/CWzSjqBddMgEpATahKo
 r7tLqbrD17IEY95S0Ub/lj7ZRP/pUBsHLIKJSwB/kdoj6aByo/u6eJP5RJPfvXCazZou
 Hc3sHbqYRnet8m9vaugSo0FcZlaPIlXtP2V7I6o4OSUtmjtNR4ee//H3uUAGhec7l+5l
 GTlg3JYek7vn2a2zChE78QzQAgfVOBmaN1T0aaNZY8uAQBUhB6ozc4UyIMehWCUtFd/T
 clIg==
X-Gm-Message-State: AOAM533pVzZYGBg0m1r97yArTkq2r4H6dMwjJ5kit8uIacNInXLZhBst
 oS0nSNZh/oYb1gMM+SgdPwQ=
X-Google-Smtp-Source: ABdhPJx/9ZaL2hFLYRlQE0A/LhxFewkqLdwXnHDwwrzuHk6sG8gJjsxZEccPC8iEZ1cIJpk1osFc1A==
X-Received: by 2002:aa7:dc56:: with SMTP id g22mr14613669edu.187.1630149145258; 
 Sat, 28 Aug 2021 04:12:25 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id z15sm4716665edr.80.2021.08.28.04.12.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Aug 2021 04:12:24 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: phy: rockchip: remove usb-phy fallback
 string for rk3066a/rk3188
Date: Sat, 28 Aug 2021 13:12:17 +0200
Message-Id: <20210828111218.10026-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210828_041227_283827_0DD1BC65 
X-CRM114-Status: UNSURE (   8.50  )
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

With the conversion of rockchip-usb-phy.yaml a long time used fallback
string for rk3066a/rk3188 was added. The linux driver doesn't do much with
the GRF phy address range, however the u-boot driver rockchip_usb2_phy.c
does. The bits in GRF_UOC0_CON2 for rk3066a/rk3188 and rk3288 for example
don't match. Remove the usb-phy fallback string for rk3066a/rk3188
to prevent possible strange side effects.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/phy/rockchip-usb-phy.yaml     | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml
index f0fc8275d..499d55131 100644
--- a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml
@@ -11,13 +11,10 @@ maintainers:
 
 properties:
   compatible:
-    oneOf:
-      - const: rockchip,rk3288-usb-phy
-      - items:
-          - enum:
-              - rockchip,rk3066a-usb-phy
-              - rockchip,rk3188-usb-phy
-          - const: rockchip,rk3288-usb-phy
+    enum:
+      - rockchip,rk3066a-usb-phy
+      - rockchip,rk3188-usb-phy
+      - rockchip,rk3288-usb-phy
 
   "#address-cells":
     const: 1
-- 
2.20.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
