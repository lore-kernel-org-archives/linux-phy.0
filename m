Return-Path: <SRS0=MgL9=LX=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B682DC11F69
	for <linux-phy@archiver.kernel.org>; Tue, 29 Jun 2021 18:20:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8667B61DE2
	for <linux-phy@archiver.kernel.org>; Tue, 29 Jun 2021 18:20:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8667B61DE2
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TsCgBAJXayABhaBLmDG5Jv7FjoX0bCxTlfRFwbg14Yo=; b=sYms+EXsjAWDs2
	RDK2n5crVztAOf5ru3oZWsSBXFYxLxohTIzKW3LoZ/cUDQzDIwkq03rbA+ci4PGhQNI052GCVdUih
	oZMQ4DHA55aaWfdtOkjjd0cKo7g9cNwiWqkXR0Fuk9VjhSkzgHJvRkhY5o1vlZVxP+e7hABqCxi18
	d6alt3SFkwRm6cwyC0Hc61CNicyHA8+KxniPl3C+SAERrA6VwXexSEv1ouRqRQ7IOhkqslj6H8JhU
	sKsc5Gcq3glojMcxogUVkYcGgMDnA0XWXbfx6eopP2iQv7W0gPwrRgGvPcPpXCdXVhSkOJsHYKjlh
	CwAJFulRSQOxmeXmBOMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyILx-00BobM-TC; Tue, 29 Jun 2021 18:20:57 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyILv-00BoZu-7K; Tue, 29 Jun 2021 18:20:56 +0000
Received: by mail-ed1-x529.google.com with SMTP id j11so7042819edq.6;
 Tue, 29 Jun 2021 11:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2R0bzURTRSXhlCdDiao5H3DH/BIRyXSazQ8H4jPLA3E=;
 b=a36TZfVjhjRRsUyXpGefeihG5ZNVjStiIkMe3Omzxx82Z/x4ZIti6W7pnKbj4RDIZN
 u0Q8gqLSw8QabTeZmnTvbH62w5dJrKPmBXeYd19kpgJAXSNGA3O42fHoqXcwnsZ7mpTT
 ZQ8XABMXTwpIoXI/4d+axQRWa4Tc8mqD5tmVG6CGAPyrkJk0m16b5j3kM6FoRG8HqnZ3
 r23manBjaDmva7424tFPsUoCDW4yuJWcXV0kVTTotVm3JsnaV1ngEQiA/SSSmCrSePJY
 YKbQEyVec32zGBiJG8pRP4zHTDRiq3vm8VRDuDddkGk7yB/Uwi7uE4ntUT5Ry6pJz4iY
 KHZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2R0bzURTRSXhlCdDiao5H3DH/BIRyXSazQ8H4jPLA3E=;
 b=V/4Eg403QxKqX6vv17o9AwGUGApk33APB7iCRUT6MQYzdF7w20jedBRyjgeE7/MdJV
 foS7/GACla9J8xEaOESt2yHYYme5eLvLUpUW0jZ84X1cz5fAFRdj8A4eQA1jQXxRZiJv
 j4bmGDY2UbYipQewlUKXm35BNL2Jzv9UhInVptRxi7qjZiAkVqERSGl93nFbG1RmrK9k
 3FLES67ivsaesQ+TNGI1b6zuEm7A/K10uEbuSBDHQhbTc39vUoJ4g2UTcMYENPH2hbcQ
 aacpeu4Ft2JjOoodnYfSi4C4qekyEypwSguVFWd7ADUKnf7gje7o/DsNbVeKYGtioYqs
 1DmQ==
X-Gm-Message-State: AOAM5339zRJdiCttolbrGtuoxDEWL1GezIm23JPNfmy2CdcBNfUBI24x
 isLImNeX1TxTdu1LwWyCo2I=
X-Google-Smtp-Source: ABdhPJxkiIQCHMOXhupD9cEHjpNgzA394/SOlHy9zqpbvuQoq3/lr2EOi6CXDLuwXFJO9aWH+TBWUA==
X-Received: by 2002:a50:ee9a:: with SMTP id f26mr157300edr.96.1624990853440;
 Tue, 29 Jun 2021 11:20:53 -0700 (PDT)
Received: from localhost.localdomain
 (dynamic-2a01-0c23-c0d8-f500-f22f-74ff-fe21-0725.c23.pool.telefonica.de.
 [2a01:c23:c0d8:f500:f22f:74ff:fe21:725])
 by smtp.googlemail.com with ESMTPSA id v5sm11565678edt.55.2021.06.29.11.20.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Jun 2021 11:20:52 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Cc: kishon@ti.com, vkoul@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v2 0/2] phy: Add support for the HDMI TX PHY on Meson8/8b/8m2
Date: Tue, 29 Jun 2021 20:20:45 +0200
Message-Id: <20210629182047.893415-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210629_112055_319041_797CA12D 
X-CRM114-Status: GOOD (  13.76  )
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

Amlogic Meson8/8b/8m2 SoCs embed a HDMI TX PHY. Unfortunately there is
no (public) documentation for this hardware. The best thing we have is
the 3.10 vendor kernel, which unfortunately doesn't document most
register bits (only a few are named there, the rest is all magic
numbers).
It is possible that this is a TranSwitch HDMI TX PHY based core, but
this is pure speculation.

Adding a driver for the HDMI TX PHY gets us one step closer to video
output on these older SoCs.


Changes since v1 at [0]:
- add a reg property to the dt-bindings
- parse the reg property (register offset) in the driver
- update copyright year to 2021 (spotted by Vinod, thanks!)
- drop "default ARCH_MESON" from the Kconfig entry


[0] https://patchwork.kernel.org/project/linux-amlogic/cover/20210604190338.2248295-1-martin.blumenstingl@googlemail.com/


Martin Blumenstingl (2):
  dt-bindings: phy: Add the Amlogic Meson8 HDMI TX PHY bindings
  phy: amlogic: Add a new driver for the HDMI TX PHY on Meson8/8b/8m2

 .../phy/amlogic,meson8-hdmi-tx-phy.yaml       |  55 ++++++
 drivers/phy/amlogic/Kconfig                   |  10 ++
 drivers/phy/amlogic/Makefile                  |   1 +
 drivers/phy/amlogic/phy-meson8-hdmi-tx.c      | 162 ++++++++++++++++++
 4 files changed, 228 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/amlogic,meson8-hdmi-tx-phy.yaml
 create mode 100644 drivers/phy/amlogic/phy-meson8-hdmi-tx.c

-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
