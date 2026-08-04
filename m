Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4652C55ABA
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 11:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EjfeXzrfO6jL88RJZiN89ws0ECqG7Mi9OzjN6RIkPdk=; b=17ROtL4MPRfMWc
	K1VaSdzsoVGXAKtvmcgNZoF6o8NQky3EvdxnxhCj5ycxNkcDUVZO0NtGLsjSlBuWOG7cKb6kWm5n6
	VNQNPOArnOGlBdB+vv6/D4YzRPY3te1z9BE+AsvWWpgKHy+BEzcBDIxxyEBDZf8gARWymDLziEm0Y
	Hl/+24QII5LsQC8JojQFs1FG7QU0vs8e1WyhF17vcdUCDjejZSTEXZ6fzDKCzsQtAF607OzWVjn4E
	Z5sC0seDV2NhhyUODYQhKRuQz7UZ6/7VxUpozbC0fRq4Utj6ULvQ9FbvxGCY5R08QZH9pHxxtPhlO
	rRtj+l22/iSC/QaQwY2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrDAt-00000001fNZ-1w8H;
	Tue, 04 Aug 2026 11:19:11 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrDAp-00000001fM7-0WWu
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 11:19:09 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-47c6e9a694bso2901864f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 04 Aug 2026 04:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sigma-star.at; s=google; t=1785842344; x=1786447144; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=SSQmIqo1f9e4+WmZlXMqopAgbBl4GfMqvue73Guwn7U=;
        b=dxU4zKMrc9q5sI5kL1X8N5TWUYlrRG3CcYkUVMhNh6IjXUjKt73/m2Q8xXr41hTKkD
         1eIyHrkinDntSOMSxIrkloJyOjVOxz1yeyRGWwK+nQ0Z/sc8I66mGyIajIENVXDvNvdB
         hIBV0CybrhpCh0cfhlX8CKg0hcamjEvcXlH0EWpOqX5ALJz76auD93eZZR/dn+ArgH/R
         o1sSiLtr/8GvD8mdQZSttPN+HxX86G6jGw2jOGTw/rOXdXmB8UeCHMhGNx/61tr6/RdQ
         ZK655p7owTMNmK/e/XirQOH22bDAFI2qfv759FSCJzNec4i7TdnNxi4EI+aEibLJkaSO
         aN8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785842344; x=1786447144;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SSQmIqo1f9e4+WmZlXMqopAgbBl4GfMqvue73Guwn7U=;
        b=chNVH2M6y5OzIJVNT2qqFCkRXEofH3Q49hnsMP4RkS/1AaIm+0Uix6u5lSBAPgIJ2l
         oh1Yyc/ZdrgvBPgT6qfjFQtZv0kJhJLYiBiePESzTQ0kXQQEu5l8cRQLBSuHR8Z/iiDz
         lLlnsKGFLiFr2oK6eqL/TQe+idLY/vPWK+rl1lroE5J3F5TMC+f6C8eiQxwnDILA6a//
         q1GUcQyVr2YqaZboOOOmfn+OqSoeTbpplws3HhTAGePybzylKFMV9qkZkQaEgMRk37xY
         0YX1G2PZmibF9VsHGXrDkkwSXwfoNPXk7MwofOTVqZDzzsD2rSMo6IgUCkeYgQVwC6Se
         OCQw==
X-Gm-Message-State: AOJu0Yxs4DCRSIMrnBQjwVKyxYaOgYswD3kKCxJPCA4xkLDcaXpUJc97
	Mw7EgRxus3YTuMA41vwJ/H+i/mpke8ZxOGketvPI4TNlma7BB3Sz4Oo9XSQv4N2HuZq6lX63dWA
	y8So4ItL9VA==
X-Gm-Gg: AR+sD10q7K+AfRxG1oGJmlVnp1iWL8HBIFBUdMYQ4W20kGDBh57DRqOuKPH2dNo+eD2
	k5nHFPGAY20vQv0D4+CiNwkCBOit2gcgJQrTpCqq6dKv74P9y+N5cy39KYFUIuW0+zW8ATZGjJu
	xJEr0zl/VKe3cbowEpQ8T216NLKuJx+OhorGqYVxpbLNkwsBgLQOzJuDzUTopsLPM08qK/OUyLU
	SuxxtA9wJCBZULq488tgVR7ffd88fQhISaEXvaO7GEFvWcbAKaCrlIcc6q2VLM6Y9b73v7yxwrW
	nDHqe2bk1DeqiSfeK2KNdnR35KhOzXzZm9HbiR57dboxhm4mY7UQfs/z0uTtMIVhwGUx67D49JU
	+Q5b+f78f2owtL/ykE4lmU7CpQzB6WusYMexhmFiYlnQd0jDPd9KKHwNju0GRvR4/ml1308a5TD
	VlKvR2rLqn0oWBRIpRavMx07g4IEpqg85wqgJNuWGBxf9joiLni+wD/tRlvSRHpWDLpO/97253B
	yc7G7tvQhoKvwaHbiTuxO1XFY0S
X-Received: by 2002:adf:fd4d:0:b0:460:70ae:f1af with SMTP id ffacd0b85a97d-47fd72c6ef4mr30489802f8f.27.1785842344582;
        Tue, 04 Aug 2026 04:19:04 -0700 (PDT)
Received: from localtoast.corp.sigma-star.at ([82.150.214.1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fd458b05fsm44414682f8f.28.2026.08.04.04.19.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2026 04:19:04 -0700 (PDT)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	johan@kernel.org,
	rogerq@ti.com
Cc: Julian.FRIEDRICH@frequentis.com,
	upstream+omap@sigma-star.at,
	David Oberhollenzer <david.oberhollenzer@sigma-star.at>
Subject: [PATCH 0/2] phy: ti: ti-pipe3: allow configuring ACSPCIe TX/RX mode
Date: Tue,  4 Aug 2026 13:18:47 +0200
Message-ID: <20260804111849.92046-1-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_041907_485249_B37BE2F3 
X-CRM114-Status: UNSURE (   7.96  )
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

This patch set adds a device tree setting to the PIPE3 PHY for
the reference clock selection of the ACSPCIe clock buffer stage.

The clock buffer can operate in either RX mode (clock pins are input,
recover the clock from the bus) or in TX mode (generate the reference
clock for the bus).

This was tested on a board using a phyCORE-AM57x SoM.

David Oberhollenzer (2):
  phy: ti: ti-pipe3: allow configuring ACSPCIe TX/RX mode
  dt-bindings: phy: ti,phy-usb3: document aspcie reference clock setting

 .../devicetree/bindings/phy/ti,phy-usb3.yaml  |  9 +++++++
 drivers/phy/ti/phy-ti-pipe3.c                 | 27 +++++++++++++++++++
 2 files changed, 36 insertions(+)

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
