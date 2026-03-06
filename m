Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46299FCC065
	for <linux-phy@archiver.kernel.org>; Fri,  6 Mar 2026 19:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5Xx6BhP0TP9U6W3nbSnD9FAhshOeMKATB5W5TVHOuyo=; b=M0ViJxhF538+U1
	JfiLXc5uY62pS/kO8gkM3IE234J2CnWtEbojJNUMPvjIpkLnDx0Au8xlKf6xzpacwBHp0V8JPUFif
	qoSMajjXIp1cE9CssoTXNCl9UKAqkXmmxZwDDOWrOOvy16+UGrOB0zk8M356i2ql7yIiCkm6W1Uyp
	1TeXqKDuVjalPKRbf19ebODQb/8D1x4rK3XjftLlovDmzT1/petg6jzYpCQ9W+QMI8pNl2tL91evF
	44J11TGv4QULGT09xNYhFqhjbX/Py7Hf0JX2hYPoeRnCbq4bw7TQTJNW8fUqUN7CzOiA1tOKsCHQ1
	/YGOWNWLsWnI8Xs7hn4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyaR6-00000004MdL-3qqN;
	Fri, 06 Mar 2026 19:02:10 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyaR4-00000004McS-1AQi
	for linux-phy@lists.infradead.org;
	Fri, 06 Mar 2026 19:02:07 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-439c5cce2c6so3404958f8f.3
        for <linux-phy@lists.infradead.org>; Fri, 06 Mar 2026 11:02:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772823724; x=1773428524; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=plIji+KO7wHTen0JQlN+ty+3RJPt6U7sNbwGVctA7DI=;
        b=J3DeR2ydwyIkH7/idaTn9CS4NWbK/8kM49ZloyOLH2dJzOSj6jgMeYdrtX9RNMeLug
         TznaQ4FfWkfa3JH/S8441pRxA8F0B3GRr3mDWBed7LcZEpM04NgnT013pdMxZxmcGQy6
         AEgez0yBoPGrKy0BKu1ZrHPuDylv6+3QUNwAlw8p1kSeWR4pHop0oRwqFjwSV6wxSzjM
         ewQeslVXzvXpV0hXlMGWzgvGbWgMGGi7W+3qv4cu7bTwaZySe7BlmixZqeov4075r2Qn
         +zs1EQmffMwu+hn5oknJonz30gsi+AzbIl6AAmPag9RuQOpiwBPHB8rNDzBCViq/lGVj
         n0Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772823724; x=1773428524;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=plIji+KO7wHTen0JQlN+ty+3RJPt6U7sNbwGVctA7DI=;
        b=B2+djgeU6vcHs2EZZ8uvc3nk/Uty3XVJnn1cTE0rUZHMkrfXxhEruPoPc/gmZokYTT
         Exmph7jeXgFoiy7AbReOK0U6uAR/xbph/15pTh44SJKTb0kOkUhNxb1gklS0ZeJ6VIM/
         i6VgidjoOeEsWdLeVlqg5OHB3O7bIDjlU6zJYncYVF3cAyXpBDFf2xrwYB17KlUrG5gp
         OVX0MMjfcA6hSVSfQkmIIcaifSUnqR/5SqDeuw6JLMCkwvGMLFEfjqXRGhn3HDfdZTV2
         XE7n6lBDq1sZ1FG8nIZhLDNShivKjTLQuMdBu+2Z21NVE6lDUQXNRtJowF5zLaMq2F1O
         JNFw==
X-Forwarded-Encrypted: i=1; AJvYcCUCspRcKUWWBbyqXfJV/wKFcsu/rzzo/y+mApP8J20tx0ZVrB5pI8hSHzeYYvA4jJxyu55GeGLdoPY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7fx+9Os3cHy5jlYZYlEA0wm1yN945zY56rzAvdI/7QxiU53uW
	Zu8UklbawQxTs6L3M77cjFxyOYuNsWBQ5spg5zcQFXV6/iubHMVCco1K
X-Gm-Gg: ATEYQzxaPWm5lnSW7K13G4Ve7TlNcyWCYe1SAGRIKYiwfwHDf+C5kAhn8+JMboKcDBj
	JQUs0/HXI+4tErCAaN6XoRwGco29lGQOtSorlSyC67vvQk0MopK+8PKY73cYBeJkxG7evB59YET
	Z7ylITqm2ST3+RWmymOMKPLbZ7cfPDoaN7KOyui4+s/YWtOz5n/bPKrewiirq9PlVFnW/7UghpF
	VhZoxDr2A7MjoitZemvzI7cu8oUwUIttF6hRujkSR3uKfGi8mcw2yGiT5T+rZnZ4s3Edr8toLkW
	qloKEMRNybXlEtIVbs9npOlLeA7eeJhFyQUz2vcQcFg1v2830hFpSdg2/CJsIM+DH074WyF4aEN
	62JJeLK1ohmPz1UvfIJz8n0qA3hUvW9hlHO6SdFsYHmn8X+SdiLAzf9eAhcKNtGPpwN6sMG2OXf
	yd8A43u2uaY71DFxDG9F/hUUVBWUp59uvc3VpRY8z4Dxf5wRx/YT4REDc=
X-Received: by 2002:a05:6000:2404:b0:439:c43a:acb6 with SMTP id ffacd0b85a97d-439da654620mr5734587f8f.10.1772823723545;
        Fri, 06 Mar 2026 11:02:03 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-439dae2ba66sm4743436f8f.20.2026.03.06.11.02.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 11:02:03 -0800 (PST)
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
Subject: [PATCH v6 0/4] airoha: an7581: USB support
Date: Fri,  6 Mar 2026 20:01:49 +0100
Message-ID: <20260306190156.22297-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_110206_331252_1B7054E9 
X-CRM114-Status: GOOD (  14.70  )
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

Changes v6:
- Fix kernel test robot (sparse warning)

Changes v5:
- Add Ack and Review tag from Connor
- Implement Ethernet support in the USB driver
  (testing support for this Serdes on a special reference board)
- Use an7581 prefix for USB PHY driver
  Link: https://lore.kernel.org/all/20251107160251.2307088-1-ansuelsmth@gmail.com/

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
