Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF2B606A329
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 19:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=CmAvwkkD;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=Di3nvDnV
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3kFsnEuP39e8ymqcp/DFOJbyVRrhTxYchaTuDakfu+M=; b=CmAvwkkDl5PlBWmaYbSPNCE97C
	L+yKkUFE/r5El2nCVeVKB2hncXYXVKQ0YmG0+lwC2YL8gdwXPiwXVgbxhCWwvYykOQ+LDm4d5A+sq
	Ju+n2h/o1/ooqmTFW6If8Gb86z761gDMydLjzmNsebll7ftrt/WAycIekae3JfdwkqHt8gAOSqLy2
	Dlik8AFxRihXLfX3oPJCEC/Q4lJxqaRiRATpl00VWXRwr/ShjmEX/Oiuzv1xeSsCkTG513P2my7w/
	wUu62jixFD0f1KThRdEB+iM81I2yBWIxwfj2Ufo4dMT5uoVVUW73U8BngYNpe1N1F0nMuuw8yQRsX
	ibBu56Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLQCz-000000039QY-2JOO;
	Mon, 26 Oct 2026 19:18:13 +0000
Received: from mail-pj1-x1064.google.com ([2607:f8b0:4864:20::1064])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLQCt-000000039Ll-2vE5
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 19:18:08 +0000
Received: by mail-pj1-x1064.google.com with SMTP id 98e67ed59e1d1-3acd21ba21aso2644607a91.1
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 12:18:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793042286; x=1793647086;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AaqGunwSleeDLPx2z6NkDc6zUunPgMcaEWPlGCr1dr4=;
        b=bkk3TL9T79W6UBunJXlHK/8rn8Dlsm0L2bU3Bw1DX4+Psqr1GOjMnhns4m439piYvk
         GWRKAW/TsY93cc0EWDrFOIWApKF0cYvZjs2JYTK7iXPfga8ph3WUoIRIGfsx7QWmGvqS
         ChgHxmXq5M8LwDxzaClmvQHbbdFc34TqAwHiTVyV23YHczbbN88llkE+NnbAzuikyf5m
         gSwMyZZZy4QaXKun6IX/G5NCdLvMOu3pKbgZkWVNWUbgws5Ft2UiuQFGMaYYNM1Y6L71
         5lsjsr708dLHtdvyVMKkFumeUpqbCbc62kbesWED74YOBm+3Rp1SNV3HnyWc8j1eM8RH
         5Hxw==
X-Forwarded-Encrypted: i=1; AKwUvBzqhwaqexhIsSNLdFm4MZOjebqWS4ZYVnEbOc5sJSVPCDKzo+aS81nGPbgYMpyn2RI89h2BiyYFoC8=@lists.infradead.org
X-Gm-Message-State: AFq9FYLJAeG/KiCDuUaEnrdF4LSsx5EHs0nwzBued3wrGTp+EX9Z6zv3
	aDayplmgOWNvvrYY1DP95/VmL4nKn+3NSgiMyvJqiNLKa5gHsv5a6pfIkZhZaU4WfTd0txt05so
	rwY5u+qD+F1af3g89+YnWnMWNh7GzUL0yZB7eOmeyIH+kCtXRvwVeGduBk4z+Dk23QTQ/cGYRPE
	pqYTfYsnGd42Xt9BfJQ2KVQTbShM8qQ14uUUan3sQ8PavHq0y5WX0+eudvgJuWa/XuLTM2/Q+MN
	vzc+lRDQPXy8YOityvVxUBrrAeo
X-Gm-Gg: AYBFou1Kp2FV6silxOQeJpl0DaNLNuGM9aARyXmrznNl7Z4b1+RfRnDRy3to/WLeM0n
	XVDC9JhS84MckC32rsTeqFkg0jgazOfz9Xf/vOLBNawFvzjnaFOIPhCFGPN2FMY+xMVyFS3viAj
	MC7L3APk4RApAiusePDQ5bV34VxsVuo2iSjpxdFrD5oI9tRel3xVxuD0jE1cHISvlfdbub8QhGm
	/hO07EK9AwDlbQo3KVT/uZiEMihoShCLg2Yyr5qtXztDd4/zTJ0H5rkVNcNmkqLDDhL5i5J4NwS
	i22qtVY1PXBxofKommpi+U+h7RDBte7zN0yLySyLPBjW2ppa1xF7Vh/uznjA8459huCYdP3vlx2
	fWf3JnZL/D4sCiTfZb8XuDVV+kpW4j0QQKp0aShrbyZzwjdY2CBgzWloBknBatOV7hVQfOnMoqf
	ODJ+hilRVz9XDlLhhYRxeywjE9lD1ikBAmCScPMjBABtM=
X-Received: by 2002:a17:90b:1fc8:b0:3ad:c14:35ce with SMTP id 98e67ed59e1d1-3adeb0f4b03mr6003346a91.64.1793042286028;
        Mon, 26 Oct 2026 12:18:06 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-120.dlp.protect.broadcom.com. [144.49.247.120])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3ae40619b11sm387814a91.5.2026.10.26.12.18.05
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2026 12:18:06 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-91c66913ad0so20217036d6.0
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 12:18:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793042285; x=1793647085; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AaqGunwSleeDLPx2z6NkDc6zUunPgMcaEWPlGCr1dr4=;
        b=Di3nvDnVVs9YYSQbl0e/3keRZkL8P9UMrz87OmqWfziWp5z2zWTIKTIttPIu96hymE
         rf5JDpzOQuo43kvNXRbgFzxN8OKANt53+dtQQ/4FHsi5huDUSbi3KRcgBF8vbVIWbUZZ
         3OwXyTgk5q7zd6kkjuM+svuIY5SzPQNSlJjLs=
X-Forwarded-Encrypted: i=1; AKwUvBzERDMDwxqnHa5f8fioC25cg4arjdHOtDxIM+79A/Z7ijhRKO0zaQMabnqCoP8zsw9nQ2KpKn6SQzk=@lists.infradead.org
X-Received: by 2002:a05:6214:5701:b0:914:5769:dcee with SMTP id 6a1803df08f44-91c48e36c9emr119686376d6.17.1793042284482;
        Mon, 26 Oct 2026 12:18:04 -0700 (PDT)
X-Received: by 2002:a05:6214:5701:b0:914:5769:dcee with SMTP id 6a1803df08f44-91c48e36c9emr119685776d6.17.1793042283921;
        Mon, 26 Oct 2026 12:18:03 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91c62063dacsm33430996d6.37.2026.10.26.12.18.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 12:18:03 -0700 (PDT)
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
Subject: [PATCH v3 1/6] phy: broadcom: brcm-sata: Keep NSP ports in the shared PCB window
Date: Mon, 26 Oct 2026 12:16:13 -0700
Message-ID: <20261026191618.3178830-2-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261026191618.3178830-1-florian.fainelli@broadcom.com>
References: <20261026191618.3178830-1-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_121807_752226_E7856185 
X-CRM114-Status: GOOD (  13.06  )
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
