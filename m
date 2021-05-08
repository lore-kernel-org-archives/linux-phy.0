Return-Path: <SRS0=tTY/=KD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D176C433ED
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 06:52:45 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 54A696145E
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 06:52:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 54A696145E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=M3Bl3xAhYgKg19Oba0VUdMmIovYiGytS57+HLvyixKQ=; b=P9OdNHQ0Fnr0N8yrdjjbveUBiE
	TXHVnnnTxZGsprVdSKlyZRc85zf8Gv55lheZnCVvchu1Rm//NL6QMyaNix1Jcpwr3oCUPQvfP2kHz
	pTlPzPFIe3AL0VlyYGei99IaK9EsEhFkY4BtlHxqBIGvZoT+XysY/+wOWHyBMMUkJvRjoH2++ifka
	w33wR3PYMfZDDzDMOiob4EwxKLRk+dcHlLD0Qed4YZc++bKhacKPnnmd0CuZfJ24iZv/GjkENO0YL
	XRzH8I7tGZ7hSnok+9Y/2BogKE+u38YqgBuUsHAgvJMVXNcv8jGJokCXIdWQY+8Qz52c9Wx9bdvB1
	eNlozfqg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfGpO-0090Fp-6Q; Sat, 08 May 2021 06:52:42 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfGpL-0090FY-RD
 for linux-phy@desiato.infradead.org; Sat, 08 May 2021 06:52:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=2LupYRWEl/I5L4jCGYXhMRPLKYBweMWILx6M6mqnnOM=; b=akgwgfNcKqoWmB8yL3tlsvyTPE
 cSKJwVm5Ij7vn3OpwWkuj8yJnVpIVheSElC3V/YZ88w0Eixi3o28BhV2zxiOtKWNRfUZbLKF1thh6
 Mn2lwkiEs7TIAXT+twfQRDyg/RLIYiUe1Oawpd3I2H43Uoc9HRbhH0493Hi4kLJjfK1OEZs2k5a6G
 +gmgOtR4/HlNjNYLH4O6ok/ghMNVALDZOYeKQV8o04nD/tN6NFDd73ud6fUH+gwzTSsWxbsad9DZW
 7fwzfWHBqn57G9GwGaBqpuh27kyQ6jEDQNxs2+UNCQR+7A56IhR9wMsaUo9fGoxvf57qqlgUOxjqC
 e5DAos7g==;
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfGpI-007PLR-NN
 for linux-phy@lists.infradead.org; Sat, 08 May 2021 06:52:38 +0000
Received: by mail-wr1-x435.google.com with SMTP id m9so11361390wrx.3
 for <linux-phy@lists.infradead.org>; Fri, 07 May 2021 23:52:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2LupYRWEl/I5L4jCGYXhMRPLKYBweMWILx6M6mqnnOM=;
 b=YS8shiQvxxRlSpDauPw3BTqmg05vubHcz/1mmsUBs/sfBl5aqNWQzolz1PCwSEPaS1
 wajYBSbukBntHfl0+5fYO8F8MdzSNUTsSn23Vqmz03lNJJ16LldlXLWIUAbMxHvCylQi
 kTwCl4An0G9mkbHMYkTlTYNdYJUKMgv8tgAcjfXUQbyTM6hTPbwa+gj6/oBrW2kGktLk
 E4Q2MwCK7PReJzGEVNF7HXswub/C29sGocZJITnAbYAy8bc4R4lFt2qP0anqgpEwLXE0
 bhv+wGQxrqPJCGkng8gmPeljZqHvfq9GPHvUO8Ermxp1B/1S6p86ML3BeyD9N5N1McJK
 vBTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2LupYRWEl/I5L4jCGYXhMRPLKYBweMWILx6M6mqnnOM=;
 b=CRZgo2UFWqkgjc7ZAqzIyBXobTxSy33CBijtZJjHZ8J0X5O8JL5lcaz9+K2nrhfzDY
 6TgtdCl9fTEBGZYqrEwucPqGrXWz2M9UkW9Ld+k9LeZ31mbSWZOKpOCerk3qSVhPR0Lz
 zBK1bvr5A+v920k8nQl77HGfGpdscv6Uoj1LynAGfIRyPFI0D7pftdgb5pT++O4R85Ed
 Iy4e32OvhVI8K93ahx26d+6trpVY+mUO3LJ5IfhYNfaMe4sm4kapFF7nCrdx67IcKRra
 vN+M/j8NW8QTKZ+Pe/7BluYVBRixZQulB/Gt8Cvp9x6wms7lnKD0E7QaHLSuPMohZwG0
 +/zQ==
X-Gm-Message-State: AOAM530Vlb31J3Tt594b2DYX3p6uG5gHtwZRltyfUE2XPXX7TmJPM72B
 I3mKc+zwPegSbh84bTz8UtYUdQ3iVEiysg==
X-Google-Smtp-Source: ABdhPJythu6Kp8Dz41LTXrPCxI4LAb/pj1QOD4MQAkOisM1HRDXaqD/FC+f1fVqK9IzqPAdwMS3nxw==
X-Received: by 2002:a5d:660c:: with SMTP id n12mr17415299wru.87.1620456755274; 
 Fri, 07 May 2021 23:52:35 -0700 (PDT)
Received: from localhost.localdomain
 (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
 by smtp.gmail.com with ESMTPSA id b12sm11638010wro.28.2021.05.07.23.52.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 May 2021 23:52:34 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: linux-phy@lists.infradead.org, kishon@ti.com,
 linux-staging@lists.linux.dev, gregkh@linuxfoundation.org, neil@brown.name,
 ilya.lipnitskiy@gmail.com
Subject: [PATCH v2 0/6] phy: ralink: mt7621-pci-phy: some improvements
Date: Sat,  8 May 2021 08:52:26 +0200
Message-Id: <20210508065232.4882-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_235236_788220_F061D152 
X-CRM114-Status: GOOD (  16.46  )
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

Hi all,

This series contains some improvements in the pci phy driver
for MT7621 SoCs.

MT7621 SoC clock driver has already mainlined in
'commit 48df7a26f470 ("clk: ralink: add clock driver for mt7621 SoC")'

Because of this we can update schema documentation and device tree
to add related clock entries and avoid custom architecture code
in favour of using the clock kernel framework to retrieve clock
frequency needed to properly configure the PCIe related Phys.

After this changes there is no problem to properly enable this
driver for COMPILE_TEST.

Configuration has also modified from 'tristate' to 'bool' depending
on PCI_MT7621 which seems to have more sense.

Thanks in advance for your time.

Changes in v2:
    - Drop 'clock-names' property from device tree and binding
      doc sice only one clock is needed.
    - Update driver code to don't get clock name as identifier 
      for the clock but just use NULL.
    - Add patch to fix a COMPILE_TEST reported issue because
      of the way printing of a pointer was being done. This
      patch was already send by its own[0] but to have all of this
      applied together I prefer to include it here.

Best regards,
    Sergio Paracuellos

[0]: http://lists.infradead.org/pipermail/linux-phy/2021-May/000395.html

Sergio Paracuellos (6):
  staging: mt7621-dts: use clock in pci phy nodes
  dt-bindings: phy: mediatek,mt7621-pci-phy: add clock entries
  phy: ralink: phy-mt7621-pci: use kernel clock APIS
  phy: ralink: Kconfig: enable COMPILE_TEST on mt7621-pci-phy driver
  phy: ralink: Kconfig: convert mt7621-pci-phy into 'bool'
  phy: ralink: phy-mt7621-pci: properly print pointer address

 .../bindings/phy/mediatek,mt7621-pci-phy.yaml |  5 +++
 drivers/phy/ralink/Kconfig                    |  4 +-
 drivers/phy/ralink/phy-mt7621-pci.c           | 37 +++++++++++--------
 drivers/staging/mt7621-dts/mt7621.dtsi        |  2 +
 4 files changed, 31 insertions(+), 17 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
