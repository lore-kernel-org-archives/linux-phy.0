Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D99C0CA5FF5
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 22:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cz04sWMs8carhy/sG/UgJegIZbHLjE+GxWJ0kzHMZik=; b=F6HroNn2JEQSVd
	KuESutr6MIMG6mcPsS3khfKre5+9j34sEAKauvcptwKTbUMv94m5LGUvsTY7ogjvCPWqveRiaNRoo
	65aDJ0k6aQyAnmMYv9FMDdUmr1JKOmoaEQwW+zDRPnU8Dw1XMmxg9TDfpf284i2f4PECrpPvYcWi2
	uKssdiaptP2XM62629lxojwY7Uw8hEeCSnrJ+j/BTjL+OjX8e1i9Z/7dJDzAz3rxysKQeaorEjR+V
	GJ+fRC1NZste4snAH43gpp6ULiaUl3rXu6aSrv64Q6JLdF1lTiPXiEMSoGzSGU8xexST5eosk7vDK
	pg/PYgO/5Rpif7boTAAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDrf4-0000000HJ2z-1raf;
	Mon, 05 Oct 2026 22:59:58 +0000
Received: from mail-pj2-x00.google.com ([2607:f8b0:4864:39::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDrf1-0000000HJ1q-2HGx
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 22:59:57 +0000
Received: by mail-pj2-x00.google.com with SMTP id 98e67ed59e1d1-39b2ad83680so335401a91.1
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 15:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791241194; x=1791845994; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=h3ikYaSpRCSX3H8ucJ72hbBucRgUg7rHXJ+trb1hlAM=;
        b=em12/678LbMWtlD5tfCRGFmNxFEBGx5yBIf/up1e+/ARGxU1md4le7tOLPA9KM2dqs
         n1yjTauazVoQJq4ITDCYYaucIQF8DlY1g4A1m23M4MQu2/MEtdwZPtZWBrbwdGfZn01b
         dKaK+A5oQIlGJC78g/PtnkbvU1tIdwRhXo3CcP+TiH/1YqJbtZ/J8I+orQlsu+O4TRH3
         +tb4wwVFZ4QxG2FOLykxnTufYqQEPcLmyZIN9ZzG+QFYpffwh9OiohM3DGFOSK3LTkL7
         G/Z7lRT/vONqDv2By42AW0vUwP8dGTxi3PlmZ0PcVk6TtmNu9GQUqhebAUImAa1HTAks
         Bs+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791241194; x=1791845994;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=h3ikYaSpRCSX3H8ucJ72hbBucRgUg7rHXJ+trb1hlAM=;
        b=OR4voByo1iNzLKUZaLiVegog6fvT4jatJg/CjaT3ZYABy6HQlus7SB9zatFkbYJaLC
         OxGkNoiPjd/qvKEIuYbQcqejXNmPjS0wePXJmB1sF5Gf7EYajVWGIwSd6gm6g4f6NrEN
         0IhIJ+MSOMJfquQFd8VucWrK1qfEf6eh2avk98bGFXU76BjEE7vh5XSBNE+zYDD8174q
         wl+DERdCrZD2weULZ/R+sOBlklNX0IkMRgdcNie2jvWUr+OumqR5MLNVQS+xkzCeIAw5
         MvM2k/aSJOKayURoxp3PbyQrPI099rw8ZanB3YaemXKSATpl3IFFG2jNKjR+6WJd/170
         EB5w==
X-Forwarded-Encrypted: i=1; AKwUvBx/NeMRVKvIczoYqGmjMfzkGTFDZdUQOXD8+lb4GESV6fptT70ohVlBlY3fen+kUHQR7zNkTWJ9fm0=@lists.infradead.org
X-Gm-Message-State: AFq9FYI6w+RBuu+XP0BhE0MmmGEX6rQsxnSGLTvxIqCIrolt3x8uBf/C
	DwGrNdIiACoDkCBypuGGBTHJ8p09L/VotgIf7CmlRu54jEKZbBCEF3Qn
X-Gm-Gg: AYBFou0K0CuOAqurCEe7SPkS7jUJHIsQV9WxqHRaTiUNYca4bs3OZitTDJAz7EXJPA9
	dmcy5T9Zj6h1ka9RIYXn6NFohQfKlEH4I3vhj/Ue0UiJaLD0aDPBeekMxZpb3S4z400RnCFjorV
	iGwVViWoqvmxccOEx7Au+lYWnjtqTs4Mpn9IGMvSCkPe7NyBiQd0c6P1tNjfpfQBvl3U9tOwHmC
	he74+cqcdDVakoQU8CuczjlOdaR0xoeX0mycXmWJLAvgJJYbzPwn7rV02aJDSk8qi5UFS5Pvd/V
	MveypoTDaX9CbaT1rz4SUqKbuMT/WdJHpCYsMvyXDEB9tcmQv5D0wAQf1Oiwbzlg74NwXKED5+b
	qMbQjCIs6o41xKhW1HQg/5CL0AevL0BK0AoPF0vdlEbvM/8MQDaXXKrnPUvCTeVqZoH1XBlzsRZ
	w+icILv2VUYLrbEtkvL3nv+dqsMvP5e2NblWza5xm8k0TDxlcRFcRQaOgyR3THfbBIHTlU
X-Received: by 2002:a05:6a00:94d1:b0:886:3d9e:aac1 with SMTP id d2e1a72fcca58-88af58d4ef9mr10577114b3a.45.1791241194303;
        Mon, 05 Oct 2026 15:59:54 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-88b0b8f5b79sm4183327b3a.15.2026.10.05.15.59.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 15:59:52 -0700 (PDT)
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
Subject: [PATCH v11 0/2] phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568
Date: Tue,  6 Oct 2026 06:59:42 +0800
Message-ID: <20261005225944.1171574-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_155955_621311_16C2681C 
X-CRM114-Status: UNSURE (   9.58  )
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

 .../bindings/phy/phy-rockchip-naneng-combphy.yaml    | 12 ++++++++++++
 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c   |  8 ++++++++
 2 files changed, 20 insertions(+)

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
