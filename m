Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EA3D606A31E
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 09:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ASbsAT2k;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=obyXd8ix;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=0uzOAneY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=NblLJ/WRZvXisTwcUcHclHKFpKxlTc2abtUnUEDPBco=; b=ASbsAT2kqw7iR/jz1pR82hGTJ1
	O4g5dTnVKgQmgSNcnPfcy/lhE9TNwPqlfEU/3Vtx3/3XrtKW/2Xayye2nE9qGgWYK9Y92Oubd2h3H
	0ZR/qzfZxt4tRc7z6gyEAjGiRYbYUJoTyx8AMXS5jcxgruanpSHF32NYGNg5sKPUIXCCwjvLykJwx
	Bauo37WlOTHQBlNW6nFtuczjT9QBc1CHlbHas3vu/RZrRdBKLKmOS2kOkz4bRvzacgfYnEOov6Dkr
	NkniOgpvGjenRsb7Cozov5VkcBUonOk9/OXE4L11APpoT5pb4QT1lhq5xlx/3YsoZj4VqRc/7cKBM
	Zaa5CE9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQIJ-00000002hk0-3VJA;
	Mon, 23 Nov 2026 09:25:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQHC-00000002haA-1Z2Q
	for linux-phy@bombadil.infradead.org;
	Mon, 23 Nov 2026 09:23:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=k4/rvLgtcMpaUxMn6Fqp7RLo2TbuALQdqASFTyuNpDE=; b=obyXd8ixza5nkqR8YIsOmTraqx
	FdxGa3kI0zgu7Lvb3MkZTYiJIKkmau4IBEYJtD6UoAWCA2cgiDhEdY+bHAv+QzOFJu6oHBzKsnXup
	J0wCwlBTzEKqEQTkBQv6D1I2TFmMdLyaRuwzgBFURpfSYJfyQjxdM7aTMJnWM0ZC/vguUtEx4N/5J
	kCUJywnLQ0XtEmM873uUhmsXq/sJXTEwegrH7xSwfHiFOqu/rFguIHBWtnLCAhQ6y5FexdKdRIGMJ
	8UaF3RAmhXFcybQ/LbdnF3FNROyqqYJgK03IhemmpaARKKld/CKK+zRAxP4vYGx3EwHQ/PfOFUxd8
	L6xPDIaA==;
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQH7-00000002uuO-1E92
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 09:23:52 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-4a7b8abe209so2299831f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 01:23:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795425825; x=1796030625; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=k4/rvLgtcMpaUxMn6Fqp7RLo2TbuALQdqASFTyuNpDE=;
        b=0uzOAneYKbKmmIPtxWxbUOrwsloV58s3aPE6Y2n9xa7qOpYq293wbacxb6CnhqBqRC
         3R7PFQZtRPC7L8T1j8maiTrDmv08nbr89sserHVR7pxzRDZ2CZ6nA9DBr+/IyDCoKu8B
         ide26vm/e9qr4ugmWXt3WsOigcoyqn29ECtbxmO5/8/3afYqSSakfqpRynZpxyyX2oao
         M07g0fy9OCPUfAATh0Pg2rjr/+vk3FIZf9U0QFFMXuKdGyJDAym5dIb1w3hacpHcSr3T
         0oGlSKzSLiGSl0ezovkHiDFPD6PEfC96fQoFYiDYmjDlsY6W5ScH6U2oVYRykMq4IchK
         Py5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795425825; x=1796030625;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=k4/rvLgtcMpaUxMn6Fqp7RLo2TbuALQdqASFTyuNpDE=;
        b=WFs5ZcZKzKX4mkbT31fPYPfRKdVnNyZelJIc0tPAek+avUNPfHhIyEHXj4WZWMTQ8h
         xnWY7nGGoN9Sxng6taOyo0SWtGzZ/qOSsZpFwm5eAAYeDRrXO83E8ugVHxZ5mJ+UctLJ
         pcL9LjWJnSL+NFMuQlzwwSFw2RXUUpxcQsTIfWBw2AudT7FFqT0ReoiTcIDbpbSMJ7TV
         94Nv8yZy9I5E6QDDkLe/XkYwZSZuhHsdJTXHgMxZ6zh6sdDgjpR+AVKsmFQllGeyfp2y
         djXxaGmRskaUoYGtxi6selny7nCNr0ha7lCkr8gNgjBMnQWUL3nqBRnxByRgl7GKgtN5
         nMrQ==
X-Forwarded-Encrypted: i=1; AL+hErEK2js1CKafY6qVRAYy1nmU8nUEuVrGH3pcQSOF+jpt2WrEG7STj9zdsQhZ+DE+gZfwC1sRV32iZHE=@lists.infradead.org
X-Gm-Message-State: APuU4Z/Q3Z3uxaFfPaRvHZu1iIzhOSB+J7sNNtP+gwUiqrUeIDtnoMOK
	Yf4r26xc5ZXhY7PKh3K/97rJPhsxjjrVGPuAr9L5nO5btPsEfFnPuloT
X-Gm-Gg: AZFdTZfOmlmyLB9uiJ3wOTxhSpc0UMrWbBaqonnuWSp1BhOJyRi6tCpcp/DxYvSL6PL
	mKjpvNUtJQUW8Lq8U+EP/SYzxCpRtIcvonU8UvmgBZlP0JahlXbrIa7zLrCreSNApr305YMqN4z
	9/t5SH/MXLmewIUiJedw9f9K511nFWcbB5RNbKYUHSZvFckWzBjAPjuH+3eUbvOqYl11Aa9C1uv
	SXhKD+FU2+qx/2EHio9Yzd+2ap1X42HVFqMTnvWeTrPMY1hp8hOG7vmUCVn6lJdvaMqxIqn8NSj
	Nn7suuQFJlRdN9Qt76uXgcslDhGCuOs5Qma97AOcXUHykCuO6aDAoX3Qnl7dCBhtrUZQw8XlVom
	Q5V4LZ++lHOXNou/2ghn142sxOg/tcIahbxiYjwOAR+RjLfgdKVqCPKm9D3BEVrJrljAk8w//4f
	UNI7FOQvLF6UZs0NX92oHUoCCaPAnVdA6b6OG0lDMSsjoGe76YA1Ck6oNjfbvCixKRnCt86bNxn
	92ywElNbh63Q5FRefh0G7S0Kft/ZVpkmNPZ5wjqreuSkKoTZ/i63/cV3piq439iFK8U0CvvmFNd
	jHfauAOmGToczWg72+yNwjgmQFSDjks9Xpsi0pKToRQNic+nO5CJYWsZ3j7LVQFR6AAyxS4O5fa
	0BP0GMZU6Hn4o2P6Y4UiaU3wEpO6NWMJ6SpM=
X-Received: by 2002:a05:600c:4f0f:b0:4bb:87f4:3674 with SMTP id 5b1f17b1804b1-4bb8880ef40mr276942035e9.15.1795425825278;
        Mon, 23 Nov 2026 01:23:45 -0800 (PST)
Received: from DavidArch.internal (catv-78-139-0-46.catv.fixed.one.hu. [78.139.0.46])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-4ab6bb989eesm21060655f8f.50.2026.11.23.01.23.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 01:23:44 -0800 (PST)
From: David Virag <virag.david003@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: linux-kernel@vger.kernel.org,
	David Virag <virag.david003@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	Umer Uddin <umer.uddin@mentallysanemainliners.org>
Subject: [PATCH v2 0/5] Add USB support to Exynos7885
Date: Mon, 23 Nov 2026 10:22:37 +0100
Message-ID: <20261123092244.1792040-1-virag.david003@gmail.com>
X-Mailer: git-send-email 2.56.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_092349_396686_62BC10CF 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: 0.1 (/)
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This set of patches adds support for USB on the Exynos7885 SoC.
 
The Exynos7885 has a DWC3 compatible USB controller and an Exynos USB
PHY that theoretically supports USB3 SuperSpeed, but is not implemented
in any known device. The vendor kernel also stubs out USB3 functions, so
we do not support it.

This is a v2 of a previous set [1], which was split into a clk patchset
I did submit back in 2024 and eventually it got applied, and this set,
which I never ended up submitting until now.

This version fixes some things noted by Krzysztof Kozlowski, and also
contains a change made by Umer Uddin, as he recently tried to resubmit
my old patches from github [2], fixing some things up, but missing the
previous remarks.

[1] https://lore.kernel.org/linux-samsung-soc/20240804215458.404085-1-virag.david003@gmail.com/
[2] https://lore.kernel.org/linux-samsung-soc/20261119-gta3xllte-usb-battery-v1-0-0cf5f763522e@mentallysanemainliners.org/

Changes in v2:
- Clk changes not included as they are already applied
- Add Reviewed-by: tags where appropriate
- Use samsung,exynos850-dwusb3 fallback compatible for dwusb3
- Use unsigned long for set_ref_clk_rate
- (from Umer Uddin:) Error-check clk_set_rate, and fail if returns an
  error.
- Keep dt nodes ordered by unit address.

David Virag (5):
  dt-bindings: phy: samsung,usb3-drd-phy: Add Exynos7885 support
  dt-bindings: usb: samsung,exynos-dwc3: Add Exynos7885 support
  phy: exynos5-usbdrd: support Exynos7885 USB PHY
  arm64: dts: exynos: Enable USB in Exynos7885
  arm64: dts: exynos: exynos7885-jackpotlte: Enable USB support

 .../bindings/phy/samsung,usb3-drd-phy.yaml    |  2 ++
 .../bindings/usb/samsung,exynos-dwc3.yaml     |  3 ++
 .../boot/dts/exynos/exynos7885-jackpotlte.dts | 20 +++++++++++
 arch/arm64/boot/dts/exynos/exynos7885.dtsi    | 36 +++++++++++++++++++
 drivers/phy/samsung/phy-exynos5-usbdrd.c      | 26 ++++++++++++++
 include/linux/soc/samsung/exynos-regs-pmu.h   |  3 ++
 6 files changed, 90 insertions(+)


base-commit: 5d7b9f865597a74b323d512619c42f3e07ae043a
-- 
2.56.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
