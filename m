Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBDFBCC6B38
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 07:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3FZFLxXRMcOyAHus89QI8e8rJVJq67UUhDdf5u+PL4s=; b=2TmtlAUAtpC7PH
	mYOf8NojZ4qoN9mHHtfOkfxci7A8cOCTwij1MfnfN7F4EopHauGjz4hIFZTjXthiVUK/5hyj57zjE
	n2jbQfGmMVZY5M/SlpY3RJZrOGtlwAD4FzTmXh+L6xHFvri+u91ZtUb6wmGvAeNth24B1kSegDgvQ
	Vp4XQpPzQujyA5yyrpSaaIfxa58MHzB3oN5/kZAoYtUwz7Ebi72sALHziU9S/pTvwWhKDneG9XSK4
	hc1w21AUn7IrqNa7HOrA+buXAc/dL1LR5tZro6J9EyngCSbTlxRKZ6gD2ZjddDpLlOT3uLvy2r9se
	KVVGEyeUWtrfOGMLRgkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHc7J-00000002D6v-1k8z;
	Fri, 16 Oct 2026 07:12:37 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHc7G-00000002D6B-3aJL
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 07:12:36 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-49ff680331aso30942965e9.3
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 00:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792134752; x=1792739552; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=0i4EWzFPDrCBGPxvUTW0hZsml2U+08zpz7E33Xi4YAg=;
        b=r5rev4b2apw6NI+63hkesSXVgpJdk3UGhSuqQQv+QXT7PUnNxHtWnf1eCmbygwmvd4
         APLAnnGYdDaMXF3Ad6mdm00fm3KqBNg4n/d/+NyAwTh8g1zi40e7hRlRmF4ohswzxVo1
         lgghhYEXmQ86YftOmDzDQrKLiW7MqyeOJnWm6u4Bx+zqHrPlsoPlbfEOSmXCFc6xpPgu
         qaSWEpM3wHoveYezHoA/4tc6nhG90D1DVErOs/nkEzwQvfBcV4ou5JNpDsOPp6njXLaf
         GN2z2aZ+XTkAu18Gg+qq/MfAmq8wJQu98kARkAmnVcMXMDmj4NSNlT8dAiDahz7xQfh2
         A7iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792134752; x=1792739552;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=0i4EWzFPDrCBGPxvUTW0hZsml2U+08zpz7E33Xi4YAg=;
        b=Yrt6UV5ExdjmQn2VzD3Z/XSEk5fXTIv0T7wL2fAkM3mHXDPYrsJaEbvzTDO3OHV502
         HkqZu6DKw5Tq/dmyvm5wxfD9k920vVwRKIkwkCH8S2VKk5kwe9MIspr2/SZBymXslEIO
         ePO6/kIFGnsdTlfw1Gp+cTWWcInAhopYk6hfAgKDMfdm/2uaARr2fKBa41ConOOSEu4o
         OPEHKec7edZ/D06iXRYMRtHGGlfIvFEBPnUapK7GsQNjurU2g6EZ3seqESy0NwkLFyRd
         sLv41GJPgsc7Blpc2rZqthFdZbxOrXJIbwirNh7BHOrhNSzHhsBegwtDasfbTCbD5AvY
         jo9Q==
X-Forwarded-Encrypted: i=1; AKwUvByBRzLWY1s+/jDN0RWeDnPzh6EFDM0QIJyMAAtUSMIj7vSfOsFHjxc0qfv+NkrN3r8wRsIEuZJwQ20=@lists.infradead.org
X-Gm-Message-State: AFq9FYJHa7j/Astj5Tda4Lm6Uy76ImATAG/rC8T99vt4+LU7pxToAxJn
	SvrxFFdj5SBDMfKGVDJGrsRKqcgiMt8pWukcwZ9FoxM00PI05OslNcrK
X-Gm-Gg: AYBFou1/E6iAWb09QBjdw8YmOd6uoPAENEM1ZV+rDEZk/k49D32hH/bWCZ3AiKhb0BD
	kmP8r1XGYOf850mJXG7309oUPzlSwXBRbJ8Ws+CxWe7R607wRIBLlcvzAaEXRVo+1W9tYLUUhs0
	1HS4MzKQlxLkPI86dy4DHRioGrvKzV95rEXm8+ghDEGf5y2ndRNEAtFot0XrvgWtehO7zqM1SdZ
	h+/fmUmdxli5VnzFrRmNN5Z0Nct8prG13Vj14ZZ8HeEVq5FfwzQ4fp1jIEz+znQ+vSPKrwc4KPI
	fl4Nt4/OTSZGLt7QisRQ1oKnbTYPE178Kc2uVSDD1LJNHWOKstOA4sSH0FRF4x4ZYmJsFX7Y0L3
	/UoE42mDnx1OQMne4XrPBmc+FKIWZ+gsANzruW5fhfvx+yPmIKd4UKS8Seq55DtRwONmBAgD8FP
	u6Sc0W1PbdhCwltQ/o3rcOSbf3oYEsVtlx/d6GJOnJxU4bFvNfd+pW8I4J5HWrHhxId+r+m+CVP
	mZjpP6RG9Aur8Gk//kFu9s6EM3xWXsdCWascUD4Rla8pj/5wisvl2kA1VA8xUtdv5vcHHNQJpMI
	gpMgMfgSvBr9VsV38xEqRYJN
X-Received: by 2002:a05:600c:4504:b0:49c:fc6e:a3da with SMTP id 5b1f17b1804b1-4a18e4a7839mr459117355e9.25.1792134752197;
        Fri, 16 Oct 2026 00:12:32 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-95-235-252-189.retail.telecomitalia.it. [95.235.252.189])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4a1c8a1b377sm61802015e9.0.2026.10.16.00.12.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 00:12:30 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/2] phy: airoha: add support for AN7583 PCIe PHY driver
Date: Fri, 16 Oct 2026 09:12:22 +0200
Message-ID: <20261016071225.2092-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_001234_909802_C4090421 
X-CRM114-Status: GOOD (  11.74  )
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

This small series introduce support for Airoha AN7583 Gen3 PCIe PHY.

It's not possible to reuse the EN7581 code as the register changed between
the 2 SoC and also the setup method changed (different calibration logic)

Putting the PHY in a dedicated directory is also needed for other series
current pending that will add USB PHY support.

Also a dedicated schema is added as the register names is entirely
different compared to EN7581.

Changes v4:
- Add REGMAP_MMIO to kconfig
- Better handle exit
- Add additional info on QPHY usage

Changes v3:
- Improve example for Documentation patch
- Deinit G3 PHY on QPHY error

Changes v2:
- Drop move patch (handled in different series)
- Rework to regmap implementation
- Rename files to more specific name
- Add .exit logic
- Drop QPHY in favor of external PHY handling
- Update schema with new requirement and improve example
  Link: https://lore.kernel.org/all/20260827122127.18874-1-ansuelsmth@gmail.com/

Christian Marangi (2):
  dt-bindings: phy: airoha: Document support for AN7583 Gen3 PCIe PHY
  phy: airoha: add support for AN7583 Gen3 PCIe PHY driver

 .../phy/airoha,an7583-pcie-gen3-phy.yaml      |  65 ++
 MAINTAINERS                                   |   8 +
 drivers/phy/Kconfig                           |   1 +
 drivers/phy/Makefile                          |   3 +-
 drivers/phy/airoha/Kconfig                    |  14 +
 drivers/phy/airoha/Makefile                   |   2 +
 drivers/phy/airoha/phy-an7583-pcie-regs.h     | 377 ++++++++
 drivers/phy/airoha/phy-an7583-pcie.c          | 823 ++++++++++++++++++
 8 files changed, 1292 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen3-phy.yaml
 create mode 100644 drivers/phy/airoha/Kconfig
 create mode 100644 drivers/phy/airoha/Makefile
 create mode 100644 drivers/phy/airoha/phy-an7583-pcie-regs.h
 create mode 100644 drivers/phy/airoha/phy-an7583-pcie.c

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
