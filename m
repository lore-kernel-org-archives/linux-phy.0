Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01E85EB64D7
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 23:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=otAlrAc2qOm6iU641awaJXl54uQn0+EuBD99bVn5z0k=; b=490W0XgQd6Joki
	gmts7Gg9LcGsXh+orhx0Py8FogaPJcwfOk9GABmtBZDkiVxXhPC9GvaOqquL2K+y0e10ruiHwLv1U
	sXloBbAcUgSNY37lz4foGHYod/BHrgZxEq4Fw9kthQpp0FTg/aHejky6fTa9P4u5lxAlLpp7tkL8c
	jvsnyMotfrkipCdmJS9EbmwvbbDR1BfRonayCb0VCRhCyTfffU2VFAyD7RxHcbngRVhJlbKnp1aHK
	6c7cbD5Wg7qJ2AWEiVbNemy8/fYMvgeqG9sj2YtnFr7TH4ru98S73juTrgnwFq/qR95jAL8WrbaKK
	5tqYAXjvd7CES3G8YUZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qC6xn-00G0Iu-0m;
	Wed, 21 Jun 2023 23:10:11 +0000
Received: from mail-io1-f54.google.com ([209.85.166.54])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qC6xk-00G0IN-1B;
	Wed, 21 Jun 2023 23:10:09 +0000
Received: by mail-io1-f54.google.com with SMTP id ca18e2360f4ac-77e3f25446bso1370939f.1;
        Wed, 21 Jun 2023 16:10:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687389007; x=1689981007;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uZ5k4Dp/46/3VEiWRW3fgGgoJsPLZRDZDhLXzW7k1Jo=;
        b=JgZwS091wd6ohA6UvpIfDrjs6sHYDEKMbV95VnpKYLrTX4kswS3VpPZzO+6T5gwNau
         +oMjUgOmUVCGU8GKVCsG3/ufjUva9ypFP+hTNdlVevOUZI11O1uohNo6Ugwv0Ou9WUgV
         dShVfWpcQQio5fAvhJb5fnid+GY0aQnXEzwy/IQz5W8ypsYXkHTg1o92U9gA+AnMBP5D
         ciYlTLGh+n60a/+Da4NtprKuwbVT1XD2AHibVLDzxd2BPScGhkkM125+RD43Wi1Vs8wq
         XtG7CzoeUsAtzUS+ZEvX4pOBKl1pDNVj45qa5Vl1vvW3yoCnnIVRxnnZBd7brHScPQtC
         Y+/w==
X-Gm-Message-State: AC+VfDyHh8RtVclc9d2EwvOHHpDpMw7HRgvdlFPDQn4HGU2EHKHedYEw
	o246I6Y+8nvDzQdKCKcH1g==
X-Google-Smtp-Source: ACHHUZ6xSF+H5lFNbNWgsiKD9LxRhFRCqXetCy8jY2budOoUKjxD1V+o68khuqMZ/FJzH7C+s93T7A==
X-Received: by 2002:a6b:d906:0:b0:777:a6a7:e83d with SMTP id r6-20020a6bd906000000b00777a6a7e83dmr11343275ioc.4.1687389006760;
        Wed, 21 Jun 2023 16:10:06 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id t4-20020a6b0904000000b00760e7a343c1sm1697035ioi.30.2023.06.21.16.10.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jun 2023 16:10:05 -0700 (PDT)
Received: (nullmailer pid 3815982 invoked by uid 1000);
	Wed, 21 Jun 2023 23:10:04 -0000
From: Rob Herring <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>, Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Al Cooper <alcooperx@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: brcm,brcmstb-usb-phy: Fix error in "compatible" conditional schema
Date: Wed, 21 Jun 2023 17:09:58 -0600
Message-Id: <20230621230958.3815818-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_161008_426425_18567D53 
X-CRM114-Status: UNSURE (   9.69  )
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

The conditional if/then schema has an error as the "enum" values have
"const" in them. Drop the "const".

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml         | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
index 43a4b880534c..580fbe37b37f 100644
--- a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
@@ -115,8 +115,8 @@ allOf:
         compatible:
           contains:
             enum:
-              - const: brcm,bcm4908-usb-phy
-              - const: brcm,brcmstb-usb-phy
+              - brcm,bcm4908-usb-phy
+              - brcm,brcmstb-usb-phy
     then:
       properties:
         reg:
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
