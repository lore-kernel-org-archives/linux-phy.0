Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6BB0CA9ECA
	for <linux-phy@archiver.kernel.org>; Sun, 11 Oct 2026 08:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x0ysWaIdUn8/TrMsLn98+w+zbqBcwzYFyrU4DXa5GLE=; b=ZyI89sOv6s57PE
	Yk2Cd3zx8Yry43QLRzlfcYDjxLKOhY3Yok5t5Xv6s9ZgWbDCZCaCUln6ili2brhrzSEdggVlt3nzF
	GluM5R3mvCTNepkMtJd6bfW3j9PNyXPhjaCwODVQ9zOTOTm22wqzGqmLmf0dWxsOGTtwgQcvEDWCT
	3pKsZXn91zL6mQcg4RFPmH9u5ZecFr6Zk66cItUGOBiS253YMT+LzXxv3AIlHXZmB8uwGfedR8QxX
	By5eNlbliWAcGu8nFZjrcU5g4qQcLKdruHY9GBLS2c89OoCMOnNYZNNX+oW4C7T0hz/qtbtTgpZgC
	SVL7/Geju47yaQY3pZdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFono-00000008qf2-1Z4m;
	Sun, 11 Oct 2026 08:21:05 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFonk-00000008qcm-0P59
	for linux-phy@lists.infradead.org;
	Sun, 11 Oct 2026 08:21:02 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-49ff680331aso7421895e9.3
        for <linux-phy@lists.infradead.org>; Sun, 11 Oct 2026 01:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791706858; x=1792311658; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Dr49tUUlFxPFnEicxFg6BKjDZLTyIOa8zv4bTCe4eu4=;
        b=SPL9BDbchk8RDvYE0ljtx9f0IO7Qrtk+GEZtWj1sb7SIBNobglQ9zqd/1+5vF/InkX
         rFb4dYLXL+PMxk7QYiHXNsRDZgseNlmpOZbZ8yXmyU88iEjSgouDQIvC4czYMN5OR9g5
         RBrpHW3jNSn0Pyrp249WS+Umph62G9LH0CtQLJ03H12tzYkt+7Y/+1E9AuLBcWjNgT21
         k3mF0fe5DSzsPTJw72ZrWXj97tcTrjUI3hxk4/XeLpLnFqTvNzNk4MmWVgYcdIQDpJgw
         MunvsqIICqGfT3SUavNRc7O4r8t0vOjrn9nyiHHOdYm1GCDZiJ8FyYGKMGddqD/LxH8j
         j7Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791706858; x=1792311658;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Dr49tUUlFxPFnEicxFg6BKjDZLTyIOa8zv4bTCe4eu4=;
        b=winioQ5VBH3rl+eeGmNVYdlsgijwzcEBphbR7tr/HRDXtYGGwKHhxbssGUN+t1sbx7
         uj2X6iwH9wp0U6wqI7uvhHrD1DDPpjULjpnj2xbAkb4FnszMYPl7QSn+BxUnze1339mF
         P9rhC6Hr66q5KypGzvsSNIgOgsZICVx0G7oPHH+teksgml2Ej1RzZbSlJTvx3m8wtfjf
         QXhaCUnXMHxOedG2IZBv5YVqk+fPIiG96+mfng+u51N0FgJoJCw8mps6dZmVAT18vKPE
         dAAifNHOs/qk6st1c5TJJINLud0mMg3YHSmZkpE/E8EdPl2C+ZETFOjs/9atvYp9EqrS
         NG8Q==
X-Forwarded-Encrypted: i=1; AKwUvBx8rKHFk9n9RC570vX+KnhXAdk24yVPDvDjzjuBTU0yrrrfcMyOhukoCRLtnchcs8pwQGe/OMPEA7o=@lists.infradead.org
X-Gm-Message-State: AFq9FYIvI00hMuG32qfSgECN4zEicQ6BqO3CArF/5r3erf+83HkqU7Qs
	+LzXA/SF5shXt270pzofZl4fIxueJRKMmSZ9xw8MFzRq1XginR3jEst/
X-Gm-Gg: AYBFou0AqwDSzz/74lqboG1My2HaQPJhw1Bk/T1lZRInAXKZMUfIJlaERQdtCJlqWvp
	dTjRC/SJBXmNoMc8WxQL0YPxOnlrQP6ECIiIHu8787CLVRuNkoliHtYeDgRPIGF2pVUHY0JRtlc
	Tbd5yl9IAw22dHBmtO+cUui2OzjKL9oTTiS9RowMo6N54F1mWENIWAH3XgtmL2xXctn9+m/gT4D
	E48YBe058eNf7szkLAbvz7fCSFsQylMimYCly11W+nYBWfWmlme4s4KuoANacDB8BwZH2Tm/UgX
	vyJF0uHVSCR8bZHyzj23g/SdbVqISBVbVHXhYkUseqJynJch0IO+rYhTTMe31Edu/PqOCfTApGM
	6wGgN2aSiF4HKhMqI6OFbXY90JXkLlJXI+qA/9d3b4g9ZaUPN2zUNdQGYPqYAuaFHToWu88VeS9
	QqYY3nJ4cIlKyaUf4kFJIxr0xNJDa/vs11eaaugY/1rjdL7I4T6AjsKW1m8HqYKF2hbsY=
X-Received: by 2002:a05:600c:4708:b0:49d:15b9:2a2a with SMTP id 5b1f17b1804b1-4a18e47a8a5mr126204925e9.10.1791706857720;
        Sun, 11 Oct 2026 01:20:57 -0700 (PDT)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a195002123sm152063175e9.1.2026.10.11.01.20.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Oct 2026 01:20:57 -0700 (PDT)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 0/1] phy: mediatek: phy-mtk-hdmi: Use regmap to manipulate hdmi registers
Date: Sun, 11 Oct 2026 10:20:30 +0200
Message-ID: <20261011082042.348422-1-l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261011_012100_906803_63C8F0B9 
X-CRM114-Status: GOOD (  15.04  )
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

While working on MediaTek mt8167 HDMI support I noticed that on some SoCs
like mt8167 and mt8173 the registers used by HDMI PHY are actually inside
the memory space mapped by the apmixedsys driver. On mt8173 this driver
maps its memory using of_iomap, while on mt8167 it currently uses
devm_platform_ioremap_resource. The current phy_hdmi_mtk uses
devm_platform_ioremap_resource too, which causes a conflict between the
two at probe:

hdmi-phy: error -EBUSY: can't request region for resource
[mem 0x10018300-0x1001831f]

In patch [1] I initially proposed to use the same approach of mt8173
in mt8167 too. While working Sashiko correctly pointed out that it never
unmaps its memory during remove [2], even on mt8173. It is of course
possible to add code for that, but it would mean creating a dedicated
drvdata structure, and it seems a little invasive. Using the devm_*
functions is certainly cleaner.

This patch goes in the opposite direction - it converts all register
access for mtk hdmi phy to the regmap_* functions and obtains the regmap
using device_node_to_regmap, which internally uses iomap and does not
trigger the conflict. This way memory can still be managed by the
apmixedsys driver using the devm_* and the HDMI phy only gets a regmap.

This patch has been tested on mt8167 only. Unfortunately I have no devices
with the other SoCs that are touched by this refactoring, so I am sending
it as a RFC to gather feedback from more experienced kernel devs.

[1] https://lore.kernel.org/linux-mediatek/20261010115539.9237-4-l.scorcia@gmail.com/T/#u
[2] https://sashiko.dev/#/patchset/20261010115539.9237-1-l.scorcia%40gmail.com

Luca Leonardo Scorcia (1):
  phy: mediatek: phy-mtk-hdmi: Use regmap to manipulate hdmi registers

 drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c | 145 ++++++++--------
 drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c | 133 +++++++--------
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c | 185 ++++++++++-----------
 drivers/phy/mediatek/phy-mtk-hdmi.c        |   2 +-
 drivers/phy/mediatek/phy-mtk-hdmi.h        |   3 +-
 5 files changed, 235 insertions(+), 233 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
