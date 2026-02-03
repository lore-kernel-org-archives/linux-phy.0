Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 764FBE87842
	for <linux-phy@archiver.kernel.org>; Tue,  3 Feb 2026 16:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9SjaaOKOKsptSQPb95XvdIvg70M3AxOPzPYyoAlmBC0=; b=tepI2Q3rSZSnW3
	t7Xi//rwlCOvi/XCeeqjIifOh2YhEwltIY3NftYBDbMY2FRRGbufYt4a6aa7mNs2mXKtm53BHPhUg
	LgPAbnxTEcf/D+0n+GgXsYK3jD1aCxVf2WXQfMAFDonPBwrPMYZOtVW/yRs8EFYnMs6ihMqVsHPOB
	rq1S4AIt0JUCp69ewDd9tN2M/Of8IB0NO11XW/LeydTjx7k71vWUy5NaIa4C0jYh0IQ5Yx+lAfS1y
	Za8KsUXZU5ZXoBNHJMDnOhm5ARrw7mEwm28R6H9KF9an9Ci8mg+DEQqOrtEzUBFfAkJd2vf9iVDf5
	8rTFbdsrd42R9lk/rohg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnJ7b-00000006uxS-0hlc;
	Tue, 03 Feb 2026 16:19:23 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnJ7Z-00000006upB-0Tmp
	for linux-phy@lists.infradead.org;
	Tue, 03 Feb 2026 16:19:22 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-47f5c2283b6so47638565e9.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Feb 2026 08:19:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770135559; x=1770740359; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mjxVuWnk5B9RXCQZJmoomXjLkYn+5cEbj6Ic+qFTg0A=;
        b=hKd8Lsz/k+yLH8SAOQ8hFGlGmBujAyJG3oKCkasaQTa55DEnjwlwGvyywo0IJZGtrR
         kWYHl07TDzecacyLvlNcJLsVg7AWlbZ1s1qtSy8/vg5ly7+9tIoA3TImV+BT+V55IoRu
         jPFCE7yFhyFENUL7js663llURIL2JHd7vj3+UuhTzBXDWej/EjgK69iTdNsOAeg/PfL1
         HWaotG9DKJCFKwrLZcJz3sYkdFNPM5w6o0gTLTAM4572nWvn+llLKHbXsi2PByAeWH9y
         hSM7ggguFMd+ZeBT/bvB0NbAS4UZ3w7Xc28TLRKHp3lcL1TJ4MFXN4RLW6DjyVe/vjUf
         Y3/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770135559; x=1770740359;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mjxVuWnk5B9RXCQZJmoomXjLkYn+5cEbj6Ic+qFTg0A=;
        b=cqHkXujj9jE/IgOCVtWmtLFa0GryLsy2lDU8EyFzhQFY/WIcVR2FXY2gtpltu9tqcf
         ar4k8lqBfW9zL96KtuZcNj9p2MKmhq/CCq4eOuryo0ko7B4SOUYWX/EzIBJFDvLF7FAX
         twvVISRcWH7eFcOIA4e3ToctOdkiFVM0whQ4dWUUuNm3thXD1E8n8Ki702oSXVXzuQU1
         Y8P85CP+tfdoW+vtPFCAbrTMYmpN7gNRBOeL3bVNCQ6wzWyJtoWFs1ZBsrhnQIytysez
         7dRe6aQoR30S5NTNl7Wb35+iJCHK/v9BaEVUvWzMh0XHmeWxAGuEeYdpPhTS8S6g2Pn1
         BB1Q==
X-Forwarded-Encrypted: i=1; AJvYcCWljdY/MCNoFj9jWpsnYE+ku5nRheC2VunMHaY1K9H9o4OAw5DyjVXMvKzPun7bB7iFuCJ7b1991bA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzuSUI/N+G3T+MSH9xIaCFJn2eP0G5xLbNo/KYWVRSDV96t/PBL
	4smIh9ms3h9J3lJZ4cLbWy3ZtmKbnOLxuUAzR9h7dfaSv3fHTc7wFNiZlzroLgofvdA=
X-Gm-Gg: AZuq6aIP6hcnhDxZgM7YY7uBR2zfN0HsFoG5ZZ0G0uYRWxddm73bbXdrRsbuNH7ebZC
	BxImALuepjiqqWfDjzBMREaQp8Ee2ZFsZqE2Tp4zlBmH9N72PMsqKIBtuS2xCrhR3PRytGEha18
	oS8JaK8P0CEM7MJYsHU/dJBsRQ0rIb9dAwVm8xDU0XUmih+F/5Jka/7f6wwg6As2sBsxnPsVlAT
	ZFXxFNumJ02fCyfZcZqjriwGInQ4HzACn4nZj3t9ZhB6BbfSx9ETE96zOB7to2yOzkaRNxRwT6A
	xiJCwg3e7ThabZVbDi+fWb2jlY9BDKqKXN2RmqRdfjdLhw3+DQg0VU4sImBJqaPv3ZdYZkeD+gj
	0pH1+g+KDqv8jMVHMWDHu5OcVWCArqhOsfC1c/qCzepGmT31flqceXaFr496EqDT+tdWr8ykOtQ
	iSzapu/VCiqZ2Kq6M0+XedAEoKkjn92Q==
X-Received: by 2002:a05:600c:a00b:b0:477:7975:30ea with SMTP id 5b1f17b1804b1-4830e971be8mr1908985e9.29.1770135558650;
        Tue, 03 Feb 2026 08:19:18 -0800 (PST)
Received: from vingu-cube.. ([2a01:e0a:f:6020:81d1:b874:c1dc:42e5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-482dbd21f5dsm144120785e9.8.2026.02.03.08.19.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 08:19:17 -0800 (PST)
From: Vincent Guittot <vincent.guittot@linaro.org>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ciprianmarian.costea@oss.nxp.com,
	s32@nxp.com,
	p.zabel@pengutronix.de,
	linux@armlinux.org.uk,
	ghennadi.procopciuc@nxp.com,
	Ionut.Vicovan@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org,
	horms@kernel.org
Cc: Frank.li@nxp.com
Subject: [PATCH 0/4 v2] Serdes: s32g: Add support for serdes subsystem
Date: Tue,  3 Feb 2026 17:19:13 +0100
Message-ID: <20260203161917.1666696-1-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_081921_221262_7847A6BD 
X-CRM114-Status: UNSURE (   9.45  )
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

s32g SoC family includes 2 serdes subsystems which are made of one PCIe
controller, 2 XPCS and a shared Phy. The Phy got 2 lanes that can be
configured to output PCIe lanes and/or SGMII.
    
Implement PCIe phy and XPCS support.
    
Change since v1:
- Fix compile_test
- Use devm_reset_control_get_exclusive()
- Fix s32g_serdes_phy_set_mode_ext()
- Manage devm_clk_bulk_get_all() returns 0
- Fix s32g_serdes_parse_lanes() error management
- Move xpcs filein drivers/net/pcs/
- Add pcs_inband_caps()
- Fix functions in phylink_pcs_ops
- Fix MAINTAINERS


Vincent Guittot (4):
  dt-bindings: serdes: s32g: Add NXP serdes subsystem
  phy: s32g: Add serdes subsystem phy
  phy: s32g: Add serdes xpcs subsystem
  MAINTAINERS: Add MAINTAINER for NXP S32G Serdes driver

 .../bindings/phy/nxp,s32g-serdes.yaml         |  154 +++
 MAINTAINERS                                   |   10 +
 drivers/net/pcs/Makefile                      |    1 +
 drivers/net/pcs/pcs-nxp-s32g-xpcs.c           | 1006 +++++++++++++++++
 drivers/phy/freescale/Kconfig                 |   10 +
 drivers/phy/freescale/Makefile                |    1 +
 drivers/phy/freescale/phy-nxp-s32g-serdes.c   |  953 ++++++++++++++++
 include/linux/pcs/pcs-nxp-s32g-xpcs.h         |   50 +
 8 files changed, 2185 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
 create mode 100644 drivers/net/pcs/pcs-nxp-s32g-xpcs.c
 create mode 100644 drivers/phy/freescale/phy-nxp-s32g-serdes.c
 create mode 100644 include/linux/pcs/pcs-nxp-s32g-xpcs.h

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
