Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A00A5C77B7A
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 14:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BV3f7sFG33IarvUhJb/LLK0SQAYvfOiu1di99bezHyA=; b=ZIv0/DTqoDPdjQ
	WyJpzZmmlzwt8eBUGXRkOQ7W8XsWT9mbT+zJvV56S9J56Qe1g3OeB6gKqaWl2TvuuVdrvQ3MZe9iJ
	l7Pio0adsxPhUV3mbNX2s+5p1Vz6xUctQAP0zvVNFcWB3W5ijw5GS4bQXpbTcSsVSf4wgas0kSbHb
	/L9jVFfday2j/CIH7KmUkkOHkIAus0isfX8QN2HfP2eR0oFVMetfmKpSkqpLDEDjRYj5OVkXsC272
	x0b8Mb9IEjqe4d3hWzpcbPkqDacjgVrW9XAs1RBpRzZUTeQd5HiE0ZensFSJwizKfdEKinJnKz1Hs
	uq8fBraiHBiDfcz7llKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q40ek-00EHQu-0U;
	Tue, 30 May 2023 14:49:02 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q40ei-00EHQI-07
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 14:49:01 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5149c76f4dbso4395788a12.1
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 07:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685458136; x=1688050136;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iV7Orb1i2HT8c6ntLQeDsScnfo8QsjoWIKrRpD+mlDM=;
        b=q6DaxHgqELE2tu8Q1AxgIsCDpH+TNAJJHJp6Q7g8/Fkd/88Tk4TUy/ri0mT4Ktg5Mo
         8loUDrV8rgOV4A6XNocbQ8st6LPKLPsCoM9M7NfuJiiPgFmWodAuWDMcEhGTqfI+4Tzf
         71FhpeXfe33npOU4xXk8C/+4upzoWtXD+5OuR9V4CwEY+McHM/HpsrVpr/f2HM5wwk11
         q6ItDg0BTxwcfJWB6uZBQGx+4pwaP2uzwuVXxHf91dLVKqsCTNfh3dg7BgyEkITCyOjh
         IHl3EJehb7WHjyFD+D9eQjjetOZhYahUl2+MIzDnN4ovGk7najQrxWq/MU940DgRFDiZ
         Y5Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685458136; x=1688050136;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iV7Orb1i2HT8c6ntLQeDsScnfo8QsjoWIKrRpD+mlDM=;
        b=FDb8xYhP+VwJ3ClymeY63RYyCJAcMk2lLM0rEl1r+XbTBhUGDMXatLyYd0CM8FQAJ7
         NL3Q5GTuxmc/BOSzJZrD6GZWiGNgk8Rk7//oCoLppvuitvNTYL1y8TCAPYXobxLoJSdo
         hec+Aj6tg5MbKq/5euSwnvCoqSK9MWwc+rTllq9PQu2I/SNDF0ax114cQTRG8+yeRo1e
         jwRiwlme2fOZWhyguz5vKc2S4RCaw4wGQKkVTi7Zdac3SgYnoYtUzQuqBH7Dp77OjBhp
         1BTP5P8tMN4TT4+Vv1XTmI73m94UH/SWS76oB4Pt23TVi9c8hObF29J0heshOsu/yRLi
         Qv2w==
X-Gm-Message-State: AC+VfDxw47XfBL5HAQzU6l/Ax/SuhnCGXAWergx876awZdUw1wtrAKu+
	0sXsGTEK1POPM9+UbTGsZSAtVg==
X-Google-Smtp-Source: ACHHUZ57600gdJ8fZghoBNthDb/ZJ2da044/ygwaZp54+5w2nAm+4l+5lOMfpN+gAlzBZIyE3wXFJQ==
X-Received: by 2002:aa7:d9c4:0:b0:50d:fcfb:861b with SMTP id v4-20020aa7d9c4000000b0050dfcfb861bmr1926404eds.0.1685458136376;
        Tue, 30 May 2023 07:48:56 -0700 (PDT)
Received: from krzk-bin.. ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id q21-20020aa7cc15000000b00514b2717ec6sm631283edt.28.2023.05.30.07.48.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 07:48:55 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Dipen Patel <dipenp@nvidia.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Dilip Kota <eswara.kota@linux.intel.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	alsa-devel@alsa-project.org,
	linux-spi@vger.kernel.org,
	timestamp@lists.linux.dev,
	linux-watchdog@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Tony Lindgren <tony@atomide.com>,
	Oleksij Rempel <o.rempel@pengutronix.de>
Subject: [PATCH 0/7] dt-bindings: restrict node name suffixes
Date: Tue, 30 May 2023 16:48:44 +0200
Message-Id: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_074900_079931_3B9BFDE6 
X-CRM114-Status: GOOD (  10.14  )
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

Hi,

Tree-wide cleanup of DTS node name suffixes "-N", e.g. "pwm-5", so we allow
only decimal numbers.  In few cases narrow the pattern to also disallow
multiple suffixes, e.g. "pwm-5-5".

No dependencies, can be applied by individual subsystems.

Cc: Tony Lindgren <tony@atomide.com>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Link: https://lore.kernel.org/all/20221127182232.GA128974-robh@kernel.org/

Best regards,
Krzysztof

Krzysztof Kozlowski (7):
  dt-bindings: phy: intel,combo-phy: restrict node name suffixes
  dt-bindings: pwm: restrict node name suffixes
  dt-bindings: rtc: restrict node name suffixes
  dt-bindings: slimbus: restrict node name suffixes
  spi: dt-bindings: restrict node name suffixes
  dt-bindings: timestamp: restrict node name suffixes
  dt-bindings: watchdog: restrict node name suffixes

 Documentation/devicetree/bindings/phy/intel,combo-phy.yaml    | 2 +-
 Documentation/devicetree/bindings/pwm/pwm.yaml                | 2 +-
 Documentation/devicetree/bindings/rtc/rtc.yaml                | 2 +-
 Documentation/devicetree/bindings/slimbus/slimbus.yaml        | 2 +-
 Documentation/devicetree/bindings/spi/spi-controller.yaml     | 2 +-
 .../bindings/timestamp/hardware-timestamps-common.yaml        | 2 +-
 Documentation/devicetree/bindings/watchdog/watchdog.yaml      | 4 ++--
 7 files changed, 8 insertions(+), 8 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
