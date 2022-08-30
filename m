Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B68C0C0502C
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 12:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9FFkxZ3VK6pzCb+3Ok9wXchLv/AohDZoWaKT7z4lmD0=; b=s+1kjFHi6Cx6mG
	9nF2lIi2pzWZZb4IhWbA2DEwL7w0Cgw7eIz9X2haD5sI7eydk7rdXVNKbhawGoamfi+1PdwP1ccri
	75+sKxgX4/h83l4XWxK7anA7fxD/B1OcTTeVAKGSl9uwBgZEkJl5O1ls0cBzFsdlD1TumOHjmEKF6
	6dY2S1SnMG0syJgUqk6YoUFdkXoBeH5ZBZSnXxZO7sE/zKXNBfAbvTRuSN/fCE3SnSy8qR6cw/7YX
	8tpGMiAw3S1mBhzV/OyMVOGibhi1TzT41j+5AmBisChw7RR7+ndsvwClx3rynBvZRsO2qFGI7NWIU
	Xl4NHdu1sSJAH1WgOw5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT0SR-00GrId-1y; Tue, 30 Aug 2022 12:35:07 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRS-00GZVC-5E
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 11:30:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8AA636155D;
	Tue, 30 Aug 2022 11:30:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C941CC4347C;
	Tue, 30 Aug 2022 11:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661858999;
	bh=1xLqX4IZAgNYnC4h10WjJw6PlukikNFYKog3HwdWdDM=;
	h=From:To:Cc:Subject:Date:From;
	b=RAo042DFSY5REyFDd6pGeOPdJAPUXxbTgfnMCpejt+lV5oKgFcPTfrgyP/yI8eNkv
	 FW3lPw+jvjEWDyiIUwXliYqmH7ZPTSi4GF45lXUloWfhAZzXGol+/9A2dBKfuOSjiX
	 38YlKJu9t8SjzxQMpwLo9+WMbcTzF/CLUNECEPk299TLZh0VfB3xwb16J9OiRUaO5o
	 df40iErnbvip+clMNIE12Vmjs8K/qlhJjKgh0I4/R3wDrZ6elLrr9LfZD2dggsSpfJ
	 nWb9oiZ1euphycUvxzprcAyehDXLvgFmwL8RD1hLdm9ZgftlcmnGl3f1y+qIW4LIa6
	 B97R9LCXNy4wg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oSzRM-0000zn-47; Tue, 30 Aug 2022 13:29:56 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v4 00/30] phy: qcom,qmp: fix dt-bindings and deprecate lane suffix
Date: Tue, 30 Aug 2022 13:28:53 +0200
Message-Id: <20220830112923.3725-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_043002_389146_8E80C61F 
X-CRM114-Status: GOOD (  17.80  )
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

When adding support for SC8280XP to the QMP PHY driver I noticed that
the PHY provider child node was not described by the current DT schema.

The SC8280XP PHYs also need a second fixed-divider PIPE clock
("pipediv2") and I didn't want to have to add a bogus "lane" suffix to
the clock name just to match the current "pipe0" name so I decided to
deprecate the unnecessary suffix in the current binding instead.

To be able to add the missing child-node schema and handle device
specifics like additional PIPE clocks, it quickly became obvious that
the binding needs to be split up.

This series clean up and fixes some issue with the current schema before
splitting it up in separate schemas for PCIe, UFS and USB and adding
missing parts like the child PHY provider nodes.

The MSM8996 PCIe PHY gets its own schema as this is the only non-combo
PHY that actually provides more than one PHY per IP block. Note that the
"lane" suffix is still unnecessary and misleading.

The final patches add support for the updated binding to the (recently
split up) PHY drivers. Included is also a related combo PHY cleanup.

Johan


Changes in v4
 - rebase on phy/next from 2022-08-30 (71351b0e5646 ("phy: move from
   strlcpy with unused retval to strscpy")) which included a new
   sc8280xp USB PHY binding
 - add more tags from Krzysztof and Dmitry

Changes in v3
 - rebase on linux-next which has a new binding for IPQ8074
 - fix git-bisect breakage due to removal of an unused variable one
   patch too soon (Krzysztof)
 - replace one Fixes tag with reference in commit message (Krzysztof)
 - drop two redundant minItems (Krzysztof)
 - fix two Fixes tags that lacked the actual tag
 - add more ack and review tags from Krzysztof

Changes in v2
 - squash split + cleanup + example patches (Krzysztof)
 - deprecate clock-names instead of dropping suffix (Krzysztof)
 - deprecate reset-names instead of dropping suffix (Krzysztof)
 - flatten child reg if/then schemas (Krzysztof)
 - add back optional vddp-ref-clk to all bindings even though it likely
   only applies to MSM8996/98 UFS (Krzysztof)
 - add missing sc7180 schema to USB binding
 - misc clean ups
   - shorten or drop descriptions
   - drop quotes around $id and $schema (Krzysztof)
   - use maxItems with clock-output-names
   - combine two USB clock+reset schemas
 - add Reviewed-by/Acked-by tags


Johan Hovold (30):
  dt-bindings: phy: qcom,qmp: fix bogus clock-cells property
  dt-bindings: phy: qcom,qmp: sort compatible strings
  dt-bindings: phy: qcom,qmp: drop redundant descriptions
  dt-bindings: phy: qcom,qmp: fix child node description
  dt-bindings: phy: qcom,qmp: clean up descriptions
  dt-bindings: phy: qcom,qmp: clean up example
  dt-bindings: phy: qcom,qmp: drop child-node comment
  dt-bindings: phy: add qcom,msm8996-qmp-pcie-phy schema
  dt-bindings: phy: qcom,msm8996-qmp-pcie: add missing child node schema
  dt-bindings: phy: qcom,msm8996-qmp-pcie: deprecate PIPE clock names
  dt-bindings: phy: qcom,msm8996-qmp-pcie: deprecate reset names
  dt-bindings: phy: add QMP PCIe PHY schema
  dt-bindings: phy: qcom,qmp-pcie: add missing child node schema
  dt-bindings: phy: qcom,qmp-pcie: deprecate PIPE clock name
  dt-bindings: phy: add QMP UFS PHY schema
  dt-bindings: phy: qcom,qmp-ufs: add missing SM8450 clock
  dt-bindings: phy: qcom,qmp-ufs: add missing SM8150 power domain
  dt-bindings: phy: qcom,qmp-ufs: add missing child node schema
  dt-bindings: phy: add QMP USB PHY schema
  dt-bindings: phy: qcom,qmp-usb: add missing child node schema
  dt-bindings: phy: qcom,qmp-usb: deprecate PIPE clock name
  dt-bindings: phy: qcom,qmp-usb: add missing qcom,sc7180-qmp-usb3-phy
    schema
  dt-bindings: phy: qcom,qmp-usb3-dp: fix bogus clock-cells property
  dt-bindings: phy: qcom,qmp-usb3-dp: deprecate USB PIPE clock name
  phy: qcom-qmp-pcie: drop pipe clock lane suffix
  phy: qcom-qmp-combo: drop unused lane reset
  phy: qcom-qmp-combo: drop pipe clock lane suffix
  phy: qcom-qmp-pcie-msm8996: drop pipe clock lane suffix
  phy: qcom-qmp-pcie-msm8996: drop reset lane suffix
  phy: qcom-qmp-usb: drop pipe clock lane suffix

 .../phy/qcom,msm8996-qmp-pcie-phy.yaml        | 189 +++++++
 .../bindings/phy/qcom,qmp-pcie-phy.yaml       | 296 ++++++++++
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml | 504 ------------------
 .../bindings/phy/qcom,qmp-ufs-phy.yaml        | 239 +++++++++
 .../bindings/phy/qcom,qmp-usb-phy.yaml        | 388 ++++++++++++++
 .../bindings/phy/qcom,qmp-usb3-dp-phy.yaml    |   8 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     |   6 +-
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  |   8 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      |   4 +-
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |   4 +-
 10 files changed, 1118 insertions(+), 528 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
