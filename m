Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD71BC433F5
	for <linux-phy@archiver.kernel.org>; Fri,  4 Mar 2022 11:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lU7J8E3/Ls+crulh5rHo/SvOb1APhT79r06/LPqR5Cg=; b=1gIZ3ZKJb4ILwO
	guaXhRyi0s0clQ3l+DjFvKMlgsSo7Kyn0TYzRXkh/qcYDZ6PjWzHioMIFDNRSoF698VLsmmzC0tyr
	wlgMBTHpUBre63TzviNMhfBMbqNlvOVLjSQdJ/Afu3i4hUf1HBDznwJaeveHDsyXQA96dfRh/4UpO
	F1o6887PSRHyhe1u6QOlWLS/WNLZY1xNmbKu55BgRqS8TH5SB/nvYvzT/k3D0hO1uOmaSjx4l+zXs
	2qJ+eqHAwfryt/ykr3Wn5iIsO1GEhIrv7JwC+EsnQTimlLAi7+1/+96Jv5GJJEsKzcdwZhS1PKzm8
	lq/ORlKFtjclJGudZgyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQ68N-009nxc-BI; Fri, 04 Mar 2022 11:30:07 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQ68K-009nwY-PA
 for linux-phy@lists.infradead.org; Fri, 04 Mar 2022 11:30:06 +0000
Received: by mail-pf1-x42a.google.com with SMTP id s8so3307450pfk.12
 for <linux-phy@lists.infradead.org>; Fri, 04 Mar 2022 03:30:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id;
 bh=8h85EqRRCLiGL53ycW8kr7mXUB11CVEXR9UMxVb4BkI=;
 b=LtruXqJBf79xHTqXkhttmi7F4MMrxTC4jzgT3oDue5YoUczjkcLzR/288VLZi+om7w
 KstnsUmjYyUIqfHpokSxOLlNQ+WtCCSf1xjgUAXG4Wr5snl9gZ+/hMcayXaZf4AYpW6G
 OHxlYfurYVQBg0pdU4LyLjbrTLdesUbhc23Jixnfq8yomdUx1Q39jC1c690Uz8LfSUWm
 nguqN/KiLsQu2W8Bv9flRw1ZjMpvyTXcBw3OwDMxfX6XdFvQC2MkQlpiHIITp28NreP1
 JHkdp27nEmMG7qiA6WE7fm0QJaHAn8IhMPbZVkzjfddGtRcvEKq7AOx6DHI3wN8+Z4RM
 DXcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=8h85EqRRCLiGL53ycW8kr7mXUB11CVEXR9UMxVb4BkI=;
 b=tYPzQxLh5jSdtiUFgKmUpS2upCDP4Gsy0yjCawY2xTrYBpwow2qpyl0V95rf0jlLe8
 j/EHfdT7uFQTEQRTdag8YS+ALEI/dZ9HSnVGW84CoSEOIuRWQG46skECL2Y8x6YOaBxd
 0g5V5usC1D394bRh6yZk665NOzQSVp2lvM6y8C/QhRAtIkIkatz/JPGKogrgXo5QFX+6
 joBIhvbSFWopUd2znLEOU/2J3ZU5PoPnxSDjam/pH2FG1e98Oj3SsRIuT25+bxU34lEF
 iR4inmcyh/TpFCfheYdRDUIr5hvjjKyeCRTBePUv7aKB2BmhdB0tYHLpovyasBdakqFc
 2xGA==
X-Gm-Message-State: AOAM5331xv5fvnXfuZsY6Ow8lKlXZCsyBGjs9ow920kpU5A81w/pExXl
 TCX/Li+twQHBg/hfIuP2dEo=
X-Google-Smtp-Source: ABdhPJwqxIBJuIn5XpOvRpZQlQgIg+Pos7BA0dFdg5JsK54IWbBXXykhk/Gco+jvsDeoR+xFlHeGBA==
X-Received: by 2002:a05:6a00:2301:b0:4e1:5842:48d7 with SMTP id
 h1-20020a056a00230100b004e1584248d7mr43017387pfh.14.1646393402652; 
 Fri, 04 Mar 2022 03:30:02 -0800 (PST)
Received: from scdiu3.sunplus.com ([113.196.136.192])
 by smtp.googlemail.com with ESMTPSA id
 h3-20020a056a00170300b004f104c635e4sm5718237pfc.99.2022.03.04.03.30.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Mar 2022 03:30:02 -0800 (PST)
From: Vincent Shih <vincent.sunplus@gmail.com>
To: kishon@ti.com, vkoul@kernel.org, p.zabel@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, robh+dt@kernel.org, devicetree@vger.kernel.org,
 wells.lu@sunplus.com
Cc: Vincent Shih <vincent.sunplus@gmail.com>
Subject: [PATCH v1 0/2] Add phy driver for ehci in Sunplus SP7021
Date: Fri,  4 Mar 2022 19:30:16 +0800
Message-Id: <1646393418-26421-1-git-send-email-vincent.sunplus@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_033004_837804_61DCAA18 
X-CRM114-Status: GOOD (  10.27  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This is a patch series for ehci driver for Sunplus SP7021 SoC.

Sunplus SP7021 is an ARM Coretex A7 (4 cores) based SoC. It integrates
many peripherals (ex: UART, I2C, SPI, SDIO, eMMC, USB, SD Card and
etc.) into a single chip. It is designed for industrial control.

Refer to:
https://sunplus-tibbo.atlassian.net/wiki/spaces/doc/overview
https://tibbo.com/store/plus1.html

Vincent Shih (2):
  phy: usb: Add USB2.0 phy driver for Sunplus SP7021
  dt-bindings: phy: Add bindings doc for Sunplus USB2 PHY driver

 .../bindings/phy/sunplus,sp7021-usb2-phy.yaml      |  73 ++++++
 MAINTAINERS                                        |   9 +
 drivers/phy/Kconfig                                |   1 +
 drivers/phy/Makefile                               |   1 +
 drivers/phy/sunplus/Kconfig                        |  12 +
 drivers/phy/sunplus/Makefile                       |   2 +
 drivers/phy/sunplus/phy-sunplus-usb2.c             | 248 +++++++++++++++++++++
 7 files changed, 346 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/sunplus,sp7021-usb2-phy.yaml
 create mode 100644 drivers/phy/sunplus/Kconfig
 create mode 100644 drivers/phy/sunplus/Makefile
 create mode 100644 drivers/phy/sunplus/phy-sunplus-usb2.c

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
