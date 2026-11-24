Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F35C5606A329
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 22:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=L2Y6Zb7Z;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=TlZC6mrb
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=1Wj1gFMWR0Xkl43IoPMUNUx9fsmJ71O5f931fRWBvg0=; b=L2Y6Zb7ZQei6iGmBrlky+3yDUO
	kGH5qNcSeAMtuTjarrH8CJAy+ajA0E2HRzv97pEnI5C+1f4booj9ARISnmyl2L0syQ7NHbp2fPUv4
	pkpcm949m2wWsjXJMDNEkZjI1sr62nnYhMUmcVNFXMTeKyA21MSG5wwCU4NxY6dCUpArMgBIDAnps
	BoGR9bdj5uLNlowJrdmLtq29Nx2jhZyC+9YdfbdRYPhqhbPnWFfDOXXYaj89aEFhJaIL0m3hfXwCB
	W3OZ/nDLJXJ9wM16FHIdxI/SDNjR8Q2S0TKVnqyolhYwuGXG1w7h1C0RtMF/KJTjLYozNKTCs8wFi
	JgoqgK/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVzEc-0000000812T-2R9N;
	Tue, 24 Nov 2026 22:43:34 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVzEY-0000000810Y-0e1d
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 22:43:32 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-4a358881793so2630880f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 14:43:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795560208; x=1796165008; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=UeYF1YhxOBA70+hLap1314b1v8sPAVWV79jWbpYOTzM=;
        b=TlZC6mrbqg/tVn4m5wv11Emhf4GCKG6OTwguyqZXK/te2fnsMR7tzwJPS6DE644AG2
         p1GodhiKC8aeY4BXrPG+8vAKxhWNO7YJ3iASWxLibIFEdfMvdTwQsTIunxqACzXaL/nz
         93tPUtmnZAX9i8RsxOiVkqDhYwyEtL4gBX+Ee6UDYLoNZfkXuJBZV1OloQq50ngZa+2r
         8lQw8/BI35FjaWC7zgkjdxTlrfjeopOUb/+5NyIK8DGYJ2J0btnhWG04aV/VQCndOK9L
         P3wJVSDAyPwLgOr8al13HFnQR/HbcWB5cCUY4JYMYPV/9kvCKmss2ySqFRmWNJIfGJCv
         5wTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795560208; x=1796165008;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=UeYF1YhxOBA70+hLap1314b1v8sPAVWV79jWbpYOTzM=;
        b=LF3HVrbzP1ht9HHodNCwWGCQhzoNTzQ4b3i9+c4e996FP8Bpl9ZN7eYIxdtvOVICjb
         FKzeJNsw00ssLZGwD8D9X9j7FGNRppwNgp2CA3BANBjYZ5sUom86wDhJPOoJw6ExgkJC
         PFWeEk7sXLfs3MFBHJ0BEzSwd2SFcf/mGPQtcIwk1DzcSm5Kc+l/YIdI/3hvKTEfynlH
         HTE8CP6yKsAEgxAnVIuX5AtQpce4aLI3jcdR7Uy/TBa85KfSTVWFMvzhEpm2w5eKGRkH
         WJRPJ5zO0AQbkImWuvg4xZIQikQjxf5MKfFjsVJxQ1zUVVZM1jvaFvjiUnxGg3+MMUV2
         v8Jg==
X-Forwarded-Encrypted: i=1; AL+hErGEV1o+49Feum2+FJ+DD946IJod3fvTUqkewSXYxXowMBTxVdu/d+vbMf6dl/8Cts386blggxB4TL0=@lists.infradead.org
X-Gm-Message-State: APuU4Z/OeiC2O/mWhihPXfNeYjYyw+JyFVIx05a2NV4hzvIZFFqJ0OVG
	pYs1al862MPChT40go7tIvS3Mt4xZvecguD080vritOrbZB4ZHjIeV+X
X-Gm-Gg: AZFdTZeJsnR1dVqVglWHltpvsg5M+zHixx0GLozHZ1gvn8B20nsEPJ3kaCpkZSqSzoR
	FsVfAl/1GFgl771kB8vtW8NYtroFzGme+4u+U6QQStcOrS2zbH1aWQmAeuzeLlApXIjD5PYi0k4
	ocnCnOnO1+yUtVzlGazjbo5H9lpLa2KcBBGnwqDLLcdMAeLO8K+F8zYTNMxPk3z64sTbhvnCZkd
	0lmFh4aDpT75bHl6vh/lTNIaU6Rc/Lgu2DKE8j7RFu46VRPle6HY6pITl6r91R0a2v4yab1dO0o
	pi2slJ46FRINIqS7FVe2HdTsJWkj+PNeYnR7coITmrncjTgaQtSNatX/L/6aU6v3xz1g4xgpQze
	SK19c/KWcugNbiDABNSoeKNmqUc9G0w9h4m/KRcgPRgM1UFT9xleqaLIk51kaZJvuZHCuNvYrgq
	aMxhs02pHGPBMUgLgoyorwLUqSSFX8Yx+QlZdHT6E5oloowu53EaffqYM9iLPV1he58JK9QDWKG
	C9HCx/l40+uinIgIFQ13oKvd16/zCInwf7m23KyhGQ/boM/mL3X6GaVO2KBQlarjud/JFStqh7x
	YLVb1oaToou0WN8ORjFJwnZbHzzpZYmq26JFHapCynVGqwhyjFukbtyCV62743oh/W3+k9KP0bm
	WMHA=
X-Received: by 2002:a05:6000:2906:b0:4a3:777a:a964 with SMTP id ffacd0b85a97d-4aba58de987mr30782702f8f.0.1795560208068;
        Tue, 24 Nov 2026 14:43:28 -0800 (PST)
Received: from Ansuel-XPS24.localdomain ([87.13.246.159])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-4ab6c61f558sm30900915f8f.58.2026.11.24.14.43.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 14:43:26 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 0/2] phy: airoha: add support for AN7583 PCIe PHY driver
Date: Tue, 24 Nov 2026 23:43:14 +0100
Message-ID: <20261124224318.227478-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.55.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_144330_221550_F4FA7176 
X-CRM114-Status: GOOD (  11.74  )
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

This small series introduce support for Airoha AN7583 Gen3 PCIe PHY.

It's not possible to reuse the EN7581 code as the register changed between
the 2 SoC and also the setup method changed (different calibration logic)

Putting the PHY in a dedicated directory is also needed for other series
current pending that will add USB PHY support.

Also a dedicated schema is added as the register names is entirely
different compared to EN7581.

Changes v6:
- Rebase on top of phy/next
- Address suggestion by sashiko bot

Changes v5:
- Rebase on top of phy/next
- Add Review tag

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
 drivers/phy/airoha/Kconfig                    |  11 +
 drivers/phy/airoha/Makefile                   |   1 +
 drivers/phy/airoha/phy-an7583-pcie-regs.h     | 377 ++++++++
 drivers/phy/airoha/phy-an7583-pcie.c          | 831 ++++++++++++++++++
 6 files changed, 1293 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen3-phy.yaml
 create mode 100644 drivers/phy/airoha/phy-an7583-pcie-regs.h
 create mode 100644 drivers/phy/airoha/phy-an7583-pcie.c

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
