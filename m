Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F380C021AA
	for <linux-phy@archiver.kernel.org>; Wed, 19 Feb 2025 16:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3Gp6Ax+BQghfC6jIbYblGeyRwzHxI1EBXZEoGb2RxNY=; b=PbKAAMJH7qxz2q
	EmBMtN+d5T4gcdR9w8xso2nZKMRdXJwDVc/hFsKkVmOEc+Z6deddW8qZ2QPv0/mlj7W5JxrwMYCwZ
	101rDhXtKTkkDpgkGfeTnY7Gc96M2SIPl7jxsyp7N3OMPFWVeTro2MAWmNTd4peIaBNg5gj/uhk7E
	1Xi2xDEz6c5Jd5QVkk8aFN5fGJTj9XNmQKXEkfp5xUzoyRUe51ZaBRzZiYFW5ctmotjxEakQH9K9y
	8+orjtPNLtpL5x6//yCorUzgg/ZtkOHtDsgLGFhOpgTmS+aZOau5PnjL63b1IZEIGNt8oJg+VTVUI
	53NNmDMUJENz8amDzzSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkmfJ-0000000Djj0-3QRI;
	Wed, 19 Feb 2025 16:11:13 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkmcC-0000000Digy-05bk
	for linux-phy@lists.infradead.org;
	Wed, 19 Feb 2025 16:08:01 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-aaf3c3c104fso1163537066b.1
        for <linux-phy@lists.infradead.org>; Wed, 19 Feb 2025 08:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1739981278; x=1740586078; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DwMMGNmWOuotqPv4IxkXyX8g8+4F3yGXxMrg8cS3U8o=;
        b=BOiMBk5OMJ8sg5zgONP3TmLPWmaBh03Kf/4e1G4ohJXxCfyVqmM1n3cTVRt/nEAl+C
         XOKbn5vUDjeFKcxAfH1hk4FI/iY7egD2BYv0+y3Mv3WfSFdbV9AonrdS+KzCmlW8zelv
         ZjnvKf7A8sbrOIWs1PIlkiHaI/5QEKYNnPhXYdO5TUKcvFwvj3LkjeAPEcbif73Nvzzc
         awU6ro1W/FPc/PVMOEQujFHzgS0ZXH0rSzM5n0qMbTfZs8LojBYB3jLNHRpUsp9HHeMS
         g04Kvx3jK2+fz8hvEQIgQOP9+jINXdDwFuySO1DdvdDQPtiWLmwg6TB1aQQ0eo9h2yZn
         N6bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739981278; x=1740586078;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DwMMGNmWOuotqPv4IxkXyX8g8+4F3yGXxMrg8cS3U8o=;
        b=UGXYOLtrsRscIonCfRMGh3c/K/4yo5Q5I8sSMyUK4Yq6okr3K+uXPj4JYxaJmNybKE
         3AbcmnH2jAk8PRHt3jK7V4qCGnni027zBx8jDHBQtn8sqrnKokrLXWr1lv50lkLRp507
         ROPF+832b5Vm/FJDFNOMSwHSrz/iwi8DoL82snbLVcSs0vQmrjrJQzSX+y+/8k7HtaKx
         rLJywVgFZy2TxPEwJigSxZWepD9E5c/1mJDvS6nmKdyT94x17FVHr1/Ve82QM0l47N7P
         glqS1uTpLS2MMF9V/ktH1QJvFRjHz+VqeSSyXqMefY7V2ixVX/AOL0C+uo4TSPiZqFvq
         +pOw==
X-Forwarded-Encrypted: i=1; AJvYcCWN47ziLS/gnyE2N1FG3IEH9wE+J6QOyEQkp/Uuo1nBmZzr0l/eXlgo3sRUwdyWwpk66Ia2Q3mFOZY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwDNZ75Yam1Wbw6dBSmcuFRQik66BCmJXnLMBq6kJr+ioXC/6lm
	qsLwPCPRDCjv7b+Gbw2171xrk/F+8NJ6quhNPpBt+pbwNRjPhYtwylDBMGx/a4U=
X-Gm-Gg: ASbGncs+HBj3+aaws+jAYz63QMSZUIRi2so4IHjCgaZxcEdWAwFSHBcAGkChr9JBTgm
	tvrIknLykbUWFl0Tqr6W+TBjRG8ISJLq+e7p68iP9CfDzLBQok4xtjDKG+LALuyBNlIXHCgq6a2
	JrP5VZtCzGC1ttKXabBuaQCUroxM8AB6rMpbTlPwuHPQaoPj1p8seUZbAqpwLQIt/8/PoiiNL1O
	8O42DmzSHYjgc+wMqxVRoUYpwJW1piEXyJinAiFOXGNBq3MTD1dvBI+LRMKJ4v9+KojpQ8UXmj/
	q8bfZ0dCBh2cbXAWrNbqcRfT66yKSc/hw3OeMV797m8i
X-Google-Smtp-Source: AGHT+IFb8j7IIkxOR/n0tzGJ+yjodWKnwFUug+Qx75yEhRVyIDQOoSAzY1twMqg5YS3jbZDvVYlQxw==
X-Received: by 2002:a17:906:9d2:b0:ab7:5fcd:d4e4 with SMTP id a640c23a62f3a-abb70d6b001mr1606723766b.41.1739981278058;
        Wed, 19 Feb 2025 08:07:58 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbc0d0b882sm327791066b.109.2025.02.19.08.07.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 08:07:57 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: yoshihiro.shimoda.uh@renesas.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	horms+renesas@verge.net.au,
	fabrizio.castro@bp.renesas.com,
	robh@kernel.org
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH RFT 0/5] phy: renesas: rcar-gen3-usb2: Fixes for Renesas RZ/G3S
Date: Wed, 19 Feb 2025 18:07:43 +0200
Message-ID: <20250219160749.1750797-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_080800_061966_93DF34EC 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hi,

Series add fixes for the Renesas USB2 PHY driver identified while
working on the Renesas RZ/G3S USB support. These changes are
needed for the upcomming RZ/G3S USB support (especially for the
power management support).

Series (with [1] on top) was tested on Renesas RZ/G3S with consecutive
unbind/bind and data transfer tests before/after the unbind/bind.

The unbind/bind was also tested on the devices with the following
device trees but w/o checking the data transfer (as I only had
remote access w/o USB devices connected):
- r8a7742-iwg21d-q7.dts
- r8a7743-iwg20d-q7.dts
- r8a7744-iwg20d-q7.dts
- r8a7745-iwg22d-sodimm.dts
- r8a77470-iwg23s-sbc.dts
- r8a774a1-hihope-rzg2m-ex.dts
- r8a774b1-hihope-rzg2n-ex.dts
- r8a774e1-hihope-rzg2h-ex.dts
- r9a07g043u11-smarc.dts
- r9a07g044c2-smarc.dts
- r9a07g044l2-smarc.dts
- r9a07g054l2-smarc.dts
- r9a07g043f01-smarc.dts

Please give it a try also on your devices with [1] on top as well.

Thank you,
Claudiu Beznea

Claudiu Beznea (5):
  phy: renesas: rcar-gen3-usb2: Fix role detection on unbind/bind
  phy: renesas: rcar-gen3-usb2: Move IRQ request in probe
  phy: renesas: rcar-gen3-usb2: Lock around hardware registers and
    driver data
  phy: renesas: rcar-gen3-usb2: Assert PLL reset on PHY power off
  phy: renesas: rcar-gen3-usb2: Set timing registers only once

 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 134 +++++++++++++----------
 1 file changed, 74 insertions(+), 60 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
