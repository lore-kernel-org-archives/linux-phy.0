Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBDD6606A323
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 18:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bfdept4S;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=OF30xOfj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1FfeBu9CIEZO5GoO7nyxVr400nDFB0Hbw3tw5xss6lU=; b=bfdept4Slqv4MNgm6nY015SwfX
	9Lmo0svxOE8wDVYGkx8UKIVgDQUapb2+vrXBwu91YWiK0FlUWC6I/SBcJCQHACgSJ0ypkX2xx/vRi
	e686c53LWSYoOSz21lvZTa4dkhcxLZIgILf4aDVgcRhttR/BVjSr/EDlUs+/pnm+NerQh0IXNels/
	fgGHYrnNzUDxS7yapeygRBCxPpD1S2ALSc4/bcMdEGhXRj/1h59HDyWLXojg/6LPRqW5xbiosh7wU
	Abcu+ZkJgBlLgK6j/tAS8px6cOHnBLAavGihZ5VRjFcoIP9rVUQrpyGepWm03+7xSMMIRZgbuNnfn
	VEA2bikg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPSG-000000034ob-2tkd;
	Mon, 26 Oct 2026 18:29:56 +0000
Received: from mail-pg1-x564.google.com ([2607:f8b0:4864:20::564])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPRx-000000034bc-2smE
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 18:29:39 +0000
Received: by mail-pg1-x564.google.com with SMTP id 41be03b00d2f7-cd5c9e52398so1166987a12.1
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 11:29:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793039377; x=1793644177;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LpNaT8q0SGvIEMd/N1soAJa02WC3uqlIifzAi5jpoGQ=;
        b=aWrEts9S9t/Vc05vYOAzJv6hQw2oq+rqnaMCH4vhs9l35X+rKcC5g6H1v6Wk/ebKIk
         Bz+x2S2q21Z/vs/pQxcxWheDMVt5qA3rOfNn87HXLZSFbBwrrxwFbeJT++2hAVTiueWH
         VURcGpdHgVB8VssdQHhJDJt+ramS0BynZZobLDXZfAinfT/zkM3acnmDLQvYbIBP/3NB
         RsrTa1SsidkeST9yRleBnK8yoNoqQe7x3vA3Xsm1AughtyjPCWZdgKPhSEI5tlxpV8RR
         kHQ6UOxu+r9lpEn1hZFUUEvi2Pc50Tdk9c0eGYPV25jFttbWdLif71etprkfdQMQklH/
         BUYQ==
X-Forwarded-Encrypted: i=1; AKwUvBxwiIdH39SCVlIOc0zJ3v1IVHlYwXeGG61T5GozzLXNxSnMiCcbfG6T+9D0pyRh4IEQevQIkPl53uM=@lists.infradead.org
X-Gm-Message-State: AFq9FYJmn9kb8d7ndZ0HPkSGbsEjvxAti6fxXbaC8ZZHPBjT/Gjs4xoc
	yWmpEoqPMMG7YTB7wFgcJ9PqeGW+oSvc31NSSrWvK6QIxGtNBihn3HVQZUMzSpKH6se4gQSI1cq
	ebIBGDfiQcNWGdeDU7mKYUTJSUTjQmDTJs5AWrUS00MZpO81M14ppJG+s5Mv7OkoNOWL+aTvAnu
	8cHjf0USVEB+pDbbRFJCg4/iHsTIMe7g51zlIshq4RJ1NCVWWqjF8HUg18+i3EGMSWjXVF2ey/9
	HNeuWjI1xWg2np5geNeqrzjsbxB
X-Gm-Gg: AYBFou21yGUtAbcJgbozvJuTwLOXuwfjEcdWid11OtH3pmtuCTWHP7VluSyCHGwj3Qw
	WsOeX6TXasviHtKi+/2uiUDVrN9ey70LUmJhBxozxcPjVx4XUWeR08FCX6xVOi+QV/J8zoSLVfh
	s31zEns+MNiQt7oSmcnzvwyUks5GPRS8gp27kyx1/QqOZ4fLBgF5rFt4EPd4kXhNE0hznlowrPZ
	+wR4+2hsYgn5AHmtEP383Xib1v/Dp6lmt2o5ublvVHxYK25XzrfuuU6pTmE3/FpXnROwzyMdol6
	oOrkUjERS3ndILXVajIFpUdWiKNJG4LZgSq/wZdNKtq+D5NPIgSGiek8jVSHfd3pDshVSlt8/Oj
	WsolAQhnVO5lc1SsTqWw+5Sl3BU4hyFsHIG3+1yD/7FILeJmvKS0WueVc6Gvvr9lpPiiYepJKip
	mcE+Gmzz870tVDQY+TIEDWcLqmIvuvWaKSwQHQEncK
X-Received: by 2002:a17:90b:2d86:b0:3a0:9fe0:3aaf with SMTP id 98e67ed59e1d1-3adeae70769mr6744523a91.48.1793039376923;
        Mon, 26 Oct 2026 11:29:36 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-13.dlp.protect.broadcom.com. [144.49.247.13])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3adebaddeddsm3106913a91.2.2026.10.26.11.29.36
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2026 11:29:36 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-3580c07911eso16946eec.0
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 11:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793039375; x=1793644175; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LpNaT8q0SGvIEMd/N1soAJa02WC3uqlIifzAi5jpoGQ=;
        b=OF30xOfjK68hVmlUCp2F7myTbxMjQ/dycS1GOivEz4cpKsVwb8ToQ6TZEGSzHKHSej
         BLLEaVKjtXWSJCELeAu7YQg+/v4EgtsRW33VGSQKD0ZqXOCeh0Um81rapM4EJ6kY1Kbm
         FYVX6fr57Q9Ut/XYb20RtN0S5WqpkPA/UtHXg=
X-Forwarded-Encrypted: i=1; AKwUvByNi5DsTcTygqXYFk2EB80P/6eZ0nfMaBuobsZTCTjeLtBe0n1wMiapBf5//hWtYurKZGR8VepEPQs=@lists.infradead.org
X-Received: by 2002:a05:7301:6189:20b0:369:f291:49da with SMTP id 5a478bee46e88-369f2914cd0mr8027380eec.40.1793039374912;
        Mon, 26 Oct 2026 11:29:34 -0700 (PDT)
X-Received: by 2002:a05:7301:6189:20b0:369:f291:49da with SMTP id 5a478bee46e88-369f2914cd0mr8027323eec.40.1793039374121;
        Mon, 26 Oct 2026 11:29:34 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a01fa4c58sm24657259eec.21.2026.10.26.11.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 11:29:32 -0700 (PDT)
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
Subject: [PATCH v2 5/6] ARM: dts: broadcom: Use noncoherent SATA DMA on BCM958625HR
Date: Mon, 26 Oct 2026 11:28:55 -0700
Message-ID: <20261026182856.3168686-6-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261026182856.3168686-1-florian.fainelli@broadcom.com>
References: <20261026182856.3168686-1-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_112938_069197_B9301771 
X-CRM114-Status: GOOD (  11.32  )
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
