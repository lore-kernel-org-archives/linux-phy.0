Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBC31C624D4
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 12:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lF1W8s6Owwn1lruAMIDcbFOLemAn0jO2qM0aqM0nwtY=; b=cLm2+xwwt5An1U
	Syc+jzSdu3M9kwaUetM2n/KAnQv8nnGmygE8xk1XnH7sItFcwGl11ihscICcO4YdrDf2Y1tao1aea
	qZITrJQlHIUN856L3IG20mJIOJky5brnbQ8f7x8sFAQ630hl5+I9r/18fsya7pnri9lhZIrLowch8
	MavRhYx15L3x5Txl/ikaiyf5PpG/DAcw+s4bkS9fbHkgsQtUQA6KubhFoq/PGUg8FSI7Du0mWHuI3
	QaoE94B3porOXL6rpDWDmh5C/81J7qfOpDG+QK2pWA7VPf/aO3Tfk8JdjCu8/HFtVO7/veKVImKbK
	+YnNbKGEkS850yiijd6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1NmG-0000000C87m-2BiW;
	Tue, 01 Sep 2026 12:39:48 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1NmD-0000000C86e-32Y9
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 12:39:47 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-48441fa5c37so676181f8f.3
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 05:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788266384; x=1788871184; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=yw3C8sMhiKvex40ZPlaCVKHi3bzP8PDS+ma+yPeTqLs=;
        b=RIRuowuiJCW7LR/A0F1Cc0nO9tJ5ZhA21EMPnUQbx4Q5TfqFYf8NDT6morHpZc4lQM
         gb8XrYpJ8y/EL3gIoFd21QKAX2pjT3QcjCtmpH7TAFUbhobD3M/srX7sQIZmZPeNYr9+
         jo8ZWnqWLY7eR+apWemlP6LLHPz+ufEdqeGMLEzi77QnKnJDFO+AWLquBSAox5nfs1ek
         34Mk8LjR6rsBnJI6lnACGO/1/rKLw99UHbKxgOSPGcc/xgSop9JfZ5uyhYuNaTLGbKuz
         JiKlWjtJTw5q1NsbvwBO2geSWl1h3iYJXbYUXtP+XerANg/X27kHSShvpIIDY90VwFLt
         Xttg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788266384; x=1788871184;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=yw3C8sMhiKvex40ZPlaCVKHi3bzP8PDS+ma+yPeTqLs=;
        b=Hr4TAk6+L6xqtEdsl6okwrs15O6OCVKS8ab6H8vmUjsquk6VYepdcpQ0AXU1z5KXTK
         hf4CK6qPnbIz9Y7jktENzTDwDACPjah5HMZWT2IdkrzsVLwbg4c1BV7r55dVfes4S515
         GinhmTZeljs23M7Gl9p0HyHP2yOMOG6T3E0FQTj7DGWcIzefcw526XF11aAbyRNCtv7A
         2QTYrrhGJ53Agb5moiNyDpr7t/lHMjv+hEC7pmQHDzn03GJf89hDvZmaV/4BDy9qC0sB
         l9dKnVelZfYNyMQbgbsdmqV068pY2FQzAw6S6AngzHfO7LcQM/rnppLbDdIZ7u/IX7MC
         cACA==
X-Forwarded-Encrypted: i=1; AKwUvBy5gGU0z+/yk0Z+WdaFVSCbdSn7TW8CQZz9Rjp9MY+fx6NjaX+gpSNnkNBpcCEbF0QXdIA9TRIkPYQ=@lists.infradead.org
X-Gm-Message-State: AFuF++k5fE0cWmToLYZAKRtlZv3wGSqpMy4EVc2qF144BKbIuM22bJ12
	GeMAfg48i9NrbInBiag/8rhMzJrGkIW08n+qcmVSDHMQjm4vISZxOZMd
X-Gm-Gg: AYBFou37065qFExmY8nyzgpZtqSO1mKO+/Qt57banySjK7pjF5hisPWbPykT1idYuC5
	B7mj7OlwPSi6wDtob08JGmLjF650H4UXAWzkDFGMYIbXADXsJD6G7SB1Xb4ea2j8BrNLhNqUJoG
	M3ISQ7h43EOWNFVk/QZgHy79eA+GQLviSAFQhlsgUcwUCAB2LL0vDGgvGCpXsf2yWf7x7SBUABP
	MzPdVkeioI0vcMiheo7QQpbYLHdEwwykx+h1xlEyWAXRC1NAIVDxrGnDe5FlwDeqXodHrV4eLnF
	FkPwl0YQmvmRw6lULjhst84hjZZuUQ0tKsi+9T3RtztSeqYJXW9uo3tL7vg0eaunN07fSoH/uaI
	CN8v5i3h1/B+zQK0nLf9UPohZdt8BB/hAudzaQel9cqJ4F/bxGDitN0nC4BACnzKTkj7SSU8eG/
	qf/GqOZYD9DzXQi6uyJJWR9Ljsv6Pkpp02+SJ57CfrqIPsXD1flHm92HbCqYSj4zukGy4fGJJOD
	4oG71dUgievbdtmKcHa5ZCCIkVXhUGHIJcvKZgKAklAoTf+KZEPe6M=
X-Received: by 2002:a05:6000:604:b0:484:3a11:c431 with SMTP id ffacd0b85a97d-4843a11c4f6mr27280442f8f.5.1788266383674;
        Tue, 01 Sep 2026 05:39:43 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-79-26-252-140.retail.telecomitalia.it. [79.26.252.140])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-48442d3d2eesm4644130f8f.15.2026.09.01.05.39.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 05:39:43 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/3] phy: Add support for Airoha AN7583 USB PHY
Date: Tue,  1 Sep 2026 14:39:30 +0200
Message-ID: <20260901123933.15388-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_053945_779590_2049A9EF 
X-CRM114-Status: GOOD (  12.03  )
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

This small series add support for Airoha USB PHY and Gen2 PCIe
PHY.

Changes v4:
- Fix typo for Documentation patch
- Fix wrong regex for usb subnode for Documentation patch
- Improve register example for Documentation patch
- Address bugs reported by bot (off-by one and xlate function)

Changes v3:
- Fix broken patch for YAML patch
- Split the YAML for USB and PCIe
- Rework driver to direct node for PCIe PHY
  Link: https://lore.kernel.org/all/20260827131551.26725-1-ansuelsmth@gmail.com/

Changes v2:
- Add Documentation
- Out of RFC
- Rework to Serdes PHY instead of SCU (following
  for consistency AN7581 implementation)
  Link: https://lore.kernel.org/all/20260811124724.702467-1-ansuelsmth@gmail.com/

Christian Marangi (3):
  dt-bindings: phy: airoha: Document support for AN7583 USB PHY
  dt-bindings: phy: airoha: Document support for AN7583 Gen2 PCIe PHY
  phy: airoha: Add support for Airoha AN7583 USB PHY

 .../phy/airoha,an7583-pcie-gen2-phy.yaml      |   63 +
 .../bindings/phy/airoha,an7583-usb-phy.yaml   |  133 ++
 drivers/phy/Kconfig                           |    1 +
 drivers/phy/Makefile                          |    3 +-
 drivers/phy/airoha/Kconfig                    |   11 +
 drivers/phy/airoha/Makefile                   |    3 +
 drivers/phy/airoha/phy-an7583-usb.c           | 2023 +++++++++++++++++
 7 files changed, 2236 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen2-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
 create mode 100644 drivers/phy/airoha/Kconfig
 create mode 100644 drivers/phy/airoha/Makefile
 create mode 100644 drivers/phy/airoha/phy-an7583-usb.c

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
