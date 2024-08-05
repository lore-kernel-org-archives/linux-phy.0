Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C481C3DA64
	for <linux-phy@archiver.kernel.org>; Mon,  5 Aug 2024 03:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=24BNj9BPgGlMXioZoWgIhoZSaAkx6mNHcrYZWtJ6mH0=; b=nxNrwfarM2h40s
	y/vPxN6b1C3cy5tCz2rOjPE66K55Z/VSiHZe7W6wh/OCLErx5OefNWTJQUD6exFPZKDG020qUepLw
	GUAtkNBE5dXRSgjVktY4LNnFB3LhZ1tAhfDEvGEatoRGgXNIiaUMkvZ1n25AtEtdTQBwAIod5GTnf
	MxvUtd13WlmSBe9M2k/3u4cgTcnP8s4gykczRo0Pbfw5jQK3CByQwUe3dK33LPwbDO8ccoBvZO2Su
	bVCtF9YC9oZK8iRHvJbA720MOBLu1rON5tEBvjkJy18wmhGctMyiGvdOZqVUOcJwv/VrJSbg1t1qu
	6xlaFSeDcpJhjy56WRMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sao2L-0000000ESLC-1B0B;
	Mon, 05 Aug 2024 03:05:29 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sao0x-0000000ERs3-1aAx;
	Mon, 05 Aug 2024 03:04:05 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-70d18112b60so3898384b3a.1;
        Sun, 04 Aug 2024 20:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722827042; x=1723431842; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dfjUCpZ3Zeoi/Y8m9mARD2xm2PJPEWw2qGGhgWcumzw=;
        b=ULGHDpiTxG+qDFYOaZSJHzdaLNr1DOXeonx00u/sxGhnzmyRHRxwFd1C5tgvkPg5VK
         Qaq8qnIk3XmiY4WwVG+L6cuPNem4zlGFHxdGUFelyK+IF5M/cfZ/Rj4g2RlK5Po5lWB9
         Xb1TTddkYVV8n2jfeKE1SXDs9Ta95ti+p4n+5Kqt6b37J9u4TY618xn46awO2GYNmx/+
         p0qY5z6JcpTUTiZ3QVQEw1gKyJEJHgVEoukSuEhkVQHKi1xRqXAiwCNT3WBi6kbPcU7l
         si/eQtJ54Fr1jh/dGP+7bGfiHof+2PY399+/umT223mFztVCgf2Ffp1PJYsRZ10jCPXo
         oFuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722827042; x=1723431842;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dfjUCpZ3Zeoi/Y8m9mARD2xm2PJPEWw2qGGhgWcumzw=;
        b=BJE/RoHd8kPlS/eLt0OLtssXJqAI6PnIBv4GiTs72RTSfcG1+PV7p//IvAQTLw6Py8
         gQn5719qOj5aRmgm3FkUBRyzsBtUdOrxxCHXm5PNSrPGsQc+P0k9bUDilJC+SYQfVMFr
         t1aOHtAEycv4RuOs0iRsWJbulcFiMC5lzp+Jcy6tSbzT0dQ7B3CIq4uHCmy4z9kFEu3k
         tuAPHeziMO4L8PrMlyNYUwb2nIFUEM+4I18bd9o5rQL8Qc/Zcht4v9KH7kUgto7RJXOK
         mgz/lWRoUEm+dyIBMjpYn2q7yEVcVG6h0m6E1T7XH8jR6z6SxruPua2Xe3Es9nhxFfYY
         QJJg==
X-Forwarded-Encrypted: i=1; AJvYcCUdQWmoQ5b0I+caMfAPJEfGeztLyE00+6nrBE8tW45tC1MqXhEv54VxS8d7ovMKbqPyLlE9FsUbHvk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyw7shrdhzRSdylFwYq/gPG7MF8HZZDD1DQvqIWlbNP664Zqlu7
	DFPA2eW53GioCrZHVZwRIipzsm2eifaT7LHSwbXCtxv59a/B9UUU
X-Google-Smtp-Source: AGHT+IFhCUHNZPfe1fqJ3PZ3Ngk9ynsPXbv2x+Ddc9yCddZJfg9RtJLhh7Eu5/OySxn6RqXoAtE0fw==
X-Received: by 2002:a05:6a00:92a0:b0:70e:cf2a:4503 with SMTP id d2e1a72fcca58-71065f1e257mr23009434b3a.11.1722827041477;
        Sun, 04 Aug 2024 20:04:01 -0700 (PDT)
Received: from localhost.localdomain (60-250-192-107.hinet-ip.hinet.net. [60.250.192.107])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7b762e9c2dasm3823210a12.8.2024.08.04.20.03.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Aug 2024 20:04:01 -0700 (PDT)
From: Hui-Ping Chen <hpchen0nvt@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Hui-Ping Chen <hpchen0nvt@gmail.com>
Subject: [PATCH v4 0/2] Add support for nuvoton ma35 usb2 phy
Date: Mon,  5 Aug 2024 03:03:54 +0000
Message-Id: <20240805030356.14565-1-hpchen0nvt@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_200403_443619_9B218948 
X-CRM114-Status: GOOD (  12.24  )
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

This patch series adds the usb2 phy driver for the nuvoton ma35 ARMv8 SoC.
It includes DT binding documentation and the ma35 usb2 phy driver.

v4:
  - Update ma35d1 usb2 phy driver
    - Update the 'readl_poll_timeout' to 'regmap_read_poll_timeout'.
    - Update MODULE_AUTHOR name.


v3:
  - Update nuvoton,ma35d1-usb2-phy.yaml
    - Update the syscon usage description.


v2:
  - Update nuvoton,ma35d1-usb2-phy.yaml
    - Update the 'nuvoton,ma35-usb2-phy' to 'nuvoton,ma35d1-usb2-phy'.
    - Remove unnecessary descriptions. 
    - Add explanations related to SYS.
  - Update ma35d1 usb2 phy driver
    - Update the 'nuvoton,ma35-usb2-phy' to 'nuvoton,ma35d1-usb2-phy'.
    - Use readl_poll_timeout() to make the system more efficient and the 
      code more streamlined.
    - Use the same variable name. Update the 'p_phy->dev' to 'pdev->dev'.



Hui-Ping Chen (2):
  dt-bindings: phy: nuvoton,ma35-usb2-phy: add new bindings
  phy: nuvoton: add new driver for the Nuvoton MA35 SoC USB 2.0 PHY

 .../bindings/phy/nuvoton,ma35d1-usb2-phy.yaml |  45 ++++++
 drivers/phy/Kconfig                           |   1 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/nuvoton/Kconfig                   |  13 ++
 drivers/phy/nuvoton/Makefile                  |   3 +
 drivers/phy/nuvoton/phy-ma35d1-usb2.c         | 143 ++++++++++++++++++
 6 files changed, 206 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.yaml
 create mode 100644 drivers/phy/nuvoton/Kconfig
 create mode 100644 drivers/phy/nuvoton/Makefile
 create mode 100644 drivers/phy/nuvoton/phy-ma35d1-usb2.c

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
