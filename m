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
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA39BC43600
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 07:09:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4C704608FE
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 07:09:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4C704608FE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BoikiJmDbqwxumW4F6e6mcJL6UIgJLCPHN7HKL2D/T0=; b=QfePIH8GKcIJKWmLJmp90lHNJ
	yvf6M7OUEI1zRolgJBJlJrcjOejDV2nic79NWwDnJxMfOusu79DcL38U+2T4NbdYmiRGVGeGqn0oF
	Jn7Wy4xFeqsSIEpgpPmRq2QzSo0QcGBcbEZTqHLjrXHZzVEcuGwIgrOVJiFM8kF5bOgqw612Jn4XJ
	sUPv9u9I3oliC86ZmB7170dOHGw3N2vF7FV+ZAc2KmGSMPCWmJFvC+S9qyA8YAFxboDyZZDizs9rJ
	KiOvknckN6jSGzxl7zcYnPUpdbY8StYXnUzP/N1NbVITZtTnpvAALQlC2Kgw6t9DxDYYBLoVxcdoQ
	rtNcgHezA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfH5q-00925m-DQ; Sat, 08 May 2021 07:09:42 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfH5l-00925Q-NH
 for linux-phy@desiato.infradead.org; Sat, 08 May 2021 07:09:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=FOVnFr/nj3QWdNJlIgekW/kswIF2a4pE9kCJghjF1wk=; b=Yso5FI0PFPGeSTQmvv90knf2wR
 f2r4IHJZr/eiZ0sj70ovW0SyT17VMG6oNOnYu68QGVhm937rE7FORH4dCjn+Un16Jk+MYBEXo1e6/
 rS8fSml1qNNckS75OIG6c7CMRLgfmeRFInQMgQli4ltmO4Jc+j0JC4wFdM8kjKdwVNUjD6lpgnUlJ
 p4XXxI5zt66jNKwALcCSW05xIjbNj/SBpJk3Jg72ZLSry2qra0KYLVwGEuSQ43+BZmCn3sMMMl4QS
 vgV7b5bUo0sxK9BBrp6Wt+eMPA4zn+2AnFXNaTF3M1U+/5Gfm/UGrn0Xda4DyVG9vH/J1jqeeDoDz
 OzpphUjQ==;
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfH5i-007PmJ-UF
 for linux-phy@lists.infradead.org; Sat, 08 May 2021 07:09:36 +0000
Received: by mail-wm1-x329.google.com with SMTP id o127so6366897wmo.4
 for <linux-phy@lists.infradead.org>; Sat, 08 May 2021 00:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FOVnFr/nj3QWdNJlIgekW/kswIF2a4pE9kCJghjF1wk=;
 b=KD6hEPXs3SiHAtFucQrMWstIwnPMlliFvZ+psgoH92t4UwNZk4SD3w2uW4x4mj9P+9
 Gfafckp4z/odwwCgWLWjerD3ZaLb3e20nbiln50ezdGz1ac3PCGkQflMCZuFCWUXkE9V
 vzVVUk1BTonqDveH8BnR9sUgXQx7HAuw+GGYfjTPwmcdQC7ynkbktpspFb6H8XK7GeXm
 jik+lpush9BCPw+AjWjVognoElO38vOB+H5yKXoIaPIU2RH+qD99GwXRb/utq8jrLWSK
 +XyPmZfF2SZyNNIt9he9JU3GzoHLI+XPTIlOiYxeRmfubX59hzRpxCZItWlbfxNcyEvF
 CXhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FOVnFr/nj3QWdNJlIgekW/kswIF2a4pE9kCJghjF1wk=;
 b=nQb8MqLC7kbmHUO+9g2WadnaHweca0/eY0TnMe62JCYAVrKXxWPKiluoR2ZmwICWnr
 zkMtrlJxw63vwtTElPH5dzjdc77LBrH1T1wnt4d20+6kOzu+oFION6XyFMdPIuYdloTN
 2ifwVgMXweZ5LwGQB7vYlFbUeaJCTSZqgqwyIApw+m5z5C7FLrfDIDlPTLqTLP6cvAHH
 F//1tgNLaqTueM3lFrOvZ2j5gGnJPgo2y6XFTPykbO7IHUMGfO99m6+SwJJXF93vaJa5
 5+yz0VZyv/h8usVQVRiC6u44GuRKUt0yMpMIgnUTX0XN62jA24/fQCFi0mlQXi9+EnVl
 gwbg==
X-Gm-Message-State: AOAM5335cKet1yRin7DUq8nuOiMiDjbQJ7LZM5wIzP1NKk0/OP9qsCSD
 CROpKpyBDUbZM7QtyjwEHNUWH5MJ85IbGw==
X-Google-Smtp-Source: ABdhPJy/DIm2VbViVvEjtPiiZspbv60TIWMsgF6WkvgzjInz1GQL+I1YsOm/xug6DjWda8PWEVcYdQ==
X-Received: by 2002:a1c:6606:: with SMTP id a6mr24959455wmc.160.1620457773780; 
 Sat, 08 May 2021 00:09:33 -0700 (PDT)
Received: from localhost.localdomain
 (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
 by smtp.gmail.com with ESMTPSA id s18sm11740345wro.95.2021.05.08.00.09.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 May 2021 00:09:33 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: kishon@ti.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, linux-staging@lists.linux.dev,
 gregkh@linuxfoundation.org, neil@brown.name, ilya.lipnitskiy@gmail.com
Subject: [PATCH RESEND v2 1/6] staging: mt7621-dts: use clock in pci phy nodes
Date: Sat,  8 May 2021 09:09:25 +0200
Message-Id: <20210508070930.5290-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
References: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210508_000935_003506_271C3E5A 
X-CRM114-Status: GOOD (  10.38  )
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
