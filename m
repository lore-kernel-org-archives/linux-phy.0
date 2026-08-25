Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A69DC61DB9
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 22:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iLYytFdb0UwurvMm/pcGkpigpeEoX7FFxIhHruo3RHc=; b=UHWW8SmuMUv1Yz
	J7BtnJgnDF2NnHjSxLnuxxObzESaPd6k8p6A3jmU3QSLdUE9nLz2fdfJFgRxatHsyOjXgViGHPE6w
	/3Na0tbLvzn7etKesA970GyFZXTnv9th4IWE1f5DAN58f3a/2cTHgp5au7Lbu4bQ2R+x8/mSnzWwh
	xtFK89opN/MOcNkzDYQo8afhcvhMrjY96oQlAuN3vZ+H6YF/cnMN6hV0Hafqtozvqy6WKMqww+ITE
	2I2oMeSu4kKzUHEr9tNMtv7tCtzPc3n93L0gZVTHy2vfW2wyt3CEqO2wmjR647HWvaWRndLd6hw88
	cMwthOFVD8CuM3D52RZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz05L-00000001eFP-3MWA;
	Tue, 25 Aug 2026 22:57:39 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz05I-00000001eEe-3aaX
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 22:57:38 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-482e067e908so202738f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 25 Aug 2026 15:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787698654; x=1788303454; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=c1/cZi9z2hTKPa6J4VLugbiN9YQFIA/hLn4SQSIb6CQ=;
        b=UTcmx2zpb4SIk/rurM5oyTD2gXvCl1Rh2RX96lJIDpQZbKQ84oI0vyVCBG88ZOCUHj
         SJ10DH4UYnG/+W3sX3G5GhusQTYEIYoeWKozbClBQL6GbvMpGfjyLsWqDHfG6anvZ1aa
         yMCvRRu26athV96ehTR+dtEbm+HdMztDetc+ODKPXkpBaIaZQ/IFdQZpF+58SLHptXo+
         8Q3XFhPZ/oSxroW26yAD7IqqZt0y6JTPQ89ScVy+kYCfOmrr/rq4jS2GfLUew2GbV5jK
         6m3yTdN+D8ej+sxHvSdIBFpGt1XGPBH+XUDFDUVXDFZ3nZXJuPclHjF7Sl7ppNZzkAY9
         7Bqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787698654; x=1788303454;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=c1/cZi9z2hTKPa6J4VLugbiN9YQFIA/hLn4SQSIb6CQ=;
        b=VUCu0phG84g5tdg92ixOjClVXn9HVZjkIHhuMfLjMsnjb29kvgoFu9gNqltLSQqlq9
         HE8A/fZnpCoPd178NIWNHTuyn5jcxOROc+sndOzqx9WqkJvEs4iPEdgyID8XQmILPXOr
         8F2D5WJl1D5iONk2iv31r9gxtuVQiOGDweyIaBiZGBM+MnbxeL7VW4cV9kcTYO09kIjk
         srEDZd85ETMpVQKwucuAfpm/8SEsU4owEGlGe22n6TnqNA/vQXUJ6X1zUq1t4smLtk4a
         kZ1kPGxCNL0QDevA8LVxHXRsIZzyS72+dkxLghMTJYU43hCGISFRokLCqOqkm/Qkhy9r
         Wfxw==
X-Forwarded-Encrypted: i=1; AHgh+RpjXoh1LDObakmu8SEpumhJDOHiOB+5c25Bp8T778m9lvIZDEgeay5HkEzCzKUGyfiY4ByZarASkQQ=@lists.infradead.org
X-Gm-Message-State: AFuF++n8B1/AvoOs+xe27ljv804vVWdgVZZaVTQ3rEd9C7a6GEqLP//F
	9Iv+rMeJoNEm71rNS/waCUqQgHD5H3C2AUREcCpq1Uo81m6oAPgDYEvo
X-Gm-Gg: AR+sD12ocxAcVu3eFrZQ1UnuVba8R3GQw7p7giEzUby5xegEptf8odTpTkOKuYwgXmB
	OvCAxIvD+8M/JfSDTtKMjLMIsZtAwMFDkvXy5RTYQxktsdjdeg+cYeDRBmm+XY/PU5LVzYkGRl/
	fXmT7awkiRrb7dexcX7aWLTnGsXE03cHWyyk2BZKLYryGIl/fko9OltKWQ9VeZqPG0SdpAn1Omp
	uEcUxFI2pGb6owGbPjKgVHxP1JlPKJblhR1WF725HDkGlspwTzKJ+xiPyf7l9Ir6vZakHgNRs+2
	GSh3CzuUqYJTKxy4DjnXwySZGuOLbgCU8iTiS06O2Zk8kb4nds74/lvAcM28O8yxJ8jtsRYPCWI
	VlN7W5w0nWsVuMJOx54p2OzV2xASQjAdLrHVkPIjihJDSCG0eYVfG6HjkMZozggMJU29LQzCoaQ
	4e7G7ZY80G4RnxibTa4+qvfYY/zCPq2n/25dLY6sLBJM97ciVSOLKZLZYnuOgUmeo6TmcPM2wE0
	gVZpjoN9YliFPLnl3q12Uiq5WY55HnQohkGHQHHCrFv7VRL
X-Received: by 2002:a05:6000:40dd:b0:482:e2f2:19ca with SMTP id ffacd0b85a97d-482e2f21c8fmr1424121f8f.6.1787698654143;
        Tue, 25 Aug 2026 15:57:34 -0700 (PDT)
Received: from dohko.chello.ie (188-141-5-72.dynamic.upc.ie. [188.141.5.72])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482e28f6917sm782658f8f.35.2026.08.25.15.57.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2026 15:57:32 -0700 (PDT)
From: David Carlier <devnexen@gmail.com>
To: vkoul@kernel.org
Cc: neil.armstrong@linaro.org,
	qiang.yu@oss.qualcomm.com,
	mani@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	krishna.chundru@oss.qualcomm.com,
	linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	David Carlier <devnexen@gmail.com>
Subject: [PATCH 1/2] phy: qcom: qmp-pcie: Select MFD_SYSCON for the multi-PHY driver
Date: Tue, 25 Aug 2026 23:57:28 +0100
Message-ID: <20260825225729.230493-1-devnexen@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_155736_901802_FF2CE4C4 
X-CRM114-Status: GOOD (  10.11  )
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

The driver reads the active link mode through
syscon_regmap_lookup_by_phandle_args(). Without CONFIG_MFD_SYSCON the
stub returning -ENOTSUPP is compiled in instead, so probe fails for
every device and no PHY is ever registered.

Nothing in the build catches this: the driver still compiles, and arm64
defconfig happens to enable MFD_SYSCON through an unrelated select.

Fixes: 1781be3c8a5d ("phy: qcom: qmp-pcie: Add QMP PCIe Multi-PHY driver")
Signed-off-by: David Carlier <devnexen@gmail.com>
---
 drivers/phy/qualcomm/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index d910a5d1a1ac..9113e1099245 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -81,6 +81,7 @@ config PHY_QCOM_QMP_PCIE_MULTIPHY
 	tristate "Qualcomm QMP PCIe Multi PHY Driver"
 	depends on PCI || COMPILE_TEST
 	select GENERIC_PHY
+	select MFD_SYSCON
 	help
 	  Enable this to support the QMP PCIe PHY transceiver that is used
 	  with PCIe controllers on Qualcomm chips. This PHY is a single
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
