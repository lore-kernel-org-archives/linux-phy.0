Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E36F5C28B20
	for <linux-phy@archiver.kernel.org>; Wed,  2 Apr 2025 11:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6gMtUNRlVowxUKxGv2Kj7Kv6Q2x2OotfcwNedtZc48w=; b=Ilo
	ttll++NR9f7kV0TOno0lU3AkNeD6l7s0c25zVrrS+3f4kmyLqHbPkJwivVkzZyt4p5c2582HYTA28
	vHJuNMHI93a+RjAhdDr9iGjeAao9z2yrqdZ4+71oFrJaArsGqTWRevDSaY+vaRaACf8A5xudN4Nyf
	jtDYMx6iezyJyITtDpVSD4Lma8A7Hm6jJW1LgVOlCrMeSlIhfG14SqU+gYJJzRaC2C6NaB7mGmOcS
	w1Mt5OM2kZfFtbal1D4rauN8zs48ZPlmRNoqa4E3Bd7RJmE4ln7g4p66fIlKrMbfw+8782G8LYr91
	lOATRm+Y4nDz9uuGkqV/fOVv207Veeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzwdU-00000005yVY-1mfk;
	Wed, 02 Apr 2025 11:52:00 +0000
Received: from mxhk.zte.com.cn ([63.216.63.35])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzwT1-00000005wQv-2FoI;
	Wed, 02 Apr 2025 11:41:12 +0000
Received: from mse-fl1.zte.com.cn (unknown [10.5.228.132])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4ZSNH75fKSz5B1J6;
	Wed,  2 Apr 2025 19:41:07 +0800 (CST)
Received: from xaxapp04.zte.com.cn ([10.99.98.157])
	by mse-fl1.zte.com.cn with SMTP id 532Beuck066915;
	Wed, 2 Apr 2025 19:40:57 +0800 (+08)
	(envelope-from shao.mingyin@zte.com.cn)
Received: from mapi (xaxapp01[null])
	by mapi (Zmail) with MAPI id mid32;
	Wed, 2 Apr 2025 19:41:00 +0800 (CST)
Date: Wed, 2 Apr 2025 19:41:00 +0800 (CST)
X-Zmail-TransId: 2af967ed224c2c8-28bb5
X-Mailer: Zmail v1.0
Message-ID: <20250402194100610qY6KQ4JPISk-4v214Qs36@zte.com.cn>
Mime-Version: 1.0
From: <shao.mingyin@zte.com.cn>
To: <vkoul@kernel.org>, <robert.marko@sartura.hr>
Cc: <kishon@kernel.org>, <wens@csie.org>, <jernej.skrabec@gmail.com>,
        <samuel@sholland.org>, <zhang.enpei@zte.com.cn>,
        <linux-phy@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-sunxi@lists.linux.dev>,
        <linux-kernel@vger.kernel.org>, <luka.perkov@sartura.hr>,
        <vkoul@kernel.org>, <linux-arm-msm@vger.kernel.org>, <heiko@sntech.de>,
        <linux-rockchip@lists.infradead.org>, <yang.yang29@zte.com.cn>,
        <xu.xin16@zte.com.cn>, <ye.xingchen@zte.com.cn>
Subject: =?UTF-8?B?W1BBVENIIGxpbnV4LW5leHQgMC81XSBVc2UgZGV2X2Vycl9wcm9iZSgpIGluIHBoeQ==?=
X-MAIL: mse-fl1.zte.com.cn 532Beuck066915
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 67ED2253.002/4ZSNH75fKSz5B1J6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_044111_730050_7BF94776 
X-CRM114-Status: UNSURE (   5.60  )
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

From: Zhang Enpei <zhang.enpei@zte.com.cn>

Use dev_err_probe() to simplify the following code
sequence:
  if (err != -EPROBE_DEFER)
      dev_err(dev, ...);
  else
      dev_dbg(dev, ...);
  return err;

Zhang Enpei (5):
  phy: allwinner: phy-sun50i-usb3: Use dev_err_probe()
  phy: broadcom: phy-bcm63xx-usbh: Use dev_err_probe()
  phy: qualcomm: phy-qcom-ipq4019-usb: Use dev_err_probe()
  phy: lantiq: phy-lantiq-rcu-usb2: Use dev_err_probe()
  phy: rockchip: phy-rockchip-typec: Use dev_err_probe()

 drivers/phy/allwinner/phy-sun50i-usb3.c     | 8 +++-----
 drivers/phy/broadcom/phy-bcm63xx-usbh.c     | 8 +++-----
 drivers/phy/lantiq/phy-lantiq-rcu-usb2.c    | 8 +++-----
 drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c | 8 +++-----
 drivers/phy/rockchip/phy-rockchip-typec.c   | 8 +++-----
 5 files changed, 15 insertions(+), 25 deletions(-)

-- 
2.25.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
