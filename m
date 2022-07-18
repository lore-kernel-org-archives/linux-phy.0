Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6072CCCA479
	for <linux-phy@archiver.kernel.org>; Mon, 18 Jul 2022 10:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BTw0TqCWgS8V0qB6yidaeCs73Et+MpiJPrwHOnf89xQ=; b=X4j20irP1fiXdb
	9zmPWsYZOo9vkB8JUiB66Bs/HWpqLnHdnzUAGkYZKYWXLACMKsRsrlRAbyYEY0x8BRFdQ40c7Q11X
	b50FOiZ1SH3zyvSbtPW2xXVZodVv8CAizvXeOIDQMJYbLgu+FGLjKxsnK9BpxqUGrU1t8OeGpVbHp
	dJgSdBKs6vYtIzu8Gvy70dApHpKkOP7qqHLhoPYzLUMO/01aELTnjCmeI1AIRwdyVXbRo/gTQobu8
	i+gM6I9yh7HN/opL8TXuNxyB9xmlQzsJgIICSqlvLu4e/dVF6G6+wlL/QqMUEd7FgD15tFKlX4v1H
	VRIGB2Hk1HtQ0Y/WYrrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDOLo-00Cbjx-OS; Mon, 18 Jul 2022 10:51:44 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDOLl-00CbhF-Vw
	for linux-phy@lists.infradead.org; Mon, 18 Jul 2022 10:51:43 +0000
Received: by mail-pl1-x62a.google.com with SMTP id w7so8654293ply.12
        for <linux-phy@lists.infradead.org>; Mon, 18 Jul 2022 03:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id;
        bh=a4smhlXQRPY08uZFYWaREPplMOTenvaPYfLKafzeLgY=;
        b=AKe+sNy1gChpstieXUsxZD5p8A2lNFOyH78szTrmAd73Lmp2K1cEvITIVrP/MNLtCn
         2r85CO3G5vrj+Gvj8fta7XfmzIxRnJw3s/zWl0OwwdJI/rcG4+v1MnVy6hX+LHOYhrsD
         lEY/6Dz5TOoYMf8kgMvnROzDlMJ54F2Vk37i1Fc3ICDk3jH6X35iQ8aaMpO5l7Qh3Y2Q
         dCV7iSPYj8NJdoY+lpNLXAEjZl9beB3I1tgXxXbS0tvOJ1cb5axYI9HBMnk8gMQD/Rtc
         gXeOLoZi0ZA+MCHSbjmUVEpwfvZCAbgQsHrQDZBY8hHhm23jdSEXBVOAe94HIeqMwZi7
         iHYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=a4smhlXQRPY08uZFYWaREPplMOTenvaPYfLKafzeLgY=;
        b=UKIdrG+R9OMna83nfJR8Cu7kdvnDTdNJjHE9bWpmghGdXFv+3oSwidf/+Rk7N7ODif
         sfuhrVQrXbUmeTqJ9Cg9WXUd1LpkCrbn4UBqInco4NdxmIwVzTa8jEPDpckHpWa8S6+6
         xG0HZcPthWIDLPkORLApNNbd0FfAlY/49rCpU35ZnMJE9nrSoNs+xuiHCSc5hi7T8+fa
         NRmGjLESkHKjRNHHwarCT7ZqyB9bpd0xTJL/1pqd9RP1zVP5NFvchQYWRg4ZgF4q6GMF
         8runhJf9h2d0YB9ZMIw4/Kzch3idyx36WC2+7xBf+Mu3nmMJXOnLucxrqdOnX8HJfkeB
         0ZVw==
X-Gm-Message-State: AJIora/jS0soMFgKWYv08IU6IejzdKpugHVe91wPcSx8FBlcSoICfWs8
	9EIwAX5hZsGLgLk5lilY4NOA+UCXaew=
X-Google-Smtp-Source: AGRyM1vWjlz2YT9znDMfpyN2OCP1gJjgGcm6C51sU4kd9nkBsZL7ktnoIxjmL2Pi8skCdAI/z5Sogw==
X-Received: by 2002:a17:902:ecc3:b0:16c:461d:802b with SMTP id a3-20020a170902ecc300b0016c461d802bmr27958364plh.167.1658141499900;
        Mon, 18 Jul 2022 03:51:39 -0700 (PDT)
Received: from scdiu3.sunplus.com ([113.196.136.192])
        by smtp.googlemail.com with ESMTPSA id s2-20020aa78bc2000000b0052ac1af926fsm8914641pfd.20.2022.07.18.03.51.37
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Jul 2022 03:51:39 -0700 (PDT)
From: Vincent Shih <vincent.sunplus@gmail.com>
To: kishon@ti.com,
	vkoul@kernel.org,
	p.zabel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	wells.lu@sunplus.com
Cc: Vincent Shih <vincent.sunplus@gmail.com>
Subject: [PATCH v4 0/2] Add USB2.0 phy driver for Sunplus SP7021
Date: Mon, 18 Jul 2022 18:51:18 +0800
Message-Id: <1658141480-9291-1-git-send-email-vincent.sunplus@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_035142_066614_D69ED0F0 
X-CRM114-Status: GOOD (  10.64  )
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

This is a patch series for USB2.0 phy driver for Sunplus SP7021 SoC.

Sunplus SP7021 is an ARM Coretex A7 (4 cores) based SoC. It integrates
many peripherals (ex: UART, I2C, SPI, SDIO, eMMC, USB, SD Card and
etc.) into a single chip. It is designed for industrial control.

Refer to:
https://sunplus-tibbo.atlassian.net/wiki/spaces/doc/overview
https://tibbo.com/store/plus1.html

Vincent Shih (2):
  phy: usb: Add USB2.0 phy driver for Sunplus SP7021
  dt-bindings: phy: Add bindings doc for Sunplus USB2

 .../bindings/phy/sunplus,sp7021-usb2-phy.yaml      |  73 +++++
 MAINTAINERS                                        |   9 +
 drivers/phy/Kconfig                                |   1 +
 drivers/phy/Makefile                               |   1 +
 drivers/phy/sunplus/Kconfig                        |  12 +
 drivers/phy/sunplus/Makefile                       |   2 +
 drivers/phy/sunplus/phy-sunplus-usb2.c             | 297 +++++++++++++++++++++
 7 files changed, 395 insertions(+)
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
