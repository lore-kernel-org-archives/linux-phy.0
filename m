Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C2BC606A31F
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 19:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hrYftXo/;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=EBaGc+D3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=SeznBnsHPTNW74PDyLb8SZei1Gu+1B9HE+pfhEsDl/8=; b=hrYftXo/NpCgppc2MPVq9vrkmN
	VoNUz8Yh5wsPKzF+dubY/r/4DSG2UYLaI75Ssjm7YOet4c2TApMLvwI4H+TrOfKzUAUQG8AQW5A12
	x4X6pbWlQgNnQi8L4a0/wShPUjFd8slGLocophOLALK8oSl4/LXnnVvJOuy7BHi7gPhzo+qPWcsEX
	nUcO/JRFNLyXsSbvdHdDwO3JHY4uwK7B7W4jV5LHRYX1PnT0c8HDFc4WugMDmxZYrdkr9k5tizOLB
	keTqqSjmfiiUa9lst+nY/emWqJIZl+e9JCZQpcasaYCpDPSNWCtVQWg7CeR2xnZeljtbeKt0dY9GK
	LGv21D+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLQCt-000000039Ln-0fr7;
	Mon, 26 Oct 2026 19:18:07 +0000
Received: from mail-pj1-x1063.google.com ([2607:f8b0:4864:20::1063])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLQCq-000000039Ku-2gce
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 19:18:05 +0000
Received: by mail-pj1-x1063.google.com with SMTP id 98e67ed59e1d1-3adac5b29ebso1928078a91.2
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 12:18:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793042283; x=1793647083;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=0p/mlaTn2+IjGPmTD4Eg87y9QseS3N0pAeXCuAryT24=;
        b=h/iQIDiM8W5FWBHI+Bo1wptOhPuLS6bVSBJAxoU+PFPecuw/1nKw9dSa8mEawXZHxC
         VtDhTUAIiPOdo7CnpGDZ+w/61bcNz8Ez4ixjJfNcG2VJ3XMmzFJ6R+EhzDWutIfG7lND
         RnZcHfNn46hxBeXMGnDIk1qinfIrPP/vsYXNUpCmZdcryP230854lySeIocqZ8FffOp6
         AIvyjN7tNPTtkvSAidGdL8gVu8ulLbMQ9Gt2RbpreF6ksp56TFgek3YDdCh3tWERSZfd
         qOjdrNZJnAHvGoHt2HszbeSMCHe3Fa5OVyiXF2PSGuPDx8xvpFEAvyyHfJu2aSKgeGwg
         Cz+Q==
X-Forwarded-Encrypted: i=1; AKwUvBz1W/skJdUnw76l6gVALgVtnLkdPZBoEMoKjMvO974Nt2fyCR/+WJ0TYr2gsj4qxXM3mj+mvSZ4ROQ=@lists.infradead.org
X-Gm-Message-State: AFq9FYKABTRbsJal0qlT5ZO9Sfn7+elP6A0eFIyWVS8qSIIE/rL8/sSy
	113JNSMu1/sM1N2+vdxqGk4IAj0SzXLVYEEQrRZukm7+o2Rdjvxx8Uj61uXHlUvOm+/dkl/OBA/
	Ye1liNxuYCqHmot8CS8Ncy89jAsjH4ls6jSJ4Gb844cf3KdVD3hmL8nhuTMdhg1QVrjp+hkzTDn
	LCvrqykrK+fXCBjRiRrbf3fvOGSqoI1RQzmbtVtADY7oQDI+Gt9XAA+lfLyFUcreNUP24X9JfpN
	4uLTVX742ijHvgBUUMoDv+Mi35+
X-Gm-Gg: AYBFou0fLROR+OqDTgUeJb39pD3sKyJDLavoe8RP9FGd+m8U8KF/vJ8XpEvQJ4ZWVCr
	rbED0BaP4p9oc3vBG5qU1Ix3sEiyMdFmkp1ZlfqWvnk+vXKybNjUMC8j8JBdidFPLqyrHvONO32
	ugIflLy94ZbDx3HTW1itbk5HCAJohNYFfFmzuYmW6EoT5uOUafu981YKq/2DJsM33oZuw5+9MJL
	CPJ4AcSDEOFkjMuyasDUOW8QDx0gkCkJfJVM3YNFY3JLyzoxp26eaon+FthdyEfxEQMfaBlhMJX
	ARalcCM3dcpEcunIZyirYZcLO6r1KT+Aa+WLZYLc6C+0AldZnog+N8iSClagzHmosiLnlLZoztB
	UQfD6Fh463166MzA74+OrNemLCMTwUXgl0n+3Zk3SXpjmDAOs/umMUfnWXPn3ocbP1GFgcQNtuM
	G1WL0Y8RYhnkv9dKaKnCd+7NpC6lqfN5o+TJ7Y6KrY
X-Received: by 2002:a17:90b:53cf:b0:3a4:b418:94cf with SMTP id 98e67ed59e1d1-3adead57bedmr6561257a91.14.1793042282944;
        Mon, 26 Oct 2026 12:18:02 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-23.dlp.protect.broadcom.com. [144.49.247.23])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3ae40619e2csm337938a91.6.2026.10.26.12.18.02
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2026 12:18:02 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-53664911d46so89463061cf.3
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 12:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793042282; x=1793647082; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=0p/mlaTn2+IjGPmTD4Eg87y9QseS3N0pAeXCuAryT24=;
        b=EBaGc+D3rN+34hiuBVAaNMh9LtXXWnLZ2YFqYEp4yj5FJageb3nsBbyHG9L/ChT28P
         f/nPKvM1e0egKmE+OW2NHJjLFGzI72Z2y6XSPZXPI91/TAXvyXqSaxJTAE08ny/HCiQa
         PhFH56xrDMirRKUyfs59fnL95quTGRF+tDe9A=
X-Forwarded-Encrypted: i=1; AKwUvByw1rDEt/fAhibjFVj0QNzhGDAegka1p6846s6CRvDPqmyyp8rKqFxuKCWRcgh/I4/b7rPA000DScU=@lists.infradead.org
X-Received: by 2002:ac8:5f82:0:b0:536:11c5:1dc1 with SMTP id d75a77b69052e-5383b653983mr109739701cf.76.1793042281648;
        Mon, 26 Oct 2026 12:18:01 -0700 (PDT)
X-Received: by 2002:ac8:5f82:0:b0:536:11c5:1dc1 with SMTP id d75a77b69052e-5383b653983mr109739171cf.76.1793042281166;
        Mon, 26 Oct 2026 12:18:01 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91c62063dacsm33430996d6.37.2026.10.26.12.17.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 12:18:00 -0700 (PDT)
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
Subject: [PATCH v3 0/6] Fix SATA support for NSP SoCs
Date: Mon, 26 Oct 2026 12:16:12 -0700
Message-ID: <20261026191618.3178830-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_121804_682491_0FF22AE7 
X-CRM114-Status: GOOD (  12.38  )
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
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This patch series fixes SATA on the Northstar Plus (BCM58xxx/8831x)
which was broken due to a number of things:

- the SATA PHY assumed separate PCB windows when a shared one is used
  for this generation of SoCs
- the clock/reset (IDM) was not being configured by the driver which
  meant that depending upon what the boot loader did, or did not, we
  could have had the AHCI controller still in reset by then
- on some reference boards, the AHCI controller is not DMA coherent,
  assuming so leads to all sorts of timeouts, data corruption, etc.

Since this touches several subsystems: DT, PHY, AHCI and DTS, I would be
keen on having Damien merge all of those via his tree if acceptable by
the DT and PHY maintainers, I am OK either way for Broadcom SoC.

Thanks!

Changes in v3:

- actually submit the addressed feedback

Changes in v2:

- addressed Damien's comment: comment line too long, imbalanced IDM call
  sequence in suspend/resume compared to probe

Florian Fainelli (6):
  phy: broadcom: brcm-sata: Keep NSP ports in the shared PCB window
  dt-bindings: ata: sata-brcm: Describe the NSP IDM registers
  ata: ahci_brcm: Initialize the NSP interface clock and reset
  ARM: dts: broadcom: Add the NSP SATA IDM registers
  ARM: dts: broadcom: Use noncoherent SATA DMA on BCM958625HR
  ARM: dts: broadcom: Enable SATA on BCM958625HR

 .../bindings/ata/brcm,sata-brcm.yaml          | 20 ++++++++++-
 arch/arm/boot/dts/broadcom/bcm-nsp.dtsi       |  7 ++--
 arch/arm/boot/dts/broadcom/bcm958625hr.dts    |  5 +++
 drivers/ata/ahci_brcm.c                       | 36 +++++++++++++++++++
 drivers/phy/broadcom/phy-brcm-sata.c          |  5 +--
 5 files changed, 67 insertions(+), 6 deletions(-)

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
