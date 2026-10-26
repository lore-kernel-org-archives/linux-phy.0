Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A99D5606A31D
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 18:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qFE9s0sX;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=Qb+u9r8N
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=skZN2USzRBjHqNQWpnjzAVuMnwBGzCP3jHmWqIMZ32Y=; b=qFE9s0sXXxDbDm1Rq64gwBwSki
	cjH6x6k17tOqyNltfRmG0bU+bKC4jxrzk+39xgPY7GShKqY20KexdhLIsgQyzMrcuhk8bTLF+U2q7
	DIBKrTHTzjO2kKJBEULDIkMdrY/7yrukRbvrQypbtc92TQm4iKx4LSbKyq4sskal5AyVjTb+7XlBN
	Pq2V1xRaPeXzHD4BlzY3Z9dhKTMgTWKCp8POzucyLUcQtCo3BxYWvk/5o9YnWFOi+RVTTv4y9kjcU
	1jCVZBQXE0l5Vq+sh6IBvyro3E4PGCrDzGo70LweZ89GIC68yJdB604BsoA23X945T/U9GkhyRuq0
	2aCSbRIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPRr-000000034Tu-1crF;
	Mon, 26 Oct 2026 18:29:31 +0000
Received: from mail-ot1-x363.google.com ([2607:f8b0:4864:20::363])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPRn-000000034Rt-19SR
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 18:29:29 +0000
Received: by mail-ot1-x363.google.com with SMTP id 46e09a7af769-81ae6aefdceso2741554a34.0
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 11:29:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793039366; x=1793644166;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=hGqeu2xbMnoE0Rt6DQ1E+iwd2CSMeKN+5rvls1JxyJk=;
        b=wOXJJm022lwsyttGHxoYNE4LDyOERnStExpxEn5hHV0qj9/ohCVYPK6ljNyvoUEpdj
         7dv7IzBUH7VL9+VNP/COJvTE+a7IFfm2Hi9cz7qvM/4pitd7VUkXUDqd6zrmPTq7Rgkl
         WKQ7mZ4E4vX2qSYfjKhK/RH+CJBadoSob4oWKJyGuuVqEPWFl314jDNgD7HtSCnJMyKx
         obblH7jRLPeL6OPKL5h6IINfG/bUF7iTRBxNhvdViyxncAofQw+i8/Rp7TCgVvQGvttu
         cN2vDuAKsqSq9ytZlgH9PSQ+nuNrTo8aN/0ofkFQKwQmixykb3mN+RPdD1QNYQaJJxHm
         2lag==
X-Forwarded-Encrypted: i=1; AKwUvBzo0xmNhPwPvdWBP1S0Fli8qSREDF4JF+KNHbP2e9nohxmFJsLC86sLZ+XQ2S9n7XDuUJMkKFqzhYo=@lists.infradead.org
X-Gm-Message-State: AFq9FYI2zQx+InO7h8QDuHLNdV9kof0Dkr9iPRug/s+7d92woojDaLyl
	bMQF/lzl0GWrl9Igpcywot/XNcAJDP9mHEBdtJmrspiDQTmwiI+wqjRpBWc0NfmRqpi4p87w1pV
	cbFuqphM5PKySXC+YHnH1WjMLdFoNsdhBwT2JtH9Wg8gMKXI5+oTHdAJFOtmLFty1C7MyXp2z3A
	2I9qCU3m8Z42DiM2c2x4ftLyyVCmhizjoA1IkaHrgSO3sBOcb4vUqG9+r2MdYmCzPjBcam4OgZw
	1QnBBo8+N4o28Uf0iFGHFUeJlRo
X-Gm-Gg: AYBFou12lTrY2XU1RNH92/trmbxvoSIHW4sC4jbJtvPzm6o6NTjXKEEHb5z5qn4RR/w
	c6C/W9E2nLz1W+9pf31Ff4vfQdtnJ62+/ugfnYBqHIeYtgYEeTeIA8rI0l3gdpLkt5oIwuwX/vA
	XaT6xeu78XNSquuvKkV+ehQfB8gJ2xwdlratnunB2HLLEKWO49i4DA3p6Rnz5ox2yy754gVyxsx
	aYtANDryeWTBEt+i5vjey2Ah5Upv3VK5GBE7JCwpqn+HOARmXTtniPt0sSVAqQUoDM/zAJSvZRx
	m10Xv2WRkn5NokvWznfVw2O9Ff3L8S4IEv7thUwHm1k6cbfXWS7i3i2qTCu801gInBlPpgaAtGF
	1Ul3/d/J4Zu2XLPJBtCvsJWqlW8H3C8yrYTaquZ+yfWGouSuSmf0IYTO9JN6ZtU3N+ETD6AWqO9
	C8BqjMY3p2cPNiFuRmAz4BUo0wt47Bz/z4PNGOvaeV
X-Received: by 2002:a05:6830:43a2:b0:806:ab05:c1dd with SMTP id 46e09a7af769-850fbd152cdmr6423267a34.4.1793039366085;
        Mon, 26 Oct 2026 11:29:26 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-28.dlp.protect.broadcom.com. [144.49.247.28])
        by smtp-relay.gmail.com with ESMTPS id 46e09a7af769-850fa4af66esm74447a34.5.2026.10.26.11.29.24
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2026 11:29:26 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-3510d0baf63so9419271eec.1
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 11:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793039364; x=1793644164; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=hGqeu2xbMnoE0Rt6DQ1E+iwd2CSMeKN+5rvls1JxyJk=;
        b=Qb+u9r8NPZrbCbXXaWenb+fDPXPusa4RzKBNVWFkYCIFbaolJVoJ6aF0bi3f8EgsNT
         +k+/qhYcodJikmkfHMWo5JYINrRRBhJkKYWItMNkLm49Klaejnfj2UCkyT2PoimnNuvu
         t3xPtdP9pea7t6gsx+n0tmQT4xVcSTwVGlrls=
X-Forwarded-Encrypted: i=1; AKwUvBzkRx8rgW8o1mMiaCmIZr6/MT73p9q5EuqIlupv3vIv4uBYr9skop2HCz4h3qPo/fJMs8nkUFnsGlg=@lists.infradead.org
X-Received: by 2002:a05:693c:8943:10b0:366:fbdb:2070 with SMTP id 5a478bee46e88-369e84c7e51mr11553937eec.34.1793039363625;
        Mon, 26 Oct 2026 11:29:23 -0700 (PDT)
X-Received: by 2002:a05:693c:8943:10b0:366:fbdb:2070 with SMTP id 5a478bee46e88-369e84c7e51mr11553896eec.34.1793039362799;
        Mon, 26 Oct 2026 11:29:22 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a01fa4c58sm24657259eec.21.2026.10.26.11.29.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 11:29:22 -0700 (PDT)
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
Subject: [PATCH v2 0/6] Fix SATA support for NSP SoCs
Date: Mon, 26 Oct 2026 11:28:50 -0700
Message-ID: <20261026182856.3168686-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_112927_317093_4D14B707 
X-CRM114-Status: GOOD (  12.52  )
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
 drivers/ata/ahci_brcm.c                       | 34 +++++++++++++++++++
 drivers/phy/broadcom/phy-brcm-sata.c          |  5 +--
 5 files changed, 65 insertions(+), 6 deletions(-)

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
