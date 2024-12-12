Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 830B0E7717F
	for <linux-phy@archiver.kernel.org>; Thu, 12 Dec 2024 20:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4DfdveI/s3uzTPJc1EuXOasri27pB+91pVJ0iTk0LZs=; b=R0buYr7LIfh6PG
	2k6I7777LxqQr5Qk9lt2HIHgUo6avkkQlxAGhOlh+VdKMRit1GcoVFnZefZEq+xN99P2sCe19H01A
	+JyA01TEcOoLH2Q0h4aZl5PJ2dGCROMuX1j7eQbSxBfPHU9D3FG77hwD5PstAhf7ehk1k7JDeJX3n
	51qNSWEMAMMtE6wkMqq1Jd+JPed/H8V2JK3At+kcMA8keca7dvHBNyA2Nkj+oHuk3TjEaxBlaZWRJ
	2igwQwx2816gHvSlyG6trceASy2JH8js6/h5BV97bWquX8XVX7qowGvwSi76KxpJcwyCIm7NvoRar
	+c80xZiD8QYgW9VdVTHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLpRq-00000001kGH-0pgH;
	Thu, 12 Dec 2024 20:06:10 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLpPh-00000001jhu-27nl;
	Thu, 12 Dec 2024 20:03:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734033834;
	bh=We3n0PcQgQ/L53EcqqJ1cCr0rCKgBkm9F+OgNX+wSb0=;
	h=From:Subject:Date:To:Cc:From;
	b=eJAOipmTuuhK/VV+SEIjQsi0iv9Gz8FsK8EXAAMg+QgIAp+3g+MX2emb5U1sluCUe
	 EN/fhKwvQlCQF55uIpdGou8H08B8z4vpNZVgXcgWKxwwYM3YMrM+I1fY/OvLBykyiN
	 z9gjoGjUONcDNHFWKT7b9NtSpsoT7jPOsBkgaPQAYvoFU6pPLZDI3cormnBrwlJbgj
	 /MpMpJ/WBQNDEu5EQWpIWnYxWvw8JPc3gWxVaJvT5SYRUNGJCfzQYhnPO81Iz3634k
	 YYMr+KSu5ANMfTAVGY6NHTAFnsJqNRjiXSAVEw4rR6mWL5UTkiRnSI/9SFMRSJ9D+9
	 8iv8pCySoW+6w==
Received: from localhost (unknown [188.27.48.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7A85117E37F6;
	Thu, 12 Dec 2024 21:03:54 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v2 0/8] phy: rockchip: samsung-hdptx: Support high color
 depth management
Date: Thu, 12 Dec 2024 22:03:31 +0200
Message-Id: <20241212-phy-sam-hdptx-bpc-v2-0-57e672c7c7c4@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJNBW2cC/22NywqDMBQFf0XuurfEaBPaVf+juMjLJqAmJBIUy
 b83FbrrcgbOnAOSic4keDQHRJNdcn6pQC8NKCuWt0GnKwMltG8pYRjsjknMaHVYN5RBYSfJTTH
 K2ag51F2IZnTb2XwNla1Lq4/7eZHbr/3V+J9abpEg6RQ1vWaa3/lT+WkS0kdxVX6GoZTyAbJEm
 Uq2AAAA
X-Change-ID: 20241206-phy-sam-hdptx-bpc-3b05c6276fd7
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: Algea Cao <algea.cao@rock-chips.com>, Sandor Yu <Sandor.yu@nxp.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_120357_704335_81FA52F3 
X-CRM114-Status: UNSURE (   6.10  )
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

This series relies on the new HDMI PHY configuration options [1] (patch
included here for convenience) to provide high color depth management
for rockchip-samsung-hdptx, and to introduce a proper solution to setup
the TMDS character rate on this PHY.

[1] https://lore.kernel.org/all/43757beec6cd418fc17252283de38009d531c7c7.1732627815.git.Sandor.yu@nxp.com/

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Changes in v2:
- Added new patches providing a bug fix and several driver cleanups and
  improvements
- Link to v1: https://lore.kernel.org/r/20241207-phy-sam-hdptx-bpc-v1-0-03c2e4d6d797@collabora.com

---
Cristian Ciocaltea (7):
      phy: hdmi: Add color depth configuration
      phy: rockchip: samsung-hdptx: Fix clock ratio setup
      phy: rockchip: samsung-hdptx: Drop unused lcpll_config
      phy: rockchip: samsung-hdptx: Setup TMDS char rate via phy_configure_opts_hdmi
      phy: rockchip: samsung-hdptx: Add high color depth management
      phy: rockchip: samsung-hdptx: Cleanup internal rate handling
      phy: rockchip: samsung-hdptx: Avoid Hz-hHz unit conversion overhead

Sandor Yu (1):
      phy: Add HDMI configuration options

 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 169 ++++++++++++----------
 include/linux/phy/phy-hdmi.h                      |  21 +++
 include/linux/phy/phy.h                           |   7 +-
 3 files changed, 118 insertions(+), 79 deletions(-)
---
base-commit: 40384c840ea1944d7c5a392e8975ed088ecf0b37
change-id: 20241206-phy-sam-hdptx-bpc-3b05c6276fd7


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
