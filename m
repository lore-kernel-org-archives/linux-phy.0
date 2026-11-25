Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CE5C606A697
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 14:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=cv6IvdxC;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=J3ztJ26P
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=s0fvSi5mkJdSyTV3ClVmPjHsl6vChdLUAQ5qh2HRUC8=; b=cv6IvdxCESAG6K1hxoiTxI+LKn
	MFvQTFACv+r3Va8sWeNitTr5M4Pv+EkfUiBxaqS+dPCrjnXsbEEiCTo0ElQ0qhvwe6rx1nWbWm/QU
	84I+M+Xa2PPXBaMbe5TnOc1EewdoZVZ/hPchbhgNqsnIFFMG2vLFsrHA9bK+HGx3/ilcu2OfMRbY+
	minfzEjjFWabv++heL8Mrn3pGufD+xNAePC0DbMswG9FKVKjICI46SO438kaBoZCEj9fJHDGUu9k4
	ihqTnzSfpwZwfjc6htFJG6u11LuKtDisOHhWDIY+vMIkpMz2zgkIxAJZAU40ORD9ZZLeUyGUeRdfw
	Paq+duUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWEPo-0000000AGNI-1Jei;
	Wed, 25 Nov 2026 14:56:08 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWEPk-0000000AGK5-10Zg
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 14:56:07 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-49465892f7bso4273786f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 06:56:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795618562; x=1796223362; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=/cd+VsEs2FzLrKaZ0JDNDcQff/j0gUW6+LeqT4o7nk8=;
        b=J3ztJ26PWZqjzUrVr4pZBel+lMVDYKpuLY6X9Ry5Ymta3Lk2EXob7GPDCHtPJP8iRZ
         G6L2w9agow2xdzK18rkdFrIBcuTnkbkcNmFngsn9MuBT2vwGOy65SMyojTdQLFoFZGlY
         TDcnrD+8uI8whewiRYGoA1ktVM68ORLHkuKpzeH84EOI61913U8mtautEkW9tiT5m8B5
         NQuKHkapNih+l4xKwDZh+RoWyDFmATaOz4sZrK0ZQlcv8y3+u5qFwTr/R6/1jC4WAdjo
         8DMQAmFtkZO04TUvTHUjNSjMeGL5EsozdGz28BbuDdmYjbcPmtprONjsbFIOyoW+OMLQ
         yorg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795618562; x=1796223362;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/cd+VsEs2FzLrKaZ0JDNDcQff/j0gUW6+LeqT4o7nk8=;
        b=koOBiEH5MnJuNZTWbkLcHZJvMsiieHADCW3rmIXtRQf4dNLH/iNBy/jpqn7PnV8XKt
         48z+f2PSIyCZJhaC+Rf8pfsR/UC6D+NV/f+FWm9vN3dXegD7lZHxZeRMH3NflDlbFU6b
         H9IU3I+mGXsbc8lQvVt8RC+NCGEUrrZ3Ru59oKhwmaf+5xUV84dH8efodXloYGWVZeVK
         8NvtxH/Sug2bImj74xzgKkYbel6vsFZRh9SdWaCyW0DlYZ9NB0PEgUtDB+M+LcVtT7P4
         Y/KsTEXDW6lwV0toSgm2ZQv34MLrYNd8Fll+XSSBCCgKObZeJDaIqLTuZqHWpAscXKjt
         zlMg==
X-Forwarded-Encrypted: i=1; AL+hErFgxtH+5sFW4GHrgXB6RdfN93OvRrE1C7KJ2WBZujjkUDsxHymLrvSUytknSLTVY7afwcT2qTkWlfE=@lists.infradead.org
X-Gm-Message-State: APuU4Z/a80F6P1rsLJTSnl5RdclTwxiVjQRyUv53yBw5zydpoKH3iKAU
	JJuruLlrpPlb9zl2kU58lI5L2rjFTdnQlDOhCp+bN8BbLAx8pJPlsJda
X-Gm-Gg: AZFdTZdc4roVe20h870zOTTH0rvfD28tYjb8UsfSooyjFQYw7RJF2epSdjuog36xntJ
	1MRrIxeLcszmEMpFwC9DskLB0/DwDR8J/PJChXaNId6MCN24sNrLnfw/ZQkbdiE7XHVT4v/F9q6
	CfHuFpNgiWr98t85CRsEWFz3xF1HAkBmhwAlyPfSaD2yJni/OGH1k7qqchzCLpvMfBtsPBDgL/P
	SHCDWMlrCvgHYhYH9sK5B58rcfw4+WN9fT3ExXe8M5mX2ElLkutBSoeSEyI/CKhCiiEax4dtX9c
	Pgciv81zPHbtJMXIP0ndYySw4nF2OwijMzN1IdNPStZDxXUAGcrXwh+G8w/jxxdN+8F8vK8Gyif
	9p7cVfYWdTza0hQaLaNThc15aZL2Cdf5nPv2G6Dgh0peCQ6ErOaL5qfnNeTT5p0SaHqx9+saL6C
	ByZX6oXxs6eWWgRc2RSf2Mr8IXoxPUdzXE02mSK9RlcuAmnNUp0rLaVkorULIxEkx3dbufsRxCb
	EGSMZRL5Tl8PYkRKOtvThrOTkCu9M4+GypBzN6IC/wqAciiRcqltE1zHKVOxsoApO7kFgZmwgJ3
	1i9t5OoDv378zjB9X2cyjANfJlfpmwTfKFHOGSoQcuHFY/dtEK9jrZcCYnLRpwvtOghAaUYox7M
	8YSUVunnm7i3fJKk8SH7X786c0zZN/TPcvA==
X-Received: by 2002:a5d:6f07:0:b0:48f:fcac:a5e2 with SMTP id ffacd0b85a97d-4abb47b243dmr33442304f8f.38.1795618562038;
        Wed, 25 Nov 2026 06:56:02 -0800 (PST)
Received: from DavidArch.internal (catv-78-139-0-46.catv.fixed.one.hu. [78.139.0.46])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-4ab6b10b2c9sm36036139f8f.31.2026.11.25.06.56.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2026 06:56:01 -0800 (PST)
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
	linux-samsung-soc@vger.kernel.org,
	David Virag <virag.david003@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Umer Uddin <umer.uddin@mentallysanemainliners.org>
Subject: [PATCH v3 0/5] Add USB support to Exynos7885
Date: Wed, 25 Nov 2026 15:54:51 +0100
Message-ID: <20261125145458.2594179-1-virag.david003@gmail.com>
X-Mailer: git-send-email 2.56.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_065604_399349_C63C3B51 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -1.9 (-)
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

Changes in v2:
- Clk changes not included as they are already applied
- Add Reviewed-by: tags where appropriate
- Use samsung,exynos850-dwusb3 fallback compatible for dwusb3
- Use unsigned long for set_ref_clk_rate
- (from Umer Uddin:) Error-check clk_set_rate, and fail if returns an
  error.
- Keep dt nodes ordered by unit address.

Changes in v3:
- In exynos-dwc3 dt-bindings, use an enum with the exynos990 entry to keep
  the exynos850-compatible entries together and keep code clean.
- Add Tested-by and Acked-by tags to phy driver support patch.
- Move maximum-speed property to device dts.
- Move status = "okay"; to the bottom of the usbdrd node to statisfy
  dt-check-style checks.

David Virag (5):
  dt-bindings: phy: samsung,usb3-drd-phy: Add Exynos7885 support
  dt-bindings: usb: samsung,exynos-dwc3: Add Exynos7885 support
  phy: exynos5-usbdrd: support Exynos7885 USB PHY
  arm64: dts: exynos: Enable USB in Exynos7885
  arm64: dts: exynos: exynos7885-jackpotlte: Enable USB support

 .../bindings/phy/samsung,usb3-drd-phy.yaml    |  2 ++
 .../bindings/usb/samsung,exynos-dwc3.yaml     |  4 ++-
 .../boot/dts/exynos/exynos7885-jackpotlte.dts | 28 +++++++++++++++++
 arch/arm64/boot/dts/exynos/exynos7885.dtsi    | 31 +++++++++++++++++++
 drivers/phy/samsung/phy-exynos5-usbdrd.c      | 26 ++++++++++++++++
 include/linux/soc/samsung/exynos-regs-pmu.h   |  3 ++
 6 files changed, 93 insertions(+), 1 deletion(-)


base-commit: 5d7b9f865597a74b323d512619c42f3e07ae043a
-- 
2.56.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
