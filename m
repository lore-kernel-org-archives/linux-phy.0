Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3EDDC369B2
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 15:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5qMf7q7QZXrMjftDEsd+j08lG/Zq9gmdWQcitQJFO1A=; b=V1aaxFOjgOpFWY
	k5qYz12IQvVP8IcIx8XG0jZ4AGLs1LE1iRaD4bfpO/ARVOyTj5AwXorp7tpz0ProrW9ckyfSshggD
	aptg27L3jXEGSyxDMfVFJHPoqHjsk+S6nwQJOh/RyoHmfLOJr9kBgh7MBsV1h9mTdK5NB+dDJ4Hqg
	UydHwS/5SIaVLp+UJ+6l6JnHFn0YXa/QAeGZ/NvYf+On3XzJuXqVQw7Bqg+Gd7fYJK2mIwkfri8SA
	IvbFgbWIPiTaUygWuQFYYZDr2ARkbZSVRPZ7ZOCm7MkpQ/n6VUO+i4cmBUD98PasO3G8MLYZ4oOst
	dROVfORxcmTYXkfeNM4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4LQz-00000002YnQ-2Rho;
	Mon, 14 Apr 2025 15:09:17 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4LG9-00000002W6a-2Dt9
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 14:58:07 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-39c1efc457bso2895532f8f.2
        for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 07:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744642684; x=1745247484; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9GuDr3OODxOaS6eMA/BRTIN4gXbmYJXN0wNkkvy4ipY=;
        b=kVC3GUGruDts9qIwMP47BYtnx4t0xdJzgeupUoXSE87fE/ABSlR6CXQ5yhUYK5UIls
         i2yhq2jjIMF6PTaaCE4QQYBJ4zxnQUuY2P6+VLtGnCEI90MaVvbya/xFIUo1oQ9tw4Ny
         9fHyJQ3lKihwzm95C6ZPze6+ppUZYnI0vrJ2qCRxudPyunkbia10ClJr3KFV3y2pKDrX
         Ypx0nBDsmnj0fEZxLcB/uZxyYLqJbCrvQIOH0m5KHiBMA7FQOPJ7xWRBUrSOrK3Z8A8Y
         dmp+8k6KrKlsYUIUOrYcK0e1wfgCXqS5QuuASHnovSfDFoStsQd9O1JZiXlih4TdzDNx
         9z7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744642684; x=1745247484;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9GuDr3OODxOaS6eMA/BRTIN4gXbmYJXN0wNkkvy4ipY=;
        b=sx1ydkmniLTXiTz+IEhxcH7a4FwcTT6/hrzC9KVdGBBJSQbH8KoKXg5AF6M82S8kub
         ITc+WWMu+LK+H+J3gXiZruI+G0LzShR7C6fy44bO0MrmhvhMTXndzy76xUs3Gt3EnmUZ
         k7NRWrX7Y4RTIHRbjHewETNsDs6GaDYkfoVy0g3GExZtIWQO0rY22qcUmaZ8DfGBD+N2
         QDDbYC6oRnfk2NJezMjh8Ezu2Ut7WrjR8fD/7fpmMBM+hEdPHcvp2+5OPH+P7YAoKp/V
         moCUniuoPa/McbRGrYydMs17WdODsydfe9Z5wCF5bxeBs5QzVKBc67I44FZoVcbVwWOX
         plWQ==
X-Gm-Message-State: AOJu0Yw3VoGZdC9EN/eor+h+tDs1QQzn7RjVhgiOfTgNiuL1U0jOKJfi
	D+aB3Eh6GbNqBiNfcAtBsubwZXx05BsdqIRBQeHPtE5XP2LZal1p
X-Gm-Gg: ASbGnct0IToZ/9SI7mO/JFAveZLvmk47sbzvcVr/HFtPeTugqzmnT5KyCRsf3blN4oY
	VDr/XKnRGphEtDK7LT+Kle638n7OvTeAHQEe5FNvQuLBy5xiQf53ZWplJF9kAKdDtyXirl+ocYw
	P+uddtqkFHWOyayqL9/9L01M1958v324rD1IPHISOVRWqXv6/2ONC60DTwPFOnqcPwQ1zSku/kl
	fA3GpPtiIM/p9FnhRsdScIJ54gGtjoArRiebz15+dNKEmTjz879aVOc0RzbiyyCXRr9X9TXJ97i
	TlbF4bif/0CpeQbbXVPlu0r7wCnE+FpsFaIN7Jl7b1BECYF/l/Z+0gBXOG/v1gSPkf77hhH/IfE
	=
X-Google-Smtp-Source: AGHT+IGWCwKIq/nNeRQ2UTY6+IOOM2Pu2ytEms5QgF0NEmsOrc8nzRtVMUhcJboDBExAT/971oRTtw==
X-Received: by 2002:a05:6000:220d:b0:39c:e0e:b27a with SMTP id ffacd0b85a97d-39ea5201aefmr10245762f8f.23.1744642683517;
        Mon, 14 Apr 2025 07:58:03 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:eb55:397c:6c6:e937])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae96bdf9sm11067041f8f.22.2025.04.14.07.58.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 07:58:03 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 0/4] Add USB2.0 PHY support for RZ/V2H(P) SoC
Date: Mon, 14 Apr 2025 15:57:25 +0100
Message-ID: <20250414145729.343133-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_075805_582683_AB024553 
X-CRM114-Status: UNSURE (   9.47  )
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

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

This patch series introduces support for the USB2.0 PHY on the
Renesas RZ/V2H(P) SoC. It includes updates to the device tree
bindings and driver implementation.

Best regards,  
Prabhakar  

Lad Prabhakar (4):
  dt-bindings: phy: renesas,usb2-phy: Add clock constraint for RZ/G2L
    family
  dt-bindings: phy: renesas,usb2-phy: Document RZ/V2H(P) SoC
  phy: renesas: phy-rcar-gen3-usb2: Sort compatible entries by SoC part
    number
  phy: renesas: phy-rcar-gen3-usb2: Add USB2.0 PHY support for RZ/V2H(P)

 .../bindings/phy/renesas,usb2-phy.yaml        |  8 +++-
 drivers/phy/renesas/phy-rcar-gen3-usb2.c      | 38 +++++++++++++++++--
 2 files changed, 41 insertions(+), 5 deletions(-)

-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
