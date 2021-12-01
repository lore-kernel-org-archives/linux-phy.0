Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08BFDC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  1 Dec 2021 18:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Kr2D8W8ANYmsYd6jqImKa5dELe3VNzb5d87Quz366yY=; b=p90qBRx7/P4MEP
	dREI33qVUylUnpfDvLLc86+Wmlm7DSdA8wgdLk5PCiusV65d8gSjSUipTOWm/9732zdsvUIvjX+aW
	nmAzPVlqM+CqP7CY+WQQEqBgFgZmydr/ty3htzsJ/tZnBqMfoFgoasC/yojHMiDnjl3QXHOQre835
	WLj/glDDP7ypWTaOmcPSJ90+f0+zn6TX3hP3ptQ7016v88jxBbQad17mm1z0vRju5q4ToJYHKJJKX
	id+GL93NX5RYowC6qRhSHalHV6L82YXKRWYT8bDG9Ku+3aiioADtPgnIw/xKy2Fsamif4hpzSn3mX
	TLb1qIvoSIV60bVFoaFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msU0V-009hVN-A1; Wed, 01 Dec 2021 18:07:03 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msU0S-009hTQ-6n
 for linux-phy@lists.infradead.org; Wed, 01 Dec 2021 18:07:02 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 71so24448946pgb.4
 for <linux-phy@lists.infradead.org>; Wed, 01 Dec 2021 10:06:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id;
 bh=F0ZMo0dwIdPkRsr3GBQ6j+qx8/KuZB2bBWo3J0kOkKE=;
 b=G0HqefTxKBbuIn0vUfWU50dJwSnBsFJuTDVAWezwjsANGQ+wEIOfS069+VnpiEy2k5
 3SJ7j7lUH+t/PFgongKyqgvfIX6OVV7PGPykdKS/6wKRlvgjR+MjF/x8UJ3UI7RYaIxj
 HkgeA3rT4VycRgSyNt/jsKSuY/MBmOw8IpEGlAq5p4SOIbIG6pNNV9HPtiVD0z6Xmv8z
 NpVWLYVeCUmOW7HXEjHcnT1kKCTHuXPrGWDl9Zhf2hPQS6OKkfUDN1Hdtn/Rmodnhbd+
 0wuGzmWIQblHuz7Un/blgaV+W5tP0u3yDfXGCl/QH9G7RcZKRe1IAKwM08xp1WLSdbMl
 PH2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=F0ZMo0dwIdPkRsr3GBQ6j+qx8/KuZB2bBWo3J0kOkKE=;
 b=POHUF2oISxJ44KntGjk1bSD3vFQ+r/DQeGUAWfVcDEolk5H/q/tnKxBbOlmKJUgc2S
 XWV3lNg7JskeMdbXAO40Rh7KF++h8QSmo/iaJZxML8NxwrwFp9zzY0y6BMC7kAAlH3bK
 qAj/1aVX6j0RvPPVPgx09e6pnaZ23tdtO/dZkZ29Rm3iyUdNoHl/2k2u4gHtD07Wi26y
 x/X0jYcYlHra1OpIvllng78xTyzXMy0L//EPG1tY0SaUz3CFrZ14QwbYw5W8B7+s7I6C
 kBsaD5j9PyLmEySe+FauivRM/uq9c93C3l4LJi9mYtyiSgCLXIfwWo4lEXyY0MoVYwdK
 a/MA==
X-Gm-Message-State: AOAM533igz5/LMCL7RQ6XQd+f9TuCd1z0hMNx9R2ZAT8Pf1ystiPPCOq
 u/pd2tSWqDboMFBURSx+o50=
X-Google-Smtp-Source: ABdhPJysyRcHb/Oal4MwJqbyJWtlBGgxu/ur+mvTEi8xOkEQ4D1BIatg5R4HnOOTHwQDLbH5aBDC2A==
X-Received: by 2002:aa7:9438:0:b0:4a2:c941:9ac4 with SMTP id
 y24-20020aa79438000000b004a2c9419ac4mr7518539pfo.12.1638382018553; 
 Wed, 01 Dec 2021 10:06:58 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.11.250])
 by smtp.gmail.com with ESMTPSA id w142sm462582pfc.115.2021.12.01.10.06.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Dec 2021 10:06:57 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: Al Cooper <alcooperx@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 Vinod Koul <vkoul@kernel.org>
Subject: [PATCH 0/3] phy: phy-brcm-usb: Fixes for phy-brcm-usb driver
Date: Wed,  1 Dec 2021 13:06:50 -0500
Message-Id: <20211201180653.35097-1-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_100700_264419_B5BDC3AB 
X-CRM114-Status: UNSURE (   5.84  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

A few fixes for the phy-brcm-usb driver.

Al Cooper (3):
  phy: usb: Leave some clocks running during suspend
  usb: Add "wake on" functionality for newer Synopsis XHCI controllers
  phy: broadcom: Kconfig: Fix PHY_BRCM_USB config option

 drivers/phy/broadcom/Kconfig                  |  3 +-
 .../phy/broadcom/phy-brcm-usb-init-synopsys.c | 46 +++++++++++++++----
 drivers/phy/broadcom/phy-brcm-usb.c           | 38 +++++++++++++++
 3 files changed, 77 insertions(+), 10 deletions(-)


base-commit: f080815fdb3e3cff5a004ca83b3815ac17ef71b1
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
