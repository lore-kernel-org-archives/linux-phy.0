Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58D47CA5FF0
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 07:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+XgZS8dhOU0Uqc0JgOgfXmd4ZKEueE0/I2YItk0H69Y=; b=jzB2Q4pXVNq0L+
	4tQa8zJZ6cFNmNs2nLIfXB8qBq4vbdzzaRFdq3V16LGhlSQXKxs/X+1GHtFqImd+q1O56jJVkGnHf
	twdyI7g8lDLoQ/tnqceiRE+3Daq1qSnp3hevZ0vZh/ksML2R/zXXn5Htw/7SrCFjeOHpNOWAPXfqx
	O9VgIa3btObQBbhSwH4VvWSiTWg6Tu/Ro5HOg2VF5YuLRNBlI1xL37kXWhIQUs1UWPxuYYM1IR7e7
	LgjyPDFn6nrEG9J7Yn0wbfVUsNrcrgAqB7OHAM3vN9MBBGPrVb8k19mXi8yrYujnqJfSfpnPXIE9v
	07qRRS7xpejTy/VbvbvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDzup-00000000DLR-3xYs;
	Tue, 06 Oct 2026 07:48:47 +0000
Received: from mail-pj2-x01.google.com ([2607:f8b0:4864:39::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDzum-00000000DJP-1P4M
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 07:48:46 +0000
Received: by mail-pj2-x01.google.com with SMTP id d9443c01a7336-2e31e9f035fso9726705ad.1
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 00:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791272923; x=1791877723; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=5FZEAA0Lgtv6ilrYXH3YJyGzw6r/Idq0zYgWK6iHl90=;
        b=oSB0CBW5HxLnx+YoMMMA/b4pud6jytQM1gEGC0Mh/pgE4pPPVcqUMd10dXCqqr4re2
         0uRg+XOu1uvu8E7cDzNJT5n8eUulTe6OO8iz6Of5ljQ9h+8wTdFYfCXhBMbmodw8kEFm
         TXbijUxniIiTeVcBna4W06MTTdk8bMk9AdAN9augU3G/uY1BkUz1/OY/pk2Yr7aSlF9a
         0VIphgOmWFGjbB+OcjtHtNXuxEYrf2IHP+g+UPzJV3uqdG7I+h9q99+tyaSPyQ/vf/M/
         AtWrbNuxg6PlIxJE4XStY/46waMQeBPdxE3TFAkhAFowu5XlhNDhpLhsR23UCqYYbrnv
         H7yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791272923; x=1791877723;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5FZEAA0Lgtv6ilrYXH3YJyGzw6r/Idq0zYgWK6iHl90=;
        b=0R+pnzLvIQqF72SCvEvsfhoZpTq3W6Dic/o9IY2KAC5/jSbAR7qdCqYsJtbPhR9hzn
         laNGEtM+bH1FK3Wwy1DjQICGVnOBa3M+HtTAVcQzap5tBtWJPE4aA15lQX555XUKzUZo
         I4PXZ2wQaruZHoh5KbVAfVyeW4EzridOb/MSu8SvFxqBlccHwVFFTQej3bvvKDjNiL98
         rouTKGjTXC1Ln4kjwAV1FeN9V5Ji9BHZwRce+KBZB7LGOfZ/LHFKGKLipozL0ixQcRBu
         9zEdggzK29Ca6cmwx4/N4FgyimG4Uv56dvtmtgDsBFjkPKcLCrg8RWZn9AtXNjuLayfJ
         nozQ==
X-Forwarded-Encrypted: i=1; AKwUvBy+KcoazBsROpPJA0Avsn9KDk4gRWW2NqCwLtVgClGanxZpIyhH62XQemxG2HiQVo6uq6jZF06g5rQ=@lists.infradead.org
X-Gm-Message-State: AFuF++kgyB0S+FKOQUCxIAdJNRQoL2AerivURBiVX2w2TQh/Nr5cGHA8
	rBsg2g9qlOykir/O18Jl0kwA8DZLNq6O9K9TEPW0nHFN4y1QuULd58QW
X-Gm-Gg: AYBFou10zpYLIoqRfojgmAnxd6bXEsl1gHOSEbV7xS2fEDpoja63RXbouy0n4nS6VrL
	R1MavWRmZ6sTYyhGcEudq/vwbIj9ScfqSyq9wDDLTI42JFhXFn8dgXUv2Ehfx+ZYyMlVtUV84Ol
	waW4Kp5oQSfHi6z/dFU84DXeigsqIiLpBM5e/FMXhKWzUE0Kh57L/CQGsYDqbgxfrRq6Sx14es7
	CjvZ2hRYC6jCw37FFUBmzM8WzByC5lAUXMplE8BITjyss/EmipgTBqKRPR7fAaK2/RhavbShBOL
	dcoYc/ooJ1ZDG/kTXFTGWNQEfg0QUwyMamkL+bA29BRO07L/UMPNOSo9sH0DzW75Dae8cBRYlxe
	UNnFHBvpam3N0KnMK67cSH/4cWwAFHjJFfMFUxXI/WCoYcP1dm082fLgw+HF33ZAmrKW1+utNx4
	F52o+LUozhdMzj60IdybOZ4R2R5Bwidk+Q6zXbnqmfLbeSWdcqKke5hneCskg/HslzVT8V
X-Received: by 2002:a05:6a20:94ca:b0:3dd:85a8:4c56 with SMTP id adf61e73a8af0-3e1246dea5dmr525873637.29.1791272923390;
        Tue, 06 Oct 2026 00:48:43 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cce6d2406b1sm1998173a12.8.2026.10.06.00.48.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2026 00:48:42 -0700 (PDT)
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
Subject: [PATCH v12 0/2] phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568
Date: Tue,  6 Oct 2026 15:47:47 +0800
Message-ID: <20261006074749.2010233-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_004844_399740_3618362D 
X-CRM114-Status: GOOD (  10.27  )
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

Changes since v11:

- Revert changes in v10.

Changes since v10:

- Drop the top-level "default: 1" for "rockchip,sgmii-mac-sel".
  dtschema injects top-level defaults into every matching node, and the
  injected value conflicts with the "else" branch that forbids the
  property on non-RK3568 variants, breaking dtbs_check on those
  platforms. The driver already treats an absent property as 1 (GMAC1),
  so behavior is unchanged.

===

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
