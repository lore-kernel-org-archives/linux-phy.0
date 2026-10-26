Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F09E606A323
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 19:18:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1yHE1w2E;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=KpNTf234
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1FfeBu9CIEZO5GoO7nyxVr400nDFB0Hbw3tw5xss6lU=; b=1yHE1w2EDOt504O1s8OGW6fQJh
	pbNChSCgDZOuYMfMM+J3Ziv463GrmkhH3hJhbP79SdyQPWBjxaLIe9OIFfvhwfiqEvWetxDVhSaAm
	QTMiavHEgi+bagiI0jlGMnPOuNLGNf4xBNOUdj1hkhiHtQb6AYUXo2H9kTP0GJG9qyKzz1fbgpmFd
	uKxKw60YNrSqGWvyz6HwXt9HYjxPwhIW5SdxfVMtgEHWHU43q0vrUYUjbTDjoc2Sb8U73TMHdKJdg
	Jc0LBRIWsTFwyNeEhEc1NNPrz+MDTFELYcfeHJFaI/A3FGF+3otUGgq2JlL667qv3V1BswczVjnza
	Z51bDl3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLQDC-000000039bM-328u;
	Mon, 26 Oct 2026 19:18:26 +0000
Received: from mail-pj1-x1064.google.com ([2607:f8b0:4864:20::1064])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLQD7-000000039VY-0bQ7
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 19:18:22 +0000
Received: by mail-pj1-x1064.google.com with SMTP id 98e67ed59e1d1-3ab60ff4273so2762026a91.0
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 12:18:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793042298; x=1793647098;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LpNaT8q0SGvIEMd/N1soAJa02WC3uqlIifzAi5jpoGQ=;
        b=24MP+CTjNAs0U1Za+cQP5YCz82REetr8RQdfUQadNVnUJZHs4pkO1TDcPgQo4patCM
         l3aYkTzyZIo3O8nX93iF5arxPLvjoKbBRMoJ3XbGGovGwnhtNqbf3CoVdlIWL+jcIlj8
         w7uUG+6zb/aJ8RUeOTslKhrVIw6cVGOx3AFS3OO6v2ZgF2KKBGq1CqLkgTU8d/DcN+YZ
         wqYSMOnggEENuAUZdcQ0WJdQEc6V5cTTMxlNvncRgd6l7y2N7Tj9JROKrAEzuROCNfVq
         rTK7ovFkARNEWp+7BIMvOCXUGZ9B6//D9Ni2GH3RiAvqijXjFsL3QmJVx11TdYVHKIZQ
         cf4w==
X-Forwarded-Encrypted: i=1; AKwUvBzTnBt5uH7dNyYIh6x4rpLHUAZt76BeVIyaSa/j3KvqUElbnW0oHlJ49nlFdlfGV6+khiLkKLfqkIs=@lists.infradead.org
X-Gm-Message-State: AFq9FYLVKBJjeloipfwtvUOBL13TlXkm0p3F8q0Dia7D/YVOh6nmgVQD
	zEWu+EB0YpWJU5xSFnUpAZxUsiBLx3ysop045hSPdVHonmGSl9TMQ/KAKVCDtqURgTBupWpBLpT
	3vBgMaTVUbyJuUkz/aW/WrxBHF3veFnHPD96HGQkT8J/ltlt4Db+8etOUVHgI9N7Aycx27twK+w
	+hSOiOncjkP1NiU3YGdu3twjSVenYy02P1rA47zOA+8hLnoXGmmj3fBmLNQJGKv9K16/f+HWAJk
	6jFjTJ+6U0GoKpUg1/U489MYvnU
X-Gm-Gg: AYBFou3P3BQ6JtG9YbOoPoqGhe6IRPHxgjiNWvPb2SO9bIa34gHwJ7dLQdQCzNjZp24
	SNm8h+vDFJdoiCZAim2zZhItqxz33lmmLm9F7mExnFX5eOJG7mWA9TtA/pXeWVMch4EL0N2kUnz
	LlxQQPymXSgrdqrDBu38YC/LNzUHrqUi6S6Wid9rm8TFkBvH5X62jNhwDIgsEARp5RI0caURen/
	xDd/4EeuBLpI/azNpaHIUkNUcKgVJ0+F/9hU8fkDAKs5wtC+vwc3DP3LYeGPjA+I4tIHUcxEz+p
	4hYGqcU6jelseHFIeCLSdHcM4TZZKYQ2KOcOrIHa3gopDBRHhPLDZ51J6wlqnbH5vgXyqJI6zzo
	zI47Es5JFfn09WN3aE2DwnQNUC0FG3HY7v1tTEuRbtg5gf/sv8wI2lwZiMQrir9rilMaat7KLw6
	xzg8Q+r+DYvS3tJ2gY78JohmuBGCc1JzalsYkbIgwh
X-Received: by 2002:a17:90a:d605:b0:3ab:2236:6b3d with SMTP id 98e67ed59e1d1-3adead57d9cmr6330950a91.27.1793042298421;
        Mon, 26 Oct 2026 12:18:18 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-23.dlp.protect.broadcom.com. [144.49.247.23])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3ae41527924sm64335a91.4.2026.10.26.12.18.16
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2026 12:18:18 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93909014c85so699014985a.0
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 12:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793042296; x=1793647096; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LpNaT8q0SGvIEMd/N1soAJa02WC3uqlIifzAi5jpoGQ=;
        b=KpNTf234Hsg5DZuQCIXczz5nrAHgNizBC2tUcxB++ma7MdgG333+klv2GqFGSVKzrF
         QBXzgPJP7VLrPML+NelpluIZTc4bnOJQWi31ULJm36yVTiQELTA2KLuIn4i5hjH4wCQs
         A1kR1xj08PtDNKiUvrtnHih+g7RElAyBccvtE=
X-Forwarded-Encrypted: i=1; AKwUvBzdveqr4oavjUK5yUPgzNPubvbe/NAX9Nlsw33cZp2FYswvimk+15qvP+7JpOuGAa7xjXNsIs9lkJw=@lists.infradead.org
X-Received: by 2002:a05:620a:4487:b0:93c:29b3:3525 with SMTP id af79cd13be357-940ef8e9ad7mr1116010285a.36.1793042295594;
        Mon, 26 Oct 2026 12:18:15 -0700 (PDT)
X-Received: by 2002:a05:620a:4487:b0:93c:29b3:3525 with SMTP id af79cd13be357-940ef8e9ad7mr1116005885a.36.1793042295194;
        Mon, 26 Oct 2026 12:18:15 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91c62063dacsm33430996d6.37.2026.10.26.12.18.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 12:18:14 -0700 (PDT)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: linux-kernel@vger.kernel.org
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
	linux-ide@vger.kernel.org (open list:LIBATA SUBSYSTEM (Serial and Parallel ATA drivers)),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM IPROC ARM ARCHITECTURE),
	linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK)
Subject: [PATCH v3 5/6] ARM: dts: broadcom: Use noncoherent SATA DMA on BCM958625HR
Date: Mon, 26 Oct 2026 12:16:17 -0700
Message-ID: <20261026191618.3178830-6-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261026191618.3178830-1-florian.fainelli@broadcom.com>
References: <20261026191618.3178830-1-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_121821_267965_3E65C1BB 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -2.4 (--)
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
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The AHCI controller on BCM958625HR fails with the dma-coherent property
inherited from bcm-nsp.dtsi. Soft reset times out waiting for the first
FIS command, subsequent engine resets fail, and the disk is not detected.

AHCI allocates its command tables and received-FIS buffers with the DMA
API. Declaring the controller coherent bypasses the cache handling that
these buffers require on this board. Removing the property restores
hard disk detection and operation, as confirmed with a diagnostic DTB
that changed only this property.

Use noncoherent DMA for SATA on BCM958625HR, matching the downstream SDK.

Fixes: 56e2ff0346a3 ("ARM: dts: NSP: Add dma-coherent to relevant DT entries")
Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
 arch/arm/boot/dts/broadcom/bcm958625hr.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm958625hr.dts b/arch/arm/boot/dts/broadcom/bcm958625hr.dts
index a9b6aa04d573..53acae385822 100644
--- a/arch/arm/boot/dts/broadcom/bcm958625hr.dts
+++ b/arch/arm/boot/dts/broadcom/bcm958625hr.dts
@@ -182,6 +182,10 @@ partition@700000 {
 	};
 };
 
+&sata {
+	/delete-property/ dma-coherent;
+};
+
 &sata_phy0 {
 	status = "okay";
 };
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
