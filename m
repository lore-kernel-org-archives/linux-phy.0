Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F90BCA5FF0
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 10:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3NiaPVwjq30bQeJzX1hR61ySli+lwyRaN6caZurQXPE=; b=jWaOby2W4B+hOL
	6lQDwuNwAvGIozu/xwATIZeYZlwR992ptWhB00NsqTeOTR3FgkF1IbLLwBzwWcsxvGexqPJZ+0hA2
	0P9OCYR9E+PN06tNiVQ1kivWS0Rl4eeF+N3FgPOOHTXL7bgXot94xRaBl7ByZbqXzgimuUkBV4HuA
	olszJRY4xnDmd9bNRCFaOjLJYVYwGpNMRF/IkTerKj9eiBudPXWvtoTf7N/mosYRL6aeITlj/9MBK
	5b7CBGRNDSQRRhvLvN2OI4tDspoQ6cH/t+4PM0rcG4uRIq3Y0yIPECvpPNM3EMEiOfPRRJxKBOcv8
	GRH4ppnDGXA0jMlKycCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDgMM-0000000GFO1-0nYp;
	Mon, 05 Oct 2026 10:55:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDgMK-0000000GFMs-3HnW
	for linux-phy@bombadil.infradead.org;
	Mon, 05 Oct 2026 10:55:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=1hlkJmoCvYYM7ubGBabOJCCJ2BxpKb+wkgUf28W1Js8=; b=G9Hl7VaCltkBBKJxUYzZi0VllI
	i0xOICDG48rpAkyxSFZIr60IkPtkcxWYCceBfQe0nI2sPR5cLbnzZGQlRxmtM5gfFxydIjFBxN4LT
	E1yI5GR8hR/XSEDdiASOWOxaFk9Pka1+55BhaZ73L/DV0uhleYsWyF1BKYM/gWA4MxeVYqcHXOXgk
	UiTNMm+l4R7U7PjlrutIWAxLfdskA2vT7SO89+jOGoEPTA8QrgGCN+IZ6I4teWRmWb1OnlmPSO2UT
	ebyTunlF13ALYdFlDmTeJd8esqWqI4Ue5wYXcyfanRdd03Irir0UsAFDNy7TM53BLlDQPjYwD+WqG
	RwHpf+Ww==;
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xDgMG-00000007pv1-1Jdf
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 10:55:51 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49fe8bf173aso9566515e9.3
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 03:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791197746; x=1791802546; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=1hlkJmoCvYYM7ubGBabOJCCJ2BxpKb+wkgUf28W1Js8=;
        b=IJkT1bpdAjUbmnQPfZhW/FtygXid/IBeGA9pv4VFYjsbN03YQFjHQMBfV9mlpAwjh4
         B+bISoZNmR1/UAmOyGNkYJA48SFJ5ETGYFuao1r/SEHPkgt/ZHvH9OJnIgja+v+Zt7ZA
         ixdGdwW0tgtnfKk7TUgsGYZ41R6WCoP5MUZzLFn+UFXQluxOjV6484dGYDrK38hLCKkK
         Bc18mWoQPogY3XcoW2wtaSHSantejhMwdLdI4AdHJDwbsDdr11fdaW57YdzmU+bUJRWE
         +O/zMNWJG69UG+v9Lg6VbW5W4usMkjS+JJU/Il4h/KP5eb+UXMbQqTTjmn7rp887Jzp5
         mf6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791197746; x=1791802546;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=1hlkJmoCvYYM7ubGBabOJCCJ2BxpKb+wkgUf28W1Js8=;
        b=eFTCdayUqjT/yxhitz2UJiGOWeug477MoaL2Vc5nbBfSGYmaCAfm0Qq7wakDvVVtfm
         p+l5HsBo61yI1FFff9tqV6TPDO6LjwI9AK99EstCUa5LgpoUcDcwL2KiDE/Tcks38oZf
         DWQMrUhK1VCf8/1K3JwzDtaB5zZK67+BoIqKdxEbF+q/GlITpRv7HgGwOW257IJhvV8I
         744yif+NXAeu3XOMzT8fD9YDmWVy+nEsjDqYeSdySg6y9CvvcGWMvllY+ILL4m8cGp6f
         nEonSE7k5xUgEj+K9MX0u3TrqESpzslU9yxfueVs+eD0Ac/TrPb6Kn8sRhxOEH0RJJ/z
         9V9Q==
X-Forwarded-Encrypted: i=1; AKwUvBxY/HvoXsNLg6y/LabnRSIff2g9kpf13vS1pjVzI/nMuenuyU5uAGO+68Ml/Y1TDkoSk2tfykVt6JU=@lists.infradead.org
X-Gm-Message-State: AFuF++muvjoHUwWzVC+wdfj2DW1qCVVMa8PenQs6He7CTa2gJjcB1GsW
	c9e/lQzQJcNiA26r/fvWt4t5YTN1Nz2+QKrsFC78Zf3JRsR45Dy18lAH
X-Gm-Gg: AYBFou0OKqPCnjx0hIy7Pu6XXM/JbIY45+6/J9bUhkmta/ZYLB1PU5WtvdczyLYFlyJ
	wnY51pCnt7M832ht9J9uyc2IyNDa6ey2oc3Qh7riLnR+0Fl4lLMb95Qw3yHdEjcWhaI1AoJZwcX
	isEyWVmfnb0SStjZWzVBUf+1PZZmnPabtLMUweU7j9XCEvuCpC9MIPS8gCejkT2/uryhKcJ8jzB
	C2CAVLIinQMZKVBT8OdJAvVrSMQYHHRecW8vn8FTaY1pJT+Y/ccLfddPtItX5kF+S3yG4SLbVgl
	maq7Y+Cw8RgoeOAoKT2pO/cYiMWEi5LIBRw/SsYGyyXZseEpKKhtRx09hIoMKoOufs1abgCMcsr
	c0MnVqb96bEVausaANatk/0nyE5byfPtA0fRhcUW1bbl2o8GzfPMmVIAa7SW+03+WZvl7feq95v
	uO6/6fKr1PQx0siGkBQjvoDph6eR8BOKNwoKo6oSoigZCE78ABZPOt+GrR4dX1JT9+57u9kGSnD
	/HaqcVfJnUutbho74/Dm9gf/Ci5VUhy0HUyI/Ro8ASAY6Vo0H/TLN8m9mR9XGY=
X-Received: by 2002:a05:600c:3ca2:b0:4a1:70ed:882b with SMTP id 5b1f17b1804b1-4a170ed8cb8mr49669315e9.8.1791197745850;
        Mon, 05 Oct 2026 03:55:45 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-82-57-191-234.retail.telecomitalia.it. [82.57.191.234])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4a030326132sm270319635e9.0.2026.10.05.03.55.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 03:55:45 -0700 (PDT)
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
Subject: [PATCH v13 0/3] airoha: an7581: USB support
Date: Mon,  5 Oct 2026 12:55:29 +0200
Message-ID: <20261005105535.2472-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_115548_444696_C146000D 
X-CRM114-Status: GOOD (  19.72  )
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

 .../bindings/phy/airoha,an7581-usb-phy.yaml   |  62 ++
 MAINTAINERS                                   |  11 +-
 drivers/phy/Kconfig                           |  11 +-
 drivers/phy/Makefile                          |   4 +-
 drivers/phy/airoha/Kconfig                    |  24 +
 drivers/phy/airoha/Makefile                   |   4 +
 .../phy-an7581-pcie-regs.h}                   |   2 +-
 .../phy-an7581-pcie.c}                        |   6 +-
 drivers/phy/airoha/phy-an7581-usb.c           | 559 ++++++++++++++++++
 9 files changed, 665 insertions(+), 18 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
 create mode 100644 drivers/phy/airoha/Kconfig
 create mode 100644 drivers/phy/airoha/Makefile
 rename drivers/phy/{phy-airoha-pcie-regs.h => airoha/phy-an7581-pcie-regs.h} (99%)
 rename drivers/phy/{phy-airoha-pcie.c => airoha/phy-an7581-pcie.c} (99%)
 create mode 100644 drivers/phy/airoha/phy-an7581-usb.c

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
