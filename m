Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 735F4C3DA4A
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 05:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/4uHlgUscmy06IC2brvxkBkbTh7uHVlteMr5fTs2lTo=; b=om8kjWqkEAKP8V
	81n35gi+WchINbL+oARsWlq0I0pJLC6y5g9OQA/KYes2a4kFqWfG2GoyJPQzH6rl6nGw2vD69IkNn
	+6cmKke/XK+PrJ04xWEbRNVk9BgUfQkUy8d24a5nC+8DOW0Hac/jOtQZt4Hpckh3XMWfhCpB+GKep
	OU1W7I1FO6ZRod0UsQfFeMl5QYuNdQglbnv2XzW+Uy0V/0+8DFaFo8E6Udxw87v/s1rlUcaS+89Ko
	yA3uX2KMxiq3jOg/nWKdtRwCkHTa/0kg7/27r7lNGWHnbT8pNuilAV1tuMC4CHSC3ZciBdQJyhyuM
	sJAxY+CqmAIVKcW26YKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOW5-00000003nD4-07Zj;
	Thu, 01 Aug 2024 05:38:21 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOVa-00000003n60-1yAU;
	Thu, 01 Aug 2024 05:37:51 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-70eec5f2401so3955245b3a.3;
        Wed, 31 Jul 2024 22:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722490669; x=1723095469; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rP7kB86ul/PcFVSAaxx7ceabaGdXw7owjoCpBSOG71A=;
        b=ULHtIRB1doDEcHailIw6QqrtAYu/rqzZRwM6HemNeSzzf2SI6nnMHdfllyo52rDXLv
         d+bcjvTpm3t8e5OOxgu5/l6MGWyfrXlk0iUoLCknZrSOMJimI0MAsgct3q3wwBDmQArY
         KFYqirIqkKhPDlHjKyAjcDRCiQb7QyYj8Qf65A9dpsk3hGdeJWrqmqRTTKf+sR1nZz+E
         R+A+OUVScyIALWQkRt9N6JQjvimmxUZReMEflBnk69D67vWBUuYfJXZ//PaT7oGDhYK3
         V7X54T0fZ1OvV8EnvXAl8JjJpEKX1AWcVH+lVZMy/fnIXiKgeKvNHcja7zAqzU2X7j/B
         uR/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722490669; x=1723095469;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rP7kB86ul/PcFVSAaxx7ceabaGdXw7owjoCpBSOG71A=;
        b=WYmSrsbxnjYFhaVO2vpMti69DeF2qrzbxCq+JkPtYeyIMqkYGSbJf8mhLLr5NZAfhL
         jAz+COHSJcBHZAnd66nw1dLEvHWXhkCLtMPrEQwEPvNdSvVS1clYYFSatB4DPnQFXjqe
         xlPwtN6pt1txhZ1OIdU/xUhV0UVgRIr+Z3ZBGrhNMjlz3XGurtrRzpPyYh+LkEn6cSQ9
         NF1Ad8k2FjVB1n1kd1+SfC6JKS+vcRvaXHG1cM4x7swz0SepL3BXnDKwMvh8XC2IcgFM
         0wfw5qOyI3HwEIZvu2PBR7+1N3F3mK63r+bIDalTUq6dDye0uxeJ8QX24aQeSJhmvnKg
         zDyg==
X-Forwarded-Encrypted: i=1; AJvYcCWpMtoanpcfpRLkxpr3XzNBQc7U2iw1vmrENFzyOlhSRiWXTJq6a+alJfr/WjxXJGLyY64PfsdT5je5MzuhJy2mINqtB/3ptWbIp7QK6g==
X-Gm-Message-State: AOJu0YzeWOmuT3hGJhKqeh5gpa+xlSPzkgZ3o1fr0blko4B0qV+rDJ9u
	IyOcKj5BdFGU7BSjTOkqUNRy3KOvQEW1D+GCImQLzfQemOrojms3
X-Google-Smtp-Source: AGHT+IFp5hTrwS65AqU/9trFX4Tz4W1sMCzo9JgNShTU0C2wTw+AmFV2NvsaaC+syk01WyylMut2lw==
X-Received: by 2002:a05:6a20:a129:b0:1c2:8dcf:1b8f with SMTP id adf61e73a8af0-1c68ce9f023mr2474971637.7.1722490669452;
        Wed, 31 Jul 2024 22:37:49 -0700 (PDT)
Received: from localhost.localdomain (60-250-192-107.hinet-ip.hinet.net. [60.250.192.107])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead72b89csm11106876b3a.94.2024.07.31.22.37.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 22:37:49 -0700 (PDT)
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
Subject: [PATCH v3 0/2] Add support for nuvoton ma35 usb2 phy
Date: Thu,  1 Aug 2024 05:37:42 +0000
Message-Id: <20240801053744.807884-1-hpchen0nvt@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_223750_531859_93433556 
X-CRM114-Status: GOOD (  13.37  )
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
 drivers/phy/nuvoton/phy-ma35d1-usb2.c         | 146 ++++++++++++++++++
 6 files changed, 209 insertions(+)
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
