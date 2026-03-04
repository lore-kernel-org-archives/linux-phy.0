Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C378FEDEBFE
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 00:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fJA8RUf/Lm7MAc8YjqpfNVPT5yemuSSEUfbkacRU20M=; b=L1fX1SzuOBLCgx
	+9hNB2xx8Gc8RWqoYxG3h5R2JHsUPOITGiMsUW42DLkx2dwHJowCaf5Dscr+gXgwOmoGN+xiK8nHY
	NrIeAG2LPPgaa7d49qMUg0frroBBvfPcqTf4G9aP78CmZlwnwJN/2NAqNF3mBjWFnGvD/p1b7ZFBA
	wiw5ehWhhELXrrvJwNUsnsG24OFmYN/gCqCU6nzwA50BRvgGtwVr4ZhV8ASxxTLKiRAtMCdhPWZ6d
	o/HuIvL9d/evXh/V47auAzNNHiZAQrQ5aHUy1pGXDmCVw7Jvbeg0g4OCyCrDXBklmmdFZhK9HKPvv
	uSam/2d42VyL0YPbt2PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxaZy-0000000GCR6-0v7N;
	Wed, 04 Mar 2026 00:59:10 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxaZv-0000000GCOn-13Wi
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 00:59:09 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-48379a42f76so51673975e9.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 16:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772585945; x=1773190745; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=5ogMkUraTjety9MOgCpxzZj4mdAQTkI2/0DG477NiJI=;
        b=KBYnauqn6wWpe4MEkRSA03rVcgnEltQGZUjWirDejV+I5kH7Ebl7zRHMQEW+q7N321
         LjqkGBPNviiMpaq16kMOMrtAX20Ncj2CXxjkq+e3CZJ65Mw0ZwW26ZACAb+++N4IsHR9
         aKPa4hSl/HD3RERoZbJs+6cS9yOnCzgCA2G3eteU70jR1D0V+iEIGiT8QSgQm3UOQJpx
         ag6aArx7Sqsaip21wZjBjLIZfXLhPu4O3VTY93qUpdxTEPQQiS1AIDVJRIZU7253IbQJ
         dWv3NAIzZx9cj+uv/vJmAMbXDolza+/QEuXoQMw6YpcLoCvdcHt4neiScfS4OED/kMfx
         Y28A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772585945; x=1773190745;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5ogMkUraTjety9MOgCpxzZj4mdAQTkI2/0DG477NiJI=;
        b=Lw9ZUF5G8FM5P17aLblA+9/wrFFjhKG/ptW4TWOm0/Z7MOsR5P6ys0u+jL1iIMhmEw
         nzaQ3zwXKCjAB/nfSXpD3TzCNxPLgAmg1uOi01I5523qvImjeXmq2ZPfZa3Ug4akaxc6
         Lkv1iQriNVrh3zJ2zaxtVY9g9/5FZ3jW1s2f/hH2CTHDBBA1o9AxyJsjkknnuCbUsLzI
         YGcKV720TfyjMfbujQL0Kp2d5zxY8yP4d2BWZkYGa/v622jP/eDgNLFD6b0zs654EX9l
         breRN7z4fuen9HykaJuA827vmIAnOVA3GQipBdORgfgcdDbprmFnHPqnrLDvQkGYOu8z
         NNfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIHI/ExPK9tFFCG5OWBdNXAl5Yb1zZCWCHf+XsvL9ndVunWkKI9nkgak+r/ja3UcAfwdQ7v0ckO1E=@lists.infradead.org
X-Gm-Message-State: AOJu0YwYhZpfT8aKtng6PohuoN7EXWD9n3KnlCYL9TAJFOrertiYm4Uu
	b5AZ9WP/fusG9ObSaPFbO6LDIvrFE7RGCd/IxKYM2HR+Xw8Wa5TqORjDDi/vfQ==
X-Gm-Gg: ATEYQzxzcI1eFDikz3X1bVex4dfqiE0XA+cX8iL1c0nwW0OYkWuk5T2Zr9DiTQ2WQlp
	JJ879xr//xRvVT8csw6QXTcuoqTpqKchXmgFXsNlrteo+OoDVt/MwfAhH4yVLaxQtjeU7mW9AiM
	xASljVmBRk26ynIJAPT3dcI3wNUcVW5Ft1mn1iD5cCi1Q4YtlNvJlzxQ7+kXB3Bv0q/4YQUQr3g
	W184f6JfiJfcFsG3GCvUH/SwBuLitM4a15HZXljzvT9SAWjRvhCGOljO1XRSCbYFjhHzXVPI+2o
	K/jOjjo1olVncxfBllaTBhb2q7llbLFjORYPjgWuC4mRsMz/vpTTfnp94yzme/LlHmdM500vgrJ
	f1x9vJewSFIuxa3xW3YpptPKMHR1dPOpBSCw2kHNZ+sMtQnod1bEyNpa7vikjnevETqqDw/g5fO
	146mHAymzqGA7kd1L8EqV3WjJt63q8aCnGjLZVEfhvOkdtvOI2fsTT3eE=
X-Received: by 2002:a05:600c:a08c:b0:483:885:f0b0 with SMTP id 5b1f17b1804b1-485198bac26mr3235315e9.35.1772585945092;
        Tue, 03 Mar 2026 16:59:05 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4851880724esm26927575e9.9.2026.03.03.16.59.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 16:59:03 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/4] airoha: an7581: USB support
Date: Wed,  4 Mar 2026 01:58:32 +0100
Message-ID: <20260304005843.2680-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_165907_331679_C4769EE9 
X-CRM114-Status: GOOD (  15.47  )
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

This is a major rework of the old v2 series.

The SoC always support USB 2.0 but for USB 3.0 it needs additional
configuration for the Serdes port. Such port can be either configured
for USB usage or for PCIe lines or HSGMII and these are configured
in the SCU space.

The previous implementation of a dedicated SSR driver was too
complex and fragile for the simple task of configuring a register
hence it was dropped and the handling is entirely in the PHY driver.

Everything was reducted to the dt-bindings to describe the Serdes line.

Also the property for the PHY are renamed to a more suitable name and
everything is now mandatory to simplify the implementation.
(the PHY are always present and active on the SoC)

Also other unrelated patch are dropped from this series.

Changes v5:
- Add Ack and Review tag from Connor
- Implement Ethernet support in the USB driver
  (testing support for this Serdes on a special reference board)
- Use an7581 prefix for USB PHY driver

Changes v4:
- Rename PCIe and USB PHY to AN7581
- Drop airoha,scu (handled directly in driver)
- Drop dt-bindings for monitor clock in favor of raw values
- Better describe the usage of airoha,usb3-serdes
- Simplify values of dt-bindings SSR SERDES
  Link: https://lore.kernel.org/all/20251107160251.2307088-1-ansuelsmth@gmail.com/

Changes v3:
- Drop clk changes
- Drop SSR driver
- Rename property in Documentation
- Simplify PHY handling
- Move SSR handling inside the PHY driver
  Link: https://lore.kernel.org/all/20251029173713.7670-1-ansuelsmth@gmail.com/

Changes v2:
- Drop changes for simple-mfd
- Rework PHY node structure to single node
- Drop port-id property in favor of serdes-port and
  usb2-monitor-clock-sel
- Make the SSR driver probe from the clock driver

Christian Marangi (4):
  dt-bindings: soc: Add bindings for Airoha SCU Serdes lines
  dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY
  phy: move and rename Airoha PCIe PHY driver to dedicated directory
  phy: airoha: Add support for Airoha AN7581 USB PHY

 .../bindings/phy/airoha,an7581-usb-phy.yaml   |   71 +
 MAINTAINERS                                   |   11 +-
 drivers/phy/Kconfig                           |   11 +-
 drivers/phy/Makefile                          |    4 +-
 drivers/phy/airoha/Kconfig                    |   23 +
 drivers/phy/airoha/Makefile                   |    4 +
 drivers/phy/airoha/phy-an7581-pcie-regs.h     |  494 +++++++
 drivers/phy/airoha/phy-an7581-pcie.c          | 1290 +++++++++++++++++
 drivers/phy/airoha/phy-an7581-usb.c           |  640 ++++++++
 include/dt-bindings/soc/airoha,scu-ssr.h      |   11 +
 10 files changed, 2545 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
 create mode 100644 drivers/phy/airoha/Kconfig
 create mode 100644 drivers/phy/airoha/Makefile
 create mode 100644 drivers/phy/airoha/phy-an7581-pcie-regs.h
 create mode 100644 drivers/phy/airoha/phy-an7581-pcie.c
 create mode 100644 drivers/phy/airoha/phy-an7581-usb.c
 create mode 100644 include/dt-bindings/soc/airoha,scu-ssr.h

-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
