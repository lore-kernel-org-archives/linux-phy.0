Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24726C79F85
	for <linux-phy@archiver.kernel.org>; Sun,  6 Sep 2026 13:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GCCVVfkqlE6IuXwYILkkCv1bd+eaalf6lM8ZQCjnXd4=; b=CTIaz9NkakUP6U
	gEwYsHgPmMfN2R77fz15pkU8860fcVK2w00nYzlH9AV5ATe62mvPxXpPCfQUznyFrIkjtQSjwsLRE
	PHt4kdFAC31AJZjjN4IvPSUKvP8o74uLPclIvBFhTJUPMbQZGrjmGJ2uPyyGuA4fpphYJYU+nVV3c
	vsmjqjY0A7NRrwr6gZz9KfhcqFCgxeThi1COKhjhb/8UxSpa8iW2DeSVZE5Uy9+CKkSrPUqEir8tZ
	uQtz68bjBvvBwRu10gBZOMKCEaI8Or5ZxcEFS1QUhhmYb2qrD9fmAk1hMDCvVlmOskGXDtGvjjk7G
	5VKFDIuzqEIX9ZQJ7lqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3CyH-0000000535k-3qNC;
	Sun, 06 Sep 2026 13:31:45 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3CyE-0000000535P-3oJ3
	for linux-phy@lists.infradead.org;
	Sun, 06 Sep 2026 13:31:44 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-39675172593so2098873a91.2
        for <linux-phy@lists.infradead.org>; Sun, 06 Sep 2026 06:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788701501; x=1789306301; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=9tYnhpE7QdeEZNd+tgaIJOLzvVhdJ+mADYDf3k6L6f8=;
        b=oZ1UCI9RNFpdWlayz7nBBIar1enn4i2SKtt1uXb9877ad3qBXx/lf0ViPEH5sIRrnV
         OrmOTJtm+j+nZCqrsXrKZhPX+XKnvvdjDpqVVWhUryOPoedebC3ZfW8mnIaXxO0ALk7D
         iHx+2NfBw3U67XPFmV1cIxiyHKyfzBBwVOCRJmsoN9uzoRtMWCehXkpwWL2d/BVlRMyE
         TmJin9xOTM7ARiO3tFnQw6wUTSnSfViYDQdGmpJZE4RZ7tcN/MKDfHb/wBiQfZTPpI3p
         8kk60fCC7PYeDDrRBWmd2ykNeUjN9Qw/J9rWiA4/zxHeA6qJOWve+zlROI6oSdKuugpl
         4PmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788701501; x=1789306301;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=9tYnhpE7QdeEZNd+tgaIJOLzvVhdJ+mADYDf3k6L6f8=;
        b=XdQhie8cwh/q3hONDAuP25G8PsFdOQdgw4WYerbl5KNtmT3zYZnokHDq/xMybtFVxN
         R2+KN5nyJmBvRVc4j+N3gg8JKd6meTFQYEobLNO1ee5vUpedxDlFH0+8hzg0GYKk6fYc
         LahZmFqgDy1IJeheN6mlRqp2ohVoyAuljhlbKoLS0VBJ47xA/tbNVlahDaK4ogCEEsmp
         kdx4bKf5GQbzsSbPaUyLK97HLkuuAnmf8P2fQxcVqeBRALwrkj8nIDrQLp1+a/cXvgqo
         l3dPLP16N3+bgsSGrVNiy41uOSdPOrIDaXpkZ9D2LIc9z+vePAr55kd1RTani6lQ5iqF
         EE2A==
X-Gm-Message-State: AFuF++lvBkTDvETDpHkWT5GFUEhcCvyjdebN+QWGYTlcOcStW7xqRM5Q
	FL/RCMl0Dxacrt3/FFm4YEgHCty9reMQYOVjiUMsnNjhs2lKyJXYgWXM++P0nGbp
X-Gm-Gg: AYBFou0mupKtTQ8lumHLUOnpqNwKHriUK/3EfGHIMU+NGVNBgSxucZ+c14y9rjg7gGQ
	4DggdCMUxYrEGEDkr1dDjfTNf/h5pZLQw/t4o0c7wBlRWXOJouMIuJW2HxXkHV0j3dWHj8hulfn
	bowKrQlJmwQZzPf7CfOcogB8swrAxkqVRnz4d6EcmKmoDSoi9HJAupVajb2rkW5A++fd2wSXjLQ
	w75VAmYIp8tPsdzShtl5mxQzwxVfQ2YdRPX0W8X+y+OxKfoWq+IORgKBdmRTdszxk63Ojj9POGp
	YXAJBkeXamS6itkvS3O2cMOvFM6XVIUG/C3Li6GEgt0Y7iFx553m/cKkaO+J/mydu/8JRRmcJ4I
	xELLrYg3qfTmydm9LKeAXSRjWkPcMrW4+3eJmKNJzqn1BLm303USxgfgfzjlpAiC2m91CxZYGDr
	5iFUilw9MmX1Fqf0sh5ss1c9qk7xinhWkKALzXW6ZQj6VZ3z6WGMCENY5V1nH5GdlVqZ8+yXppr
	OKt1ca0kwL1vxsVX9JhiixLrUXy5R7x+BEObwiBt6WPGW1gp9iIGMtk
X-Received: by 2002:a17:90b:1d52:b0:398:dcef:c040 with SMTP id 98e67ed59e1d1-39b26242a20mr27559871a91.19.1788701501355;
        Sun, 06 Sep 2026 06:31:41 -0700 (PDT)
Received: from junjungu-PC.localdomain ([223.166.246.74])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39b25f88475sm15084306a91.1.2026.09.06.06.31.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Sep 2026 06:31:41 -0700 (PDT)
From: Felix Gu <ustc.gu@gmail.com>
Date: Sun, 06 Sep 2026 21:30:31 +0800
Subject: [PATCH] phy: ingenic: fix unbalanced regulator disable in exit
MIME-Version: 1.0
Message-Id: <20260906-ingenic-v1-1-2311f3df8ddc@gmail.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMwQ5AMBAE0F+RPWtSGo36FXHQWqxDSReRNP5dc
 XyTmYnAGAgZmixCwJOYVp9Q5Bm4ufcTChqSoZSllkZqQSnz5ARWVa20MkbZEVJ7CzjS9T213W8
 +7IJuf+dw3w8IF5PcawAAAA==
X-Change-ID: 20260906-ingenic-e558363993bf
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 =?utf-8?q?=E5=91=A8=E7=90=B0=E6=9D=B0_=28Zhou_Yanjie=29?= <zhouyanjie@wanyeetech.com>, 
 Paul Cercueil <paul@crapouillou.net>, 
 =?utf-8?q?=E6=BC=86=E9=B9=8F=E6=8C=AF_=28Qi_Pengzhen=29?= <aric.pzqi@ingenic.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788701499; l=1089;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=XV9/Gau1ScfFSIySp4WW7NMKBztrqxSBrSAXGTOY170=;
 b=fKwMjYR6GxaoT1Tx9EEILzy4qERnxsMXe/8MWE+hh4JcIIFIYXcLmhhtn7WV3LRmWw4913Hro
 jBaj1e6Z1WKCsbOxmt66L8I8/QBFQ4hxv19AxFx/C19EO43UR3YN3Ip
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260906_063142_981117_B7962516 
X-CRM114-Status: UNSURE (   8.72  )
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

exit() and power_off() both disable vcc_supply, so the regulator
gets disabled twice for every power cycle, causing an unbalanced
disable WARN.

Drop the regulator_disable() call from the exit callback and leave
the regulator to the power_on/power_off pair.

Fixes: 31de313dfdcf ("PHY: Ingenic: Add USB PHY driver using generic PHY framework.")
Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
 drivers/phy/ingenic/phy-ingenic-usb.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/ingenic/phy-ingenic-usb.c b/drivers/phy/ingenic/phy-ingenic-usb.c
index 7e62d46850fd..d8e5ef302b74 100644
--- a/drivers/phy/ingenic/phy-ingenic-usb.c
+++ b/drivers/phy/ingenic/phy-ingenic-usb.c
@@ -124,7 +124,6 @@ static int ingenic_usb_phy_exit(struct phy *phy)
 	struct ingenic_usb_phy *priv = phy_get_drvdata(phy);
 
 	clk_disable_unprepare(priv->clk);
-	regulator_disable(priv->vcc_supply);
 
 	return 0;
 }

---
base-commit: 9d80aa4617b32f5054c5aa471d06b66704854935
change-id: 20260906-ingenic-e558363993bf

Best regards,
--  
Felix Gu <ustc.gu@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
