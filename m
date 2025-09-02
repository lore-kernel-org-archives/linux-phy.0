Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03008CA1005
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 09:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F1wijJdTaATi0V6giVq0Oadtc8iEwNQXaIWYWgoPRrQ=; b=XU4KP22h7BFR61
	97kdAcw2bORLgBzYFKBm6WbHBP9d+zd9cQT3711kMPgA50B/VYS9WEZBIFDTm8zPWtx7Zhvoark0a
	51ebbU6wJvqwmYtIskVTRl6pYEfxqupkGR9SNfwRz+d4sNQ/UDKeDnx4pRiJknrKoUbGDab8nyGkR
	nr56MsxmANnFnVKbGDPyKUkpnKnVGMuOql6033lBR4XCGsoomtujClpL6o3Zmawy3BYpWiUYGFGCi
	MeRtuA0gfqq56TrfEuvQwbqJQJk7dQ8LHqezGiiLNwhiUQ3QGyfLajZCj38kY33MN3gwjzkfzs9Re
	5QYy3l3yC+PYMo4QTMaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utNH6-0000000GLyV-1lpa;
	Tue, 02 Sep 2025 09:26:02 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utMsV-0000000GE7c-2Asc
	for linux-phy@lists.infradead.org;
	Tue, 02 Sep 2025 09:00:36 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-3cbe70a7923so4007636f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 02:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756803633; x=1757408433; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wqoSTMfnInHzXncCAvecG0yOfvdXdS/1fhZi2BozDIA=;
        b=lQuLOYujDwQigfV4mFc2rjJmJK9ORnI7u+W4U1X4n1zLjdl7B0TwaBuLw4IPatBWkk
         kWTzsWBpk3oAXbIFcav3nyS9UGJEzdl9kj9jXY6wGTytm+PxguWAD/ajdK9G3E5wIGxT
         eQwMZYSfS2rJd7ZLSN+nxb4hpvdFUn92P+ca5ratTcuOvx5A2bbZfkELGulPVs59lc2m
         aLJ/TyMxrjjuTNvaWJeJw81LuD0ZFJz2x46Nx8fXAQ62QbkXcywAyVRfrZhBD69jggXJ
         tetPfkHPrsmh2SgvwBvtWT+PRFwteBLYfG/U05T84KPQBRr8GXwetHt2ennGftc+Q+UY
         iLWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756803633; x=1757408433;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wqoSTMfnInHzXncCAvecG0yOfvdXdS/1fhZi2BozDIA=;
        b=tSqvl0s9r0OiRqU40xDwcctGSc39JFCh1rm5xSwpCmleQnFlYX8xBpFFL4gxi0ax4x
         uqfaB6WdKWgBlZQzxpaVE67lBaHEHbgoBDRcVW/e2aLtWqzZRtzHZUQa4T1k+ijDGra7
         JEOCnbAqQFg0WVq1Jdr4qXgy+UZBotEk4+CR4BYg6c0Mfh9RvzfKJAug7whxu8rx/2Eb
         H1uvjrZOjntrUXOYRnuJhf9yfnzENQc2r6MWrUE8ShlC/KVzUL11KkVPlcFT2WpNeGhf
         0u9lYn+iuI3iaJtgb0v3HeIteRPZk1d2wcnC4Fbg+FaDr5W1jtkThHfQXUO/cjKLE1Y2
         uQdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUaosz9Ge3uTnu71YYlRM+C+tpguXjqxhVMSohdenBvWOwfOWmrsBjowfMUjOJzga7OS4bBtz0hPM8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwLKNm7C0865J1+G5ARtKka0trVamDwtkCiY3Dco59iu5fofTuk
	lLllLAwrN7AFpIp2ei8AQ79E2yuWiUP4pXQpK1e+ZnqjUeQV29IdyfSXdRa42QyRZ/g=
X-Gm-Gg: ASbGncvxv8Zk1vdgEl4tTiRlug+2uTXGC7OkybOhYgaSyEBz4x+YA3tCKEv9cDGMHhL
	+hKjNRKOm4L/skuXtWRggTXiASxQwbg0KZK+6MBCFfHePxs0AFllzUeYBHViUpm93bSXw2cTucu
	WvS0hbCCf0ucDoSBNwZWSkkGBDHjWcqJ1z1210d/gZxhARecIA0xnA+8ls4HBOQF/8tkZiWdini
	K1O62AhrKvDHu99G5vwQhQ3mAOx+xvFz6FEJa4YVMrpBeQsJudqtv2p5d1Y5xzFofkpSQi7QCBP
	y6SKj1GOXcl//uZrkSIMEwP7bdw/R9U82D7R2TzF42YiEdbmj/6C2nmSO58aLrniMDO9n1fA93d
	TVvc7bMiiKqRcvoju3F3JVL1cXFdEmRB26pjvRV5OMWTctJwfwwG//Q==
X-Google-Smtp-Source: AGHT+IHchy/28th+xU0fzEQUhWURMN5gK9cGjR/X/RP803Si12JCXg77wbS/BLHAWVSPPSGpdz0iUg==
X-Received: by 2002:a05:6000:2007:b0:3d1:abf7:e1d9 with SMTP id ffacd0b85a97d-3d1dfcfb948mr8671065f8f.35.1756803633392;
        Tue, 02 Sep 2025 02:00:33 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7271cd01sm261112045e9.23.2025.09.02.02.00.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 02:00:33 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 0/5] arm64: qcom: x1e78100-lenovo-thinkpad-t14s: add
 support for HDMI output
Date: Tue, 02 Sep 2025 11:00:27 +0200
Message-Id: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACuytmgC/32NQQqDMBBFryKz7pRJ1BK76j2KC2NGHWiNJBIs4
 t2beoAu34P//g6Rg3CEe7FD4CRR/JxBXwrop24eGcVlBk26JqMVrn6RHjfFhhQRTu4tWFpX29o
 67Zob5OUSeJDtrD7bzJPE1YfPeZLUz/7vJYWEg6o611QlsTGPl8xd8FcfRmiP4/gCwVV0gbcAA
 AA=
X-Change-ID: 20250821-topic-x1e80100-hdmi-3bd5b5bd2d96
To: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1884;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=/AvEkFL8ZPL0QX5wT+kkkwMlzldfAIudlswK22svjfo=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBotrItc0wBzFb+X3fEn+n3Klrj6iXvjRNIAzCMweDN
 97yr+i6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaLayLQAKCRB33NvayMhJ0dyLEA
 CApfG/eA7wleGCfq+kgzplNW95NCgw/c1jiZUk7LzJpgIIhaPA+iZ7lDhGD6SFQRD3/jhLVwl5BOVj
 E1GjnmzBI2tguTepGzydl369M+EbnzI64QUq2b3KiaM8K0aKXM3+HvUVuaqWjbm0rQU0r1KvCNN9YF
 yhdxMTLthirxY2ffP2yAjRvKPUAQco4t18XUGOaV6LttkAt7qWXayvYongE7r2kNJKxPemctif77ry
 SAA3WK9G8HtOFtSmUg+N4sQXgkj3u1FRelH1AHkPLAPYdGurTFd8rTTToLDyAdSpQOOQbnfgCPpELO
 5txIHesHPB1fN2hBPRvjkj6nA0zp6J48hNIuDpH8wULfG+VfaA4vI49Vz69TTzUxKQTuiuY/2n1zm0
 wkahQWU5Ta3ZmerGV+u+kbkTBOOlX92fuRzJ/FO5Seub53eQgn1fcHoKKgAxC0tySQd0jaP8bIDyuO
 iI2+TNaVJv/VAA+4sYzdgDja7T9639qw4cuCDPNUmzR/wGKM2wTwHT0iL9KakxrXSnx7t8G6rjQ6r+
 QvpBAa5lItszFDL8n39IXkUoJ0RH65ob9oSNonK/h3hjvbwQhSQ+8eLascE5fo1njFhJ+EdvMmoh86
 CNgKvbR8K9HOBYXbnGSxucBckKWbI41HqZAaTRzMKvFT8IOo1UKSCP4mXQhQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_020035_575208_57AA4B70 
X-CRM114-Status: GOOD (  11.18  )
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

The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
connected to the third QMP Combo PHY 4 lanes.

The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
of a combo glue to route either lanes to the 4 shared physical lanes.

The routing of the lanes can be:
- 2 DP + 2 USB3
- 4 DP
- 2 USB3

Add the needed property to specify the lanes mapping and
use those in the driver to setup the right PHY mode and
orientation.

Finally Add all the data routing in DT, disable mode switching and specify
the QMP Combo PHY should be in DP-Only mode to route the 4 lanes to
the underlying DP phy.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Model the HDMI transceiver as a simple bridge
- Switch to a static lanes mapping property
- Link to v1: https://lore.kernel.org/r/20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org

---
Neil Armstrong (5):
      dt-bindings: display: bridge: simple: document the Realtek RTD2171 DP-to-HDMI bridge
      drm/bridge: simple: add Realtek RTD2171 DP-to-HDMI bridge
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Document static lanes mapping
      phy: qcom: qmp-combo: get the static lanes mapping from DT
      arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s: add HDMI nodes

 .../bindings/display/bridge/simple-bridge.yaml     |   1 +
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |  29 +++++
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    |  70 ++++++++++++
 drivers/gpu/drm/bridge/simple-bridge.c             |   5 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 118 +++++++++++++++++++--
 5 files changed, 214 insertions(+), 9 deletions(-)
---
base-commit: 7fa4d8dc380fbd81a9d702a855c50690c9c6442c
change-id: 20250821-topic-x1e80100-hdmi-3bd5b5bd2d96

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
