Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78AA5C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 29 Apr 2022 07:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wFCqUsb2MrNqIX/0ckYtT4cGiRSFwW0AvgIIK+uKNBM=; b=vhiHDyd3pGYx2K
	5GrvaF+4LBbD3bESOTexNfKy4L4t+4doILhU34PG8QcEv0+SjWBZNwIWPBnQgiygXwvnA9aORqLmF
	0bT6P7NvPeFLf/3TtY8EfXcl4Bm4AyhD4EyFC50OhAyehNdgvcqAwVCD3MGHdmxUHzAxX5XkeK85A
	J5BYgpMlvkOis34qcYPGC/pv+jZoPphOGzevz1fyZF+WVcpmLDonUVcIG9Q6L1K8pY7dBSEDAHzgc
	t2VPLeQ3b/pbf2ax6r+sg7WF28u6xsYQNMySs9pPq95Z4ejsCIiSxZezsotc2R48HcJCvl6ayOih+
	D/hEUYW7Z7MvgJpYwBUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkKdJ-009tzf-UF; Fri, 29 Apr 2022 07:01:41 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkKdH-009txE-CL
 for linux-phy@lists.infradead.org; Fri, 29 Apr 2022 07:01:40 +0000
Received: by mail-pl1-x630.google.com with SMTP id q8so6390206plx.3
 for <linux-phy@lists.infradead.org>; Fri, 29 Apr 2022 00:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id;
 bh=pdWoFntDmNAHiZiZCTeweiYZFMR7Piu/j2Z6JLXwGIo=;
 b=XMp1maNaXEMUzDVgoJXO5QV1/Y9cuqyrVs5g1scvVf/4lItiPZhGIE2WoegQ2TBEn+
 rh17aJdmIpxrIiAv7E61hpXe/5byYW4N759aAH8F+Uz3PlQLFJlz0sinLZ8mTxZXFUhW
 rpT4vunau3AI2zXerYrnav87JSq6FVYGPtAzeqH4iK/eIOBibY98utzJIJSe68DIUMno
 Uzbo9492bwFZGDNe81zZJ28dLZCNZSIADY0GWxSR2NvsJNSC4RHAQhQXy2ZeFTr5fEz7
 TGo1m/FtaoRaVa2PJckAUDbWAFXoY7AvPAPwwopDl7O28aUsyBQG1yP3fd4/yfzyljoW
 ZHfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pdWoFntDmNAHiZiZCTeweiYZFMR7Piu/j2Z6JLXwGIo=;
 b=sDehziI2rpeiSvYMhpkzEmlfo2IQjqt84wg9BlVFHAhe+dG0o4EOX5EJczxgoYnTaC
 8yZSy9+30xqjecDfTEbE3oFADljgjBKycdNaNN1wri+VIoZ7xGnajUSGJADykSuPN523
 8CERwXQtka4TEZBPd8PbjcnXIrt0D2U8zmRbnP9fzSnBDQn6BMZlw7AkxHDN7MJVUbYl
 30stIN6E1iyr0dvgcyGszh1RDimcnz5/AdQRhHmB/PGoqa0k9o8lAb99LJcb7cHcfQk7
 6GPiLEFNZocxKDn2Uu87D1JZjUBZ7if2mt305nhts6+IWjG+nfhAli8h9yuuF7KxJA8o
 YEOw==
X-Gm-Message-State: AOAM533vwMcM9OaUPzz/k5eYva1E6iWCxMBiKX0XD2jI43PS7k3TfE45
 MMab3Uj4Ph/azeEHLqZ0f59nuzbHyQtFNA==
X-Google-Smtp-Source: ABdhPJzSQNNalj5Kwle6Zs5nq6sHji8rfSG7vF8HuA8c7RxvTqs9azRIClEYnYwIfM9f7uyoZGexAg==
X-Received: by 2002:a17:902:da85:b0:15d:3a9a:aad1 with SMTP id
 j5-20020a170902da8500b0015d3a9aaad1mr15976961plx.113.1651215695438; 
 Fri, 29 Apr 2022 00:01:35 -0700 (PDT)
Received: from scdiu3.sunplus.com ([113.196.136.192])
 by smtp.googlemail.com with ESMTPSA id
 iy19-20020a17090b16d300b001cd4989fee6sm13148106pjb.50.2022.04.29.00.01.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 29 Apr 2022 00:01:34 -0700 (PDT)
From: Vincent Shih <vincent.sunplus@gmail.com>
To: kishon@ti.com, vkoul@kernel.org, p.zabel@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
 wells.lu@sunplus.com
Cc: Vincent Shih <vincent.sunplus@gmail.com>
Subject: [PATCH v2 0/2] Add USB2.0 phy driver for Sunplus SP7021
Date: Fri, 29 Apr 2022 15:00:54 +0800
Message-Id: <1651215656-19024-1-git-send-email-vincent.sunplus@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_000139_444132_4CF89229 
X-CRM114-Status: GOOD (  10.62  )
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
  dt-bindings: phy: Add bindings doc for Sunplus USB2 PHY driver

 .../bindings/phy/sunplus,sp7021-usb2-phy.yaml      |  73 +++++
 MAINTAINERS                                        |   9 +
 drivers/phy/Kconfig                                |   1 +
 drivers/phy/Makefile                               |   1 +
 drivers/phy/sunplus/Kconfig                        |  13 +
 drivers/phy/sunplus/Makefile                       |   2 +
 drivers/phy/sunplus/phy-sunplus-usb2.c             | 296 +++++++++++++++++++++
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
