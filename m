Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1DEDCA5FF5
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 22:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7te69ICpI5HDVcq7RLXLVbNWfPXU4yMFbWF07TYInqo=; b=EEe0B7RpBEjs9e
	ZnoA2PEaRDUkypRqmV/yP7l75NhQ+PsK8k6SdCo7QyBDS3NhhcKl8EPC4DcZNDzc+sV5/3jttX21S
	9q1d9gLFM97L9y6wZxpYh/Tu1QaEZ7q8V7ohudE21cEGIh3trqKsxpnma+30D/gg14cunN1KiH+bh
	FR9L3OntGG1zFcsjl9InIjcUUQi7KF/GCSpt55rMNOs8fYoDAFM4kq4dRkOo3LmxNg+fjCMWld4QU
	a79qTVKJ8er6GlN06+z0U28+p0I/vGiJSkFCYmsuY3OvcHA8ou4UyHUV6Dpah3rraitNy3/4m1C2c
	bF3IKH0BCa4DcqSdb2kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDqvR-0000000HEiX-1TvN;
	Mon, 05 Oct 2026 22:12:49 +0000
Received: from mail-pj2-x01.google.com ([2607:f8b0:4864:39::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDqvN-0000000HEh5-36ac
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 22:12:47 +0000
Received: by mail-pj2-x01.google.com with SMTP id d9443c01a7336-2e31e9f035fso8624335ad.1
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 15:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791238365; x=1791843165; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=qKGy4C88fJ5sur3Q5XgFQ7glpkb5tmclhAnLtMHskg8=;
        b=OEAH0dhk8s2k1eSY+ioI1kqEM4hgFqTpW1YXyjv6iIPLEco0r2OqevYs5S7AJ91LMx
         y9u2tyi3Upz567ED0sbtz3OImBZxn2KZHnZLlC5uXOfX8d2r0f9uBGRbmfO1H0M3BYBB
         tWjx+03qHFV077aQkVhLUDhADQEh5GijA1NvzAUaKs2t+JTk1mmZpenjzvS/DHyz0M+W
         9LH2vncb1rSOd5+3THMs4K7NaWBMu1e6VO0HqQslPdDl+LcTOHyGGZ/dnBpS7v5cEzUX
         De/j4fiQwh57gBTsOY6XKl6zxZr61fcVjSOvRg13iaQp4ko/2fj3PRtAJkTlEc+cm13o
         PcdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791238365; x=1791843165;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qKGy4C88fJ5sur3Q5XgFQ7glpkb5tmclhAnLtMHskg8=;
        b=0/b1LXw2zTgrVQ3+4wO6XvwBDNlsBxAHTygh8lg2vH+44iKSkTALVUq8vkJmqgV9Pa
         1bUeSMW1pSfQe5kGd7b/uaAo1TpG9fpHiWGYOEOaYl/cWU1QIMrrGXWsZcgNqLV2XPwK
         wd2t+gWSiHPIc1aNMtFU7/JVo8u3iYtzR2mCaaBL5q9AFBaQnxPxME+njHcjGmLO+A+J
         JmkaJXBR68NuiNE3pM23Zt92+dADzy7ctmu6r8KxzsiMJ5XM02NDgXQCF2NMRwxNA/xp
         C9D0Vzcjnecfydr2UqtibRUFh3o+hi9kWXJxdicRVqPr+kklCxQyzi+eZKp8MmDZTmzM
         zGzA==
X-Forwarded-Encrypted: i=1; AKwUvBxh3zivNcE954YceS7HD1DqwiSJEJeV/otrms+Rws0UVNJ2rqai3s2Y0aorSLNgLFRCzmYnAO+ZNIo=@lists.infradead.org
X-Gm-Message-State: AFq9FYKQJ3WzBVCIf1JKKQJqG1YdbdPOk2r0IxIDJbKfltDwpXR9se+6
	K6fEyxQoOCSpPl6RVqjBas/fwMw738804ad1s2OegFAAU4+Rd31wX6km
X-Gm-Gg: AYBFou1NWuJW9IJp7zjjoaoBRVsk/Pt6b6rIr+uyjIBOZ6uSq7rp1hBo0GDQXwa590z
	zsESA7K3IrWmesn/L1k6arD+zhmLJoflh6YstoeWlJEV4CnIqrppY8DRBASSq2fruTtrcjhdAKE
	DaM5Ecm/SX/fUPoGe44ke+38/z+s60nyUyHKK1nRZUO+xJ7945iLAO6d6vVZkTm+u0Sn3rQdY3/
	HwP/eSTF4b7Rkr2vF/zmgqRci4t9JCSH2+8BLwROEUf9ZpF9WxrTUOFCdCSFGo2Ehq60/1LSD6J
	OPaw2uy0WxO1OerVa/yODOWpX13uyUC+NHGSvgy5S6EfE9pNBtNlxCT8RELzO9ylBZE9D3VQMJ8
	NPobP5TTg9RqnCHxUlEYtgEFSlShzxjlxsqv9KWYNjqNyGuFo7snSkDN3IeLoOOqSc1/HhTGM4k
	QHLdrbW5wYnnHyFj9twF9WjyqhMFYrNk82Prsn/xyLtv0//N2G5Itm/xgUDS7BoNkI02lC
X-Received: by 2002:a17:90a:6c90:b0:3a6:d94d:e147 with SMTP id 98e67ed59e1d1-3a6d94de194mr3494292a91.15.1791238364547;
        Mon, 05 Oct 2026 15:12:44 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a8533aba95sm1719425a91.2.2026.10.05.15.12.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 15:12:43 -0700 (PDT)
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
Subject: [PATCH v10 0/2] phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568
Date: Tue,  6 Oct 2026 06:12:27 +0800
Message-ID: <20261005221229.1095843-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_151245_817651_6969C26B 
X-CRM114-Status: UNSURE (   9.25  )
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

This is the PHY part split out from the v10 RK3568 SGMII series. No code
changes, only re-sent separately to linux-phy as suggested by Vinod and
Jakub.

On RK3568, the SGMII interface can be routed to either GMAC0 or GMAC1 via
the GRF register pipe_sgmii_mac_sel. Patch 1 documents the
"rockchip,sgmii-mac-sel" DT property, patch 2 adds the driver support.

From the RK3568 TRM (Part1, Page 229), PIPE_GRF_XPCS_CON0 bit 1
(pipe_sgmii_mac_sel) is defined as:

    0: SGMII routed to GMAC0
    1: SGMII routed to GMAC1

The hardware reset value is 1 (GMAC1). If the property is set to 0, the
driver routes SGMII to GMAC0; if set to 1 (or omitted), it remains at
GMAC1. This is necessary for boards such as the Ariaboard Photonicat,
which uses the SGMII interface connected to GMAC0.

The DTS changes using this property are sent separately to
Heiko/linux-rockchip, and the net-next parts (XPCS glue, dwmac-rk SGMII
support) are sent separately to net-next. There is no hard build
dependency; the pieces can converge during the merge window.
---
Coia Prant (2):
  dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel
    property
  phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568

 .../bindings/phy/phy-rockchip-naneng-combphy.yaml   | 13 +++++++++++++
 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c  |  8 ++++++++
 2 files changed, 21 insertions(+)

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
