Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9968C87FDA
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 21:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nO08QsG82PoT9MMW53jjr0XKayMjzLqcP7ew44ttud8=; b=X13dEfXt85jr93
	K9WaYsNKhDhyKP/xpedPSSVG1BRrzJybNgIhL0KoingqyKnsNto1L8q9OlNUY+PBWEU5z/s9vB+2V
	KpnEdIFuPLntKUDxCnULHMc3ixTdQt/IK3Ew/W7mMBc1bDqlBmVqgToQZb4KSqmhtPpXEF/j2L8uO
	P5L9qfemBF50t5E5yRRzI/lQemo7piv7wOFwfUjAhNqJ1KEA7a/1aQ0QA0bFqgYbJciwDVek9LaiT
	1Jwg9zAMQIZpp9PPJxYl6uug2qM/HlyznwNUq12tndKwQ7tOXMyxUpw6n6hJuN+CPlkqEcMJ38d+U
	3so4NXyvVcJQGKlCAEQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukV0d-00000003kd6-0dCn;
	Fri, 08 Aug 2025 21:52:19 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukV0b-00000003kcU-0hUf
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 21:52:18 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-3b780bdda21so1960426f8f.3
        for <linux-phy@lists.infradead.org>; Fri, 08 Aug 2025 14:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754689935; x=1755294735; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HVP02hbYW/vVTkcNkglWVxJaQ42iTr0teA7c4lN/Vig=;
        b=bFqj9rCQN9ijBGSQ4kGpbNvHjIxK0e7JjXQydpifkyQc35W97kbIh4afUfmwCbBZD5
         4tdjLEcxoWF9JW8HqYvmN8zuILEbqWqkkz6wCMYLJlBLjAiffvVAA9dYKUXzfvQNJzqo
         sFRT836C4HqGpWLycHHQAAy2cmetFwvltiSliqI8Z2dgCp7QAS/oGHJQJvvYeC9ZL/bU
         0EjuPkuKr/WDFoU9VWnkxPYBgU2h6mSqVgSJ/eJOsuCOMyzKgkPjbfpjCSF2kmbv8vN5
         oaFUWZ/ppudX7/QjjEnmjL3McE3NdiHNoKa5WljFLrt6GcyOBqPHGXAKFh6vfMcbvez0
         f4/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754689935; x=1755294735;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HVP02hbYW/vVTkcNkglWVxJaQ42iTr0teA7c4lN/Vig=;
        b=SA3oWsLNNNoK+NeqeQi+Xo5/wY5ZuZsrQJ6CFZRgkBx6GPAbARNpU2TUCRYd/s4F/k
         C0Yw18nHDcP393UNyHqBVsqsUXAWFkgK/typQ4r1EF4fS1xFLoIoWY9TSzgR+bo0I2lq
         J/EK7kd501fzf3CLHZ+NEdS6InzRaXMj/NNxMma1zUziuerzQoAcYJJBZRqnMOOhUo/9
         9el7bTofl6PuL+IjIn/4SJ3N12cmNebaZ2+4nxuSbiAwvjYyU5vFY8yjaYtp/+kjONbm
         +1sKjYhWj/kiPqKKaP0rBIXaSkcgZUnL2fFF1X/nspgzwv2YKTM7LKgYN5bIkyhwmmKb
         TRaw==
X-Gm-Message-State: AOJu0YxhTvdrlKU0gtEu3EpMtnsa+e96jyGOOnf1OUzSYK7dI4I665q6
	PAXnGhRuLSPPXdMnDjJrgmeDDrB6rP1oDuq2S/TxIkO/5ZrQkG5tGzzT
X-Gm-Gg: ASbGncti+D82Q6UP9wDqUE23JqOop5VVSkA7PV5SIaciw2U/M9KPKnFd7Z9L7E2wQFX
	Piezv9T51u+L0PxIRf67H91R7wXCVQ7y0qzC7XN/f7ZtnMzTCrxpTfDbCp7kcEl+S7whmaiiSQs
	9/9YH/h+4N5j3Y4KrJYGN+jDKGYq48lri3cKjxHPhNkTS0EYXnG+tdhdav0lHFPonAJ8GtzTFc1
	60gRR6tOKyDZL6z6xRQ70SJECdnTsYDPQYoJ2ZADIWefSrUajUd9qsTYw/htNBapzmPFlFptzEa
	VDyIKXUef8FCtxZWpd8sqPMcYsCu5GuREbfrhwpGKJurrcOEvFK49zDD5uQD18Tj/806htIwFpB
	+9SSqCwEeSAVfgmYq416DCBfnHTwwSSMfOjvKrvEndheNBMpUQru9K1HHtiLyTK22hk2QhbnlAK
	tFp58cl1UFqGESpttnNg==
X-Google-Smtp-Source: AGHT+IFLXJG1UWXu64/6QuxEeGQUc9b73CPorwG5UI9KRn7jfc1aE/OitQZkEGs5sNkLYf3q0ttWfw==
X-Received: by 2002:a05:6000:290c:b0:3b7:94a2:87e8 with SMTP id ffacd0b85a97d-3b900b4db70mr3408350f8f.18.1754689934888;
        Fri, 08 Aug 2025 14:52:14 -0700 (PDT)
Received: from iku.example.org (97e54365.skybroadband.com. [151.229.67.101])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b8ff860acbsm5326759f8f.51.2025.08.08.14.52.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Aug 2025 14:52:14 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2 0/5] Add USB2 PHY support for RZ/T2H and RZ/N2H SoCs
Date: Fri,  8 Aug 2025 22:52:04 +0100
Message-ID: <20250808215209.3692744-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_145217_206693_49D78DCF 
X-CRM114-Status: GOOD (  10.43  )
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

Hi All,

This patch series adds support for the USB2 PHY on the Renesas RZ/T2H
and RZ/N2H SoCs. The USB2 PHY driver has been updated to handle
differences in clocking, reset handling, and register configurations
specific to these SoCs.

v1->v2:
- Added Acked-by from Conor for the DT bindings.
- Renamed drvdata to phy_data.
- Updated commit message to clarify the change.
- Dropped local phy_data variable in probe, using channel->phy_data
  directly.
- Included the necessary header files.
- Simplified device/host detection in rcar_gen3_check_id() as suggested
  by Geert.
- Added Reviewed-by from Neil.

Cheers,
Prabhakar

Lad Prabhakar (5):
  dt-bindings: phy: renesas,usb2-phy: Add RZ/T2H and RZ/N2H support
  phy: renesas: rcar-gen3-usb2: store drvdata pointer in channel
  phy: renesas: rcar-gen3-usb2: Allow SoC-specific OBINT bits via
    phy_data
  phy: renesas: rcar-gen3-usb2: Add support for RZ/T2H SoC
  phy: renesas: rcar-gen3-usb2: Move debug print after register value is
    updated

 .../bindings/phy/renesas,usb2-phy.yaml        |  17 +++
 drivers/phy/renesas/phy-rcar-gen3-usb2.c      | 132 +++++++++++++-----
 2 files changed, 115 insertions(+), 34 deletions(-)

-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
