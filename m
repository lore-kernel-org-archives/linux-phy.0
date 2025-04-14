Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD3B1C369B9
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 15:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6XycNKSAc52whKBgVXqRisLeINN3KkA5WuJJmadKkus=; b=neJ9RyXGJGw0bu
	igmNd82j40Pszw8A1EfiqG4EOjHxpsLmG6+rYb9014Khrbwfb3iVLKMcF4pEV1/qhFeKQ0YfbleXA
	VcdfbZnfczckTNrQz3WkUCWNslS3iKMAB8ljmCMjgc/JP0Wyh+eFwMQV8XVqbysLeulgcsRs+2tP3
	OQsB6i95JzJgXReNavLH1kR29sp/GlUihDA6PPNCf+qrMk/iRGVAsAZ9xE6Vs6oB+7N4IiyWM5YDK
	W8m0piFwc2dl5/f3Vt64Sa3elqOunOX1ykU6W2wEYhfYfegbbLn9dKT3AX4/qN6vU4XZ8qGmHC7c7
	E+TUmfY8EnPxRQBLeddw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4LR0-00000002Yob-1t3Y;
	Mon, 14 Apr 2025 15:09:18 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4LGC-00000002W7S-1cFl
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 14:58:10 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-3914a5def6bso2574200f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 07:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744642687; x=1745247487; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DGq8xiqXi81gFjKnbUkYxKmJhAAFdXbyWQx1OPU+kwc=;
        b=cJ7LfWUL6FMBYbPbnaQrAAbPt1TelGdkRIK9oQlDvX9bQcbg6g+r4cSs+3lJNx2lNQ
         jDCLLr1gAansIWwNYqAnEFTxOJWbHhkoX/bi3fD17MhhCY+C3/qlWNG/TWa19U/LAWs5
         tIPqauWRAyWQieGVJL9offRFX02FSwYmN3bcOxqDNQyQ+4FXcCvncJ3ID1WKhd6UbRd3
         ZXrr4baLbLJzPNAgFHozDP/L0NmhYGdwIZxUlfPCmndGAG4Aj/nQGMNOHA32g0QYFF3o
         WDWos/gOxyPBEoPddTeA5hxXazHJREyQyOgcGwQrWB2GuXxVIFJe52RosZ4ewG4vKuu3
         pHGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744642687; x=1745247487;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DGq8xiqXi81gFjKnbUkYxKmJhAAFdXbyWQx1OPU+kwc=;
        b=DLvCjUNcGmbmCAnIjrC9ZWnK5HVD+UcFQH7DwNuw6O7+KezhyMZbyLzVTgYZ3mHogT
         dsZHMPpx3UCZm7eX1BRLzIlqxhBYokQ0mZDFHKNo63Z43+lv7noBrgLxDKv5Vu1LYBaF
         H91AhOzz3QswjEmXoIHFgLEdIwBkM1kEXWW3dCxsHTjEmNy3/j1QHlfJ9it6Xcr7C6W3
         tZWsIZPE2VTVpCxL77wy50XK8jb1dD1O9NwGgfn0ZV/MF3HwMzovwW9rnOCKzpDhCXGa
         NRB2Za3W1iSNet+GiTjDfSd4HAHbs4PK3x5haKIAFqnsU8qHF/6ELNXS1/KRSTDQIFKa
         T/NA==
X-Gm-Message-State: AOJu0YwtM9drWBJBAWeMMy3foBn4F5UoLODV4v1OuEcQ1cWsZpmzaOei
	7Anky8UmyeHciDRvFdQ+7OFfuVXmd1KHu6oqsChqEFe1tEhFh+xw
X-Gm-Gg: ASbGncuTQ1SItFQEtEP+7pih60pz5bQAOKB3AmwEipfO0J2IcRTLvfqegRus5GqiJhM
	qVYkus3u/NNc2hgKLuWpM/SG6bJzltGmSBw7v7ka+lY509ZLIDrXOaS22k+4TC0eDyKYAY2aQXh
	gINdeDgbRPkSkAEDaznUKKaWLdSqzfWZOByC01p5LsrtfCurw5T/Hx9CJMSRYDA30EOKjalkqyY
	KzmmT49aL2XNld1z9MY1hrxtHy9jARWZlLeVx6Wx3ccaYmWfsHRi8q9BN3Gp+hfq9FKibNfwS1j
	QRtiZCRnLXqwb/mdXP5eUyDKiKi9HOI9rHqoiPgCj0Q38q9nRJi34f1wf39qCvIK
X-Google-Smtp-Source: AGHT+IG7PSvp9NkoMogYg0HCjjGWaWgg8x773MSh4hDMNsCBCViD2qh8zvbkUHFdVV7cqTSvgz9Yrg==
X-Received: by 2002:a05:6000:210b:b0:39e:cbc7:ad2c with SMTP id ffacd0b85a97d-39ecbc8a256mr5864365f8f.25.1744642686335;
        Mon, 14 Apr 2025 07:58:06 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:eb55:397c:6c6:e937])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae96bdf9sm11067041f8f.22.2025.04.14.07.58.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 07:58:05 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 3/4] phy: renesas: phy-rcar-gen3-usb2: Sort compatible entries by SoC part number
Date: Mon, 14 Apr 2025 15:57:28 +0100
Message-ID: <20250414145729.343133-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250414145729.343133-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250414145729.343133-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_075808_423424_4E350993 
X-CRM114-Status: GOOD (  10.72  )
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

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reorder the compatible entries in `rcar_gen3_phy_usb2_match_table` to
maintain sorting based on SoC part numbers. Keep the entries ordered
numerically while ensuring the existing generic compatible strings
remain at the bottom.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 775f4f973a6c..10d1a89558be 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -606,14 +606,14 @@ static const struct of_device_id rcar_gen3_phy_usb2_match_table[] = {
 		.compatible = "renesas,usb2-phy-r8a77965",
 		.data = &rcar_gen3_phy_usb2_data,
 	},
-	{
-		.compatible = "renesas,rzg2l-usb2-phy",
-		.data = &rz_g2l_phy_usb2_data,
-	},
 	{
 		.compatible = "renesas,usb2-phy-r9a08g045",
 		.data = &rz_g3s_phy_usb2_data,
 	},
+	{
+		.compatible = "renesas,rzg2l-usb2-phy",
+		.data = &rz_g2l_phy_usb2_data,
+	},
 	{
 		.compatible = "renesas,rcar-gen3-usb2-phy",
 		.data = &rcar_gen3_phy_usb2_data,
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
