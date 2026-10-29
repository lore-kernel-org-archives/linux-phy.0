Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88E1C606A32F
	for <linux-phy@archiver.kernel.org>; Thu, 29 Oct 2026 21:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oL+iv8uD;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=NB4DG1V3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=+W3l6dg16U1USHb12mACIZW7U/r2F5xdpco1wnF4/gI=; b=oL+iv8uDsZ+hO1bNGi+1LLIBWb
	XhRnpUNtFcC3NxQ7HCw3h/rFyYPFwJtWs3ulC7Wh6QG62R/QD7TmfjBAo13sH6bQ9sBio2PRtRNeH
	npCDCkMMkQVkLQ11PBCY6rDphzAjifUDdHOuxbx6VG29QgZvVTXPaoNqkGFJXXX7v25MvsEr5rI64
	YjrSzM51WEFooPkebbfMjCs2YZM/4BrIqMVyg+0XKU/7j/GBJk/SF5Th8rlQhLC88mkTdp3RQ+Ojv
	/hvt0XCpPL1RwfdZjIPBu/3YPpNkEtgRM9Q784Tblpk9ADOGAzRKgpw8vYxE/DGoSbtahNufIm9cA
	MOhjJ2hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMXcq-0000000APUD-0DOD;
	Thu, 29 Oct 2026 21:25:32 +0000
Received: from mail-pj1-x1062.google.com ([2607:f8b0:4864:20::1062])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMXcm-0000000APSm-0xjz
	for linux-phy@lists.infradead.org;
	Thu, 29 Oct 2026 21:25:29 +0000
Received: by mail-pj1-x1062.google.com with SMTP id 98e67ed59e1d1-3ac77270fbfso14926a91.2
        for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 14:25:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793309126; x=1793913926;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Hsj4il6cwMzAfFBtIiOor6rUHPJ7kpQPufbre1PFxQc=;
        b=w/kDl2vJtoaiEe3YRI7/U5WH38OmZVJ/eIgHqLlRU4IjQOnNwRCvohiitXi67Q5cjW
         SstHhoonQCBnAq9S0/80wBw56JpyeDLxpfXsNf25YabYJM4gm46Hk3ehJr7/obg1G0XE
         fJHPyvYSwxqSrHUCKtUVKarTWD4uqeRfxi2TcVALTi2rHLGmhGU9g2SontFFgzf9vMqH
         cY2FIu20FiLxqWityJKgz7RRGaLMEcVmdw0dhW8wvbAj8qEszH4Btc7JdNqLLByKey3b
         ZjDDqgNoDL/NLcC4f0agtDMi1cC7IAue9w7YoC03JsRBBhmW9PZRHvxKLJ6/O2x2msJG
         o4LA==
X-Forwarded-Encrypted: i=1; AKwUvBypSCMdjP/yb1IA5yY+MlMFqQYVzvHcWIyMeL4HINJZrRAnbD44Biuzyr/qCESjfr7Mu9OPiCKsZyI=@lists.infradead.org
X-Gm-Message-State: AFq9FYIIB180YGoASC9chK9kYufq+MmVXGmxE/e2drgeBIRaJs2kbYpM
	RIAe2MdZI+fqWNttxznumJ8uXFsIOC4OjrnjAh+rr93/DYGGf7hkNIa2eNcX84eUVwWaJ1Xlyog
	4GvmMX5nEyHiAT8aniNC7EMwpmUWEVrmxkZxWsy5nlt21C6dUIP5bZwKGrCEAznEwCcEawD+E/k
	9awfHqJNKl0Z/mA/ifkT3qqbjCjhdj3UKJe6EcbmgCppLKOi/0AvBZAOsxM2Kc3gGDcLfHnO2dU
	dJts16LGmr96jgV99xnjZNKkZIP
X-Gm-Gg: AYBFou1T0VSkEufgJ4okxBj/OjwIOXhFesxEFEuPM99Ap6QmZegLZ9nzVQa1+HKKUnx
	nfgVosW3DgnqWtiEbcLboXQ4hL4kCwprmDm99co9mt52ikJSY2l2bPfIoumYcxhN2fvPKspdcDi
	GBDAc2gPMMp3kiaXhLu3b5B8iRoFllQi7ZD9Ud4fQDpTb1KGjXBKfa2cUC/QuxT62uTogMSgE/E
	6ZZVyg4EHyGjuYRL3/u3X2XTNuz1N86lU860PMqaVMR2ioKLnTfMBYX8WYaPGfOa+fB4Hf5Wsur
	DPP22atqsUE9vpbkyTyKUaXSJZeBaFZS45DWI+/ZpTiRHONN7FJEcAT1FQOZo6ImAaBtQtXBeXW
	o4riPuLj83/rYlILcKnxDsDu9GBwZZ6xaQLx820C86yjHFq/weTVa6s8ev3Wrj/uzy5gcqDo3c3
	C4BrZG9YK+mRz0k33Zcn05+QiSv2eicDWFyIIMW5f4
X-Received: by 2002:a17:90b:3812:b0:3ae:2961:14db with SMTP id 98e67ed59e1d1-3ae897763e5mr191026a91.21.1793309126541;
        Thu, 29 Oct 2026 14:25:26 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-28.dlp.protect.broadcom.com. [144.49.247.28])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3ae6e6efe86sm2784965a91.1.2026.10.29.14.25.24
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2026 14:25:26 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-91c7bf2d734so1569056d6.3
        for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 14:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793309124; x=1793913924; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Hsj4il6cwMzAfFBtIiOor6rUHPJ7kpQPufbre1PFxQc=;
        b=NB4DG1V3RR+1YIMILhqhOL8/qbtjiKipDYI2HsbZIJVhMUuIQ/AdveQj5/xzJxvjTG
         W4UemSx7Nm/KRhkCIQrG5RxKnUvTUOHA7ILVpGn7EagtcAHgxAE513HGVRyV5Q9c3eIb
         EzlcEE8XUJOWTVUOJckZvMV+JSB46yzEcWGbI=
X-Forwarded-Encrypted: i=1; AKwUvByWnp52flNJ3cgUKViOvGW3w2nwKGOrdH9aY2sbZvpmHUoZSrXDuXG8KWvN6nxwNQaE2sMMpJ2N/M8=@lists.infradead.org
X-Received: by 2002:a05:6214:ca2:b0:91b:d948:c415 with SMTP id 6a1803df08f44-91ca4b78b78mr3774476d6.44.1793309124173;
        Thu, 29 Oct 2026 14:25:24 -0700 (PDT)
X-Received: by 2002:a05:6214:ca2:b0:91b:d948:c415 with SMTP id 6a1803df08f44-91ca4b78b78mr3774056d6.44.1793309123730;
        Thu, 29 Oct 2026 14:25:23 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91ca314fb6csm6384936d6.34.2026.10.29.14.25.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 14:25:23 -0700 (PDT)
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
Subject: [PATCH v4 0/6] Fix SATA support for NSP SoCs
Date: Thu, 29 Oct 2026 14:25:07 -0700
Message-ID: <20261029212513.4126083-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_142528_296813_B3B62D6A 
X-CRM114-Status: GOOD (  12.23  )
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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

Changes in v4:

- move entire allOf to the bottom, before "unevaluatedProperties" per
  Krzysztof's feedback

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

 .../bindings/ata/brcm,sata-brcm.yaml          | 57 ++++++++++++-------
 arch/arm/boot/dts/broadcom/bcm-nsp.dtsi       |  7 ++-
 arch/arm/boot/dts/broadcom/bcm958625hr.dts    |  5 ++
 drivers/ata/ahci_brcm.c                       | 36 ++++++++++++
 drivers/phy/broadcom/phy-brcm-sata.c          |  5 +-
 5 files changed, 85 insertions(+), 25 deletions(-)

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
