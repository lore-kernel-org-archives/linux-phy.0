Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B31D9606A324
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 18:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=U+YDHXIR;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=RIXMM0Zl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3kFsnEuP39e8ymqcp/DFOJbyVRrhTxYchaTuDakfu+M=; b=U+YDHXIRSYkrtPtqqZbQS12t9N
	6SWLqxrbQMw+icipyN5v/VCrPf0V3woPP0Cqsmok43T5vu+Grzd+5bdYvJ+GmUn2p7GtvSxOPdD5I
	hosWR2sNaYXAIChqC63V42hJ7LMDfGtmARkpxofdMkhKeGAR6hNFHBzt+td1DQiZNVICm+hc/aHKQ
	VXvngqVR+R/1jCDdBm8VCVdqX+RUbGdRXIkIinmykKHXF8mLMPIq0qShQ+qdcKj9/M7J8Na5WO9pL
	MIbJbtYDL5orBBvxTby5clMiLefSEppnwbZQPPDURKFFdeDMP1e4qCgN1pn82tqVHfTocOmKlAX7u
	/dTIj3fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPRr-000000034U2-1uFm;
	Mon, 26 Oct 2026 18:29:31 +0000
Received: from mail-pg1-x564.google.com ([2607:f8b0:4864:20::564])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPRn-000000034SM-3Fx3
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 18:29:29 +0000
Received: by mail-pg1-x564.google.com with SMTP id 41be03b00d2f7-cc4dbcf2b85so1186904a12.3
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 11:29:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793039367; x=1793644167;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AaqGunwSleeDLPx2z6NkDc6zUunPgMcaEWPlGCr1dr4=;
        b=llBotWKry+p622we8YMus5728co91rSH9v/MAx+CMgaEqOaqamANh0/1XHhzxE1TAJ
         dAZdtQuxJAvpJtXdYtDrb+x3smHl6rJR4YLj1aoTb/w84CKX0FjK4gL2dDpippwXCseJ
         UXcL7lVvSiugCo0bh8M77fWxsaQ8hOszLyYun1UVM3OsFw2Up6Vrchpzv8rq8Am9viSS
         6OO3r1N2tVtMnYkNvDDBxHApUfblkPQCtzZAtRlFx2VUzSLAFaG5ELgs0AsOtHvomWAV
         RWhtHKwB3W4I7bhUluNhLhotXbsgSxLe3o0nQkBd4EWsa9EJrS7XWCxXivGVJmGQAF5e
         x1sw==
X-Forwarded-Encrypted: i=1; AKwUvByTihBF0Qhu38IM0CVxjBFReHJ1rXa4JsMiyGDz1to5TLL4v6cgD9rY2UmwE1m+3fBoWCiyOgHIKmA=@lists.infradead.org
X-Gm-Message-State: AFq9FYJZHu7tmXlBoFEZmaxzMGYShp2INSiWzaE8HVubgMyS+YppC3p6
	T5W6zVFdUnuQ7udA1feprnnCmDz7yOUh443z2Ei6NxmmXydsE8xR25+P/CmzIBArvWPh5m8Ntvh
	ry9eOs0vNKU0FzvzJQQqlG+p1QvauzK47UVREsYT66mxD33gMqVUYf5Wyv+G7foTt5uiivou1Ay
	LzPBkzzBBRHdu/B28bXmHuP8ci8Q7yDhBzfjVvl2K/AUPc/vmAFWI3VNeFX8QCRw8d9yonfQDJ8
	jmJaAMBDP1yPATeMiJZ3M0PRQ==
X-Gm-Gg: AYBFou3eyhf6kwWiJEQvPh9e+Afaozcz3i0lBL0h9KDV99M62lyp6AmDCTyVLVjja7T
	pu+k2xjdhpLvHBFqDTjNDeJ/NsDvPrQyRUjb7wNH+euJZKj0VAAWpSVp+1zcPwLV7FLQdNPk1eY
	FPmv6FVlUWnE1h00encL35WZGe+55DSjlGwuQxk6Dq0+CO/d3AJ3dfEZMnOOPBIJL8zznZQZhAd
	R78jm+GfQTfTWblheyYvHlmhvJBXqyvR8rok3mazcW0Ve2wgiUG/72nL4CDT0a3V1kX2z2MOGqU
	K3FsvKegw4LTfmJpgQIR8jmVvSv/8MitV4+imDy2eUTTRP7wFS3RovviE4fEkZFCnQ4EJUub/+L
	TBfWseCFsELUhljppVm2zwzLpIJIBuzh6dGFoLIbOk79yP2HUPgaiOwAXySkIOXRDvjNO9lJrg8
	1A6AswNaQIanNGiEEJPcpSb0B6/FUo+lT1oyFVNlAT
X-Received: by 2002:a17:90b:528a:b0:3a7:da33:ff2d with SMTP id 98e67ed59e1d1-3adead62207mr5806822a91.48.1793039367037;
        Mon, 26 Oct 2026 11:29:27 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-28.dlp.protect.broadcom.com. [144.49.247.28])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3adeb83a327sm3478241a91.0.2026.10.26.11.29.26
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2026 11:29:27 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-36998507c13so2392700eec.0
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 11:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793039365; x=1793644165; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AaqGunwSleeDLPx2z6NkDc6zUunPgMcaEWPlGCr1dr4=;
        b=RIXMM0Zlnt7iZMmMPDiWIdupXVOWx4Mu990p/DQDEb3KhO8vE/ntwoczF/dm0VTTjU
         OdHkI/ULujPvjXiIi1ycTY1yi41HYlCdnBUFLwJma5uvzBQy23jWjv5IRyvaP63CpDzx
         QxvjikVelvl966VDqRtqAFMMlH8sVHoqqFkNo=
X-Forwarded-Encrypted: i=1; AKwUvBzMMyUN8QQpJknntkynU4eGn/uknzs3oO1FdUcpwkuKqZcVS3vB//iaQCn0fh7jQ2JuyY1TNiMsmmM=@lists.infradead.org
X-Received: by 2002:a05:693c:80cd:b0:34c:fb30:3e30 with SMTP id 5a478bee46e88-369e842cbf2mr12303462eec.7.1793039365321;
        Mon, 26 Oct 2026 11:29:25 -0700 (PDT)
X-Received: by 2002:a05:693c:80cd:b0:34c:fb30:3e30 with SMTP id 5a478bee46e88-369e842cbf2mr12303426eec.7.1793039364706;
        Mon, 26 Oct 2026 11:29:24 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a01fa4c58sm24657259eec.21.2026.10.26.11.29.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 11:29:24 -0700 (PDT)
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
Subject: [PATCH v2 1/6] phy: broadcom: brcm-sata: Keep NSP ports in the shared PCB window
Date: Mon, 26 Oct 2026 11:28:51 -0700
Message-ID: <20261026182856.3168686-2-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261026182856.3168686-1-florian.fainelli@broadcom.com>
References: <20261026182856.3168686-1-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_112927_840214_D8007769 
X-CRM114-Status: GOOD (  12.88  )
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

Northstar Plus has one PCB register aperture for both SATA ports. Its
per-port OOB settings use separate banks, while the PLL registers are
shared.

The 40nm MDIO refactor made all non-40nm platforms use a 0x1000 per-port
stride. NSP previously passed the shared base directly to the helpers.
For port 1, the new stride moves the bank selector from 0x1804033c to
0x1804133c in the AHCI register window, outside the PHY resource, and
prevents the second PHY from being initialized correctly.

Exclude NSP from the per-port aperture offset in both read and write
helpers, preserving its existing bank selection.

Fixes: 0ed41b33882c ("phy: brcm-sata: Correct MDIO operations for 40nm platforms")
Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
 drivers/phy/broadcom/phy-brcm-sata.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-sata.c b/drivers/phy/broadcom/phy-brcm-sata.c
index fb69e21a0292..b5fb9dff1ae9 100644
--- a/drivers/phy/broadcom/phy-brcm-sata.c
+++ b/drivers/phy/broadcom/phy-brcm-sata.c
@@ -215,9 +215,10 @@ static void brcm_sata_phy_wr(struct brcm_sata_port *port, u32 bank,
 	void __iomem *pcb_base = priv->phy_base;
 	u32 tmp;
 
+	/* NSP has one shared PCB window; its per-port OOB banks are selected below. */
 	if (priv->version == BRCM_SATA_PHY_STB_40NM)
 		bank += (port->portnum * SATA_PCB_REG_40NM_SPACE_SIZE);
-	else
+	else if (priv->version != BRCM_SATA_PHY_IPROC_NSP)
 		pcb_base += (port->portnum * SATA_PCB_REG_28NM_SPACE_SIZE);
 
 	writel(bank, pcb_base + SATA_PCB_BANK_OFFSET);
@@ -233,7 +234,7 @@ static u32 brcm_sata_phy_rd(struct brcm_sata_port *port, u32 bank, u32 ofs)
 
 	if (priv->version == BRCM_SATA_PHY_STB_40NM)
 		bank += (port->portnum * SATA_PCB_REG_40NM_SPACE_SIZE);
-	else
+	else if (priv->version != BRCM_SATA_PHY_IPROC_NSP)
 		pcb_base += (port->portnum * SATA_PCB_REG_28NM_SPACE_SIZE);
 
 	writel(bank, pcb_base + SATA_PCB_BANK_OFFSET);
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
