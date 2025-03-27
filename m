Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75DB3C36011
	for <linux-phy@archiver.kernel.org>; Thu, 27 Mar 2025 18:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ezYDjanW6lT+HFaHujNp634Y8/yIqP0ZYzjCavxqdkw=; b=2/s5Bhv7v8G75h
	Y05rLK1r7XyIzYEnQjARbB30FHjk/DkzIOILr/iwSeZaKrdFSaTgFyftBdoD37X/dod31T1VrQV7M
	okhZeHhg1LaUkz57FbIla6U/1TIr4/M8VFpzDH+FtiaiMft2N/3tvSydmpvB+EP/VPJUP2E7o8Z4h
	vfU7ZDox9DnJckoMGnYCCE6dLaRBa6DBFIUcTwfEpRpsCWsUMTpi4M3ThCsUUkQQO8tZsMOHXmR8M
	yjNHCNiHjtQsiaZGGyKvih+1sZ3B+PEbUS/iOPMrGRpyvrF6pIhoYQBmh2D1bKwMCXFXBxEbNo8WC
	CofMPkVC8zEh3uvXafZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txsQj-0000000BlwV-3W18;
	Thu, 27 Mar 2025 18:58:17 +0000
Received: from mail-oo1-xc34.google.com ([2607:f8b0:4864:20::c34])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txsOz-0000000BllZ-2gsi
	for linux-phy@lists.infradead.org;
	Thu, 27 Mar 2025 18:56:31 +0000
Received: by mail-oo1-xc34.google.com with SMTP id 006d021491bc7-5fcef5dc742so335951eaf.1
        for <linux-phy@lists.infradead.org>; Thu, 27 Mar 2025 11:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743101788; x=1743706588; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hO3xQx9aw1GJXrcafbGcY1h23Byz3iA3lG0yj8pcrQU=;
        b=ETV4Zi2dL82olCxsJ5SDNzUzPWzsedXc3/Af+4Cuwu1ZOmM8yWsVDhEcLtoGVYTnLK
         5WFxGK5t2oB6UtchWBVdiM6OGF/Nk2/EGONjRyfybmJ3DBJrrBawbj+Ya3VbHQIYhfLY
         Pd1heeJuz02o1uMNY6YgpGSSfgT4ZdTZmALtg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743101788; x=1743706588;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hO3xQx9aw1GJXrcafbGcY1h23Byz3iA3lG0yj8pcrQU=;
        b=WJHq3b9CExPE4TdFYXbIZfva7/0K5R+mhdk5jPgIJiZ02r0iOU7/52FQSTupboqwfp
         sHTEd7pd531PgLbhSqcLR5L8bWed1pqaXi40iSm8V/NHAiaFfcMlCfgzv/bgzSJiGniW
         ILyuVvzhntIJOAAo0qITXgj4vmshHvu0WFjf7yC5de6bBVecAOQt4X5ZRqWTRQXig/90
         cFHMtXnWqS5qrxT1blgEw0UU/kVvBbPzJ9vNv9WsopAbB7XMp7TQrK4V0d5oDg7UL1uP
         egpBqfeii1egku3a267Pdga0zX/XweykkZCPk4WAszfkk6wRT2F+Dr60TXBQAs8ZKtPn
         1ZFw==
X-Forwarded-Encrypted: i=1; AJvYcCWKhBI5FVzcIltMo1Qs86BLVRevnO/aDaB3SH9BI3C87T/DLkljpbua3JtnGl9iqad52GK6tmMLlcs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy793sDrAjYnyxLwpnpgpn3CKMuY1+gAlSEikvfVZeRwUTlfHqM
	MSEehbY886J20vfEElBeIKuETsWhmMZoljVqg+1vInOldaEhmAFz50X5xQrvlw==
X-Gm-Gg: ASbGnctRvtGW4Dec53Q0I1YgP2ZYJzofr+QYegU5dUI/SytQCkFjqg2Nojdh54gRUwh
	1RDx2r9dhn18bARR/YII4OBT6gVavavy5Xlin4o6YngQFfiQ7ppIgjG8pow2AqmU8Nr77EHTKfB
	vscFiSoCG1RlGNHMtyI907UAMkVNIdG41kg3i4nRf7rcGN8PMwsiID49Zhhm8u3GdYMleFcAN1X
	92j7GuwBo2W9HqHiv+W/Xgnl04KQpGjo09GxvuPzIomdNVfpO58s77a4ppOJk4Z//9cOKDHj1hs
	66GuoQm+Rz2UMFHoQIoOQIfKTk7jQvVKCvnr77wzOGD41ITavfYj1UFUJE3Sv241kod8dmdIyus
	nvjOsMK3N3MraOGf2/HI9XA==
X-Google-Smtp-Source: AGHT+IEg00tF/zUqTuDnp+3xAYEBy4WbNKI4GPO4ni5mjeP42q5NxY0LQvo8mS7zFO0Ue236qYrYkA==
X-Received: by 2002:a05:6870:a10d:b0:2bc:7007:5145 with SMTP id 586e51a60fabf-2c847fa96edmr2929868fac.9.1743101787781;
        Thu, 27 Mar 2025 11:56:27 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2c86a3f3db1sm77997fac.4.2025.03.27.11.56.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 11:56:27 -0700 (PDT)
From: justin.chen@broadcom.com
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: rafal@milecki.pl,
	alcooperx@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH 0/2] phy: usb: add support for bcm74110
Date: Thu, 27 Mar 2025 11:56:21 -0700
Message-Id: <20250327185623.3047893-1-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_115629_721194_32B36C0A 
X-CRM114-Status: UNSURE (   6.60  )
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

From: Justin Chen <justin.chen@broadcom.com>

bcm74110 adds a freerun utmi/ref clock that saves furether power during
suspend states. A tune is also necessary to pass USB compliance test.

Justin Chen (2):
  phy: usb: add support for bcm74110
  dt-bindings: phy: brcmstb-usb-phy: Add support for bcm74110

 .../bindings/phy/brcm,brcmstb-usb-phy.yaml    |  1 +
 .../phy/broadcom/phy-brcm-usb-init-synopsys.c | 61 +++++++++++++++++++
 drivers/phy/broadcom/phy-brcm-usb-init.h      |  1 +
 drivers/phy/broadcom/phy-brcm-usb.c           | 14 +++++
 4 files changed, 77 insertions(+)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
