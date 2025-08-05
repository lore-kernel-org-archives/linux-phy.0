Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A43ECC87FCB
	for <linux-phy@archiver.kernel.org>; Tue,  5 Aug 2025 12:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g7kEMgvpAugN/hJpJyg2cx9UZIFjs6BMuQae1DAfoyE=; b=taigdoHVNMUEqe
	ZBrWboiQMfzCqG5LxPEyIKxqL2AXDDfCSfaUtvgmLLe8/3kwlIvi05aQmboHYzZX42cCVpDYus/jP
	/6jzYM2XEa5zjUqKl+Md8ICG09mj4uGm/Xh7kj47M5jrXS//xnrdR4puba0cDjcsmj1rXHL3/g8DV
	p1NhD8K7Bj3j5CpVGZshXE5b6SsilnhZhmm7mHKscqrWxAXynEfjmGYP/SMJIZ4SUYgPvofiY4q/8
	aM/IDUgsjlXHz3eYKMgzDLKuLeZNpgFh1oq11i95T+xMTgv2bXV0clbZsM4RPgQJ5Ae3yJhaTATOI
	9Cw4q/8IWue6L7Uci1aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujH01-0000000Ck52-1oOJ;
	Tue, 05 Aug 2025 12:42:37 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujGjY-0000000ChXP-2FkD
	for linux-phy@lists.infradead.org;
	Tue, 05 Aug 2025 12:25:37 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-45994a72356so20206985e9.0
        for <linux-phy@lists.infradead.org>; Tue, 05 Aug 2025 05:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754396735; x=1755001535; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AFgnKTTcacfgtFENVc4euXqwKnsP+ux58EnsqBigpsk=;
        b=KRRnMsl6FSvKLxg4Jxeq8zFwb5h2cxM5HQeLRwUfXzVZcoJ0ghMKis9A/FLlXmDEhA
         svkTftbqaVJbd6362nXHnQWqVUH/nZ/2X+KTECh0SmuDhPYSrE0vzO2GEeHap56Ops2A
         PVYITkYmNROcJLns4tpx0E7z3nrPeDBRI0Zxvpowf3YQhIxAnG23eGYX/8dL6mCGsKtt
         /R4wi8sxEu/L+z01MXhmEU2P1igbSQJVjl/HkGDEulkt/r1bLFcOKTsRYcvmlOgKKqZT
         /yBJOZUampCds0XIN7DBSyG+s76VotI6/WEpJ5vqtH2zNyee+zK1wWLnQgOouc5P58sR
         Owow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754396735; x=1755001535;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AFgnKTTcacfgtFENVc4euXqwKnsP+ux58EnsqBigpsk=;
        b=npjkXg0LIHGdfmMUW9OqaETCGFbYG+kqNq6ZXB1viCrp6gzhV69G4Oep14FnMzQX3L
         0P+6Kaef1HDwGN2IvDT9IfilMBvWuBk2OrpfEbPYywxE7+GHu2AcVQZMjqJ3X4Bgjt0s
         RMLYrKZZb81a/BB9IomF7dMsQZwXqJQBIoIT1T8durevTcMA6yvhIRTH9eNEd7/azqpS
         y33OmKdCkr0Zk+uqRFcM+1WbDYi7Ew2Gs5toFYapJbY75jcoEMrYSEEyc+N715TU5W/J
         OzLsmCf3+PteAv1lZzjZlmYOVGEDJme7Q9lSmpl8RHbCun8jY+PKQP1SygOl3TXgxDLg
         muNQ==
X-Gm-Message-State: AOJu0Yw+uVQfNkTEwdarTD72v7AY2i7LM+88s9ZCMnqG6MlWNt3j26om
	g1GAEVWDhLZAuwDUrjp7oWEUJb/lIdm8ikqbhHsq696II/sBQd9C2bTs2f5epFRL
X-Gm-Gg: ASbGncvoQtvnKmrgfKuvWn4+yTPutChiw+Tnh/bF5AL9T4RkLOYVyxEevNM+gE0WI8s
	3ynsR1HM/cgSF4+HDWui5lgSNR9XBmmRv0QjZEgiYunUG0T418jnybZssV1oTMpXrykUhUCPgD1
	5ou5xHtvvtAP6To6KjrYrIsqsJtQU0Qc15ICOkURHkE6Ju0eYfidZZ4YwDavc7vngvdhK8eW3/y
	ntgt+izIsrGgztK8DbYBNW3ouMGcq/qcXl+0YF6yEJajfpSn1qCA90iIAnHBJgJCQ2oAmq7KR7a
	gLG/LJz5B1BdRe8hADx02i6Kz5OcXbo6RmgIOaKZeQzBCOh1PtWi6TC+lPoNz+8kYqjyL18e5Hw
	r7NLSXq58AOjdEubp2UEskdSBqUXv74YFsSUpm6K7AzhKQiAYhFI7hFY6AC2sdVJndCUThskgvA
	==
X-Google-Smtp-Source: AGHT+IFEGw1CHadqvXbX6GX6JyCURI52lepQZvMXWJsDZT97GUGuE4XpzqXRH8JUHpBDDocW9IRvQg==
X-Received: by 2002:a05:600c:6748:b0:456:1d06:f37d with SMTP id 5b1f17b1804b1-459e0d12436mr30203585e9.16.1754396734514;
        Tue, 05 Aug 2025 05:25:34 -0700 (PDT)
Received: from iku.Home (97e54365.skybroadband.com. [151.229.67.101])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c48a05bsm19153986f8f.69.2025.08.05.05.25.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 05:25:33 -0700 (PDT)
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
Subject: [PATCH 0/5] Add USB2 PHY support for RZ/T2H and RZ/N2H SoCs
Date: Tue,  5 Aug 2025 13:25:24 +0100
Message-ID: <20250805122529.2566580-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_052536_582615_03FC799A 
X-CRM114-Status: UNSURE (   9.76  )
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

Hi All,

This patch series adds support for the USB2 PHY on the Renesas RZ/T2H
and RZ/N2H SoCs. The USB2 PHY driver has been updated to handle
differences in clocking, reset handling, and register configurations
specific to these SoCs.

Cheers,
Prabhakar

Lad Prabhakar (5):
  dt-bindings: phy: renesas,usb2-phy: Add RZ/T2H and RZ/N2H support
  phy: renesas: rcar-gen3-usb2: Store drvdata pointer in channel
  phy: renesas: rcar-gen3-usb2: Allow SoC-specific OBINT bits via
    phy_data
  phy: renesas: rcar-gen3-usb2: Add support for RZ/T2H SoC
  phy: renesas: rcar-gen3-usb2: Move debug print after register value is
    updated

 .../bindings/phy/renesas,usb2-phy.yaml        |  17 +++
 drivers/phy/renesas/phy-rcar-gen3-usb2.c      | 127 ++++++++++++++----
 2 files changed, 115 insertions(+), 29 deletions(-)

-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
