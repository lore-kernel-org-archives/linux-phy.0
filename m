Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84041C77B75
	for <linux-phy@archiver.kernel.org>; Tue,  9 May 2023 06:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VUX2CoivPje9TH954zdaWmL4Mjp524JB1D1kk4GIPCk=; b=uBS1tQBOOnWjFj
	kXqk9V76o5c8y9h/noEGaES1xro4JT2dSkLz192r38FAV8PHq10onEMKNskQKhywRESVQRkPThGbF
	/wJhQiNnaClt2K7yQ1q/RG/MnpOWSKmWmQKUisMvBCKQlvl9oO+VDm+qWv3hY+IXvW1Hl7cP+wcW/
	+lGjEDpRyKEpKKFvnjRAdx7Ur9t3W7OlFlIG9B/E00au5MxY/ZoBWAzJE39mWRdNnScYpnIIkJBa6
	8l25PtfedlIT0WZsTWHH8TJXtfquwJvG0VoLp13lvS+pCWMpnw+jJjyeFA+VN42DXyfQVgrgd7eCq
	RYfWXUbQMnJrrOGC5unA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwGU9-002NNn-0c;
	Tue, 09 May 2023 06:06:05 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwGU6-002NNC-0X
	for linux-phy@lists.infradead.org;
	Tue, 09 May 2023 06:06:04 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1ab267e3528so38302295ad.0
        for <linux-phy@lists.infradead.org>; Mon, 08 May 2023 23:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683612358; x=1686204358;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kTbn+h4gklWy0dywRwfvbPwQi40OPxYHy/1+bcQ3D9A=;
        b=I++T0PObS5Hlj30jDivMOzpKfFrKhlVzRGZ7kdj+puPlgR4LkyRYCiyq+h+KCQiUUT
         kzxKC1r7UD+LSAsTvlRLx49lkH/dJjDow1+eg+Tasa/LgA3+PePOYjVJhatDeix4YROg
         aIoG9ZyMMqvNrfptmZTPXEHicW/DkzVphK8zyu9IXyiPqR41ySQ2jBMcgQGZxMpIeAXO
         CQDgNikelA6PGPjDYGn7RNtqz5Npmu6iNR6CShjWhud2ANr0bAWuoE89WMf6FJk75e7+
         iYmGw8kqDRnNrtZqKJXq2EpzTboLIUl1cBiRt5et1NzRBoX7eLuicWIaX60kTDDpOfS5
         MEBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683612358; x=1686204358;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kTbn+h4gklWy0dywRwfvbPwQi40OPxYHy/1+bcQ3D9A=;
        b=Z9MAsHz/hrw07iEvF6po8xeqc0Mwnu79OyLUOCynlImT098ect5m0rkZqVTLHEqBO3
         /dKSRe536Ln2PsnpyraIsNqAcS6OdZ36rlKJSLAVzXkf9kPqzFBUw7m+3qXy7rOnv5ge
         IHpAWlV5Y2mD+TUOmIRDzqfkxc+4okqEx/ZPSzJ6JaURozqsr1uGev/0tX2bkCvrdaA+
         k+50inSBxsMr9czmOo4NR2jrA/XGvWTpyTaVZWMe6iulBLW7DUChGUzmgq+8/zCa51ac
         KFiAK269qjSz6Ly3v4SmYwPNqVgNq9xo70tqvDcHf6lJ5lsRcpTTYqsBMtJSkgv45mp4
         DIKA==
X-Gm-Message-State: AC+VfDzJJzPshwmQt42ocqhVgrWZ599hh5+tUqEwAuDke8RrbTC2SYJn
	KlmxxywNSNVM9YrVhnwXtuhZL3lPxBe0jNc7x08=
X-Google-Smtp-Source: ACHHUZ4CyHPLhXIGEnY4kuAcYs5P0Eh2uVnnPwvb14AvbHEdbipgfSp5AY6dZZJN4r7rN6bYH3cW3w==
X-Received: by 2002:a17:903:2292:b0:1a2:3108:5cc9 with SMTP id b18-20020a170903229200b001a231085cc9mr18047893plh.40.1683612358698;
        Mon, 08 May 2023 23:05:58 -0700 (PDT)
Received: from d.home.yangfl.dn42 ([104.28.245.199])
        by smtp.gmail.com with ESMTPSA id ay8-20020a1709028b8800b001a9a3b3f931sm582220plb.99.2023.05.08.23.05.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 May 2023 23:05:58 -0700 (PDT)
From: David Yang <mmyangfl@gmail.com>
To: linux-phy@lists.infradead.org
Cc: David Yang <mmyangfl@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] phy: hisilicon: Allow building phy-hisi-inno-usb2 on ARM32
Date: Tue,  9 May 2023 14:04:45 +0800
Message-Id: <20230509060449.1151113-3-mmyangfl@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230509060449.1151113-1-mmyangfl@gmail.com>
References: <20230509060449.1151113-1-mmyangfl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_230602_201121_C0A5FFF7 
X-CRM114-Status: GOOD (  11.33  )
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

Support for inno-usb2-phy on Hi3798MV100 was added into existing driver,
while Hi3798MV100 is a A9 ARM32-only SoC.

Signed-off-by: David Yang <mmyangfl@gmail.com>
---
 drivers/phy/hisilicon/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/hisilicon/Kconfig b/drivers/phy/hisilicon/Kconfig
index d3b92c288554..6c89136fc8c2 100644
--- a/drivers/phy/hisilicon/Kconfig
+++ b/drivers/phy/hisilicon/Kconfig
@@ -54,7 +54,7 @@ config PHY_HISTB_COMBPHY
 
 config PHY_HISI_INNO_USB2
 	tristate "HiSilicon INNO USB2 PHY support"
-	depends on (ARCH_HISI && ARM64) || COMPILE_TEST
+	depends on ARCH_HISI || COMPILE_TEST
 	select GENERIC_PHY
 	select MFD_SYSCON
 	help
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
