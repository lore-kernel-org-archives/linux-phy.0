Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 046AECA9EBE
	for <linux-phy@archiver.kernel.org>; Sat, 10 Oct 2026 11:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iUHhcBQyu7+iMt3+FOv1CgAdbn2bkXjgzq9nB7gmLbA=; b=MKdeamc+DTBfF2
	L/sPe11GEZJPBhhaOqQt+XGWu9G1wvyXDPTrDCIneVgFw5BrKDri2mFfXNsQbnbg0kKbrtAJkbOa8
	vNbEBmt7BT6IfPW2NEwitaLHkkFTIjm2JF9zxla38Xvh86U7geVZ3043lLoo6HW2d14jlaT5Eov0X
	WC/q5y312RAmcooUICJgbf6Py2KHzgIpMPndxpZTBrVibOn3tsnnmL9icVIlWFaoy6Wn6KE10r9m9
	TkxA8CXxoDGQopbnWNIYFlWSS2WZ7GYMsdfPMODf7OxSloTpZQAMi19nFl84N45WCzSXMRc1e68+5
	GnXhMJOx1Vbuar8rM3fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFVgK-00000007xuF-21mS;
	Sat, 10 Oct 2026 11:56:04 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFVg8-00000007xkX-1TGU
	for linux-phy@lists.infradead.org;
	Sat, 10 Oct 2026 11:55:53 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4a0213948d3so3350285e9.2
        for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 04:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791633348; x=1792238148; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=MUGs28pjyaKV6mm7T8DFRVWF7FBLghSbmcUfgUOr8K0=;
        b=kmJvxMQmFKWxpDcHSAF6UdZF093UsmE55AuTEayv4tcDBQ2iktwezHnsgaJwYo3/Ts
         Qye7SbWM/1JkOMAiH7Gt+eyYnSCMHXhjo5R4Clu/dAbRydeA1Dv5icVp7Aygw9aiaIUr
         GdlrnZ4rnImnvap4JsHr5dW5WWbB3ZwsFm+kOFuLOcRlE6zmzeYtj6RVbI3Z8Q0YKhD1
         zlPKx1jk70y0AATzNiyUOKlN1p8HI0Z3EFnBYZa8lQEAV+RIW5Gnj+7Qk6Gl1VfBKJlD
         /lE/L6uIvPhFm19kFeukBhGovTJ4BZcA4NjJDT2xixVecdDwLKWm15d7gEDDh6eQXcSE
         jUSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791633348; x=1792238148;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MUGs28pjyaKV6mm7T8DFRVWF7FBLghSbmcUfgUOr8K0=;
        b=gORb1PpbWtiZ9CMiL1xWMcoC5WU338EI8boY3bp2u9uKDe4cC4pfVwDgzDKjsIotgv
         RkBg8ddK4PdsUDhPYkehwSc0OMrA/qX+dr6rfr7GBRtzf3XJ7xt2GOsJ37ODNnHW9rUh
         tA6HXIIfiVeEBGFM4lZzbarqUWm0cGE2R1scg552olnzjS8OLm7AqB03iA5K7Zbxr61e
         Dxw7MWmNueFAWI36iYzwwrmD2euGv8nECZuqaf0AsOtmRlH7MKSM8yptQI5r2AEO+nx9
         0Jiyu/LYqMKeiUsV4KPFt7kmLIbQJRLm+tZKPqobTeH4Q1/k3CrFZgCeldxHex0j1xOc
         3ACw==
X-Forwarded-Encrypted: i=1; AKwUvByffGsC17qEossO28ECA45uDZicdVduo6TqisjCW4fskHenMq1FNSyLSXCeuhgmoVq6qQYzXrkvNGY=@lists.infradead.org
X-Gm-Message-State: AFq9FYIBLoES+WWPDImy+ezqSGqTFZBYz0bCQpRlSIFD3FEOrneQ54qQ
	BL47t5wpFUOZ+ZXRjR8PHnOncVGUlh0rve9wQpNj0BQ4Myalm+att8nc
X-Gm-Gg: AYBFou0v8p73cnLZGQ68qS027+3hrjX6EK4+/UP/JJmbH1le+OUtKdEnJqYsnC1IAL8
	NrLACSsTf38etlXttpyEd6CPW03m5z7EnC1dTXATJi+5aQFWk2hCVBTps7tVYQBgDftAbuE4n8S
	UB7Pqc22leOtpJCK/ECXu8ILZtvZHflEkhjA+JOoZra4giHv3v4zW3r+dUwAEZNgovShYQ/ivxf
	tCJJPSyE0Y3oMFumE56D12xFPEyqsoS9crUm/LRA5VCs7n/YaDJlpWD/X5b9CrlxMGxPkawiquE
	KFcvs6BKTQB1ShOdu9W23ShroI8QCp0vya7i428RvlxfqGqQVLNkzBo2NpIgkgDVw9uOMcK5d1I
	96BJZQDY6ec3D0iubiz1YQU5P+lnjlrcq+gk9SNRoDT5Zr3FjeamMe6igouSKU37NrJUd/DrkY9
	CdxSus+FP5uztyKEZej1b2/lps1vE3iFLZ1RPJDud4IDludTFff2JdNjL4rJZe4p+P4MKTkMUt3
	KTCAQ==
X-Received: by 2002:a05:600c:4e01:b0:49f:ce78:3567 with SMTP id 5b1f17b1804b1-4a18e4afc3amr83354515e9.24.1791633348096;
        Sat, 10 Oct 2026 04:55:48 -0700 (PDT)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48db9aca657sm8746340f8f.43.2026.10.10.04.55.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Oct 2026 04:55:47 -0700 (PDT)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney+clk@redhat.com>,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Fabien Parent <fparent@baylibre.com>,
	CK Hu <ck.hu@mediatek.com>,
	chunhui dai <chunhui.dai@mediatek.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH 0/7] Add support for Mediatek mt8167 HDMI display output
Date: Sat, 10 Oct 2026 13:54:00 +0200
Message-ID: <20261010115539.9237-1-l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_045552_506525_F2FD901C 
X-CRM114-Status: GOOD (  17.95  )
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

The MediaTek mt8167 SoC supports HDMI output via a dedicated HDMI PHY
driven by the DPI1 display block.

Support for HDMI output was partially upstreamed in 2021, but is currently
not functional as it's missing its HDMI PHY driver. The HDMI PHY is
apparently similar to the mt2701 one, but some differences in timings and
in the initialization sequence are better expressed with a separate driver.

* Patch 1, 2 add support for the HDMI PHY.

In addition to the HDMI PHY, a few fixes are required here and there to
actually get HDMI output.

* Patch 3: Some of the HDMI registers are mapped into the apmixedsys
  syscon. Since they are manipulated inside the HDMI PHY driver, we change
  the apmixedsys memory map to non exclusive by switching it from
  devm_platform_ioremap_resource to of_iomap. This approach was copied
  from mt8173 apmixedsys syscon.

* Patch 4: Since the DPI1 interface is hardwired to the HDMI PHY, it is
  appropriate for the HDMI PHY to control the DPI1 clocks. There is no
  effect on DPI0 clocks as they're completely separate.

* Patch 5: Some MediaTek SoCs require a supervisor call to enable HDMI
  output. mt8167 is not one of those.

* Patch 6: In the common path for mt2701/mt8167, a register operation that
  is meant to enable the HDMI_PSECUR_EN bit is actually touching some
  other bits that are set by later operations anyway. The patch makes
  more explicit the intent of the operation by setting only the necessary
  bit.

* Patch 7: Adds the device tree nodes to the mt8167 dtsi. Since DPI1
  is hardwired to HDMI it is possible to bind the input port of the HDMI
  node to the output port of DPI1, but the patch that adds the DPI nodes
  to the DTSI [1] has not been picked up yet, so we leave it disconnected
  for now.

The series was tested at all supported resolutions on the Sony PlayStation
Classic Mini.

[1] https://lore.kernel.org/linux-mediatek/20260921113914.779393-5-l.scorcia@gmail.com/

Luca Leonardo Scorcia (7):
  dt-bindings: mediatek: hdmi-phy: Add compatible for mt8167
  phy: mediatek: hdmi: Add support for mt8167
  clk: mediatek: mt8167: Map apmixedsys iomem as shared
  clk: mediatek: mt8167: Correct HDMI-related clock definitions
  drm/mediatek: mtk_hdmi: Set tz_disabled for mt8167
  drm/mediatek: mtk_hdmi: Improve the secure output bit toggle
  arm64: dts: mediatek: mt8167: Add HDMI display nodes

 .../bindings/phy/mediatek,hdmi-phy.yaml       |   1 +
 arch/arm64/boot/dts/mediatek/mt8167.dtsi      |  62 +++++
 drivers/clk/mediatek/clk-mt8167-apmixedsys.c  |  26 ++-
 drivers/clk/mediatek/clk-mt8167.c             |   6 +-
 drivers/gpu/drm/mediatek/mtk_hdmi.c           |   3 +-
 drivers/gpu/drm/mediatek/mtk_hdmi_regs.h      |   1 +
 drivers/phy/mediatek/Makefile                 |   1 +
 drivers/phy/mediatek/phy-mtk-hdmi-mt8167.c    | 217 ++++++++++++++++++
 drivers/phy/mediatek/phy-mtk-hdmi.c           |   3 +
 drivers/phy/mediatek/phy-mtk-hdmi.h           |   1 +
 10 files changed, 314 insertions(+), 7 deletions(-)
 create mode 100644 drivers/phy/mediatek/phy-mtk-hdmi-mt8167.c


base-commit: a90ee4305c4a5df72c11b31dacfdc76e00fcf78a
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
