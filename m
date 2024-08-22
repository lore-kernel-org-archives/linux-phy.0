Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75B6AC52D7C
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 15:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w5sYNH5ADObLP6RKs6NRmgHV8ILkEeL00ki2VVuutXc=; b=3bGsnKUyPvKt96
	WldSWHH8Xgj2po/vBK1H7KxaMYPi0MtNk0wEzw924DBR1eCQn82cj3gshoG9vPlIWODvTdtyb9PCY
	hSqQLeVCyVXxGrH4MyEU/9wDFq6CROx9WhU/H/QM3cTaZMeK2NdSw2NEuoGaJSU2bsWjCWHENfsKK
	Q0B19XCDg4qMtW9Wa7E/ud8agQeVlxk62yWBIdm4EY9Qxt0h8Fa3EoOP3V/NtJEPRyWXHmeuwMFKW
	wZXgYE9C7Xk+XFitHHKnKSALyX7vJ5NurFPMGc5tBmAajT1gkQW3+vwoQaKzrdZ9KDUaPwbC1ToPh
	eMubCCTdKo+wTBSQfvYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shA8x-0000000DRU5-2AdW;
	Thu, 22 Aug 2024 15:54:35 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh9jb-0000000DKn1-2L0G
	for linux-phy@lists.infradead.org;
	Thu, 22 Aug 2024 15:28:25 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a7d26c2297eso121665366b.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Aug 2024 08:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724340502; x=1724945302; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3txPUwxmR4fX7LzFPWhcfk9alhQ/U1SsqoBALbg0+o8=;
        b=KhW8EQLavCxw3eyYppbjTTVCOUY1SMWJJ9eHlr+O/UO4bTwbMwSubJmxJwAZFeCEZp
         C9dImcq18a9arwEabV2WZYMIGCvFZDJ1h49CFsgQsgLTjJbRRgstzWcb6Hrdf8XxWEmV
         mdtwHfJKigl52iits2tmCj6D6n+w2hvBcMGuKB4dfgwsAzJZMwXhvBElerjcruiaKEv5
         5Lc8lmQEHqJmvC5cJAmEs7tVKwNpABwJDnXvcEAtHgluZGgfEgshzngxuvH9FZDkHxkD
         Mpt/VLOEEERXSFSNwaVfgWoWYrC+4KEs+FmrqByOwHtTcMz8rGtHKcicBv9n6B5mCMKB
         yb1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724340502; x=1724945302;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3txPUwxmR4fX7LzFPWhcfk9alhQ/U1SsqoBALbg0+o8=;
        b=E0forvDgooNT/FL5Evay1dyCmvEG5qez72ql92el3a7m9VSeBOyGyz6ZiVstXcpdFf
         wlJw9TqnwSanvMiaZtM7E8aJ7nbQNPb0OcjnEZYKSQLUhyPPpx9cSNGtdHCcN/KAwFf+
         LmrQkkeEpBEaPpNNZ39crsDI5yNizOA5zlEpC4Bp8rGFM2aH4TmU80hjP+5j6bKzgG/z
         yPLBy7wYQev+Pmh89EeuudRmJ4RAt+fjT078sBCv7vMxHPwnvkUdSe83a7ubV9JNGCxp
         23e1iCh/CiPnnT2BI74B/dGWTpKledLpS8ILFjIyY0VQUxaa+h+OOpFj4/sM2igPgojh
         TkWw==
X-Gm-Message-State: AOJu0YxtE13nS1eggVK8KhZB8qcTP2H7ToptA8wzLlq/2ezKJPzTId2h
	KDGdzqXR4heYPGINjZEH5RY/+rKr3n9OiSDWsP4p33Qp0ELfNmbM+T5TuaNyryg=
X-Google-Smtp-Source: AGHT+IGwmGUufY0I/wXnuKumGBXx6MTOJSx969Oopy4E3RE8Z417JclZShJ68eMp0wCAWKbVhUr4SA==
X-Received: by 2002:a17:907:efd2:b0:a86:3c01:cf08 with SMTP id a640c23a62f3a-a866f705025mr477276566b.47.1724340502213;
        Thu, 22 Aug 2024 08:28:22 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f484dc5sm134189166b.171.2024.08.22.08.28.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 08:28:21 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com,
	ulf.hansson@linaro.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 03/16] dt-bindings: reset: renesas,r9a08g045-sysc: Add reset IDs for RZ/G3S SYSC reset
Date: Thu, 22 Aug 2024 18:27:48 +0300
Message-Id: <20240822152801.602318-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_082823_636534_0B7158BF 
X-CRM114-Status: GOOD (  10.49  )
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

Add reset IDs for the Renesas RZ/G3S SYSC reset controller driver.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 include/dt-bindings/reset/renesas,r9a08g045-sysc.h | 10 ++++++++++
 1 file changed, 10 insertions(+)
 create mode 100644 include/dt-bindings/reset/renesas,r9a08g045-sysc.h

diff --git a/include/dt-bindings/reset/renesas,r9a08g045-sysc.h b/include/dt-bindings/reset/renesas,r9a08g045-sysc.h
new file mode 100644
index 000000000000..675872a32121
--- /dev/null
+++ b/include/dt-bindings/reset/renesas,r9a08g045-sysc.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+
+#ifndef __DT_BINDINGS_RESET_R9A08G045_SYSC_H
+#define __DT_BINDINGS_RESET_R9A08G045_SYSC_H
+
+#define R9A08G045_SYSC_RESET_USB	0
+#define R9A08G045_SYSC_RESET_PCIE	1
+
+#endif /* __DT_BINDINGS_RESET_SAMA7G5_H */
+
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
