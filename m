Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8197F606A32C
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 14:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=o9+aQW/k;
	dkim=fail reason="signature verification failed" (4096-bit key) header.d=canonical.com header.i=@canonical.com header.a=rsa-sha256 header.s=20251003 header.b=eYRlpmqy
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=3sJIiCiJ6nu6+6yLIud1tKLRBs+eLxUe2htzUhZRb2M=; b=o9+aQW/kiFv+pqxbDm83jO/fCt
	wFFCVFylShYgH6mcjionz6Z+HAlaxMccbub6DIxMcQ8h50uJjGM1nFUoaxM8ptc9JJYnOEF2RIPBy
	lt035GxYEuc2uDqRyBdh0KS9LSX3yzHWskdFm7G1EkKy4oFo1yj2k1zhtcILfEfGgAOpWqBpclWYD
	35j+uAHFgwaR7GL27kCgETtg+Vetj2qoieE/x716ln/FlcHeQUdvsY0S0Ibzv7wmdLcSd7hBwaqdT
	9SBA0ifYOPMPC4k/6rp8sDR4TzspIU0x5nGlt91Gt9BzMjmWhNDq4HbaH4mDJLgGBSr0gcMeOVqFp
	3tKbvGxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWa7B-0000000DTMb-16fb;
	Thu, 26 Nov 2026 14:06:21 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWa75-0000000DTLU-3Tb7
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 14:06:20 +0000
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A92283F6B1
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 14:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1795701971;
	bh=z6yDRTcU4R01ur/fecdkMQS1c66OkwJs8if54klUoSA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version;
	b=eYRlpmqyFdkfgRN1H20kNSqt4kLbXbp+n2xAz/f/dR+6pBDoe1UY0QwUc9EBXFaeE
	 log8CucK7AoHw1d0HPtCUO4flMPMNRiBIbOF2xiL2+GFoCEXQdt/n9/XLo3pHvqjBD
	 zi//xTS/I32yiqRGd0k7kiYBYK16E+1PGKgTJBOakLa4mnODmnxcQ+9j+uVSnCUTzu
	 8UGye3q8GyFS6amxQY79hKtPMhKhnxechG03p6d+Jj/fxLiUze0R+C1YpZkECLcns5
	 EfhEQ3QFgW+GCOkRkoBmNFF901k8ZQ785ArGzVcl3lN58OAfSv+OT7Sk5ZdAtyFSbD
	 D/gSdnedIe49FoWMRI0rFaGe7L5ljOI1m1A24g7FaFdgP3UQwV/vPCOyDlqcnhr+z4
	 O5Ovmux46kgAXKKdigvO5ejM1UovtYZxZHYBJJTzv4XAXr2rUn0WMQqdT1ttg/OM5X
	 YZiUx+WE2qlgBC2X4Ak9un6XG7O/xFrU8Wn4ZI0G9m0ZoSoFVDqs2FNlahn4RPlTEE
	 aNozElS0vciMwFu3TrWiMwt7Op6Gj5UiaS7AgTI/tfiN3Jja4kSK5DjU5C66JSrO0o
	 gTXfjeg++wTu4bbh1DKUAXGAf2pU4KBcsIdPP5vNy6geDGYgpBAYl4bqJ9ELJ7yIaC
	 vHA1/OslLE8eqviEI0AJ6ILc=
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3b41333cb47so5925826a91.0
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 06:06:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795701970; x=1796306770;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=z6yDRTcU4R01ur/fecdkMQS1c66OkwJs8if54klUoSA=;
        b=NXn5fHsCTZDRL4vg6b/jWlx2SagU7VomlBMVLpGObYtussegPTGPEgEUGc+U520WU5
         ZFmxYL0CSGFgvCR990BxhAHYSFsgz2/gwLETmAvEG6Fe/4SQx6MAvFxpo5Z17wmA4Ade
         Wl23aCs9Z688wWsHjQ9NgwdXrd4Fy7rqUUsZ9m76/yxNkcz4AT5wRmY9p8roKDSc+gfg
         9UcmcIcZsqwX5N/c7eiL32ocLGF70lCfxxLP1HcOd72B4SdDrpy3KQr94uSDpgPsg4Np
         bZrvIgc6sz//oeG+6kXs9FbvPoXEzeaVD3fPZAB5MQNn2NL6S+ZQaPjBbpyB8ysEMQ3k
         qCOQ==
X-Forwarded-Encrypted: i=1; AL+hErEjn78Gqj6BLMyKcNztqGqpoLU6KOG5Tai03FkIMefMM0MmHqewzL+HNmo4bIjO5yNTA/ifHwA9tMY=@lists.infradead.org
X-Gm-Message-State: APuU4Z+rTYB0jKPgtjKklmvUigbBM86HUawA7xFh7GCsGwt24tNzyhwc
	zMDo3kfIBXqof/vRMN/5HRhW+A7/fSzqZ2LBETzcoF8gqCCzFVmBA3hZ0VoIL1B0jOAYPnb4hLd
	2xByCdtLEokQGF9NcV1aOOx8/R7capyEGmM2bxAfw+vpUAuiuA/0Qoj5u/BmxPZJ/GHVno3zQum
	WFCL2YKsQ=
X-Gm-Gg: AZFdTZd6berBkYPQBV6O+j7UgCg6QTA6BwYLywFQWIrHG5cLO3pCuH64M6MkG/4Chng
	4B/uMG1IbRVHNSPQU/qHltwXShrIvwMuQEbgJe0r+6Rj//3JrHOXE2drRWJtsLW2JsQ/3c6S3jb
	M+oU/fwkOEqlBpyt8uRvyAkW8FRSUTJa1Jmx3zDwfn3JCbfWEdmF8QW1mshUe9CQtnRhCgh/8f+
	7U7k0e7MwMzNkJ8yqoMTNVkynuvteonOCSkD2TecLItBiZw0sC71NakYqrqiFs7nxGf1ALx4/QB
	9fW5BTN2VUMdU/mxzyYpz4eO+CRx8rfJ1DCm39vxp409Ma2IQgAFOBOVRQAFKtzhfW42TdbygKV
	+BkuhjTPw3RqvKCRB0cGjQUseMrAEcrqbj5h3tzp8fOocKASJAR6xtou2
X-Received: by 2002:a17:90b:554d:b0:3ad:d29c:5e64 with SMTP id 98e67ed59e1d1-3b41c9b361fmr20365716a91.65.1795701970087;
        Thu, 26 Nov 2026 06:06:10 -0800 (PST)
X-Received: by 2002:a17:90b:554d:b0:3ad:d29c:5e64 with SMTP id 98e67ed59e1d1-3b41c9b361fmr20365663a91.65.1795701969667;
        Thu, 26 Nov 2026 06:06:09 -0800 (PST)
Received: from localhost ([2001:8003:ec27:e900:9eb2:9fad:60b1:766e])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cde6cfc8829sm11022054a12.8.2026.11.26.06.06.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 06:06:09 -0800 (PST)
From: Yufeng Gao <yufeng.gao@canonical.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	UNGLinuxDriver@microchip.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yufeng Gao <yufeng.gao@canonical.com>,
	stable@vger.kernel.org
Subject: [PATCH] phy: microchip: build both SerDes drivers when they share a config value
Date: Fri, 27 Nov 2026 00:05:21 +1000
Message-ID: <20261126140521.237240-1-yufeng.gao@canonical.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_060616_252222_0E93A15B 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -4.4 (----)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The Makefile adds the two drivers with ":=" instead of "+=":

  obj-$(CONFIG_PHY_SPARX5_SERDES) := sparx5_serdes.o
  obj-$(CONFIG_PHY_LAN966X_SERDES) := lan966x_serdes.o

When PHY_SPARX5_SERDES and PHY_LAN966X_SERDES are both 'y' or 'm',
both lines assign the same variable and the second replaces the first:

  obj-y := sparx5_serdes.o
  obj-y := lan966x_serdes.o

In this case, sparx5_serdes is silently not built despite enabled. To
fix this, use "+=" (for both drivers).

Fixes: 305524902a00 ("phy: Add lan966x ethernet serdes PHY driver")
Cc: stable@vger.kernel.org
Signed-off-by: Yufeng Gao <yufeng.gao@canonical.com>
---
 drivers/phy/microchip/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/microchip/Makefile b/drivers/phy/microchip/Makefile
index fd73b87960a5..0ea4004abf75 100644
--- a/drivers/phy/microchip/Makefile
+++ b/drivers/phy/microchip/Makefile
@@ -3,5 +3,5 @@
 # Makefile for the Microchip phy drivers.
 #
 
-obj-$(CONFIG_PHY_SPARX5_SERDES) := sparx5_serdes.o
-obj-$(CONFIG_PHY_LAN966X_SERDES) := lan966x_serdes.o
+obj-$(CONFIG_PHY_SPARX5_SERDES) += sparx5_serdes.o
+obj-$(CONFIG_PHY_LAN966X_SERDES) += lan966x_serdes.o

base-commit: e7d2f93a4426ea6b33dbca1ce585a9876e3a7344
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
