Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00509C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 24 Mar 2022 12:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iKydbFMHJMloXmuQTGWnbePrYTuDdf+jMyHa8jsYp1k=; b=DoV53sjQZBL+b9
	og7IDcjSv8wQSYYld9ph8bClSOtW22AOAbpf6j7hva3IgwT0ppVJE/Z/rm0H1PsokWgWEK4oVAoXZ
	x9F9SFR9DYQiLjLTPZYdmJIxRHNNwns8ezOI7BX+GnOMvkffMMC/L755SArmr7+hgoiMKcaY16754
	aj9QMpYfJ3TUOnP3X9qqt67YuQ7Yv0vWbzfnMYdfCFDsMAXWvdfwA7/zunltKA1xLi1y8jUh89TOt
	QizlgZWt+np2FEp+ySpMAT0TEKHMReuSwFGSZueJknhR956YrzLhrNGPzQupZDa243jbNztaj7kG4
	OTHJYuN6cud+xx4qCgkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXM9s-00GPrb-8S; Thu, 24 Mar 2022 12:01:40 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXM9m-00GPpj-A4; Thu, 24 Mar 2022 12:01:38 +0000
Received: by mail-ej1-x62a.google.com with SMTP id d10so8649646eje.10;
 Thu, 24 Mar 2022 05:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nuEjM18NFC9m+DMIdfnC8bAfeSbsPDnsYC00cbxSyog=;
 b=oGg85a/oNA32MV99mldPci1AdcqVmedXiLODuJTR+ISCXXfh+bU3SXxkfWg6fTrFix
 FPTmUvlGN9DZMW1tD1v186I8W8gW+aY/xyJ0qdwQrml+ezB0+scHv4FSvmSi+Imcot1+
 r/MKrFbG36Cb5YozzVu+6yxidvCOazpZ8iOqg6965Jh3qTtnVlmhDvd9lfQISGNFUP9A
 wAQSWsLIkiIJQHpP7PihEC7AtKb7B86BvhGIsrrKEfpOcYywxD0a+xKoacGa+PHAWyfU
 2+Fl1Xq6E+1Yvfs6+oU6zz4SiS/JWWWSKtU+xw1e6SWSMc0h/0ixmApkRuil1qWrBzA3
 CMZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nuEjM18NFC9m+DMIdfnC8bAfeSbsPDnsYC00cbxSyog=;
 b=5uqEygUqqTIy/YHuji+RlVUeDzKoj4S23K6MLXAyOrOxKTvJ3WK0vEsM3NLV02TXSr
 tAwhKLO0MfFPRLY7ZypTyPVRlEVREJydvG/UM6/ZV1EIBH8Qk/hXg8A14+EoNggTOHVD
 K6hUqg5AETZEhwFGY9lt5FWe5LsDYoRMAkXxSa0NfliSXGC7kB1do6WDnZsDI3qdur6t
 vPvWemIAtp/hxrH7C0eomAJJcm3FuAkS1f6tcTRih0Iw+4Arj6NKnfCT0Kbju36l2jHB
 My1Lek97OF5z2vUgSS7m/aSN4z738MasRQ2pecowsPHDNZCxOGNhM7oKixaPiqggg1Uf
 lMzw==
X-Gm-Message-State: AOAM530wtHRciUhBjOY6cgxBwgVuJKh7EA+jXTc1x0G/sVXZF8Kl+tjG
 X0tktejhpSvaH0cMz/VDCCw=
X-Google-Smtp-Source: ABdhPJzrW0qji+QJkSKZDeLk0VV+83wm1d4vZCMJ8ny5BJSXclaIGGWEwJcgWElkC7xZrak+JvNL0A==
X-Received: by 2002:a17:906:9b85:b0:6db:ab80:7924 with SMTP id
 dd5-20020a1709069b8500b006dbab807924mr5395242ejc.160.1648123291338; 
 Thu, 24 Mar 2022 05:01:31 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 u3-20020a17090657c300b006d01de78926sm1068822ejr.22.2022.03.24.05.01.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Mar 2022 05:01:28 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, kishon@ti.com, vkoul@kernel.org,
 yifeng.zhao@rock-chips.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9] dt-bindings: soc: grf: add naneng combo phy register
 compatible
Date: Thu, 24 Mar 2022 13:01:22 +0100
Message-Id: <20220324120122.1339-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220324_050134_369549_29C4BF17 
X-CRM114-Status: UNSURE (   7.57  )
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

Add Naneng combo phy register compatible.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index b2ba7bed8..5079e9d24 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -15,6 +15,8 @@ properties:
       - items:
           - enum:
               - rockchip,rk3288-sgrf
+              - rockchip,rk3568-pipe-grf
+              - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-usb2phy-grf
               - rockchip,rv1108-usbgrf
           - const: syscon
-- 
2.20.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
