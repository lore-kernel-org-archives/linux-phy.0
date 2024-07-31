Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93067C3DA49
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jul 2024 01:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xwR+nOowZgZXwf3W4RhVKjsqN4DjiQjF2Mx2ijfvIFQ=; b=x+iT7RbvDWr35N
	BejNkUbNM4SFGYdMNDvO/Wl7C6j93OF6GRHKdvAxmr4Lkrk+g5khQD3hjI4xZk8bpYqGQW345+w11
	WxBLTGcd9JQGCTf6Dmj7rpqWT0lfU1yWRihDxT3IRzZE7deBWPIn/6wZCBlndIs7x/wRJLDgl3dpI
	IvQRzVcmqmOrrtM5oWflfgv4xwT1oPscSadvEhRcYBVV2kxB174QdsRGtcwnfxj7aEZw/nON9k3mP
	7Jc/zk97WyPIbDjAf9G/N1i7Ghy4/36s0Y8nC/hGmWxoI5NfVKjAch2AL/n61/NDxZRrYO+BNnZQE
	2nvvJ/De1ExZdC5LjIrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYyNY-0000000GxYd-0cfj;
	Wed, 31 Jul 2024 01:43:48 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYyN4-0000000GxQQ-3Ud0;
	Wed, 31 Jul 2024 01:43:20 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-70d150e8153so325387b3a.0;
        Tue, 30 Jul 2024 18:43:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722390197; x=1722994997; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/en+lkIxC1dsuLuhNmN5BGywFgSuVRz1KCq0xfBNjdg=;
        b=XnCyTQw3DZJtF81/u7WLWOKACq2hCrh/9A/zSoxzm0S1jDkInwXmNdhl0Yu9Uj33T3
         R7U42AmZujjHFQsrzDbqeJ6n2iCllPAgV+npQoPfi+GbQdSZ+/X+qbi/DISjVmq9nMVk
         zy5pN6olaZGx/80wuemYt419sBHTvkHt39UAEKOw7UI1E7bR6AbbpFAVhv6mEhQe4Fgn
         umTSnYKtNMBKrZS2T9wP49V41ueCqHPvV/T7j93oVGtunnVw6n00XPs+r631t4QaN9jR
         syK/v4ZRtt/xnSEVgZsh0GJq8fR5hmG0sgf+BW7838ajl7RChXRLl87RG9HhMXJooTCZ
         lpOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722390197; x=1722994997;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/en+lkIxC1dsuLuhNmN5BGywFgSuVRz1KCq0xfBNjdg=;
        b=LPOoy/Ln0FtprQFtRU51Y0FzhnLjlrXQwVToroC6g2ewA0Iz0G6H68zTSPxh+f3en3
         lZrSyb6w6P+91Mgfl5SrpdRC+Tc+lywFuvHhdz4IaXxzKfOxON9MAOgStFEbboQ8b95H
         K6tF8VYlNWFhY2PUzfoXu7W4xyak25MhFfWwchKqLXIPcky8WdV30FfAkptBcYFRACxg
         V0eyxYabNC9WKxtZvCj9rm6kaTJRJwyd5yzUQX8P5NXWLQ366eXY1XbGtQgGMoN0hPGN
         OlblcHQXclK1adiWCffr/Z4YHV+AdHOvBmiVTPKnTYJO6MC8lawaa3lDAlDlY4dC+Qlt
         AzLg==
X-Forwarded-Encrypted: i=1; AJvYcCUGx/8e/TdwtIAKT3BEC6SgJtuy6zDpbO2lLijvQHPl3sC6tY5+t00voTl08FbIItT3+9dksKVoxDhwanRYpLh1ZRAluQfbvaszCUjQkA==
X-Gm-Message-State: AOJu0YzSKLRyew9OBuFkHEqubtTghenoG+U9X6og5pFEyng9rc+paakc
	MIjvGE75jdwnKczyM2a7b2LeGKH1E4+rMHwuemAZhFNPCG9Pi2DZrt2pJA==
X-Google-Smtp-Source: AGHT+IEO9+FJ9UEbKhXdX40ya/ca18BX8ZeAK/q6Tyj7eDOB0qtDQ/hVhInszN2CuvNXMCa3Xlc+Gg==
X-Received: by 2002:a05:6a20:8424:b0:1c0:e1a5:9588 with SMTP id adf61e73a8af0-1c4e473c57cmr6425606637.2.1722390197351;
        Tue, 30 Jul 2024 18:43:17 -0700 (PDT)
Received: from localhost.localdomain (60-250-192-107.hinet-ip.hinet.net. [60.250.192.107])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead8a48aasm9003534b3a.196.2024.07.30.18.43.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jul 2024 18:43:17 -0700 (PDT)
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
Subject: [PATCH v2 0/2] Add support for nuvoton ma35 usb2 phy
Date: Wed, 31 Jul 2024 01:43:11 +0000
Message-Id: <20240731014313.113417-1-hpchen0nvt@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_184318_894728_5A1A4958 
X-CRM114-Status: GOOD (  12.93  )
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

 .../bindings/phy/nuvoton,ma35d1-usb2-phy.yaml |  47 ++++++
 drivers/phy/Kconfig                           |   1 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/nuvoton/Kconfig                   |  13 ++
 drivers/phy/nuvoton/Makefile                  |   3 +
 drivers/phy/nuvoton/phy-ma35d1-usb2.c         | 146 ++++++++++++++++++
 6 files changed, 211 insertions(+)
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
