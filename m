Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 787F6606A333
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 13:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uezFE5rR;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chaosmail.tech header.i=@chaosmail.tech header.a=rsa-sha256 header.s=mail header.b=Z98iVdTS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3SN9jPSdIVeddV1GL7ASrWg68XRao3ZvrXEGXoGIiL4=; b=uezFE5rRX8ebvKbpcLdMm2+QTi
	hItDi1+DAPhrDuSN5b4UvW0D6KQZAWK4PcSol+kdkroEZ/T2kHxGnXpXCx5DV2/xLGuNL+NPhrCaP
	DJ4lcKZJzRIR+Jw+AQW6r10zvce6DHD+Mor74A5fz40CcTjgfzPY6GJYY8ETDZNK2rIxVD2bIfD0a
	rlOczZnLtGV+jCFFDCUS7JMqm7LwgJZJKxCG77dO2FwaK2FBMNpJgvasLzIeXwhw1iCzrrHw3Cjpr
	S1vTWieXGgWGZJk2MS+wbTM7HMJEWC80VzRO+9Rfw/MKoqUzCmZEJxObARmSd121Xm55z1mLIcUmT
	TwXCBFvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWCnO-00000009weM-0vjj;
	Wed, 25 Nov 2026 13:12:22 +0000
Received: from chaosmail.tech ([77.81.229.115])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWCn9-00000009wX2-2aax;
	Wed, 25 Nov 2026 13:12:10 +0000
Received: by chaosmail.tech (Postfix) id 445C91C9FD5;
	Wed, 25 Nov 2026 13:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chaosmail.tech;
	s=mail; t=1795612316;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=U3UsFfrbPoQpbauEOSvhwbePzgGzjshZIWa/5gH/TEg=;
	b=Z98iVdTS5WRvrWz9ZPOuHxfn2tE5XcC+8Hol5U/XOj9IK8CBTQJ+opKFHSy7s4b0h5LU6o
	lsf/ztPIDrkptBB16/76/eJkHFOlgFuj+JrOd453CBkUQFBt9YgLuusHqzIR9ez1V5silX
	8lXjnn0d8YO4mMu58dQfUlOgIq7dvQw=
From: Sasha Finkelstein <k@chaosmail.tech>
Date: Wed, 25 Nov 2026 14:11:45 +0100
Subject: [PATCH v3 1/5] dt-bindings: phy: atcphy: Add M3 series
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261125-t8122-phy-v3-1-196e20b3537e@chaosmail.tech>
References: <20261125-t8122-phy-v3-0-196e20b3537e@chaosmail.tech>
In-Reply-To: <20261125-t8122-phy-v3-0-196e20b3537e@chaosmail.tech>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Sasha Finkelstein <k@chaosmail.tech>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795612315; l=1015;
 i=k@chaosmail.tech; s=20241124; h=from:subject:message-id;
 bh=ONFv1nLesYHt/1neWh9QB3KZ9yU2CYg8uiOebA2uB2U=;
 b=obT1ffHoLdw4gfPXIUZg59t6IifZzBzT03Ur6DJpCI+cGDKIoznCWVdfh+X+EFjX/0KIEwGQM
 ZV8j/ONVeZUAzxPD3tjN5q7lyk4om5IPkzN1CkhzP5BdYn3FbYEXq7i
X-Developer-Key: i=k@chaosmail.tech; a=ed25519;
 pk=aSkp1PdZ+eF4jpMO6oLvz/YfT5XkBUneWwyhQrOgmsU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_051207_817049_2913F6B6 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

M3 series SoCs have new phys that are different enough to need
a new compatible

Signed-off-by: Sasha Finkelstein <k@chaosmail.tech>
---
 Documentation/devicetree/bindings/phy/apple,atcphy.yaml | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/apple,atcphy.yaml b/Documentation/devicetree/bindings/phy/apple,atcphy.yaml
index 0acac7e3ee67..4dfb3b68efcf 100644
--- a/Documentation/devicetree/bindings/phy/apple,atcphy.yaml
+++ b/Documentation/devicetree/bindings/phy/apple,atcphy.yaml
@@ -54,7 +54,14 @@ properties:
               - apple,t6020-atcphy
               - apple,t8112-atcphy
           - const: apple,t8103-atcphy
-      - const: apple,t8103-atcphy
+      - enum:
+          - apple,t8103-atcphy
+          - apple,t8122-atcphy
+      - items:
+          - enum:
+              - apple,t6030-atcphy
+              - apple,t6031-atcphy
+          - const: apple,t8122-atcphy
 
   reg:
     items:

-- 
2.56.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
