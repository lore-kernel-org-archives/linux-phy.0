Return-Path: <SRS0=tTY/=KD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A34BC43617
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 07:09:51 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9CBA161458
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 07:09:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9CBA161458
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W3UcudMV/wJjNF1OCs0PyGhxJ6IvNMVxovTXBH9bl3Y=; b=QQejdv6LnwIt04SMBgPvRLlsx
	enI8IDL0os29TbmwsKzLlsJr1yuzCLoYxcL/t+6r7L4IF/FwLb6svh4hx5IOcqJ0ceopeYQbBpo+W
	C8gLqJKI1GcjV4ZX/WIxBiCdNFUiOHHd6K4v1DIM9CfpyQuoDdVHTWqI50tj+PnCfcOfd9Irb1MBL
	kLBwLnLX5gIwWrFotIGW1xdrJO6dHdt8Hybu93W3/E7Ko4AzM6ZXyfzboByCteTTI5d3GLwRuqRuk
	KOr7r8nIkJ/WY4lgt47m1F9O59dQ8i0MWzynTmyATQC2o+vaR4XXYQXSc20+isI5etWqB8xmRe1wr
	I3NqhL9Og==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfH5x-00926z-25; Sat, 08 May 2021 07:09:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfH5p-00925i-Qo
 for linux-phy@desiato.infradead.org; Sat, 08 May 2021 07:09:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=b+GCOf42Gs4UdMdK0477XZHtOpuU44Ecgu3QGsmZOXI=; b=i9UQi1YX7qGPu1H126+SucdEFA
 uLuEI2VeZKSBQyEjdzUT0KxlgqXr7WgyXw9d0XscstMGyg1T2niBZoO+QTepFCquaYzht/yHXi9qf
 JI2IKrUD4GekI9Rfn90p3ItcDxVTINLj8rCHfHWIZqMlMTuEc4WmMplSfQq92R9fu6sgAmHLwrqvY
 lIwD7GqS84XUt5rZK4jcHoOM2MN5DXANh9RdhICQPO4H5IAUGhWDgChumtv1nJ5njYUTHz+enjjM5
 7PLMeQCtpSIOrYeDmozGidF72qiYxhHgoqSdZxQkI6zxk7kWji8gTNRqzzJkDSAzjJ1QUrswnvOJT
 g1hiX/eg==;
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfH5n-007PnX-8W
 for linux-phy@lists.infradead.org; Sat, 08 May 2021 07:09:40 +0000
Received: by mail-wr1-x436.google.com with SMTP id x5so11362164wrv.13
 for <linux-phy@lists.infradead.org>; Sat, 08 May 2021 00:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b+GCOf42Gs4UdMdK0477XZHtOpuU44Ecgu3QGsmZOXI=;
 b=bbTI9rbfa2hFA8sWR0y2bKXkMoIo6lVovlUGSGjC0ORfoxbvPR93j6krx4kaUygRfd
 poxvM6vH0MqvWkrlwr2vzHcpmYVIfoL/H4gDEqidJG3r0xJof8EipjMlucnWZcuGS1cj
 yALWhbYzKOcCWElu1TUVMBESQ4n+GNf9bX+mZ0EcISpMTRS5mcz5uKIdVfp7W52e6vE0
 mMj/UshBOJd3LcF3oU42XkMK+V6eMOebzIjCySz2mopl0Eqdy7rQ+wlk6PBfB8wBhJTR
 UMJs+4frkCXHfokVeCQy+agUaUiKY408rhled2W4kVJIOkiQuVQr+YkFCgKc+vCMbgX9
 ZZNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b+GCOf42Gs4UdMdK0477XZHtOpuU44Ecgu3QGsmZOXI=;
 b=EdgIlfM/pWryCPQivTXtIP1oAWbxuOCNSJF39LnLDLVIMu0QEzf4QC68w9SVoAKWG4
 ii6FJVE1SDoMI4MENGijY7oX0o/TpxjqHN58bBtTqSBTTPIZ4Dm6AGnJZxPSq9oHd3vz
 e3blT0/kuY0DBaK14EwZglhHknrh0+8z9cXtcEsXKUQL6mZdLYHayimIReiRb2mMUBBR
 RppObAkeqW4sWxLrCIHh9I5hJdoS0I3/eBWhlf/IGErWTq7jDyJPzwoSIpu6go8kOaca
 d6AFAVG/ML1kYtXJqROBrnbzK1rrwzAow213oVF6TbA+gdhkbkHZ/4V2JmJjR0IbyD0y
 rD+w==
X-Gm-Message-State: AOAM531FC1Iw+4cE/PpVYtpfUji2epQLvmaOFqS61E0uc2eESrrFqnrj
 RxZHnBKkl1wW3S8Wo6mCa98=
X-Google-Smtp-Source: ABdhPJwJtfMcnMXZ71LUD3G3ySl8yYxNXaIZjyjmjxHNi2uX6EC9pMnol3hqM/xKNx6PUUK3mxZH7A==
X-Received: by 2002:a5d:6a47:: with SMTP id t7mr17397147wrw.117.1620457777816; 
 Sat, 08 May 2021 00:09:37 -0700 (PDT)
Received: from localhost.localdomain
 (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
 by smtp.gmail.com with ESMTPSA id s18sm11740345wro.95.2021.05.08.00.09.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 May 2021 00:09:37 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: kishon@ti.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, linux-staging@lists.linux.dev,
 gregkh@linuxfoundation.org, neil@brown.name, ilya.lipnitskiy@gmail.com
Subject: [PATCH RESEND v2 5/6] phy: ralink: Kconfig: convert mt7621-pci-phy
 into 'bool'
Date: Sat,  8 May 2021 09:09:29 +0200
Message-Id: <20210508070930.5290-6-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
References: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210508_000939_310211_E2496300 
X-CRM114-Status: GOOD (  10.77  )
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

Make dependent on PCI_MT7621 configuration option and mark
this pci phy configuration as bool which has more sense.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/phy/ralink/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/ralink/Kconfig b/drivers/phy/ralink/Kconfig
index c2373b30b8a6..ed0c71eff2c4 100644
--- a/drivers/phy/ralink/Kconfig
+++ b/drivers/phy/ralink/Kconfig
@@ -3,8 +3,8 @@
 # PHY drivers for Ralink platforms.
 #
 config PHY_MT7621_PCI
-	tristate "MediaTek MT7621 PCI PHY Driver"
-	depends on (RALINK && OF) || COMPILE_TEST
+	bool "MediaTek MT7621 PCI PHY Driver"
+	depends on (RALINK && OF && PCI_MT7621) || COMPILE_TEST
 	select GENERIC_PHY
 	select REGMAP_MMIO
 	help
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
