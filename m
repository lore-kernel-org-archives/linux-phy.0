Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0CB5C3DA61
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jul 2024 06:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DmxGCpvT3mRd8ocGh4xQOH2mpJBOrtWDlajg1ROVvWA=; b=qew1yUp44O/Fp1
	N7ZEH+zMDKjh+J2LTIB4AdydjMRKQdqzqt2OhgfrbLXVyt1J3aB/YqW+a+MDplbBy2u9epXGRNtPq
	1kf5c1FqVz92M8y+t4QGx+ULmUE0QXn0rN6QIAY7LNYLg4o3LGrEHM7Zt67lnGymHGThlWEjxB/QG
	UBD94n+26TA71f5FSaH+qfEvcXDoCyLCja27j4mAG1/PRK4/YvECp7msv6wSpMSahl3iFXKVqJNBd
	UcedGyTLc7xMBGwaxtPgWqYKotEZJxiMHSdOaVX9K54VFBRuEIAz1yiFeThKcjDNA1399MVnwnmRn
	/uoAJ5fJXEa/zpiZO+iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYJfc-0000000A7fs-1FfL;
	Mon, 29 Jul 2024 06:15:44 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYJfA-0000000A7YH-1o3g;
	Mon, 29 Jul 2024 06:15:17 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-2cd5e3c27c5so1706588a91.3;
        Sun, 28 Jul 2024 23:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722233715; x=1722838515; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RkdmkH9P7FNHCqeL8cTyw/SKGQeTyqFKsGJjHolVZz4=;
        b=DhAqE3DM2ebHP27TwpOYbZQ3FJnzjvgCd/nTbYNNz73RjVIVSPBu/mal9qZ0DyCNM6
         PHRzzgQenx4EwTcMTAAxYcNpRVZqX2wHEb+TwbG+8ZyjJP9fSebGqyULxZsJw7MZpI51
         s2EjEBY9pKFkdxNW/0nKNyR4HoPb2iWTB+CiLxNRSktQ9vBKWWBt0sEB5X6HUFbymFCV
         Nr/A9ta8N6KzRXMW2Vg7LRL0GUS//xX+6tQ3LwxUc3FPWiJgLIOc8wD+0qEBmWKBu+8X
         A0R8ZLyk0LzITergJm6OdpaiPS69i2a5sVP2gIXpVc7oOfdAAJN+RtxQ5SOM61Vd1QZT
         gOlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722233715; x=1722838515;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RkdmkH9P7FNHCqeL8cTyw/SKGQeTyqFKsGJjHolVZz4=;
        b=v0f8SJiaYYqbL+ddkjH75bjK4VCe2J3pkY9aanpY78ZT4xKQfD5r19oJQAWnqeU//6
         mnz0qyPcMxIApGCW+FzWU6YPCqgQCLX7EoXNpPkxkXT1Vpkgf8kcH9z7LVoJJOfYDumo
         bL+xxlb9sEk1TIhyXzv8q6voAwvLgx97ky/mKoj5q2GjDzcL7963HPHIXFZhMDEsVihC
         M6ytTcPnr8xnpKd3T3kPUu+xskPniljPLrJxB4d4jlB3bZvL0LN29ofFx15EwJ3nJ50m
         3MEwR8qbLA6YWooOzF6GSg84rQtl4zZVTnjkTXWI+qUgfSWTKslLHX9ZyAAZ5l8V55pG
         5EMQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBiLkx7wURrON5T3VSa2DIr76ilzvVS+buyxrhxdiw0GAZu0EEZW+4clQ2W6OyiG43XTbpnkdB49vcdjoXtF8BwNYbtl6o3AJUu6uTdQ==
X-Gm-Message-State: AOJu0Yxd8/Nuu/lqAmbYMWL+sx/+VRdPIkCT09EIFrFed0PMVBSDx7Os
	/G8I56gfw0wvqiMyg1ZwXD6XJZKpneLyxHrybVq3mLx6dmohqYoy
X-Google-Smtp-Source: AGHT+IGob1bEgytYJnj0SiiCG3A6boOEiSQ01nw4oqdlBVhDtz8jfOxe1az8Aj1H3fB4jZddi6ow7w==
X-Received: by 2002:a17:90a:8d0a:b0:2cb:4e14:fd5d with SMTP id 98e67ed59e1d1-2cf7e1f7f76mr4475705a91.17.1722233714943;
        Sun, 28 Jul 2024 23:15:14 -0700 (PDT)
Received: from localhost.localdomain (60-250-192-107.hinet-ip.hinet.net. [60.250.192.107])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cd8cd2013fsm7951282a91.0.2024.07.28.23.15.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jul 2024 23:15:14 -0700 (PDT)
From: hpchen0 <hpchen0nvt@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	hpchen0 <hpchen0nvt@gmail.com>
Subject: [PATCH 0/2] Add support for nuvoton ma35 usb2 phy
Date: Mon, 29 Jul 2024 06:15:07 +0000
Message-Id: <20240729061509.83828-1-hpchen0nvt@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240728_231516_492642_8B7DBA79 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
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

hpchen0 (2):
  dt-bindings: phy: nuvoton,ma35-usb2-phy: add new bindings
  phy: nuvoton: add new driver for the Nuvoton MA35 SoC USB 2.0 PHY

 .../bindings/phy/nuvoton,ma35-usb2-phy.yaml   |  51 ++++++
 drivers/phy/Kconfig                           |   1 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/nuvoton/Kconfig                   |  13 ++
 drivers/phy/nuvoton/Makefile                  |   3 +
 drivers/phy/nuvoton/phy-ma35-usb2.c           | 160 ++++++++++++++++++
 6 files changed, 229 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/nuvoton,ma35-usb2-phy.yaml
 create mode 100644 drivers/phy/nuvoton/Kconfig
 create mode 100644 drivers/phy/nuvoton/Makefile
 create mode 100644 drivers/phy/nuvoton/phy-ma35-usb2.c

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
