Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27894CFA746
	for <linux-phy@archiver.kernel.org>; Fri,  4 Oct 2024 03:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wt8JGFGHrN6iF2FOaKBT7aiA8koivkwuzAI+9gH+lHo=; b=sqSw2FhODAuY7B
	Mu6sUiPYqsC8rrYr90JfPoetv+x72z/e07XGN5i8hZHnRXx1FThAF3HdMghqPdGxj6fR4S2HrnSE6
	RlVbXt6EkOPKcZV6GrgJqvn+wYKS7Tu3MXt/3C5R63LW6LHC9OlzE4hBeQ/oHHpOHQhQYLJb35kTD
	nKgNjh1MSnrdukHqmK+y6wGP6/VMX2kACJBcU/WrIHxp9Sti1sjhCCSBkA4tPkw8BpjEsImQKgMm0
	TbKkCZ4lboa9CfzpAfwSplmgp95db4t9UN+YGpC8mrGtktRirrANRDlP4GmOa9OZFN4RY1o0DJyJd
	ILIrXd5KW7XDw+wr9QOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swZDF-0000000AxLM-3Xbp;
	Fri, 04 Oct 2024 03:42:41 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swZDB-0000000AxKC-08d7
	for linux-phy@lists.infradead.org;
	Fri, 04 Oct 2024 03:42:38 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-207115e3056so15126995ad.2
        for <linux-phy@lists.infradead.org>; Thu, 03 Oct 2024 20:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728013356; x=1728618156; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YeNiT/wDOeYcpVybzPgBu3y8LHsbCtXdpl7PFgZAEyE=;
        b=QKq1NKXYBURGupHJvkAVwgsnFIKqdncimbYKmOKP2u/jZhGIpm33kbOMNGxcEzW/87
         7xP52DAh9Jtr6zCrGIKbk4M6q32AGEkDSQRTCYPv0edjr+QOIWIqgE2Vk+fbZVs3MxI2
         DxTxTSAKbDTeyf9Psrz9+espzHcKBwLNY19F4zr32o3T7Pc5Fr7Hj8rqKg2+IJpTF7V7
         23OIJ7DhDnUOUSCf7z99kzAHGE23dO96o5g2iBbq6B0Q6wf/A2SVYZ2TwlCBHkIYPYCy
         L+A3HhhZq2DHoNvD/UjTloXZSYEcj4Sv0bNyxh5a3hYtp3z5CMAhVRGZ/AdrJrOodcqT
         BGZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728013356; x=1728618156;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YeNiT/wDOeYcpVybzPgBu3y8LHsbCtXdpl7PFgZAEyE=;
        b=Pp52Sl7QgsfAoC1GVnqpxpWZkhOVWX/9mHfWR6d4FP0pe1OnO1s+/OKNupw2eHy3KQ
         i7c29FWje3SYtNsdnmJPjHWqlZqk2ptLtJTZTqCCB3iyNi6RFjiNn1f2x/43oVdjEmkt
         2LG5fg6qxtLWA7Wgp0dBuKJ2usXbDHcZ98FgYcmqrB2uxzagKmmW17HGdt+GsVYA/Jcs
         GWm4WK+S/q9hjERHAsxVLP34TW7oLGsEt5qxLlqiFXXnmhqIO+RcxNCw7czahA2Q6nV2
         ZalJS4qplMh9Bd/hBONLzJeKf3f3VwJ+mABLrHYDtMASgwB9I+NA3OqpEQi1uYmyQKmO
         4XxA==
X-Forwarded-Encrypted: i=1; AJvYcCXOcFazDWQp/FfPviRys2+WMm8FThoNPnT457Pkt84yZYDeKH7ieL2Hoy+QywQXensDNQZ/P8XTUtg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzaFRctbYVmiAip8Y5gvSSc2dxjneOWqUX0z/9F4U8e6WdjfwqS
	hPWWghRd0mruHrEYocxY6frn2fhfVPg2AO6AcTyZZbogfwXJHLDO
X-Google-Smtp-Source: AGHT+IHE9Nstzd2pHqK6NJFCdFL23c5IKhAWkuys6OR9pdXaruEBosszP83PsP8ZctEqnFRLgJj+EA==
X-Received: by 2002:a17:902:e852:b0:20b:642c:223d with SMTP id d9443c01a7336-20bfdf8045amr20505725ad.11.1728013355963;
        Thu, 03 Oct 2024 20:42:35 -0700 (PDT)
Received: from luna.turtle.lan ([2601:1c2:c184:dc00:b8ac:3fa:437b:85fa])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20beef8ec6bsm15806365ad.158.2024.10.03.20.42.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Oct 2024 20:42:35 -0700 (PDT)
From: Sam Edwards <cfsworks@gmail.com>
X-Google-Original-From: Sam Edwards <CFSworks@gmail.com>
To: Justin Chen <justin.chen@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>
Cc: Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Sam Edwards <CFSworks@gmail.com>
Subject: [PATCH v2 1/2] phy: usb: Fix missing elements in BCM4908 USB init array
Date: Thu,  3 Oct 2024 20:41:30 -0700
Message-ID: <20241004034131.1363813-2-CFSworks@gmail.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241004034131.1363813-1-CFSworks@gmail.com>
References: <20241004034131.1363813-1-CFSworks@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241003_204237_387763_4217AA48 
X-CRM114-Status: GOOD (  10.75  )
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

The Broadcom USB PHY driver contains a lookup table
(`reg_bits_map_tables`) to resolve register bitmaps unique to certain
versions of the USB PHY as found in various Broadcom chip families. A
recent commit (see 'fixes' tag) introduced two new elements to each chip
family in this table -- except for one: BCM4908. This resulted in the
xHCI controller not being initialized correctly, causing a panic on
boot.

The next patch will update this table to use designated initializers in
order to prevent this from happening again. For now, just add back the
missing array elements to resolve the regression.

Fixes: 4536fe9640b6 ("phy: usb: suppress OC condition for 7439b2")
Signed-off-by: Sam Edwards <CFSworks@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb-init.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.c b/drivers/phy/broadcom/phy-brcm-usb-init.c
index 39536b6d96a9..5ebb3a616115 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.c
@@ -220,6 +220,8 @@ usb_reg_bits_map_table[BRCM_FAMILY_COUNT][USB_CTRL_SELECTOR_COUNT] = {
 		0, /* USB_CTRL_SETUP_SCB2_EN_MASK */
 		0, /* USB_CTRL_SETUP_SS_EHCI64BIT_EN_MASK */
 		0, /* USB_CTRL_SETUP_STRAP_IPP_SEL_MASK */
+		0, /* USB_CTRL_SETUP_OC3_DISABLE_PORT0_MASK */
+		0, /* USB_CTRL_SETUP_OC3_DISABLE_PORT1_MASK */
 		0, /* USB_CTRL_SETUP_OC3_DISABLE_MASK */
 		0, /* USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK */
 		0, /* USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK */
-- 
2.44.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
