Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95A16C6FA8F
	for <linux-phy@archiver.kernel.org>; Wed, 30 Aug 2023 13:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yfVQXRJHxMoVxkyqFkbnzUbb4Kk1GAFXv5frGqwDPTM=; b=LXUt8dJyuDjWD9
	baom/qk1vO1RJDWQ/dUKTSLQJLGXOg6IHmSor4cPsWv8smzRwcbJVqbnCQtNnS7yyoqASO0j9pzyq
	EufjNh9nZZnkME+CuZQVSNdG0FKnq2XawPAlBNbT2HMyerU4Yq7NP3y8RkDDsvlX9z4gnsnnSs/d2
	ecfW4urRJT0q7W9wErWgVzKH4t6NKTzHLHLyLp5iT+OTBleHhrrdDdemnthleOBmNehLkFFSwtQQL
	dvqU13DhN9vNvaOSODkhOjq7hofQIoBKqfw56XXYpzf+IvcBE6FD1pQipzK/CZCg8TadZyCErejME
	ylfrlCdibuMDEFdxBPlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbLNT-00DaLG-0P;
	Wed, 30 Aug 2023 13:36:59 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbLNO-00DaKg-2z;
	Wed, 30 Aug 2023 13:36:56 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-3fbd33a57b6so50629385e9.2;
        Wed, 30 Aug 2023 06:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693402612; x=1694007412; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/+yYt261pz+/xgkSEVEKFRDXXydq1rLbWs9CkNiRFcE=;
        b=HuMWV0+Cl7guXzd5pI/Fcvz32PI+2dwylIekWXAvNOkA15TLL9jogM7XClF3xYpF2w
         2CxOrHp7eWwhEkBEV+lcwuWBF372cofaZgxzAUVzgtV7YnzocL7QNHjTS0Uzcz3ouS6A
         +2+GNUV8Uf9Pofm+YoAiWl4XWzWzaH/l/636otPmac+DeoRAV5ZwQqx3QuxRMNM4LBG6
         1ZpkmupSUMOIEd0mXfoVGgqK05IqqOQcdUkwq9wSmpkUn6yYGpDJYQoyo2Sgn4kjwlDQ
         l6CuKedRM95uvxQIGXeZKtky7ppbt0nbf1kXFPi3Mw/flCxmXWtmeO6uSAtRg/Z+NUe+
         zS2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693402612; x=1694007412;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/+yYt261pz+/xgkSEVEKFRDXXydq1rLbWs9CkNiRFcE=;
        b=XNhCosndD0UcbPUiUGrJdUd1MWIwFOQ04LfhQ8+/lEMjIK+RW30QgITxMLu1enx+C8
         bEwTxeZVq3jQc2V+vVTrzSxUqp7yaWPwiN5+9v+GMhAEWDkLzmNWOzATNjfGpTQOzbSb
         nmr5aDmag0z9UxQoBXq9lRggPks9vHdMG5M4KmJjf4QOQlbpvU+K1xoeoHgsLYStqMlM
         W4rhtd4xRfQyJVH7xGeLb3poaUfrFK1imY24IjOJ+LX+PBkFpP8Y9moUz07gH70HsjOO
         dDyDqAiBdNI6jOYqq/JpwwfRelvRQpAOE1Xm0GrQ/W1waY7CCsdbu+Zvq0lDSaGs0g11
         AF7A==
X-Gm-Message-State: AOJu0YzLLJgtvpDVm1B9/qKIZ0XVFwNrRv5C6QdStYs1XkyLSBrDhY2N
	5eHdFFsJ7cCjmZZ6o9r/eQ==
X-Google-Smtp-Source: AGHT+IFHs2vmbKqXRIV/i344l7tlR+MJQTafcUypRW0zFptWbaKo0LC9bhGXq9FZrklPdlc/NpOn9Q==
X-Received: by 2002:a1c:7710:0:b0:401:bf87:989c with SMTP id t16-20020a1c7710000000b00401bf87989cmr1985691wmi.34.1693402611534;
        Wed, 30 Aug 2023 06:36:51 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b963:7410:17bb:6f65:50d0:b82b])
        by smtp.gmail.com with ESMTPSA id x14-20020a05600c2a4e00b003fed70fb09dsm2326343wme.26.2023.08.30.06.36.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Aug 2023 06:36:51 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 0/5] Add USB support for RK3128
Date: Wed, 30 Aug 2023 15:36:19 +0200
Message-ID: <20230830133623.83075-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_063654_988970_CF982507 
X-CRM114-Status: GOOD (  12.65  )
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

While interestingly the dt-binding for the Innosilicon usb phy found in
RK3128 SoC exists already and it is exposed in the SoC DT, it has never
been added to the driver.
This patch-set adds support for this early version of the phy and does
some DT-fixups in order to make the 2-port host/otg phy and the respective
controllers work.

Please see commit messages of the individual patches for details.

These patches have been part of the pretty huge RK3128 bring-up/fix-up
series [0] which I've splitted-up now, as suggested.

[0] https://lore.kernel.org/linux-rockchip/20230829171647.187787-1-knaerzche@gmail.com

Alex Bee (5):
  phy: rockchip-inno-usb2: Split ID interrupt phy registers
  phy: phy-rockchip-inno-usb2: Add RK3128 support
  ARM: dts: rockchip: Add USB host clocks for RK3128
  ARM: dts: rockchip: Add dwc2 otg fifo siztes for RK3128
  ARM: dts: rockchip: Make usbphy the parent of SCLK_USB480M for RK3128

 arch/arm/boot/dts/rockchip/rk3128.dtsi        |   9 ++
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 147 ++++++++++++++----
 2 files changed, 127 insertions(+), 29 deletions(-)

-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
