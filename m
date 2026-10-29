Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F37E60A260D
	for <linux-phy@archiver.kernel.org>; Thu, 29 Oct 2026 21:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oR0zOmNw;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=azqphpkT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3kFsnEuP39e8ymqcp/DFOJbyVRrhTxYchaTuDakfu+M=; b=oR0zOmNwZslKQB8hhr6QVu1Fx8
	f/UuAC7TykJ+8KkqMFvrirfCz1a0Kndpj+2P3FeFHnUSgBGLPPC6s3rKPM8YRHmPAnmBFi+Seu1F/
	uL2Gmni6GVwOd54lfVilJr/mQl9Dyol/JJDuOEdMxdhVqX5zghYQixic0SBFL2qxwFS9z4i3rtV8r
	F7acXBYb+kVa2roup0lHqD8zHT1yNvlZFSWrzzpHWwAco6LkLtIxKE+rsVmQUMVkv0JArCTkcR8Bn
	cbKucJy3tqSJj44zy+VNHkoiEHLgf6lbNOjze1TEsg7WzLBUn0RGL/J5bQWP2akJSC7wjBMNIWFxZ
	/2NxA0Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMXcx-0000000APY4-1ags;
	Thu, 29 Oct 2026 21:25:39 +0000
Received: from mail-pg1-x563.google.com ([2607:f8b0:4864:20::563])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMXco-0000000APTD-1lRa
	for linux-phy@lists.infradead.org;
	Thu, 29 Oct 2026 21:25:32 +0000
Received: by mail-pg1-x563.google.com with SMTP id 41be03b00d2f7-cd8ca57ef64so556109a12.0
        for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 14:25:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793309128; x=1793913928;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AaqGunwSleeDLPx2z6NkDc6zUunPgMcaEWPlGCr1dr4=;
        b=wu2BmOpvIgZNhSO1B0sffG+dg1Z1WMx3gv6XtNKerR/OVPmJotTF23ADoAJzxYz5Jy
         4Q/7Se2Q0DWuCl6ptA+XT9H/QuvTmUin+76pBvmXuzhlL1hV53n2fi+5sOhuUrMCbDeL
         w7pSZTUFKXpnwEYOgRFVTCTNvBkbYVvGN10fKnLnuu9v9/+WfEK2qozQIAPANKtSciET
         jbCRWy3Jx2jdfwzYxBjB+ddaXYQX2WbX4xiZSrhegFBzB+mf0ndY4fy1ZWbSWqJxxguy
         Ig9jF0aBFdhW/TG7yfWrsMz513HM2A4+6+mKZKbvFRSZHNqzKLSdvBCq18ajxnppE1l1
         1ozw==
X-Forwarded-Encrypted: i=1; AKwUvBxlJC/9GBQr+eEqY/z3ZUUEwHdt8GxuebuLOUtvQRrgGzsq/lxoeecUYHYqEkwGYzNaf5QJQtqTOSg=@lists.infradead.org
X-Gm-Message-State: AFq9FYLGCea/J6ZnXx8zF2p0mBcTnuxpnFZSXrkopmM+277h8O6SQZfP
	0g2QwRCNYjPxsCNWvWsUmzVS/fCFZwShKrzscQiEESLwRla5TvPg2jirkqiYrcEwSQfGkVBEYFN
	ThRVf5phNa/oC55QJs7OWqjcD/kaBZqpVd1CfK1RWACGfq+cPw04l+IJoQStifziru9Iv4qFMWT
	TmwlLFCsoaAYvXc5WKtGMi8ksyrQJQZ8PYxv6E4w03AITsTfq/u5QmFQpM/eR/0y9uOlC0xjEA5
	cq2JNZYLSme4QCwbp2tLFAVZg==
X-Gm-Gg: AYBFou2EPtEdKzMCfcgS7+PgjrQiu2FkjsvgloaQgnRpA3rlH+q6hTHNB1Q1hUHx6K3
	9ALCnvnpngJc3mlZ0T00fwz2mRnpXMggyX0rO/Biyq5vmrFQO4qtxvginAz6o5Ykn8wofRC55Q/
	Gqp0yQW/sVFiRmYkgLxP+ukvsWd4Cydaeosr6KlU1J1avulofCN3gVfgdmrJKhk/4qBbmKT1Q5v
	Mau0Pxgbzs4m9+GU/PA2YVNgH8NGMXFZy2jiNEgPS0wfZgx7jAW/RP2Nb9QJZEetYuFkvA8d5Q7
	/NcuwfYn8w+nhdVOyAAKbtUfHcuKKmuDzWFtgfAGwWtFEvP63TvWLedfA2KqeqMc3U1IbIc/kSP
	6lxCH8Pa5Ttxp8RMdt3a9Bkb1POu9EME9KwuMqpuvFdjeLuOqChkv03yKpzHKYy6LTDaHdxqr7q
	oIQHz5ZhWPqKBkdn4fOlRswv7NU89pDFW6CLhuzScJ
X-Received: by 2002:a17:90b:5686:b0:3ab:330d:6e47 with SMTP id 98e67ed59e1d1-3ae896d801cmr113325a91.10.1793309128055;
        Thu, 29 Oct 2026 14:25:28 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-13.dlp.protect.broadcom.com. [144.49.247.13])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3ae6e88749csm2736245a91.7.2026.10.29.14.25.27
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2026 14:25:28 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-91c7bf2d740so1714236d6.1
        for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 14:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793309127; x=1793913927; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AaqGunwSleeDLPx2z6NkDc6zUunPgMcaEWPlGCr1dr4=;
        b=azqphpkT/pj4cNryL7IxJnBCiNZai02+7F8k7xmlIRtvPlqCsEWhIOvloxKXg/4Oxi
         hs9SUVsMDA1y7Qqs7SEcSGIjy5bv67XxwbkezeMIXOfaebjsk+xi5tcDOjs9E1DrD6xa
         H9Mpqg78xa/wYtD4hqNbnYpZSdqg1IHxj6TuE=
X-Forwarded-Encrypted: i=1; AKwUvBwgPrlWyKnHF3LXKZGhZZLm1IlrM1AtToywjDg9jsk/oVH+qBEDwPx5Zxbfr4hdWczT+no6bTu1qGE=@lists.infradead.org
X-Received: by 2002:a05:6214:2f89:b0:914:48c8:6961 with SMTP id 6a1803df08f44-91ca4b6acabmr3500776d6.17.1793309126854;
        Thu, 29 Oct 2026 14:25:26 -0700 (PDT)
X-Received: by 2002:a05:6214:2f89:b0:914:48c8:6961 with SMTP id 6a1803df08f44-91ca4b6acabmr3500336d6.17.1793309126431;
        Thu, 29 Oct 2026 14:25:26 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91ca314fb6csm6384936d6.34.2026.10.29.14.25.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 14:25:25 -0700 (PDT)
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
Subject: [PATCH v4 1/6] phy: broadcom: brcm-sata: Keep NSP ports in the shared PCB window
Date: Thu, 29 Oct 2026 14:25:08 -0700
Message-ID: <20261029212513.4126083-2-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261029212513.4126083-1-florian.fainelli@broadcom.com>
References: <20261029212513.4126083-1-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_142530_474742_9C50849A 
X-CRM114-Status: GOOD (  12.79  )
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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
