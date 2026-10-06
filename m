Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10769CA5FED
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 10:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S4deNdZvCndrMVngVMcXRC4cpeGBie8Wj98m2pyt2X4=; b=ZQfqxZReZsMotd
	k0ctYGPS/x4+zBjWG2a/XH4E97Rd6XuwoH6lVOW0W5gEZi9+zJ7+yBDuqGDAClVq3P8M24FckG/Xn
	99uezbRNGOwraRCR7WL2vPcjNFljV4nP92bKK3KBZdK89TURqUxJgB0itKhYOaDWYCiIlgR+E0ewn
	odg9yy0FuqKDlVOk3q7SFrarIx98NdBcrPNzwiejxvzv82snSxFDXc6EAob1xuD9QRvrj9n2okEXL
	VPhbJ2yTlv32kEqt6/dX3hZHMyWt5gyOBwwfaAjMGsdGcPBv6fE5JnU6UyPKhzuSYNopFt1Fw4fxD
	x6I9n292OzW1cuM5ZJaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE2Qg-00000000VRR-37xl;
	Tue, 06 Oct 2026 10:29:50 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE2Qd-00000000VOv-1AUp
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 10:29:49 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4a061a13884so4951525e9.3
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 03:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791282585; x=1791887385; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=TysRoX6VmeGROus3Z8XTTK5G2wbRE4tAp4KLkmbW3DI=;
        b=J4PkzVtiMpYL/UJb8o4EWHjQDrsHXdmJnrAkyJNUBc9cJcBTrr+hzal9VgingY2se1
         gMZcylYw33SbanK8q1TiMbZi6k8ITPdqN2YgG58LDwWp12ok0d7PwXEF4TFPnfEwJx7n
         f0BegQt3wMAL/qhGWnl1GYVqKjy25L3UxiyuoLiuopPY1VGV7iEFURum0SqP1UghsJBf
         xsH6iWZwh/ygumOdc8m6WlcI4vM0dUqpjO0b3jKj+vgj4/NHl3w4YI+2dh48f6iIxKwI
         b3vvDn554MvygRiWK5oI2Y4Nq33frIus2EJNx+UTO16GE/hsTo3gIJAsWYmo8sl09TQM
         75cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791282585; x=1791887385;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=TysRoX6VmeGROus3Z8XTTK5G2wbRE4tAp4KLkmbW3DI=;
        b=xOMJOkDcsWJ6cjAVIOT7syHU7juuY11rHS53PGjhM350orlUzqEbExXrnpchNEJqDy
         I2VlrAzCOLPbSHH0pjgkoGbH2qfkmgK9MH7cUBxWMuq7Xo0t60UkWisVkvYIeoc/bTqy
         brf+wWdc0bJvrt8css+Qbx5MBH0o2fgbqsazb3v3D4uy+rR8GSZk+dW9BoM7haY22P4Z
         BwbYByy76Y5JdgANIFdezcSjN35UY9LsQjCjMwVHM3RbhwhNFTHzoIaYPt0dIEWQGfDD
         uzgnFrWmL6ndh6HxS86xDhvZHVSwI/MubN+FNioZt/r433w45Qx9WEH4BBUXBwxkXHqR
         oRgg==
X-Forwarded-Encrypted: i=1; AKwUvBzgvC63QQoVAkhV96qGptga5/MY57On16HJrBRQte9YcA8HxARhxYrkpG8dn654AzVceqUMTzN0xW4=@lists.infradead.org
X-Gm-Message-State: AFuF++liRT/8kxmVWIoU62MRVtRjnDHsspDijFHjyB57BmRFM6PAU1sg
	f6Hf2TAQEmfDkzTjPPuZj5hfAMof+2wlTaO4hD4wvhUJQzjWofwv/CN8
X-Gm-Gg: AYBFou3+lxL/0y4UHqTDOy0Zpt4OpBKkOp235Lk5PkcHPp8yghzXnSYqkXouahZokT7
	dj8rZH7qLKXZ6/6ECmkjyCEiiwHT2Z36ObL6kN1uELHP40K96l+pdwKatdTB9Yg+ky0LO6y/GkX
	tO3qnvAU03g2PeqCOXNaJAoe5Q1Q9NK0jiU0kbqRHB8CbDB6DazHbSvD+XRFnWWbXg/HCS0P5Nj
	BuCrqccnY0Gv4pJ8gnNjoxeEt9gZSx7dyHeiunOSoa5oAUbeZDbMdD+d/PsZcCRzsO3pk8tzHiT
	YTsfVNpk2tctdKCE2H+Q30GSe8Pcb0Lv/P5q84h+BZ4fG9miMW0u61aCOeh1RNGdXM/2uKMi9+g
	0bInscFUa2fvEvxUh6x0o4b9ckhYAOD6I+bKjminoY+CcTTLOgK7BbxQCYoDL+lm91Wd5h88R6s
	u2ZOka2ctTz/znruMM8S+rXsUU0+jomnSWBnLLy9vfVWMBo84H4MsUOrTaMOt2qKsEFrULrwfSl
	/ComJQiB02IgTbzf7Qk//vMV2KF3sUrk8JnDdvMFdr5uC9fN2iL74vfbAp3
X-Received: by 2002:a05:600d:8499:20b0:49f:ce78:3567 with SMTP id 5b1f17b1804b1-4a17b5526e6mr13173735e9.24.1791282584897;
        Tue, 06 Oct 2026 03:29:44 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-87-20-252-14.retail.telecomitalia.it. [87.20.252.14])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4a178c33091sm63427485e9.4.2026.10.06.03.29.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2026 03:29:44 -0700 (PDT)
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
Subject: [PATCH v14 0/3] airoha: an7581: USB support
Date: Tue,  6 Oct 2026 12:29:32 +0200
Message-ID: <20261006102937.10972-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_032947_343438_6CA437C4 
X-CRM114-Status: GOOD (  18.40  )
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

Changes v14:
- Drop blank lines at EOF for DT patch
- Fix SPDX tag for move patch

Changes v13:
- Rebase on top of phy next

Changes v12:
- Rebase on top of linux-next now that clk patch got merged

Changes v11:
- Remove clk patch and move to dedicated series

Changes v10:
- Rebase on top of linux-next
- Add review tag for DT patch

Changes v9:
- Add spinlock init
- Add ack tag
- Add review tag
- Add additional comments for phys on USB 3.0
- Add extra logic to make phys optional for USB 3.0

Changes v8:
- Squash header to clk Documentation patch
- Address comments from AI Bot
  Link: https://lore.kernel.org/all/20260520150912.11614-1-ansuelsmth@gmail.com/

Changes v7:
- Rework to double PHY implementation
  (suggested by Rob)
  Now the clk driver expose a PHY for Serdes port
  USB PHY driver selects it
- Rebase on top of linux-next
  Link: https://lore.kernel.org/all/20260519220813.28468-1-ansuelsmth@gmail.com/

Changes v6:
- Fix kernel test robot (sparse warning)
  Link: https://lore.kernel.org/all/20260306190156.22297-1-ansuelsmth@gmail.com/

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

Christian Marangi (3):
  dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY
  phy: move and rename Airoha PCIe PHY driver to dedicated directory
  phy: airoha: Add support for Airoha AN7581 USB PHY

 .../bindings/phy/airoha,an7581-usb-phy.yaml   |  61 ++
 MAINTAINERS                                   |  11 +-
 drivers/phy/Kconfig                           |  11 +-
 drivers/phy/Makefile                          |   4 +-
 drivers/phy/airoha/Kconfig                    |  24 +
 drivers/phy/airoha/Makefile                   |   4 +
 .../phy-an7581-pcie-regs.h}                   |   0
 .../phy-an7581-pcie.c}                        |   6 +-
 drivers/phy/airoha/phy-an7581-usb.c           | 559 ++++++++++++++++++
 9 files changed, 663 insertions(+), 17 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
 create mode 100644 drivers/phy/airoha/Kconfig
 create mode 100644 drivers/phy/airoha/Makefile
 rename drivers/phy/{phy-airoha-pcie-regs.h => airoha/phy-an7581-pcie-regs.h} (100%)
 rename drivers/phy/{phy-airoha-pcie.c => airoha/phy-an7581-pcie.c} (99%)
 create mode 100644 drivers/phy/airoha/phy-an7581-usb.c

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
