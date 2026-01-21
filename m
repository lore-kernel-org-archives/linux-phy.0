Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56A63C44536
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 22:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:From:Subject:Message-ID:
	Mime-Version:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pS+D/GHsPmEv65N0UiU150AsJjV6FXepqxdpiiL8AAg=; b=sok
	j7iVIj0IzaQcNVB/OlKBS8ynkqGRSPtCopjhotgVQue+FlHM5jG3KwlvlCQPC2XSSFSkZ7e9fSO+F
	MnCJmP6uv+2NBNKMYVAeovvK3TA52DJAkQWhcs+adtWoUvx4M8JfpwpI/iPUEjAu0pYjZAur4c05r
	IJNK1Rl2TEhpB4hitieClgJfE5Xb3/2LIIILEWw+xBbu9rjStsGMDxiBDYGPb3IFUzkqAEkymfWMJ
	+Q4jxyF5BKuXRkYOiOsfBlMjQTzZBeCaiZj53906KK/t1QEUv4EPGkqtPpvMflZF3FL1oy17yAArx
	4jsnvWZV3oyZQ8V6q67HUApAa72AepQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vigaO-000000066qj-2Fct;
	Wed, 21 Jan 2026 22:22:00 +0000
Received: from mail-dy1-x1349.google.com ([2607:f8b0:4864:20::1349])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vigaL-000000066q3-3BLw
	for linux-phy@lists.infradead.org;
	Wed, 21 Jan 2026 22:21:59 +0000
Received: by mail-dy1-x1349.google.com with SMTP id 5a478bee46e88-2b70c92f404so531343eec.0
        for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 14:21:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1769034116; x=1769638916; darn=lists.infradead.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rtnDcpt83urSnEkoGJAnSaHfcKiF5w4G5JkFsSE44zM=;
        b=HuqZUT+Ll1XRSw1My5S11qTveVR0o2SGvnJXkz7/xldv+YgDID6wXfl+8piJXc2XTP
         +q1WsXMATCoj7xuO7tRAHZdiy8ouxlMxTuFar/oFvJPhRlloTGBXeWVhNqfTn3j1U8ay
         NJBinrBeOzFc1dg3q3+za26vn5qj+KH/Op9drSS5l0GlUY2qhW0wuUXiaIQ4kyCDRgor
         /NXZ+aFvu4/aavABjr5LqcATx+8gH7b8rWmHf/B2cnccDwUJ1yBt3X1jHvokLGXkmJax
         HGvmkbL7rZpH0ONBermadkt4o8B13XGBSPUW5fuogVu6yJwIoI9YaV9vzG/U22PvioBd
         8WRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769034116; x=1769638916;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rtnDcpt83urSnEkoGJAnSaHfcKiF5w4G5JkFsSE44zM=;
        b=lCnV2FAbEVf4t77hf4qHSWYCH30a8uTps7lTu8cOhpm38cKZAHrWHIUvlXw84AeUlu
         4d4rmW81bTYTEk1ZVMApjXoW62bmChS/GdwD33LwWj5WTCtlADqVszR68PLnkL3BAsqM
         YzCm6ciTvmAkdLk0i9alK1DCeCIGJZjSxJUb8ADR6HvwYmcbxxj0BEVUaroWAS2BeDed
         HCog9dI40t7zSur1rwhNIKbi+zIjoMIj70QJmISSilqkmE+6tA+vbojZageq1s2Ff16I
         ZkgbRASUplRhntOAnWlCIFE2iG201lpmgrCCcS+yQ34NnL9nstlR67ssrj5L2AD1bbht
         5eqA==
X-Gm-Message-State: AOJu0YyWPdZ9ViycVU+LYSKNplzKTm7GGpUN+MehCXfQIGpHTe93OreN
	muCTxsPCKRexiU1oaIG+6PUXiMePSXSgB+aiMsdk+JI0vdIyrSThbxlvvOjPQ2YavltWDF6q6yj
	1xE8X4Q==
X-Received: from dycoz10.prod.google.com ([2002:a05:7301:fc8a:b0:2b7:2358:5b16])
 (user=royluo job=prod-delivery.src-stubby-dispatcher) by 2002:a05:7300:df4c:b0:2ae:5db9:f32c
 with SMTP id 5a478bee46e88-2b6b40f34cdmr12582763eec.26.1769034116342; Wed, 21
 Jan 2026 14:21:56 -0800 (PST)
Date: Wed, 21 Jan 2026 22:21:34 +0000
Mime-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAG1RcWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQyND3bzUihLdJEsTS0MLy+TE5DQTJaDSgqLUtMwKsDHRSiAVSrG1tQA 37UCWXAAAAA==
X-Change-Id: 20260121-next-b949189cacf4
X-Developer-Key: i=royluo@google.com; a=ed25519; pk=nTq1n8WcJActRWe1s8jdcy+TzpTK4a+IYRCIWvQfq5k=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769034114; l=1355;
 i=royluo@google.com; s=20251120; h=from:subject:message-id;
 bh=F06bzrwrKY1rSDEzs1cPBYIVqqftHmJQ7diTsid8rvM=; b=ikH3G/1gJWuSsn1ES9rUIQWPKBJIvgAS08dh4f0vn+tdcYO2Ps2/dtYWDFK1qXN2Ng1NP+g2A
 lSWhYVr/JBqDxzvA7x7Zn6t/4BJ2IcCcEcaorPdQyviKCwvn2CnJeai
X-Mailer: b4 0.14.2
Message-ID: <20260121-next-v1-1-c18068b091b9@google.com>
Subject: [PATCH next] phy: google: fix build dependency for Google Tensor USB PHY
From: Roy Luo <royluo@google.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Griffin <peter.griffin@linaro.org>, 
	"=?utf-8?q?Andr=C3=A9_Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	kernel test robot <lkp@intel.com>, Roy Luo <royluo@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_142157_824258_498C3F2F 
X-CRM114-Status: UNSURE (   9.41  )
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

The Google Tensor USB PHY driver uses the Type-C switch framework to
handle orientation changes. However, the Kconfig did not specify a
dependency on the TYPEC framework, leading to undefined reference
errors when building for architectures or configurations where
CONFIG_TYPEC is disabled or configured as a module.

Add 'depends on TYPEC' to the PHY_GOOGLE_USB entry to ensure all
required symbols are available during linking.

Fixes: cbce66669c82 ("phy: Add Google Tensor SoC USB PHY driver")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202601210825.ELrpQeED-lkp@intel.com/
Signed-off-by: Roy Luo <royluo@google.com>
---
 drivers/phy/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index 142e7b0ef2efb9209781800ee47b820a91b115ae..5531ff31d8156cb164c32e3e52d4a57b26a62d8d 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -49,6 +49,7 @@ config GENERIC_PHY_MIPI_DPHY
 
 config PHY_GOOGLE_USB
 	tristate "Google Tensor SoC USB PHY driver"
+	depends on TYPEC
 	select GENERIC_PHY
 	help
 	  Enable support for the USB PHY on Google Tensor SoCs, starting with

---
base-commit: 8bb92fd7a04077925c8330f46a6ab44c80ca59f4
change-id: 20260121-next-b949189cacf4

Best regards,
-- 
Roy Luo <royluo@google.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
