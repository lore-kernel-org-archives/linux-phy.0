Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84D62606A32A
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 22:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kC+sIaJs;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=cPh7JT4o
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=roeRGOLmjQ1HfiHBD1x5OkKuEiaZVkX2m4Mf5IZnNxc=; b=kC+sIaJsZG7plgffvm8Q453BeE
	zm56cFVYhmLEmnULEMqrlEpxxbEl5iBCPAimi060mgL4lrAMvu9erMMfK4cQbMKnBGz5umQ7W/i8R
	JCf1pRWj+Tj60M9CXcpGYo/3Kc0T3LRlR/hATRKoBBIMu9dfICVPkPvGhue9I98ln9jBoBfmgr7LV
	zfQSd3scn7ByiNc47L2PdlEj090CPL/wIZDBa6MmYlUjSiNRwXbjilcuGFAZgJ0zmDCVsUZlNBDEx
	1cwi/2DH7sABe/B4/dxYoGcwGLYPJ4GXzrp8J7WCrWbVOyW+hJ33zpQsDJ/yd1hz4gdDu42ohVpwV
	i1JGwzBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVywm-00000007zHS-1D62;
	Tue, 24 Nov 2026 22:25:08 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVywj-00000007zGN-2crk
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 22:25:07 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4bb69f5b161so33181155e9.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 14:25:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795559102; x=1796163902; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=s9MWtiGisD5ffcST4k+rFV/a48cpzRUFIKFiLqtSd0Q=;
        b=cPh7JT4oPcPtjYHtssJGCqC9RFVt5De11qLAutDt7sI6y9e6HY5O074jOnrWNQJ3jN
         phFK16CsVVux0x5ujzRHvofyi2BYFJbUl/zzkmOXKCenlUbTNKnl397PAu4tXmN/E5Do
         gCKVIo9bEoXdFVLXSvXzMUu5qxoFSLUDxC/QXOJl8Prd/noCHmdzZTC7Y5XWbSOzujTy
         edB7KtWonHEuPty74PMWbnF5d90Y5j5QhyNQaBHzKxXvMXvgXupNgB4y90Ngjfo06dEa
         Li8IPffLHuEDumwV950kVEnV+FydfZty9FaRWEE9A9rHngsZgKetvuwrPdIfTW2v9S50
         y8bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795559102; x=1796163902;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=s9MWtiGisD5ffcST4k+rFV/a48cpzRUFIKFiLqtSd0Q=;
        b=pPUTSQTD4lAb9OZ6D8eBqLWEgq81peUTRQaM2QUlsVbeUTuVxBtD29dwo7UAEMz4U6
         jqo/4nB2VcFwubvnwxXAm2HWuvsEDnEnV4CEn2eLE/ombEmMITicZs8+J+5e1M3jL3Su
         dptVwlmWqur0wBQoFlXixzOunnUWySCrlm5gY5yRdE9uKZ39kJdp75G7yvrNHu2/AcRI
         rat0OmXaliW1Lph3Njul/bCNbDhJ38t5xBFTEIgw+VLWLVt14jxsHORTR1Mkf6E7UtS0
         pI2wOVwH5Yyx/5iFzUtJvHIpvCxiC0cPUVtc0adV3JSgX/vVMLZ8oYgY6vaMWCClOBLq
         jF2w==
X-Forwarded-Encrypted: i=1; AL+hErERAZOxSBCHugMBJ9sBZ8egqklxXh3H4XxPfUBug6CJ2Tto9BwrOPvX/vEdx5fFpN+SbhNzrnt8UCQ=@lists.infradead.org
X-Gm-Message-State: APuU4Z9xTrixxKxW08jgtxgHTchb3UbPPBwscghVXpsh//PXepQgH5Hx
	lflsboCgFAPmqc+WbunlJxBusVepmOUF9ya/3EdAKjB4IUVsdx60v6ke
X-Gm-Gg: AZFdTZc/FFkIPpANZAqoHeR+SzEmEm8UECjtL3RiSYog6l1wyixSrP85frNtEZ7U9qq
	XNMbjKsFkcLgAlj//amfs9CP/gjyRMkknb82IrZA9834HTyMRdqe5GB5Zn+Il92EZ1El8fVQAiu
	LnYc5kXzuTnLemTh75wKFu8cCLp28gy6aKlxz/W5+V4nYaYTfKZdqbG1NvHrD1VGEO+tNtBmzAI
	pzukLWDl3npG55+trgJOQ1F1fwC1dvRA8odKUIiub+FThqEgoPbQcg53xcHObfUI7vIBkyKj9MJ
	iF3yfv1bfeIgAFGKSWQOq3k7rqRFSJjgbBaUyBMbCL6Q/dPziaApX1v2Yi8/LQ9fWsNm2ECWAyN
	rELsKSBwuAG7+kiU/q/nLgzCMH0HbOtBIjIkmUzoNdWjufoDYaeA6rrVDM/jRVcfFwglX2MkNEQ
	xfuFE46rrqfLyMPHfaVjL84eppGBZdbOhA51oDw21Kq3nmcc9+7tDwyrs7TFrNQ3JqixbM+bJxa
	bMpAhCdS++Idc+weurxFIiumJPOjM8A8OPLyv/sQC79FiudwDB+CAp5DuDb9v1m0kSX9Df4Zu+O
	qOoSMPWBVVD563jWwpQBGEf+Aa6nLKHw/qocsdEK+SLfw+cxoYrN0mxS29EtC73u8WKYHAmmHjS
	Qhrs=
X-Received: by 2002:a05:600c:1d09:b0:4bb:6fd3:5ac0 with SMTP id 5b1f17b1804b1-4bb88816c7emr352097065e9.28.1795559101478;
        Tue, 24 Nov 2026 14:25:01 -0800 (PST)
Received: from Ansuel-XPS24.localdomain ([87.13.246.159])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-4ab69bf630esm31125711f8f.16.2026.11.24.14.25.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 14:25:01 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	John Crispin <john@phrozen.org>
Subject: [PATCH v5 0/3] phy: Add support for Airoha AN7583 USB PHY
Date: Tue, 24 Nov 2026 23:24:30 +0100
Message-ID: <20261124222452.219832-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.55.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_142505_727388_107DE806 
X-CRM114-Status: GOOD (  10.91  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This small series add support for Airoha USB PHY and Gen2 PCIe
PHY.

Changes v5:
- Rebase on top of phy/next
- Add Tested-by tag

Changes v4:
- Fix typo for Documentation patch
- Fix wrong regex for usb subnode for Documentation patch
- Improve register example for Documentation patch
- Address bugs reported by bot (off-by one and xlate function)
  Link: https://lore.kernel.org/all/20260901123933.15388-1-ansuelsmth@gmail.com

Changes v3:
- Fix broken patch for YAML patch
- Split the YAML for USB and PCIe
- Rework driver to direct node for PCIe PHY
  Link: https://lore.kernel.org/all/20260827131551.26725-1-ansuelsmth@gmail.com/

Changes v2:
- Add Documentation
- Out of RFC
- Rework to Serdes PHY instead of SCU (following
  for consistency AN7581 implementation)
  Link: https://lore.kernel.org/all/20260811124724.702467-1-ansuelsmth@gmail.com/

Christian Marangi (3):
  dt-bindings: phy: airoha: Document support for AN7583 USB PHY
  dt-bindings: phy: airoha: Document support for AN7583 Gen2 PCIe PHY
  phy: airoha: Add support for Airoha AN7583 USB PHY

 .../phy/airoha,an7583-pcie-gen2-phy.yaml      |   63 +
 .../bindings/phy/airoha,an7583-usb-phy.yaml   |  133 ++
 drivers/phy/airoha/Kconfig                    |   11 +
 drivers/phy/airoha/Makefile                   |    1 +
 drivers/phy/airoha/phy-an7583-usb.c           | 2023 +++++++++++++++++
 5 files changed, 2231 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen2-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
 create mode 100644 drivers/phy/airoha/phy-an7583-usb.c

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
