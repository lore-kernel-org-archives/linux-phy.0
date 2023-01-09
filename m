Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D01EAC67871
	for <linux-phy@archiver.kernel.org>; Mon,  9 Jan 2023 13:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y4xwnfaDY3Z+Sj8OvszAEuhy6YZxze5ZPHGNUA0He0g=; b=Cw2nJb89W2q1bR
	tP1LG7jvggZdPrqUyXPYSETRoSwPVemSgeKz5kgTlNVYoBoqnJTh+luuG3ERmSzBD7X9X9zspI/X8
	kRGL/Rt+AHQx2vUH3Eo7+u7Jewrki5D8XTzTt8DnwSnb5gDZJnfCMrCdZuaroMJMIJFeFZ2fTjGjD
	Cd8KMhAOjhw+kmrDw8fLtpVSkrdKaQ3dKtzmMihNCHjaCUW5BRtajWR+PgGFI7yP9tfSfz2OieOE4
	MQ7qjb+ZfD7N7eJEBVdq5xLJefzhfUyLU6NOON/TGGqYyWt7ydoMBNTqIGsH2wERsZ+r5MrBTQLjR
	y2B5GUnSpdWIUwO+BdDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEryu-001UJ5-30; Mon, 09 Jan 2023 13:14:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEryW-001U9d-FW
	for linux-phy@bombadil.infradead.org; Mon, 09 Jan 2023 13:14:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=eHeD4/5Q26ruqFmP/If/k2xNMCXAhjZeCMYfTgUbKRU=; b=aefMcy7+PZRvhcj2Kt56bDP0ag
	M5EXH3zAK0CQwEc6P3HzN7pCqcTiOqk+eNn2edwUTpujNNH3S/BZodtQ2Nv2vVusTcp1qO4aTIjbC
	p/4yPWe+SlJeuaXYqydTIaf+rP+VQOxU2BDj5T4zJJ8oMSNLVQPVodqP5rczQdqTeEwMeOypEmVLA
	YySvDYRZTKZkie4t8WkIs1tBqurDaSf4hBnXvZwTl5wGLwT6EzKnzV0YWu42qs8cUhocK4oESmtyC
	ThrOeQbsHeQ9Hf2VNsc7Au4wod4ozfMotvC5ap6ftK/mxr1TwrXxyH8/YlRyRP4f3GiOhRZzTqu++
	lETZYB3A==;
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pEreg-002jE3-1w
	for linux-phy@lists.infradead.org;
	Mon, 09 Jan 2023 12:53:55 +0000
Received: by mail-wm1-x331.google.com with SMTP id l26so6178962wme.5
        for <linux-phy@lists.infradead.org>; Mon, 09 Jan 2023 04:53:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eHeD4/5Q26ruqFmP/If/k2xNMCXAhjZeCMYfTgUbKRU=;
        b=ST+d6exv+eSO89qaxYEHQlIUZjwGyGwBJ4xr+vru1zfL5TKvPyAhqO8Pkx0pwPrsz+
         jgw4926gADuQo43X4dvIXEFVEX+2jkFCW71Ibl6xlz8rEKH4KDOuwPJavaTNh6Xc5P0A
         AjwReWC2HFTNu9qYXgDmUygMPt7ZAvBkFipkWakWAcAxMsf5vwA9wpujm+DSd3CLhQ62
         Fm9K10aodqGSrxbo5Zu0m7mpFDY6eTc0BH5igwv8WsKfuWKKBwQ+/tSlmb8JcRvYv2nf
         gApIKGwFDwKoKVFmWMoGxExR8BxoEEnI+UkTInipxpBoGPl/IFugqltGY0B5Ddf6azXK
         M/8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eHeD4/5Q26ruqFmP/If/k2xNMCXAhjZeCMYfTgUbKRU=;
        b=xo1kXX/3Q1AWz4uZ/GW3FeOaz8Eh3j8Rs+i8iJ9/U/ARRWCU13Srg83Ds2JX+YJzbn
         s5QrjwlvQgzXRQQfzQgRcPDsvGXV78Ec3glr5kfN3qngrC0dVQO+cybNLnevq8waCqPQ
         sRplkgHYzVy6meEaVD7j72HKWotRACa5cbifG5OXp4o2xvg4jD+cbe0ve6/o+m4okl2z
         QQZp4sUDYFmnBB53Lvn66cJbzhQPLUfPHlYKgB5tCqp0oFTzbhwCKSFb35iP73Ect8MS
         KEdCwjUL0YD2cOmKFd/bClfKjkXhK4nZ4b5GsBgq4JBsvmAsAyn/Nfdfl5MUYoaPVa9p
         FyMg==
X-Gm-Message-State: AFqh2ko4g4k6X7rlBEZSFdGbRQKTdPEmn5mp6pWqTSXn3oSYFNmvHyaT
	Ts8m5a7MtUTJlwl2RnfKo7K4Zg==
X-Google-Smtp-Source: AMrXdXsaurQF4EtQDAHouXVvSJBqCu54hP/k4K5wC/jqtSrGfESg6vwwkM/iQm8oVMP1uuBrED7e8A==
X-Received: by 2002:a05:600c:3d05:b0:3d3:5c21:dd94 with SMTP id bh5-20020a05600c3d0500b003d35c21dd94mr48020557wmb.9.1673268820053;
        Mon, 09 Jan 2023 04:53:40 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id y7-20020a7bcd87000000b003d997e5e679sm12805667wmj.14.2023.01.09.04.53.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jan 2023 04:53:39 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 09 Jan 2023 13:53:30 +0100
Subject: [PATCH v2 06/11] dt-bindings: power: amlogic,meson-gx-pwrc: mark
 bindings as deprecated
MIME-Version: 1.0
Message-Id:  <20221117-b4-amlogic-bindings-convert-v2-6-36ad050bb625@linaro.org>
References:  <20221117-b4-amlogic-bindings-convert-v2-0-36ad050bb625@linaro.org>
In-Reply-To:  <20221117-b4-amlogic-bindings-convert-v2-0-36ad050bb625@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-mmc@vger.kernel.org, linux-pci@vger.kernel.org, netdev@vger.kernel.org,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.11.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_125334_802441_F096DEA9 
X-CRM114-Status: GOOD (  12.32  )
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

The amlogic,meson-gx-pwrc-vpu compatible isn't used anymore since [1]
was merged in v5.8-rc1 and amlogic,meson-g12a-pwrc-vpu either since [2]
was merged in v5.3-rc1.

[1] commit 5273d6cacc06 ("arm64: dts: meson-gx: Switch to the meson-ee-pwrc bindings")
[2] commit f4f1c8d9ace7 ("arm64: dts: meson-g12: add Everything-Else power domain controller")

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt b/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt
index 99b5b10cda31..ba5865ae6bfe 100644
--- a/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt
+++ b/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt
@@ -1,5 +1,5 @@
-Amlogic Meson Power Controller
-==============================
+Amlogic Meson Power Controller (deprecated)
+===========================================
 
 The Amlogic Meson SoCs embeds an internal Power domain controller.
 

-- 
2.34.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
