Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CDAFC7EE2F
	for <linux-phy@archiver.kernel.org>; Mon,  1 May 2023 19:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NOLn7uO4ZV3n0Vxnjrn/DpOn/aDe7Fva8nL1MhC1z2I=; b=DGnVXfjSMuKnEL
	caYnFEQaaIR1v2kKPsZHdSEVs7YgS5rsWCU4Cm54C5+sszbA7ZJ+YzCeOCaKttg6ICJNvHQVShBbT
	Yv6rr1+vDepGuBdUHk0fznNdk/tBKU8ozo7o/5WQ+KDBmGDoVWhjwvGHL5xAWSkqOPArP1h0OkzS4
	1pIhLaEBkBo7/v8L1/U6qaVE3VEfObCiZKgzTjnMKq9gAj+Oy4i3AJG7rNoyqKrNLmmsEHWrDAMNe
	3nvaEVdnBG7kTc2V3iEbM4JTCKVanoyj0Wxu1egq44lSKc3nXpm0GegcxJZ26SJE/c3k7Sml0tkK9
	4wizbj8t1vOJ9v6eBLeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZd6-00Gojz-2a;
	Mon, 01 May 2023 19:56:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZd2-00Goed-0r;
	Mon, 01 May 2023 19:56:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=YTzD+ObYPqz4vMUGcRmByVEWvAs3h4l+qXUdZRMrqEU=; b=ZitgWlBsxalEbbm/86336gnaJQ
	aosNa21A0yFhn4TdpHKVIcSmSiwF7/647+8wrpZNcfd6lghqpV5OqfRY6DtaZdI+++1l0dnvvVNpX
	oGXz/9iQijNewNeF3zrIM1Nhjy3PopxeTdOJQQ+yU1BrEbIngAj7M/+yGN3OuBki8ngsiPirwsK7l
	RfDOAxx3SIcx0PM6uiyJTo5U6lTwiG9j1I3LwqLhvL2z+wzvWslWYjzywRH+cyvF+O666hlU7gnlP
	rDnAWzyJ18LQnq9DkwZCGuRob6BXCJl7eQ+JrweifiEtZPCRXbWb8KlxYHnzLdM1SyLYHOLVxCCRD
	wRQpc4Kg==;
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZcx-00EzPl-05;
	Mon, 01 May 2023 19:56:06 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-94f910ea993so480586166b.3;
        Mon, 01 May 2023 12:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682970956; x=1685562956;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YTzD+ObYPqz4vMUGcRmByVEWvAs3h4l+qXUdZRMrqEU=;
        b=T15jY1Mn7c6eIkNv1Ps9edBAwkf5/aQXqP/2vEri1eioCfDdUo8F5bQSB5ds/YbrZs
         kzW1MzleqUfq1DrXcbOoiw+0++IjuuOalC9Vjs/935chfOZ0Po6zsc94J8D5gs7JgiwK
         6xM1VRl/3X8zOiKu0LIyON5uyQEadbztGvLb8JYy02AmioCgN5mT0k5J6kDxksHtaBeb
         I1ZKEeC2zXQQBc1wZt+FmCfOVWSBk9ipHzTniA+6Lp5+CJVgdaflGcfxzV0W20qQ154v
         1/l14i7Y5ttPq359OpuMbK0nX/euKnVf8ErbQ0hdIX384142+QJ4y9XDVoyCkLzlsmZr
         2ITw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682970956; x=1685562956;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YTzD+ObYPqz4vMUGcRmByVEWvAs3h4l+qXUdZRMrqEU=;
        b=TUAq38Ja+QUakk/dIByCCY2bXdUKdr56VSx3HQ9q7HpT5NQa19ylIUnb19ZThfHSTl
         iZK/ank4paAbDvOwKdJ0lwK/WN9H+/6ZNLGp2flG4DgHUkX3NF2MA7tT6L2tgvCdRmo7
         OnjiTY1S0DHJewqZ5POIDr2TjsbwOl+WvyhwcPztHGC7j8VEyDS8TF2FZZhNO+SgjD8c
         uBTzmH4/G/APq1rfBlLkF65siugj6TVVAs/1/lfOANDWmp00OT5TSix7HiyQckCdmFjU
         aGNKPnVoQyVaK3uzPct/7bY87U1+bg3w1q9L/tcPndCk7FHUO+mAsbxgB5J+w22H6oil
         w6+w==
X-Gm-Message-State: AC+VfDy2iZ4GBD1DnTV07oeQ2lXL0glWL9TeevHNWaFej9XyCJF39KxH
	XA93ON9anWvmSRhq8P8l0rU=
X-Google-Smtp-Source: ACHHUZ6+4vLeKUkttnnAwUq3xaysMH1UDPT0yO2wXLoODVKlxgGlnE0tDhFVNqWffYf1KKFksbIg6g==
X-Received: by 2002:a17:907:6d03:b0:947:55ad:dd00 with SMTP id sa3-20020a1709076d0300b0094755addd00mr15076107ejc.26.1682970956138;
        Mon, 01 May 2023 12:55:56 -0700 (PDT)
Received: from localhost.my.domain (83.8.115.30.ipv4.supernova.orange.pl. [83.8.115.30])
        by smtp.gmail.com with ESMTPSA id og36-20020a1709071de400b009600ce4fb53sm6333650ejc.37.2023.05.01.12.55.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 12:55:55 -0700 (PDT)
From: Artur Weber <aweber.kernel@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org,
	Russell King <linux@armlinux.org.uk>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Kukjin Kim <kgene@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-phy@lists.infradead.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Artur Weber <aweber.kernel@gmail.com>
Subject: [PATCH v3 12/13] dt-bindings: arm: samsung: Add Samsung Galaxy Tab3 family boards
Date: Mon,  1 May 2023 21:55:24 +0200
Message-Id: <20230501195525.6268-13-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230501195525.6268-1-aweber.kernel@gmail.com>
References: <20230501195525.6268-1-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_205603_193867_789DC855 
X-CRM114-Status: GOOD (  11.04  )
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

Add the compatible strings for the Samsung Galaxy Tab 3 8.0 series
of tablets.

Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
Changed in v3:
 - Moved Exynos4212 board before 4412
 - Changed description to Galaxy Tab3 instead of just Tab3
---
 .../bindings/arm/samsung/samsung-boards.yaml           | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
index deb2cf971871..e3ffd8159ab6 100644
--- a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
+++ b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
@@ -72,6 +72,16 @@ properties:
           - const: samsung,exynos4210
           - const: samsung,exynos4
 
+      - description: Samsung Galaxy Tab3 family boards
+        items:
+          - enum:
+              - samsung,t310                    # Samsung Galaxy Tab 3 8.0 WiFi (SM-T310)
+              - samsung,t311                    # Samsung Galaxy Tab 3 8.0 3G (SM-T311)
+              - samsung,t315                    # Samsung Galaxy Tab 3 8.0 LTE (SM-T315)
+          - const: samsung,tab3
+          - const: samsung,exynos4212
+          - const: samsung,exynos4
+
       - description: Exynos4412 based boards
         items:
           - enum:
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
