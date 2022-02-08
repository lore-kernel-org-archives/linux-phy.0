Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B90BC43219
	for <linux-phy@archiver.kernel.org>; Tue,  8 Feb 2022 17:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A3vZPhU2VxAGEbDG/s77hOlYZwcRZkjromj+F4UdW8s=; b=NmfoHXPJk6mZxo
	ZgktI3eanlpMpvkcDryA45CFrAvGLpdm7J0B5hXd3t9GCOAHcSXv7JkvnAMR/rgjn5qVp0PsmVtD0
	UPl8CJ4pPwAcRJ95xeZtckm0otYtAyrDunhBI0gfnJ8xgB35UkLRwLf9wKFcpvU1uevLVJR3VA4qq
	O9xusd2Kqi71TtPEHM+dsSHl1ZowMolnQC9Q129LPtsAlzGdWO/HckRGTZZqSuq445cj6HnSJe3GM
	WVNQe3UC1upIQmtypMjw4/AfnehbvzgNTQdLnsRYwLd1mCHKoWDt1czY12YOyPJ65QN5p6vl+8qR0
	AFoudpFqKeoXI+Kh8FYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHU95-00F2A4-MO; Tue, 08 Feb 2022 17:19:15 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHU92-00F28T-SS
 for linux-phy@lists.infradead.org; Tue, 08 Feb 2022 17:19:14 +0000
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 09EDD4004E
 for <linux-phy@lists.infradead.org>; Tue,  8 Feb 2022 17:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644340751;
 bh=FcBirewgG5GspHM+XiPFPnNhDyGu6MCNBPG4nrU1bUg=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=pifFX9AmJ3B4OewK8O2GazzFCutjvzKZaYYfrjXu/sMEWGB4EI+L6UpjDfII+7s/S
 EIkWCGJPiY8C/hGzC05RJ8NrlYiBrPGQpDOXXf8fOzFj4KE02otIyggL9rhHwMJH4N
 uTnADkTWzPqH7SfiUsLcWo7hvQ/ULV55QmGEXCaSDQE//sXFcfp9jMQO0Fs0ZiZa4m
 lBKyuHX0JX9LqV8V9dgUDqklO/Q0/4l7aczUPh9jDqzgll2l2FkZY3qXgF8RNLxnAb
 DCB8kDiZNYVVB0cCi67jj+zs0/RwE/tbiwIdkZTgYlj6iBcOrlFV7jQe/uYSCz/0RF
 iTj++jJsYm6IQ==
Received: by mail-ed1-f72.google.com with SMTP id
 l19-20020a056402231300b0040f2d6b4ec4so6113541eda.0
 for <linux-phy@lists.infradead.org>; Tue, 08 Feb 2022 09:19:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FcBirewgG5GspHM+XiPFPnNhDyGu6MCNBPG4nrU1bUg=;
 b=BVaPxRSs/J7naJ0QwzaI7SVKzUWRtiMziztlsCO6uGeC0rnwJTJxqjpgv+kCBNLkHD
 BK+4hKLHnv4ib8PC9l7wPqK0JbiMes1p9a19aoXBiuUhgRnJGbKhYnBSxVgga7EyVhCN
 hIj6+bZ/KRunGPq1b/C1MDOLM3lu0csIE+RYPdC9TvsCUTDCqUGAcd5DSg/AVF7gWou9
 T5YsaUAzJweGS1tTKRySmP4pbryK97is4C0cFcVBgmTi5bWrWKZhPHeoIQ4IgLbt1NFH
 mDdCCBWvsLAbQmv1D/6DW09whcHotiMaPtLvpr07GKt4ZXAVHBuryk7IEcrybqfFxRnM
 x+dQ==
X-Gm-Message-State: AOAM5301PkJAGSs/XDJHGsvuPLAVuRPMWxO4FRRdTzXnw1yU5uqYRJLD
 HZIZCKafG1d4FKyvpesQXT6oMhqoxyGSQ0Q2UYHnmrVwh80NbcmFah1XoDIB2nAxT3Qu5s+dmt0
 q2EnmqVy8Bbkh7AOYPdURMu2QfE6zwBphZm8JMYsCsak=
X-Received: by 2002:a17:907:2d94:: with SMTP id
 gt20mr4673991ejc.501.1644340750440; 
 Tue, 08 Feb 2022 09:19:10 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxr5UsCRspXa4NCGOuZM5Ba8debNWt45uxZ8oMQLV+xoDrSe58nTit31OQ9lQldNaQthBGDVw==
X-Received: by 2002:a17:907:2d94:: with SMTP id
 gt20mr4673973ejc.501.1644340750270; 
 Tue, 08 Feb 2022 09:19:10 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id r10sm5125550ejy.148.2022.02.08.09.19.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 09:19:09 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Inki Dae <inki.dae@samsung.com>, Joonyoung Shim <jy0922.shim@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
 Sylwester Nawrocki <snawrocki@kernel.org>
Subject: [PATCH 00/10] drm: dt-bindings: exynos: convert to dtschema
Date: Tue,  8 Feb 2022 18:18:13 +0100
Message-Id: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_091913_152593_A963D613 
X-CRM114-Status: GOOD (  13.42  )
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

Convert most of the Exynos DRM/Display bindings to DT schema and put
them under "samsung" directory instead of "exynos". The FIMD is used also
on S3C and S5P, so exynos is too specific.  Also most of other Samsung
SoC bindings and drivers are organized in directories by company name,
not by SoC name.

I used Exynos DRM maintainers and myself as bindings maintainers, but
feel free to propose different approach.

Dependencies
============
None. I will take the DTS patches via Samsung SoC tree.

Best regards,
Krzysztof

Krzysztof Kozlowski (10):
  ARM: dts: exynos: add missing HDMI supplies on SMDK5250
  ARM: dts: exynos: add missing HDMI supplies on SMDK5420
  dt-bindings: phy: samsung,exynos-hdmi-phy: convert to dtschema
  dt-bindings: display: samsung,exynos5433-decon: convert to dtschema
  dt-bindings: display: samsung,exynos7-decon: convert to dtschema
  dt-bindings: display: samsung,exynos-hdmi-ddc: convert to dtschema
  dt-bindings: display: samsung,exynos-mixer: convert to dtschema
  dt-bindings: display: samsung,exynos-hdmi: convert to dtschema
  dt-bindings: display: samsung,exynos5433-mic: convert to dtschema
  dt-bindings: display: samsung,exynos-fimd: convert to dtschema

 .../bindings/display/exynos/exynos-mic.txt    |  51 ----
 .../display/exynos/exynos5433-decon.txt       |  60 -----
 .../bindings/display/exynos/exynos7-decon.txt |  65 -----
 .../bindings/display/exynos/exynos_hdmi.txt   |  64 -----
 .../display/exynos/exynos_hdmiddc.txt         |  15 --
 .../display/exynos/exynos_hdmiphy.txt         |  15 --
 .../bindings/display/exynos/exynos_mixer.txt  |  26 --
 .../bindings/display/exynos/samsung-fimd.txt  | 107 ---------
 .../samsung/samsung,exynos-hdmi-ddc.yaml      |  42 ++++
 .../display/samsung/samsung,exynos-hdmi.yaml  | 227 ++++++++++++++++++
 .../display/samsung/samsung,exynos-mixer.yaml | 143 +++++++++++
 .../samsung/samsung,exynos5433-decon.yaml     | 148 ++++++++++++
 .../samsung/samsung,exynos5433-mic.yaml       |  95 ++++++++
 .../samsung/samsung,exynos7-decon.yaml        | 120 +++++++++
 .../display/samsung/samsung,fimd.yaml         | 198 +++++++++++++++
 .../bindings/phy/samsung,exynos-hdmi-phy.yaml |  44 ++++
 MAINTAINERS                                   |   1 +
 arch/arm/boot/dts/exynos5250-smdk5250.dts     |   3 +
 arch/arm/boot/dts/exynos5420-smdk5420.dts     |   3 +
 19 files changed, 1024 insertions(+), 403 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos-mic.txt
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos5433-decon.txt
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos7-decon.txt
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos_hdmi.txt
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos_hdmiddc.txt
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos_hdmiphy.txt
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos_mixer.txt
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/samsung-fimd.txt
 create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi-ddc.yaml
 create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi.yaml
 create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos-mixer.yaml
 create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-decon.yaml
 create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-mic.yaml
 create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos7-decon.yaml
 create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,fimd.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/samsung,exynos-hdmi-phy.yaml

-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
