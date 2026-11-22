Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 940D3606A32A
	for <linux-phy@archiver.kernel.org>; Sun, 22 Nov 2026 12:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=K133DcFA;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chaosmail.tech header.i=@chaosmail.tech header.a=rsa-sha256 header.s=mail header.b=iNRkE0GT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Nv61ASh8RDWaJ187j+/UPfmE5BBTSDD0VzZDsDgzbME=; b=K133DcFAWhlFDyn64IY/BDVWa0
	kLkJi/HDF1ZeBgYjbCgIAJP75NfjXkNeS2ISgcaE06aM9COXb13UqsV/i145t6OmY7I9X4/FafeHt
	W2D8Z9Ll8JmTWDHweW7P3ZxNmmvsbtx3+3iAS/E0e138uf2GFiNjhw611fDQAB6zL7CmHN2MckVzs
	xQoF70Jy4j/TWQR0kUAzxmhnVzT5dR3cg+JnaA/1pm8ER+5E+VF3QOU9AM53vZZn9qb8gidtCLris
	yKBDRqlzxy+ZnOVDlxXvMKZO0nBiPIyuB7SFUYvnnAcsPJ1CQwQAJjqqG5Bcko/9ggpPVihsjorZk
	w5qIY6PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV6h1-000000015LK-1Q8t;
	Sun, 22 Nov 2026 12:29:15 +0000
Received: from chaosmail.tech ([77.81.229.115])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV6gn-000000015G0-0wo5;
	Sun, 22 Nov 2026 12:29:03 +0000
Received: by chaosmail.tech (Postfix) id 378841C8A07;
	Sun, 22 Nov 2026 12:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chaosmail.tech;
	s=mail; t=1795350538;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=h75aEkUrkcxTbFO0cw5uCyPfhp/ssg9PnW+LsVNZA04=;
	b=iNRkE0GT/c2pHOFDIFLAYDrjwwfN7LhfCbK5QfHFh7pZAYC9iNuZDK4Zetq5MI3aK1XsKq
	mB+B/+M05BWh1Kxey+0U5prnpUiS+pkZ5Xm9Wx6PcziBzYvapPx2FhDHgQzOe8CC8oN6UN
	e5auh9Qehe3+AIpBihhNnrdY736FFC0=
From: Sasha Finkelstein <k@chaosmail.tech>
Date: Sun, 22 Nov 2026 13:27:58 +0100
Subject: [PATCH v2 2/5] soc: apple: tunable: Allow passing NULL to
 tunable_apply
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261122-t8122-phy-v2-2-8d5c8fdf31ba@chaosmail.tech>
References: <20261122-t8122-phy-v2-0-8d5c8fdf31ba@chaosmail.tech>
In-Reply-To: <20261122-t8122-phy-v2-0-8d5c8fdf31ba@chaosmail.tech>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Sasha Finkelstein <k@chaosmail.tech>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795350536; l=686;
 i=k@chaosmail.tech; s=20241124; h=from:subject:message-id;
 bh=6r5CB8eIrYPysJHrZefwLcauhrBv1L4lVD2FHBotaw0=;
 b=DulbLg78Z8L89fh3v/KHZ+EdoUN6XeH472y6cUCC9orxgl6dBjJ24Xfxpb5prFk6j4Sy37oTm
 HE2jxXxVtDnDJutYsiahpSH8E6f0RTXZg8FuRuSO5a5D6SfIjW02r6E
X-Developer-Key: i=k@chaosmail.tech; a=ed25519;
 pk=aSkp1PdZ+eF4jpMO6oLvz/YfT5XkBUneWwyhQrOgmsU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_042901_804717_BC31DDCC 
X-CRM114-Status: UNSURE (   8.20  )
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

Make it easier to have optional tunables by tolerating NULL entries and
doing nothing when one is passed

Acked-by: Sven Peter <sven@kernel.org>
Signed-off-by: Sasha Finkelstein <k@chaosmail.tech>
---
 drivers/soc/apple/tunable.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/soc/apple/tunable.c b/drivers/soc/apple/tunable.c
index 659323839171..e89e8f9bb455 100644
--- a/drivers/soc/apple/tunable.c
+++ b/drivers/soc/apple/tunable.c
@@ -63,6 +63,8 @@ void apple_tunable_apply(void __iomem *regs, struct apple_tunable *tunable)
 {
 	size_t i;
 
+	if (!tunable)
+		return;
 	for (i = 0; i < tunable->sz; ++i) {
 		u32 val, old_val;
 

-- 
2.56.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
