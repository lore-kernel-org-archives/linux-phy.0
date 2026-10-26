Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50942606A324
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=M9ylrRmo;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=QRy7Mxm2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=i3hEy0OlEG0I5avNx8KyQKPvlA+ksrnRI3xiiGk5sok=; b=M9ylrRmoxixMj6Lg0xC9Ac+tVl
	zoR/+ajv0lBRg+fazlTb/QbObz382QmkMooRP4qqu1IfV8DeC3FWJJOZHsMwfVkLwncClTmb8WZzZ
	hYIh19EWsntsPhL48uYBm/Kp7k5Xsm6tPqvNJzgi/U+7CXUPJtqXFtVHXt3aVBlEUrWktdpqGVprD
	7FBb/Kxb6ZUzzUX0Tad5P1J+QeAuXgyCOGfHuY1saGup4QC6+1KAL6f/S8W2bvcQwPRNoWC1di4HL
	yoh0G0IiTIZmVYHKqOWa3YQTwLsRxMirpZjreqiqFR/8HimOkZf61nw2oaTf+8345/vAXyAPGSEmq
	CWexjpnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPZd-000000035hY-0ERE;
	Mon, 26 Oct 2026 18:37:33 +0000
Received: from mail-pj1-x1063.google.com ([2607:f8b0:4864:20::1063])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPZa-000000035hD-1Fbf
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 18:37:31 +0000
Received: by mail-pj1-x1063.google.com with SMTP id 98e67ed59e1d1-3ac6794fe45so2488534a91.0
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 11:37:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793039849; x=1793644649;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1MIbl2zx8FaPW7oX7ST7fbgJ9gFOgJZeuRxXV0E1qzg=;
        b=JsiNwh4dEbIg4AHOQ2h+LBUIA7XD8BCKvGCzA4sC40FsNwaDgmlOfFxMpx/fkOWu39
         /8Lsbl6+ZQtZiQ0nzlBU5/FXa/TioZapv7mgNoj1OtWk7/3xsUaX8FcpI8VJ0eHZHo0E
         R/WG+cnDrHLQG35RcoJ/qL+UQgM7lVB/eZgQSYrvh0otTq0T/WeK8sftnS06X4MvNqcQ
         PaTqcmja7Lm3GDlmnLjarts/SzUD4g1Nb8z3rh6k9xLiSXgXywTZeZN653+TIUMBjxCu
         nTDxqk2bCpVzHcQq1A+dGFVHSUDvvH3QeAhHMjiOmdfOSjJ6Mvl80vptFpE3WF3g6n7u
         z9FA==
X-Forwarded-Encrypted: i=1; AKwUvBzQiXDDPaYZ3rnml//XvJvDvBjQuibjpHI07XIiy8DHsrZlfGux0AmES/SLuN78qXv+FWDWEKIVV+8=@lists.infradead.org
X-Gm-Message-State: AFq9FYI4qyGyetTXa23GWLPKprMKBMWIUpM+VvcDLd0Ste/nXfz0yi2h
	lmGZgjgemQSUJgvVs3Dou9TnWGgUnypiwhvfLUUJiQ15kaAPExxSQanB+g2T+1zdvjjyv9HHkgu
	xTuddURFavLqkZA7J+xzNzmCBEacu5LaYyG7te1x5jViPWTgobddonUPTTrGSbPs69UOXSllJ19
	Eij+0DVoSeZ93NDkOzrsTG4qS6qB7jFCJFVqjutOs/0QSo81/vfc6aeMy76uang2n4JimQf6bbo
	sxa+sTMTebX3r45uXEn+b5SuA==
X-Gm-Gg: AYBFou1/5usGT3gp3enDV0oR++2NByLLKFA0ZWDQEmTS5eKmEGFMMCwd80Aykf8zk1j
	ViUhXaiEJgr1BzlRsayEM18OAeGP+LB3OBKl1yNNpeb0mj3bm3/GrDKzUXXW4HucFsb1EMlCoEL
	2VW3lWB8TAxuiQgUoAu12wJAtn0BbONxZAalRKgXCq+pOiZQaLvExL1NTqbY6i/iSjwfV1Ww0hl
	UtonSss+s9Gf+DaPkxyZVeMYDTI9Y1gnCFklQV0/uKj6CKfq5EONd6BKQcCKXeVhwrtGqis93k/
	wV3FztyT+vYoN9PTBQxHzo0tbqn/uQefnW8C7nq6CddbbG2pWWP67JoVeo4iPf7k3Qm4U6ykAnP
	BgePpS+Kh/olb0m53tNNyvVodXNJxayEUh7ndCEQlrtUcAQvutzmTZH6xyyWH+f5SGWM2FpLGdS
	iQNMz7uYbqWVqOZdW9fU4Y2KjRmn+D/cI0L22V4OOIdjs=
X-Received: by 2002:a17:90b:528c:b0:3ac:8897:7b9d with SMTP id 98e67ed59e1d1-3ade9b2ee97mr6793769a91.1.1793039849253;
        Mon, 26 Oct 2026 11:37:29 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-120.dlp.protect.broadcom.com. [144.49.247.120])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3ae407e24c4sm246677a91.5.2026.10.26.11.37.28
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2026 11:37:29 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-83f6f9096baso4928387a34.2
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 11:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793039848; x=1793644648; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1MIbl2zx8FaPW7oX7ST7fbgJ9gFOgJZeuRxXV0E1qzg=;
        b=QRy7Mxm2acEjiGm3y64tntNf83CxHEhtGCFN1Iy/KXVVhU90WVETouMacCpETnG9PV
         5GWFRD9l+sq7dtJ0EEjDsnamBJh0Yz0UWaP3yykAPckDgS3LEmF5s8Soz3X+dO9kjFJX
         b41jKJ4Hm/5k+PNjMba66QGJUzsl1CusebleQ=
X-Forwarded-Encrypted: i=1; AKwUvByHnBFMcEanfJtqbHF1N8XEnmPRDMKDqnsZe3061Jx0uPVa9BBIIXrn+BWSnkGX8baJHTL+66Cqf+M=@lists.infradead.org
X-Received: by 2002:a05:693c:68db:b0:369:f7d2:d7a0 with SMTP id 5a478bee46e88-369f7d2edf6mr7300543eec.25.1793039371675;
        Mon, 26 Oct 2026 11:29:31 -0700 (PDT)
X-Received: by 2002:a05:693c:68db:b0:369:f7d2:d7a0 with SMTP id 5a478bee46e88-369f7d2edf6mr7300511eec.25.1793039370933;
        Mon, 26 Oct 2026 11:29:30 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a01fa4c58sm24657259eec.21.2026.10.26.11.29.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 11:29:30 -0700 (PDT)
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
Subject: [PATCH v2 4/6] ARM: dts: broadcom: Add the NSP SATA IDM registers
Date: Mon, 26 Oct 2026 11:28:54 -0700
Message-ID: <20261026182856.3168686-5-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261026182856.3168686-1-florian.fainelli@broadcom.com>
References: <20261026182856.3168686-1-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_113730_338082_689E4CF9 
X-CRM114-Status: GOOD (  11.47  )
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

The NSP SATA description omits the IDM block at 0x1811e000, leaving the
interface clock and core reset dependent on firmware initialization.

Supply the IDM as the third controller register region so ahci_brcm can
perform the downstream clock/reset sequence. Extend the AXI bus range to
cover the complete IDM aperture.

Fixes: 8dbcad020f2e ("ARM: dts: nsp: Add sata device tree entry")
Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
 arch/arm/boot/dts/broadcom/bcm-nsp.dtsi | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm-nsp.dtsi b/arch/arm/boot/dts/broadcom/bcm-nsp.dtsi
index 6a4482c93167..9dbcd810e27b 100644
--- a/arch/arm/boot/dts/broadcom/bcm-nsp.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm-nsp.dtsi
@@ -168,7 +168,7 @@ periph_clk: periph_clk {
 
 	axi: axi@18000000 {
 		compatible = "simple-bus";
-		ranges = <0x00000000 0x18000000 0x0011c40c>;
+		ranges = <0x00000000 0x18000000 0x0011f000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
 
@@ -538,8 +538,9 @@ sata_phy1: sata-phy@1 {
 
 		sata: sata@41000 {
 			compatible = "brcm,bcm-nsp-ahci";
-			reg-names = "ahci", "top-ctrl";
-			reg = <0x41000 0x1000>, <0x40020 0x1c>;
+			reg-names = "ahci", "top-ctrl", "idm";
+			reg = <0x41000 0x1000>, <0x40020 0x1c>,
+			      <0x11e000 0x1000>;
 			interrupts = <GIC_SPI 159 IRQ_TYPE_LEVEL_HIGH>;
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
