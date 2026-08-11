Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2333C5AC67
	for <linux-phy@archiver.kernel.org>; Tue, 11 Aug 2026 12:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EEMAJhGXAl34ALqtUsZmKpDgKkkaDDRcoHMs3PXJv4E=; b=cpb1/f9XFyZgqK
	13z9sIWdid9RFNzoMINQ5aqwGNGysq8BRlCnu47nty8IMKWZ/h5phCV8PTBx1kVZRtO9olaqYtkqZ
	5+v+1PQXhn/N5GvrwmYMFbvgxPSlSh8afLENaVGu+1qQUAOlBWI4p/772ntzYOMtfuMbIFkPXLSrN
	83IQGXFpGB71MjCoT7CayQVfV80SuHAFfhT26vD9j6elP34Xy/JkAMrZvSahshcd7PC72EtVjzVOc
	4PJGUGYY/XSZULLZSb+FF7+v36ag42um6Pw8TBMqOKC6enVhs+D+SA6HgAtB3g3zn2BbbFcULWaCw
	NxtJNQIPmrPE9SG0EF/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtltI-0000000E2xf-0ZTg;
	Tue, 11 Aug 2026 12:47:36 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtltF-0000000E2x6-3K3l
	for linux-phy@lists.infradead.org;
	Tue, 11 Aug 2026 12:47:34 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4956242332dso29719295e9.2
        for <linux-phy@lists.infradead.org>; Tue, 11 Aug 2026 05:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786452452; x=1787057252; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=myx2pqVZcTsFSnXQZF6qDQDA6eHjTeg01tjezU04RHw=;
        b=PeKbAiDs3vdTo1o+ZMbu1n+CgbIDnr/ZcqqB29GAupUix1ZW3tKs8RrAB72y9c1YZ7
         jaE4Pd1pp6OLpN05Q+BgokKTIFHBnwJBLA0OMawLBNYQmoSSpQ4c+eTgNSA5BiDOBEm3
         xv9+39LWhtLhYgddGPH23HvWZPpQnjFVOBxzm50CGemBFsmoZEvwLyjcjUPGv0p9NP4b
         DoE+keZ9UBqxz8Q33UsNaeKWGoO6x7/vfZv+cgL0kFBXJ678X4Zn36v3qg/sAxgbs1Jn
         23W8dh+n7C5+LuhDQaK8Bt4d6WSliS2DIvQdLMJ0gwO3OtY+TAi2UO2j2P3Ln/IctI8J
         6VKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786452452; x=1787057252;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=myx2pqVZcTsFSnXQZF6qDQDA6eHjTeg01tjezU04RHw=;
        b=aKbEcDDcItCaD0vm40CklznP+F8i9Q488OCNoyfwjfuNAiWW7OGk3BI1h/O2vS/Ql3
         Uf/mIY2z+XWTynaWNXyOvmaiA2BAHGPOhYH7Zmee9sZMMc12zmQpLiIAa+Lyl+6i619F
         dX3sPkY8/ORseZT46Q8ohmhnLOyJwxXe/F6oToqUVSwJJIIkl359BaG/OBpQLSdknTQ5
         pql2Ka3JTziUiljWjf/zwS7aoI30GI7wrIMmsGvzGNsTkCPQyKOljhn0FnR03/acnJZC
         u+cSEUIAraDxErZCtNM5gzyJzDjFXgRep3ekAZA5MOkNJ6m+tKvB64e0oPEtDdwINE5U
         Fxrg==
X-Forwarded-Encrypted: i=1; AHgh+RoPEx2+4n4gjQ4xvHA6rUIhctUNrR4RAry4tupQfhFVdg48tvoCwtFhGjVaPOMK7RB72TvBSvJVZ4o=@lists.infradead.org
X-Gm-Message-State: AOJu0YxEFaFz1mT7AbeTs5Z4g+eOLE/gLsHg+SwHrIlQbXNkyKvJe55F
	3JV5IIXL/EIubCNDXFlc/TubZybJuzU0x4r8AS1Z+oCS6HC9LgTkeTygb+hCPPHs
X-Gm-Gg: AR+sD11DyoZWgG1QVnp+2RGBe/gj7VmBCQbppC3bEE8DTD5zanHeYm/x8IJCAEg1LYV
	NGIMJftaOkYiIMZ4nPx8FRx54eur7H22Dyr7fLz60mDRmNQHgOmWFjaaOtE19eOgGDFbLudU1Vd
	NZ25rJLE72gHVClapLhmoU1qgjbj/FK5exd2LUrnpTSJWjk1aosvaFjtt24LSLJUn3UHKTUwqZ7
	34jzRTfgV81iL4fQjTSHmqm5vZG1fW1FD/SMVf/uZMHvBM8PKi6dG6HWcmYD8NBp1uoOFHzuszY
	8766Wdtu1mgkp0xAxy+qBPlZt8XDu5FTAg+PAfGASX9uqbcc9L5rGmU67Nsz0Ry/ZdfJVGMECP+
	Gjw0nQz4zEyFuGQWj63Epnk/0+HjVJvKFX6v6SR8n6UnOnvlf4W+f6JTyRpRq/rTsMAAhr2BFoc
	6EAcs9beW+Iev2fw2L50bZYJrf/xQdYpt15B5pnZ2G25vaRc+BWtHpr2PSLQS8CXwLkhUqhSbgZ
	lkcT8HXISeYebnIZrcW1M4tnrqhTT+TkNzzGLZt/ZWcb2ToaSl7/mT0Kxw=
X-Received: by 2002:a05:600c:5247:b0:499:5e50:5be9 with SMTP id 5b1f17b1804b1-49978e1a8b9mr43433045e9.16.1786452451661;
        Tue, 11 Aug 2026 05:47:31 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-87-20-3-207.retail.telecomitalia.it. [87.20.3.207])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-4814a7165a3sm4118207f8f.26.2026.08.11.05.47.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Aug 2026 05:47:31 -0700 (PDT)
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
Subject: [PATCH v2 0/2] phy: Add support for Airoha AN7583 USB PHY
Date: Tue, 11 Aug 2026 14:47:21 +0200
Message-ID: <20260811124724.702467-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_054733_837586_9B5FF75C 
X-CRM114-Status: UNSURE (   9.59  )
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

This small series ass support for Airoha USB PHY and Gen2 PCIe
PHY.

Changes v2:
- Add Documentation
- Out of RFC
- Rework to Serdes PHY instead of SCU (following
  for consistency AN7581 implementation)

Christian Marangi (2):
  dt-bindings: phy: Add documentation for Airoha AN7583 USB PHY
  phy: airoha: Add support for Airoha AN7583 USB PHY

 .../bindings/phy/airoha,an7583-usb-phy.yaml   |  205 +-
 drivers/phy/Kconfig                           |    1 +
 drivers/phy/Makefile                          |    3 +-
 drivers/phy/airoha/Kconfig                    |   11 +
 drivers/phy/airoha/Makefile                   |    3 +
 drivers/phy/airoha/phy-an7583-usb.c           | 2009 +++++++++++++++++
 6 files changed, 2194 insertions(+), 38 deletions(-)
 create mode 100644 drivers/phy/airoha/Kconfig
 create mode 100644 drivers/phy/airoha/Makefile
 create mode 100644 drivers/phy/airoha/phy-an7583-usb.c

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
