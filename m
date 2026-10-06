Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49D95CA5FFC
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 16:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WjL+kxD2PHEuvIAEe6SQFHaRCwW9kSHC82QfZhR5Vd4=; b=olKqh1EGojwUP+
	66dDo90R5UPu5gc6yCqBOA99BGByVXOY40T3HFGefu7uQQxE96snsVbLManEQ6cFNoKILN0/rkdAp
	Wt95LOur329Uscg/OAB5jkhdx1hAxc94Z5M4XnSW+TKX0CgSuaiJoDwRi689II8D93ICm83bTVCob
	C0zbjQEMMixYwvi1IlzO63dhAk+LV7OHazgI/RI5unp7fPOMHrjGouR59LDK/+18rrp/ZA4ziElK6
	T7zLzoNzc0klG9dHXMJuIPc3nUOyPfF4fvqxNhs7yp3knWctOz3YsveUEABbi5Ew4zkrUn3F9XdWG
	uAIWBTZn2X7+FzUvq0uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE81e-000000018QL-3zCy;
	Tue, 06 Oct 2026 16:28:22 +0000
Received: from mail-pz2-x08.google.com ([2607:f8b0:4864:3b::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE81a-000000018OT-2IY5
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 16:28:20 +0000
Received: by mail-pz2-x08.google.com with SMTP id 41be03b00d2f7-cc790c60953so415139a12.1
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 09:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791304097; x=1791908897; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=iyS59LHL863YniTBRLDQIsOwBigLIOw+B5p59bUiqbM=;
        b=s+4N9H+UkIKQDngEpuTUHfAlSDiS09UyeGZL2yQrlKO1rmjA6iqQxpR7UQvKHnM49K
         dBT0sdvS3bPOXKVjz6HewVOliqzOfSTFMZlB0c7zQxj48qfYOZQldjr8mkgFyudd+Mpm
         HaXJY45sHkfjFFIen1JT5D6pvIwDrVtHUUotIcvK1gEvFsYNo2UtiFEyVPVBVMjo9FBU
         hOFeX0BpsRRE6eNzRiPb4I3+amgyD9OYxM2IT5mxLoBb2vVEXg5H7mpJMKXgL/7B/Uw7
         D2J7xsbZ8x6kZO8vIevQ/4AlBCD7TTFCn5hcrCT4gdcmHscgbycnAt/XQS/r6mWtWszw
         IOCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791304097; x=1791908897;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=iyS59LHL863YniTBRLDQIsOwBigLIOw+B5p59bUiqbM=;
        b=v/0ewjyXFf045FM/XfwAxXzCUxDn2j9G6JZMIW58JLOc/z3Xbt/NWQGJjmEvyEHsEW
         UFVFgUNuZSBVDgL63HM4X1du6chjH3b+6kylmGX2uth4vH+AgcG16A7O6Ej9CeGgjG9T
         Nk+ZqLFyR7T1TAKGrHGDYjjd5zQqhXKlkvFfY7eOW0OYGIMy3Ilcv3b05tEP8tHe6Fxa
         hfe/c1DblHhuyaD7eJVr9QYlQv4DAEKnnkj9sCfVOmp2P3lg+sUewxtm6NWwVB1E2KnT
         o2LPHnRV/FUvfXvP9Ed+M3CZkg4IrHep3X7ZRTHYc+Nbe2T3YAz8MXiBU2BVTcNuzjzd
         Gg+A==
X-Forwarded-Encrypted: i=1; AKwUvBzDBVE5EdOC8tNaQZzTlQG5H/QtQqDUSnnX5rU86++LXl3wrF1xriayt5WhQUmAwizfYE3WsfbHyYY=@lists.infradead.org
X-Gm-Message-State: AFq9FYKpUYnNDrN+AKCjwKszDR/ArSjKjovO6EjjwTfZBDPmwO9tjF0c
	Ec/mgyZcB4cQXtdaE/eViHdc56m7diuK8U+VQKGNr918DvzvW+ekCRBx
X-Gm-Gg: AYBFou3cB8NZW6H0AcWiaOzPVO8x5yu4DBScDmt1XZ9GGfuF+/5jzRy8/GvVGUmQ7vh
	OaqEWeEx5NoOixYI/5D17AOZ+OjyNqNTIpJo2lcsAI0jjTlZhIZd1bhHLP1o75Vn4XAGLnUJ782
	OiCmpywlnnjZG9DZI1dVx9zQzbJCyv2Go237Sy03aav80lEH3bOdsZU29/ix+YsAEObml1kZHC4
	Y1LZDvUdV94ux/lVQt90nnhWYRHVTuQuaMJuvF57PFtXHw8ojn0q9pFFYM85H/Y0lfHNzLX8x6V
	r0QW+6jCl/uYJYFEPQBmJmWDrgQzG5GFoiwvnAzyvjyRKRkIBMA7p3qe6tSPk2fzW4lMeCiKTlw
	o/gguhMgDsqUnHcBt/WXUnnp5XGyKjvKcDS1TEv4+tk5BbjkGu9LJAutHZL20M7K9/FQLA+l4aT
	Gh4c9telyhgrSvVfeH6DBPeMWBCfOhWph1mJWpNUXfDAc1gFRV1cMmIUPqMFkls/2SDpuQ
X-Received: by 2002:a05:6a00:3cc7:b0:881:f5e1:6e8c with SMTP id d2e1a72fcca58-890df4ab129mr1783463b3a.33.1791304097548;
        Tue, 06 Oct 2026 09:28:17 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-89188a0d603sm259898b3a.19.2026.10.06.09.28.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2026 09:28:16 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v13 0/2] phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568
Date: Wed,  7 Oct 2026 00:28:04 +0800
Message-ID: <20261006162807.2843858-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_092818_596316_6AD798B1 
X-CRM114-Status: GOOD (  11.81  )
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

Changes since v12:

- Only write pipe_sgmii_mac_sel when the property is present, leaving the
  routing unchanged otherwise (Shawn).
- Validate the value in the driver and reject anything other than 0 or 1
  (Shawn).
- Drop "default: 1" from the binding; the property is tri-state, so no
  'default' in the schema is appropriate (Rob).

This is the PHY part split out from the v10 RK3568 SGMII series, sent
separately to linux-phy as suggested by Vinod and Jakub.

On RK3568, the SGMII interface can be routed to either GMAC0 or GMAC1 via
the GRF register pipe_sgmii_mac_sel. Patch 1 documents the
"rockchip,sgmii-mac-sel" DT property, patch 2 adds the driver support.

From the RK3568 TRM (Part1, Page 229), PIPE_GRF_XPCS_CON0 bit 1
(pipe_sgmii_mac_sel) is defined as:

    0: SGMII routed to GMAC0
    1: SGMII routed to GMAC1

The hardware reset value is 1 (GMAC1). If the property is set to 0, the
driver routes SGMII to GMAC0; if set to 1, it routes to GMAC1. If the
property is absent, the driver leaves the routing unchanged, so the
effective value is whatever the bootloader or hardware reset left.

This is necessary for boards such as the Ariaboard Photonicat, which
uses the SGMII interface connected to GMAC0.

The DTS changes using this property are sent separately to
Heiko/linux-rockchip, and the net-next parts (XPCS glue, dwmac-rk SGMII
support) are sent separately to net-next. There is no hard dependency;
the pieces can converge during the merge window.
---
Coia Prant (2):
  dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel
    property
  phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568

 .../phy/phy-rockchip-naneng-combphy.yaml      | 13 ++++++
 .../rockchip/phy-rockchip-naneng-combphy.c    | 42 +++++++++++++++++++
 2 files changed, 55 insertions(+)

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
