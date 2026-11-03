Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F079F606D825
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 19:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EAdFVZNn;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=wS/ZznUX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=1JGz1zuIsqxSL5XB5UFLMOxzNHbxgMxgJcxEs5NwYds=; b=EAdFVZNn8bVtfLG22GEFdFyl6r
	8rtd0be/iF0gPiZtWWjZuuASubBc5DMk/BfT6MsEa6rTYVvVX0MvukzIy942mqVewmsK7e7KS30aN
	L931HtM4pXJV0T/+xJYUpkZ4V4SiW4oPOA5nPJaB1gmuufrFp5S/yg8foDUqOKcRdxxRtT4vuAte7
	qdqFyp8kNquoOCmLjXwBog3WEWab98UMDij497YP7PMgYcIRHFton/hQmrjSS/2cOF4EixqKhkT3i
	JZxG3hK/Enh6Kk8lpQupeYjNfOXEkzJBQZE1LNRhdPy5zuaTjcPSjoSBY0JUGYV0AftypEvI0K4Qc
	G5V2DGOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOKQl-00000003YCC-28vp;
	Tue, 03 Nov 2026 19:44:27 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOKQg-00000003Y8V-2WLe
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 19:44:24 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4a2000d5fb1so31770095e9.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 11:44:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793735060; x=1794339860; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=8y2ryjp6wjnywAYuPRaVBggY6L5+h6mqO8ONVPtZtiw=;
        b=wS/ZznUXEbkdPhT6DCeN6o4RKiPUnOTh33cFC/EVA2SAAR0ATgiOQOwXcdI5hZVO76
         Uj8Aei5gp3LQRX36wcqeDu73UPmLEWC9dVLoQkicUyFf/2n3adnmGho45aQ6xxhC47TM
         JhaI0eF2VHVHIIxVXnKAtOijGfDEpfvPJfKX5Al6Y8RC8wOfu6y+fwKPRXBQ926B/nHN
         +Lq3Z8w5ey4DXHY3FYGi+xkxMLv+mMhFwfN6APGjRV0R4d5NxN+f+Ci4qEZwO5Hm8Umh
         lptb2G8vncE0bdDEfohxTtXQd2LjwcmxtiBqjx8tAvL/MQSJMBd5R8SHqLzklKR88vg3
         hC0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793735060; x=1794339860;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=8y2ryjp6wjnywAYuPRaVBggY6L5+h6mqO8ONVPtZtiw=;
        b=P8XAOIQZeEDJYu62ukfYlhJ4wD+IhBJnwiie8WDLhbuUYZrH1XjK5ewRVF6pP28NuW
         y5N0KjhdvxbjtFXO80HSGhp56UJ5iV97dDa8P4lw2jR1yR3P0bJKR98cvB1rfkinso0R
         AwMzwEhrsSTe8hDHDOFeZ94MO27WQNniXmfvtlZRy1Ch92ImT7dceKAeSeNpgJnoEjaT
         NP+UNvnry165ARFL20s3lbfu+QnYec8LKU82hkalrwHKX1XDHQHrxBAJJUpjT3HtvxPy
         P8sKIxnFRJWWLw+zbv1SrmjeDb9Boa1VN0hy/bCFkQ4+N2186l2tvpW1K3CTLlGDKVkn
         IUcA==
X-Forwarded-Encrypted: i=1; AKwUvByC/EG2Y81LXrG8YhXuJ/rSeut9vsZEx7Srm4aNZoOwhdK4KfBIFImOC+/Vs0xzv8ncwovpPU16nhc=@lists.infradead.org
X-Gm-Message-State: APuU4Z8KxnDUfYb8Gfkv2Hm0ZQ1ybDutEeiWo4+jzR+1YSF44pXZ/EkY
	Iz+hR+acuvyJERHMbAH6gJZb6bGAlp7NyU04V/Ex0Jn4boi0uJBVNOY4
X-Gm-Gg: AYBFou3JyCVTqe60vg6TQDVzt5v7Y0wnKEZY3wfxTHvJm8oV5o6vGc0ataZE2oRkFEv
	qul2aKYN9uIL5rk+ZLujU4dcckqZw/afTp8KNITzdb68K5Bzao/XN9qmkEUkmzx+2w6G+G6JLEN
	GIB8z90Ftqb31tUYNANCsW2odKev5ADWSPyL/B66B43aUCqwIOiRLTDKgJIatdb2C83GYAKR6h3
	KOssZCW1weH/laR4WDMuNxInF7rAZrI4znS6P80ojnLv0XSMsSOpoRzcr5VxCOtlyXbz5KfF7G8
	//eoWlCqsqyoLENLpYmcVLv2gm8o22OmZUUiec5TCnCFn6nRqb502h237a9aSmjVklbxo48ssV6
	etqLpesLX8C94iSPurOkvjvV4+J5kxcnJLva4a7RqzM4VYzo0zFw+SsplASJo1xobsLGyWzcwGc
	Y40iChcdOt8ZpRNp8FZaqgkUwTAEVTN2Ejf1Ej8OR1e6R6tfbD51MM7PVIk0P2deBlmEAkYf5XB
	p1N82zuvdOnDrE4ixobzHf5kLo+EhK789TQSrHmUzcWg5Lf9ZWie4Krh/G/b9ViA+UQ9tulxkrh
	Gv2NavcxtuRocWvM/05DBYTLsu+1gJYsfYCKvowuKswwOEbCZEIjksxhQbxCiP8/TY50yeJSqQO
	4WOKrR2kEPl/9HbKffMcB4T9SIV+HhWi70SrZ3I9BaNuiBKuoKqIkWmc=
X-Received: by 2002:a05:600c:3b1a:b0:4a7:9044:a87 with SMTP id 5b1f17b1804b1-4ac18c73df6mr328108365e9.27.1793735059988;
        Tue, 03 Nov 2026 11:44:19 -0800 (PST)
Received: from Ansuel-XPS24.localdomain (93-34-90-148.ip49.fastwebnet.it. [93.34.90.148])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4b2a93232f0sm82557885e9.10.2026.11.03.11.44.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 11:44:19 -0800 (PST)
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
Subject: [PATCH v15 0/3] airoha: an7581: USB support
Date: Tue,  3 Nov 2026 20:44:05 +0100
Message-ID: <20261103194410.6632-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.55.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_114422_656207_B4D27685 
X-CRM114-Status: GOOD (  18.42  )
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

Changes v15:
- Rebase on phy/next
- Add review tag

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
