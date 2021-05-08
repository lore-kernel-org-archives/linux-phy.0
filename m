Return-Path: <SRS0=tTY/=KD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 010D4C433B4
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 06:52:46 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5104061458
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 06:52:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5104061458
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BoikiJmDbqwxumW4F6e6mcJL6UIgJLCPHN7HKL2D/T0=; b=Wedmm7KzjWtx6z9R9h+WA4XUJ
	vF/JPWxizAb1cd8VL0pOr5m7zd+3tldu3S4lHBvrTE7mTJhXZtMe0TTrA4DlmviRHrFYlOKb+XNvS
	MqzvgByMqg/IUiBnDkRagaKZTXRXjAvbfLN+QoQlO6PdUaBONmuYW89DA1QEWwUWaLnZ96c69KVG4
	D+eY9Rnu2I0tK76uMFJCVI9VNOU1bd77TQf4xQGI4LRYoFdev4WVgT7Uicjdh+/iRulCrzemS4Ji9
	9CWrNECf0BlN/IUe7nFWS3f1lU3ijGKoGhsKO4h9RQxQj9xJbQbVCIuNyHlYjE47XV0NwsanDZqSm
	nTT+c1vcg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfGpP-0090HM-Fz; Sat, 08 May 2021 06:52:43 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfGpM-0090FZ-B1
 for linux-phy@desiato.infradead.org; Sat, 08 May 2021 06:52:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=FOVnFr/nj3QWdNJlIgekW/kswIF2a4pE9kCJghjF1wk=; b=K5k17X/XXqnjckL4Dy43l28TEf
 3I9+SJLpRdNmkehn8u5RCmAOA2qt83fwcRpMOaIkr7+087ALosfCOMBDpCOgZEQXdSyZgww8CrI+W
 dMNoHqmf68YqdVzcWQwELakbOTg4vC29f8jkVofbnWtvi6damMN6aikTYmexD7DmQcyRN08jZfDWk
 B9XgJTmnrDM4WeC2nvCBpPhLqlLZvLh0TK3tp7opyIDcZU4ttOW96PgYIdLWi5WVE/yBenp2DntNQ
 N2tOH0ChAP52libAbf/yFBspvW+pFEm+Gz21wEJbvnkaT0TYuERZGk5bppzuRM1tSQiHKQUKlH6Mt
 af0JdUaA==;
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfGpJ-007PLW-SI
 for linux-phy@lists.infradead.org; Sat, 08 May 2021 06:52:39 +0000
Received: by mail-wm1-x32a.google.com with SMTP id
 l18-20020a1ced120000b029014c1adff1edso8280897wmh.4
 for <linux-phy@lists.infradead.org>; Fri, 07 May 2021 23:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FOVnFr/nj3QWdNJlIgekW/kswIF2a4pE9kCJghjF1wk=;
 b=RNrV+8KPF4RQbDUoE/C4kEXsBDvsBWPCBgUUGzbcOX4dgaJyyZM4Tyjz46xR6nZtr+
 1a0PXZLVhyQMbknf9ZzOEl8lnfxEkHfcfLYuYIIi16sSpyzQo5BBtICKtRSvnRvc02i1
 qqoDw5ETGX9Tqk4x6zBiogfNgjMmD5ngR0k8NdKDIW9VcCpijqksEGgZGhAtyJtO7z05
 AAe1goG3fXoeyly02qNdOvnw5VKOwcLy9Js0mTPBqlYx/1jepwFqjPo6zB4QMA352L0R
 ApjLreWZEev034EQ/D1GMSHqngbhZ5a5xInKU6DKmdiDzv1mFgc7XVPC9fp0R3b758Ck
 L1cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FOVnFr/nj3QWdNJlIgekW/kswIF2a4pE9kCJghjF1wk=;
 b=tG7BSeOr775rGclmX1xHj8A7PY3JTm8VPDfCtWRxwRpj7mk+dBxjNWZ4R6SptM+VvL
 QqA/04/QiezRPy/PYDNxnisllCOHmmWdAxwy+KJMzftItrGWhzUOdDIJ2Wn7QX9QFbIq
 N1kex1w5LiyTu2qR9HsNvit9a3mr0uvpQ2BLO3Oi5q6eIqWpglrqpqnkEbWHqk0Sls0j
 gQZiepeZkncPH/PRTY48WvneiP8G97jHCDzVfNtMP9viZSI551oZ1L4UttBMSHHmaA2+
 GIjWnb2PgP549Fd8c4tIGxtom8v1W0RPjZnRCrz9r75A7D459zCWX2L22hBck9caBgKh
 nV/Q==
X-Gm-Message-State: AOAM531BgZzn9UL8aMA2u6ZBOtqOpuAeyGwA/+X7ICI/HPvX+FOQdagZ
 BLBtBR7FBnk35XTKC/IYHbI=
X-Google-Smtp-Source: ABdhPJxBzYTMkYXsqVIu+tuk1PbOpRnhrqpL/d3bwBEyvWL/IwJSj8T10XNSxMuaGH39Xj/339rgzA==
X-Received: by 2002:a05:600c:350a:: with SMTP id
 h10mr1867908wmq.154.1620456756289; 
 Fri, 07 May 2021 23:52:36 -0700 (PDT)
Received: from localhost.localdomain
 (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
 by smtp.gmail.com with ESMTPSA id b12sm11638010wro.28.2021.05.07.23.52.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 May 2021 23:52:35 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: linux-phy@lists.infradead.org, kishon@ti.com,
 linux-staging@lists.linux.dev, gregkh@linuxfoundation.org, neil@brown.name,
 ilya.lipnitskiy@gmail.com
Subject: [PATCH v2 1/6] staging: mt7621-dts: use clock in pci phy nodes
Date: Sat,  8 May 2021 08:52:27 +0200
Message-Id: <20210508065232.4882-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210508065232.4882-1-sergio.paracuellos@gmail.com>
References: <20210508065232.4882-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_235237_932603_3ECF9AF8 
X-CRM114-Status: GOOD (  10.49  )
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

MT7621 SoC clock driver has already mainlined in
'commit 48df7a26f470 ("clk: ralink: add clock driver for mt7621 SoC")'
Hence we can use the clock in pcie phy nodes to
be able to get it from there in driver code.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-dts/mt7621.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index 9ee11adefa79..840ba0c3ffed 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -548,12 +548,14 @@ pcie@2,0 {
 	pcie0_phy: pcie-phy@1e149000 {
 		compatible = "mediatek,mt7621-pci-phy";
 		reg = <0x1e149000 0x0700>;
+		clocks = <&sysc MT7621_CLK_XTAL>;
 		#phy-cells = <1>;
 	};
 
 	pcie2_phy: pcie-phy@1e14a000 {
 		compatible = "mediatek,mt7621-pci-phy";
 		reg = <0x1e14a000 0x0700>;
+		clocks = <&sysc MT7621_CLK_XTAL>;
 		#phy-cells = <1>;
 	};
 };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
