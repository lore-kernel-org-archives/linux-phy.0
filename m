Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 928F6606D809
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 04:05:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=YXEidaMg;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=xifFA+th
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=vr4wLc6pTm5TatQ0Vj+tZQfxVrxzyHcUhOld+9DZqJo=; b=YXEidaMg5waamnvCoRyDivfCqR
	T9spJa8m/VLfPAZeptlEgIsM/PPi+mFOFk+5jESgqYeGxI+61tNRF/TXmTpogwhVzWu+7U8CJH0kf
	LpL1r0mVA5BPQvEkye439MM/Dpaf6IukoaFagyJxNMCNXHpV0h/o8EHEf1S+staclNjv8BvcLc9j4
	J1XnPNlK8Vz9flQ1ng9IW21Bav5uNR4AxuSeVFNhYUJ9NYoUPolhnM1K/cziCvFKAe+x2MBJxr858
	/1iXMVMUc21jP8nywDhRQkF2W3eTVqtaOt1Yuj99FeDeNMnazZr2pc9Wut3hrhMso8wSFX8NkUOl0
	F1tgXNNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQGdC-0000000HHoy-0j8s;
	Mon, 09 Nov 2026 04:05:18 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQGd9-0000000HHo4-1Dm7
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 04:05:16 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-3ac78f4c10bso190671a91.1
        for <linux-phy@lists.infradead.org>; Sun, 08 Nov 2026 20:05:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794197114; x=1794801914; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=65HrNvLn4XwWDPvHQ3wW36EvDAN7JOrAPcPbiqPvX1Q=;
        b=xifFA+thbe8kY4QyWhmuoHht421YUzoJxkIjtpziJev49AiYn8qHViNx7awt/8sw66
         +JqFbrhC35iZPpmClhu0KYEeTP3vyVuBKoouwWqwNnidYmmNl2YsKU8b4K/QN/YiBa16
         Gl1T2I9IJqEp6BrjVoNXFHDSc9SsYW8IHjYrL3bKmitqwG4x5YiwFOJirWS4EEpvPzcJ
         lDHpWIebeN4hdujjrapYWKN1OqS4atX3fAYqoiGev1oPqbFV7faBjs9T2qLJxyPm2ndC
         VIdwhaYlJglnCpHhFL+SbrUdEZgJq1Wttw13XJtmxqUaZ6kznH8m16FLzm3UmiKVbKig
         CIYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794197114; x=1794801914;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=65HrNvLn4XwWDPvHQ3wW36EvDAN7JOrAPcPbiqPvX1Q=;
        b=kCVpXGW07ZT/b6pJAkJAKcOI1lpuBhxVXlPue1z73Gkp+7t2xlc+BxvaAHcgPPka4f
         JMrgA9N9pS25CXeFVQdUcL7qyOZ5k0BDdQqpg9YG23x4G+fXP7E/XsjCyfgO301yeo45
         ttoO2/rVvUNNDZW2h6XqggTUTEp94+Bkt4klQWAprVUAUKxWG8TYMoaK5AFyUNzLXboj
         DJy2p4QQNGwecSJcz2sEaKsUZigoqNT89/u3vni8tnGivejM35M+HISL2waiizrgqsZQ
         yELGCyeN0M6O2uo+T//kd+z5pgQoS0dKNuwx6/q4P8J1raceOManUPhmiobYPFjtyXsz
         nzRw==
X-Forwarded-Encrypted: i=1; AL+hErHSuDAIE+BRinVG2LYuCLSd1yBd8w0g8Nhqr7MIlSIM3qog25umxGILlxFw68+z+hsnd2j7qY6J7yc=@lists.infradead.org
X-Gm-Message-State: APuU4Z+iN5ToDSS+5TOe8ru3oVYkTS7pUrQvytipHuLuK+zS9Dj5juYy
	NZ4y3z1T0rdPfc/PpRNIfkBWc7z41OYeQ7sXYFfJW2siKRccVVwYE/Wa
X-Gm-Gg: AYBFou1+qbOMFlt5MxXdx2kWWW5D8RYqlr1huGlKJu8RA+cgOr70VkFmG3nd6VvkKv5
	SUTQNx8hUF+KDnyBqG8+F9RyfUOI7Zqq4dHgLIJIiO84sgDbVDaRE7s623wDc4BKuFE81eN/G2t
	tzHzdzf8BJwwRa7W3vaxgZUrK6X3TDQ9jgM2CsfPEhWeWoAe1Ckjl/D/HaXfkeiJiuzN082raYA
	LP1GriMupu9tlxRx7Jt91l0+xvo5z/N4oIwiYRYCyR4fQe0c39U9vBJ358SfHlyraAf35XaHcX6
	2epCKacRUouh+Ug+UVeFbMkU5T8UWKDPWjrdLyp0U1lUAZjQ574iS7oQmI54f+ed79TIL1oMAaH
	u/J5aDunIjGb9cRmGKto1l0jbrTyykfkJav4MS17MyYyXa1e14mPnSWXkdp7/ZgbweNLuLsBLvK
	2HohnvfaSjdlUM7g/iDQR2NlWENgEiz0Yc4qKm1Bqc6qmA/1KXJ3yE7Qi3zTF5dXX+Q1nmF48N9
	3mDkVPBaAmdiJjbUha2F3d/I4ENzWzeZICGA0h1y8gIKffCCa7LpkNoKrnBw5JPbJaR4RX8enXX
	HKqeLY8fl7yvho01PoU3FHGee2UTWBjjZcCDV05/t5a0HwMNLaq8SxiC/pM0Asw9W57PclOqG2T
	fVUTM/+22YJABjUu1LmLJWr/yp7flxem/taFZEWqbxrFObg2uuZ0Vhz4QDVyeTmBEgP5J96W1ym
	KTlA==
X-Received: by 2002:a17:90b:3b50:b0:3b0:9fbf:8951 with SMTP id 98e67ed59e1d1-3b12d0dee33mr2874760a91.5.1794197113782;
        Sun, 08 Nov 2026 20:05:13 -0800 (PST)
Received: from ryzen.lan ([2601:644:8000:37f::e34])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b127891fa4sm5116170a91.4.2026.11.08.20.05.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 20:05:13 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: Alban Bedel <albeu@free.fr>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 0/2] phy: ath79-usb: support the AR934x+ analog reset
Date: Sun,  8 Nov 2026 20:04:49 -0800
Message-ID: <20261109040451.114135-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.56.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_200515_366435_5377D019 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,T_SPF_TEMPERROR,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From AR934x on, the analog part of the ath79 USB PHY has its own reset,
which the old platform code handled outside the PHY driver. Patch 1
adds the optional third "phy-analog" reset to the binding, along with
AR9340 and QCA9550 compatibles that require it. Patch 2 makes the
driver take and sequence that reset.

Changes in v2:
- Send the binding and driver changes together as one series. v1 sent
  the driver patch alone, so it used a "phy-analog" reset name that the
  binding on the list did not yet document.
- No code changes.

Claude Code (Claude Opus 5.5) was used while preparing this series.
I reviewed and tested every change and take responsibility for it.

Rosen Penev (2):
  dt-bindings: phy: qca,ar7100-usb-phy: add AR9340, QCA9550 and the
    analog reset
  phy: ath79-usb: support the analog reset

 .../bindings/phy/qca,ar7100-usb-phy.yaml      | 38 ++++++++++++++++++-
 drivers/phy/qualcomm/phy-ath79-usb.c          | 33 ++++++++++++++--
 2 files changed, 67 insertions(+), 4 deletions(-)

-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
