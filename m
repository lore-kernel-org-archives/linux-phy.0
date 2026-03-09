Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B54EF41812
	for <linux-phy@archiver.kernel.org>; Mon,  9 Mar 2026 17:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YYH3ljmSCF7bx6873V9wxfbpInCxgV6MMbHbS6LyVDI=; b=AP8ZbA6vR94odS
	pWQ8x4J6iNhBxdmfY2Hd4Tb9eAO6/gyai17v8VtA/WZZ9EFqu6lwwn/0Xzdc+CCkxNM74ma7bW7zw
	N1oQubuGxF8HwpJ1GtCC8AG5Eu962SvvQPecZ2cPutOUIuMvqlb92Rb4o5cxe0cvlBh9xjlSguEnz
	S0fIcsPKKCTSwPwsUMgGxQt1/SUOdNtn9UWPSRVaBnM7MAdUckU3hkS+tHckt8ANHEb+1uF+O/fiE
	Wthh67SoEA0d7CK/iX3it9V/0MOVbdq7VS99QbVmtPKkWUoxb9teFIWQssKY4TsJOmjI6OZrEgEtI
	R0G3v0mJDPyhno9FWETA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzdyt-00000007mRz-0ajK;
	Mon, 09 Mar 2026 17:01:23 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzdyq-00000007mRX-2SW9
	for linux-phy@lists.infradead.org;
	Mon, 09 Mar 2026 17:01:21 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-482f454be5bso120426405e9.0
        for <linux-phy@lists.infradead.org>; Mon, 09 Mar 2026 10:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773075678; x=1773680478; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:from:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6bGjAJZg3kAEKg3RqCoiUO430+IHfGMI5W87dJSgovE=;
        b=gG9bC0T06GmKH6BpfF4lj2OTfaVGdtZo6L6YkcpCGKaCkIZl4WTtfoHjG0eKXHev3D
         25NCmHF+2yawrJ2PaBVF7Vf0pUERZCjDIGfSEBx1HObIcnZ8TJAbBDuEUMkTc5v2e6NT
         PoXeiQMqGzdhZNeez4E/2oD3E+4iDW+NV1f0cDSg8EplXq57YPj97wWnpLJXBzwklbEW
         Nrw6G+dp2JdWojogfB5d1VWHQ5b9Pg97Z8TztmYYho2IQcS6IBQcucby6+he5vy4A+1e
         dfpa3IWU5duUmLSt64T5sSfcwkFJK1ywcRzt/wI9sGOnR3XTgqmCjACUomD+ARu359Va
         MWAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773075678; x=1773680478;
        h=content-transfer-encoding:cc:to:subject:from:content-language
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6bGjAJZg3kAEKg3RqCoiUO430+IHfGMI5W87dJSgovE=;
        b=gXAXO0Jsad81fvVYL8Cz/cT34L2QOy6pMxeGtt7/SOs4hw7cpXxlPsfitQMUaa8EVo
         qTQlIvZN/RCNCrRudzL+n3yebCCgc0wQIuyZtIZltVdhQ2EdL90BwhN4m+Z9pCRQ1hIe
         TOu0gxZnG7dNjKrrC2BmTTf5ABomyM28++57ODx3M7QVsBb+oADOQFLp3oS1yDPw5KjN
         Sqtxuq/2aIMhmCoIA/CCAeHM/yL1zaxKxbnl+qQ3xbjr7jag9AWqVWXdfH8afEvZsfK3
         sw7KXw4Hn/K8F9EZUpzOq3AMT4B9H7MuJUH9AND2pIovWqejv+A4AayX9jqHTjZuUmFJ
         eKng==
X-Forwarded-Encrypted: i=1; AJvYcCVgtKVZV/F/lgCXeL61EUmCQoeZrF09FZhBvpt0Agp3mmqkS2wkOvpncqaZTMafnWT384xQWwojHwo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzys0gXWkphR5Yqa0+kIEPPWqxbGXJxXFA4x8hrEbeuXYtNBLp6
	MdJlELkL1QtQVXyXilpDrddiRiR//4sc8Z9sXdSNeJ6fciNGCQBiWRDL
X-Gm-Gg: ATEYQzy8XdvMfM9ZBWnMaQWyk35ujCHg9poSsJge0rELWhOfxAbY/DIqPu0OJ9BAo4/
	tnmne4lbGUD1Xsyy3ddPmyxI08T9EqbsWsRph/ymWSfS/eHLTBIEqRbVA3s0SzmEcRz7FziAV2u
	Pv1I0cY805Tph27frZFXTubHx+XI1XgRN48vGv3by9WO4SntZFkmEETzAbY0pkR2KlQ/pDcYUVg
	3uVPzQ1JHdzS1uzNcFMN/PKwEwLWByWMS0MD5EEaHlcd/n9RJp79NMNsyEQPAnT511g93t8Vd15
	Pb13W964vtGsfbdRfNey60imSoPAElLl6eUdcsoyTBKqucTTztx0WQOgqhbiuPa3vuCpLMi/2kR
	lEPjn5GYyva1CXluLXatRVbN4U0VV/eRN9OfezSCsXTSITwnaUt2Roi4DuG7A1zE5HGdAxVwul3
	racAAT1CqIGrxIkRAMnHtj+JuFREQWKRUj1XpdACbm9wY3rZmxIGK/m651i0zzlc7SAdOWfeRD+
	yeMi+LjdRHDpnH1N3pqGxcjrZd+Bby5ud+MQQx9fplwVMaRwWFsPYL5h7pBPnk=
X-Received: by 2002:a05:600c:5894:b0:47e:e48f:43b5 with SMTP id 5b1f17b1804b1-48541a7f3f5mr3310265e9.18.1773075678161;
        Mon, 09 Mar 2026 10:01:18 -0700 (PDT)
Received: from ?IPV6:2003:ea:8f46:ce00:5f9:7f3c:5f9a:2a3d? (p200300ea8f46ce0005f97f3c5f9a2a3d.dip0.t-ipconnect.de. [2003:ea:8f46:ce00:5f9:7f3c:5f9a:2a3d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae3d98asm31393267f8f.30.2026.03.09.10.01.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 10:01:17 -0700 (PDT)
Message-ID: <9d5724bc-e525-4f8f-b3f8-b16dd5a1164e@gmail.com>
Date: Mon, 9 Mar 2026 18:01:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH v2 net-next 0/5] net: phy: further decouple provider from
 consumer part
To: Andrew Lunn <andrew@lunn.ch>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, linux-clk@vger.kernel.org,
 linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_100120_642251_9D3CA24A 
X-CRM114-Status: UNSURE (   7.96  )
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

This series aims at further decoupling the provider and consumer part
in phylib.

v2:
- patch 2: add needed Kconfig dependency changes
- patch 5: explain false positive checkpatch error

Heiner Kallweit (5):
  net: phy: move mdio_device reset handling functions in the code
  net: phy: make mdio_device.c part of libphy
  net: phy: move (of_)mdio_find_bus to mdio_bus_provider.c
  net: phy: move registering mdio_bus_class and mdio_bus_type to libphy
  net: phy: move remaining provider code to mdio_bus_provider.c

 drivers/clk/qcom/Kconfig            |   2 +-
 drivers/net/phy/Makefile            |   6 +-
 drivers/net/phy/mdio-private.h      |  11 -
 drivers/net/phy/mdio_bus.c          | 385 ----------------------------
 drivers/net/phy/mdio_bus_provider.c | 319 +++++++++++++++++++++++
 drivers/net/phy/mdio_device.c       | 165 +++++++-----
 drivers/net/phy/phy_device.c        |  13 +
 drivers/net/phy/phylib-internal.h   |   7 +
 drivers/phy/broadcom/Kconfig        |   4 +-
 include/linux/mdio.h                |   2 -
 include/linux/phy.h                 |   3 -
 11 files changed, 444 insertions(+), 473 deletions(-)
 delete mode 100644 drivers/net/phy/mdio-private.h

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
