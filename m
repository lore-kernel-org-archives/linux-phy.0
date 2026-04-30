Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2A77FF887E
	for <linux-phy@archiver.kernel.org>; Thu, 30 Apr 2026 02:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sSTqPUoNfpz90wdSxoaT+QQyU5zK0HwERaTYuGHt6Xg=; b=D+6FKCxKFY5uE7
	fyoo5NCCYfglQA2bvfxMqmHzlKr55aibEPWO/QxA1dMGGffRBTXqdtqH2WVo/Y5kvsgyvJRQxCA+V
	u09NcAFOpmUp/YKy21c3JzqIAWJz6whGmGmyoRTtaztyKM0Wji3URRSZa2O7JZrqgK8KAq2rj/Qwx
	yGF5Gt0NCTeA8LE1uP3rKrmzNpmpLEAiihVEE+REncgbw6k+ZgN4M/5AbEhTuhTXQNaoo5ssYFd8G
	huYmoMpcMev3PQrCYAFiur7w5Le5FK8ZxMxxheLCdUMjzh8sbyMVUuXaFOSReOVdyZIG+GYp6ft/+
	1NUBzoKUo2WzFIwwYQlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIH99-00000004SC6-29Yk;
	Thu, 30 Apr 2026 02:28:59 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIH96-00000004SBP-3Ehl
	for linux-phy@lists.infradead.org;
	Thu, 30 Apr 2026 02:28:57 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-35fbca04006so170170a91.1
        for <linux-phy@lists.infradead.org>; Wed, 29 Apr 2026 19:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777516135; x=1778120935; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fvKNB8FFlV6JIJdaaGCkRo0LW6S72vZF1V6svTAMliY=;
        b=WMnuvEsf/Avh9BH9LusqEqiLgCYko03fqTV5sKhfG2Nw4O/mLVL7RzL9nGngPtlcWS
         KDpdSq/9+qnDTDdQ8jJvxJqTpL9YMPgYhNhIprf3+J9RLL9FrW4hFQM/yNmaROHfke8r
         ZgHE4InFNv7KN0jimvsFJ55ZljfmRXPwVmoeyJC78KjbliOSLQx44LNRrmdXwwHcHDQM
         hi0U89rCGCGoMeqNRcdsr9g+myLqBKZ6p7cBbWhnZNSQFkV5HDapg53kDW1u2H3YCQfo
         dxAGTIRqQlWcBiROSFd6Eiy0t+Ljbb9eUa9K1J70Q1ahe34oEZ+BWOOLGbV/DkUwzBrQ
         ptOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777516135; x=1778120935;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fvKNB8FFlV6JIJdaaGCkRo0LW6S72vZF1V6svTAMliY=;
        b=MNy39yF1aBwWFhxzK7mCxj04W1iJpW+Pc4S8ubpx+Dz9axYEXbxYOs4UGcwIRpp2R1
         GKdOCVvxl45T0rZZ6z9CtiNMu9OyLLTia5i9KgJLPGdVNHhC40npcNtzhj76xBmnl75j
         hCC5FlLhMg+wYMwzyXqp8bJtgplUwutpHSq/wPH08OEAkY37PDdYU/GOYLD2tnL6vqgu
         JcrEqqsQn+givTVSMDqNNzfGkjDbzWxDnkP5yur68VetS8W62AsCxN5j1UZM9wcFhZUa
         kwrLMWJkrRVe3STg1DV7E+u81qB2XWUJoetobIFB5Nh0uzmCG99JzDMHedcufHw8Z8Vf
         CAzQ==
X-Gm-Message-State: AOJu0YylcsT16MAL9JEnKVAArZp11ZX5v6/0ALXJyctMr1laDaUasN6x
	STPpLGZ9SP9ZfgO1z757wPfFw+mDGyQuLPBjCaZepRrulcdjNzgC4kKX
X-Gm-Gg: AeBDietx1B2F2m7lhnWR2yvxKh+zQIGRkBNZI0KpbMtFXAjHd40CSoyHszLaFwx0CQ/
	FKlB1/NZsOqLM4aKaxwh4SXpRKzbv+UHwcmDC/rGQw6OgD6ty10U3CTiJIxaw2pvfnj3YyrM3XL
	3RRO563Ziw/TRuOcj/Tt7QgeEZEOTBzDIa/zkjo0kdL4ZjPk9SBt3iXBxsy2FGEbkiHyssU6lm4
	3UTicOnQLmnq7/LCJehdRTv+7OMN7Imu/7yq7k41J4+z6FmMl7ZqvdhbG5fUNWHIcu3EJ/t+EYK
	0qAvFzmWU554w5r21K68A4DeVsmWmqNbM62bpGfOBZ0wmXJQfWVUsJi1Em8k1Jxj3b+6VinWq0d
	Xcv+U2DMH3lnAjVrJYrVDYVWoNfVxSamcRmlSRhtFSl9E5TIlJcE+NkivccCGfczgXACxsYZsas
	1H02JqJFVilNQ9lJsEgVai0QgO2aB+qZmg2A==
X-Received: by 2002:a17:90b:3c4e:b0:361:4521:d311 with SMTP id 98e67ed59e1d1-364c309c2b0mr920821a91.18.1777516135395;
        Wed, 29 Apr 2026 19:28:55 -0700 (PDT)
Received: from localhost ([2001:19f0:8001:1b2d:5400:5ff:fefa:a95d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-364bdf2a71bsm987033a91.1.2026.04.29.19.28.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Apr 2026 19:28:54 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@kernel.org>,
	Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Inochi Amaoto <inochiama@gmail.com>,
	Ze Huang <huang.ze@linux.dev>,
	Alex Elder <elder@riscstar.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH 0/2] riscv: spacemit: Add K3 PCIe/USB comb phy support
Date: Thu, 30 Apr 2026 10:28:39 +0800
Message-ID: <20260430022843.1090138-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260429_192856_800644_F7C53A31 
X-CRM114-Status: UNSURE (   8.36  )
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

The PCIe/USB comb phy on K3 is a big phy that contains multiple
standalone phys for each PCIe and USB controllers. This phy is
required to configure a syscon device for mux configuration and
calibration.

Inochi Amaoto (2):
  dt-bindings: phy: Add Spacemit K3 USB3/PCIe comb phy support
  phy: spacemit: Add USB3/PCIe comb PHY driver for Spacemit K3

 .../bindings/phy/spacemit,k3-comb-phy.yaml    |  63 +++
 drivers/phy/spacemit/Kconfig                  |  16 +
 drivers/phy/spacemit/Makefile                 |   2 +
 drivers/phy/spacemit/phy-k3-combphy.c         | 250 +++++++++++
 drivers/phy/spacemit/phy-k3-common.c          | 398 ++++++++++++++++++
 drivers/phy/spacemit/phy-k3-common.h          |  27 ++
 6 files changed, 756 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k3-comb-phy.yaml
 create mode 100644 drivers/phy/spacemit/phy-k3-combphy.c
 create mode 100644 drivers/phy/spacemit/phy-k3-common.c
 create mode 100644 drivers/phy/spacemit/phy-k3-common.h

--
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
