Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28E70C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jun 2022 12:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A+ab5bcVfD1zfaZ4lNs3YoUOBzMck1vC+ooikJ8CHDw=; b=meaks2ctxW9Eso
	ytSH3zkEKNHz+hSkkNljumVe88ieYgpvF/jxSjXRoPtDEYCbf9abcrWvvU0m0x2xVwTm1NNmFzBKj
	ysdTuHOygBrzP4nJFf7eseEDwWEX0+lm2Rug34ZbmWFbPQ8cATpJs3qgJqGd/Yr3ozcRtWSUuXNDI
	a17/BnRgNuLB/ivLN4Sv1zXPPxY2XE40z3zgSz+wrlP/zlgD/2YSVaDfuxBookvgs1b4hwOigfN3P
	rkWZCholTq7R/sI2sODS4x321JuWB/ursCSszyRLGtJeEFYUVaJaxZ1+400XpXAid44JdoJyZo12A
	tnkgerfEdiBF/IS6QQvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0j9X-003W3A-A5; Mon, 13 Jun 2022 12:26:43 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0j9T-003W1f-Al
	for linux-phy@lists.infradead.org; Mon, 13 Jun 2022 12:26:41 +0000
Received: by mail-ej1-x631.google.com with SMTP id gl15so10862655ejb.4
        for <linux-phy@lists.infradead.org>; Mon, 13 Jun 2022 05:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id;
        bh=8xxTI3Ss0WMvQnCIvX3BWtfdOokaW3JYdk6viarNn2w=;
        b=B1eSHARb/HLRNxEiVUfS1gBgMUu/eKrY6+Ta+1Q1t0zBUYPMNoSNzILph/rg7s0DzS
         5eY882OPO0TS8avEouSr+LlWRxN8metr9VffuR2NfLOo6r04qRV4ys5LymAbLq165f5f
         omuxsbxHRt9qbWwtdxOdXLXH34RbTwZy7XiMoGI0p+pBLUgCSbNNn/ipvwEOPfWMbncP
         /CVPd3oR1ReKpmSf2XKHAqw9bOtE5N2dNU9CncxQLy5zwpLf3Z4cz91VfLWNR4/I8PQP
         Lf83icvbbTYMLqkHeX62zix3xAFqsok+Bls27pUQnXBR18X2N1dqz1dQn61yeTiyHTm2
         6bQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=8xxTI3Ss0WMvQnCIvX3BWtfdOokaW3JYdk6viarNn2w=;
        b=jm11yXkjxqw63cyhSwRHas5dlO+JOD80LL0Uf8augcKNDlLd8/KF9r5evdZWyMGcHs
         7s9jKmEdyji16z0tivoIiZD9BpOMQs1ZTglHqzmnnW5DtL8G74PgNtUOFlhDn3RojHKa
         zLy4haDDagPFr9xAB7bp2PX9lCsDfQzn5yhjj7hMB7EWfGOARGi8mMXnCKY0E6yc6xPs
         FE3Sj6fRzPGT1dGPMNaRCsNudrisB/iDH3GMPqU4hJ8vId3q8KFALz4euUpL9wM/dHOk
         G0qi17nZBHIM3j++sVPX8XCejvMDRZ69Z0fJQHHIWLhW8VMIEWfTAnuTWkvpjU3hhtyo
         PVZw==
X-Gm-Message-State: AOAM532NOTbVU2NhVHMSs9ooGdM19dJp2xpu9Bv7m/5mirfT/VL4Fmrt
	xLmidXRXS9eqxLwgDNfrfJc=
X-Google-Smtp-Source: ABdhPJxRkJaL5XerCne7Kfki+B7OYlwwm15OKT/e9vP7mHjOQ4NDXwo7swD6zqhara4IBUTcU3F9Fg==
X-Received: by 2002:a17:906:20c6:b0:718:cc95:ccaf with SMTP id c6-20020a17090620c600b00718cc95ccafmr2226111ejc.714.1655123194323;
        Mon, 13 Jun 2022 05:26:34 -0700 (PDT)
Received: from felia.fritz.box (200116b8260df50011e978c0f780de03.dip.versatel-1u1.de. [2001:16b8:260d:f500:11e9:78c0:f780:de03])
        by smtp.gmail.com with ESMTPSA id 12-20020a170906308c00b006ff0b457cdasm3768403ejv.53.2022.06.13.05.26.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jun 2022 05:26:33 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] MAINTAINERS: add include/dt-bindings/phy to GENERIC PHY FRAMEWORK
Date: Mon, 13 Jun 2022 14:26:21 +0200
Message-Id: <20220613122621.18397-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_052639_401881_76F554A4 
X-CRM114-Status: UNSURE (   8.16  )
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

Maintainers of the directory Documentation/devicetree/bindings/phy
are also the maintainers of the corresponding directory
include/dt-bindings/phy.

Add the file entry for include/dt-bindings/phy to the appropriate
section in MAINTAINERS.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
Kishon, Vinod, please pick this MAINTAINERS addition to your section.

 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 3bb8a8724eaf..7a4c3e811262 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8354,6 +8354,7 @@ Q:	https://patchwork.kernel.org/project/linux-phy/list/
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git
 F:	Documentation/devicetree/bindings/phy/
 F:	drivers/phy/
+F:	include/dt-bindings/phy/
 F:	include/linux/phy/
 
 GENERIC PINCTRL I2C DEMULTIPLEXER DRIVER
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
