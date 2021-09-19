Return-Path: <SRS0=e0/A=OJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52EAFC4332F
	for <linux-phy@archiver.kernel.org>; Sun, 19 Sep 2021 03:11:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EDB0261103
	for <linux-phy@archiver.kernel.org>; Sun, 19 Sep 2021 03:11:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EDB0261103
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XSo7LqlrHqwJNdlFQ1arPbB9ZVULJlH0JgZq58DDD2o=; b=LoK9zhSP5JayWE
	ZcAMuJN53TFBRWAjxivOQwNHy25HpXQ2Pn2Wyr74f7Gxnd66KLSYHkHKH3vDgaVwfvnuNKWTNGGsg
	cpgqqxylo43U9OIGTjdG3ypsJLVbdt93FeOuj0QaZlCmunr9IR3bumBFxNVEJbiZnCmA9DoLOrQTE
	RSpyWLNyJcWjcQEXKzeLmqwZxSdH4kYGv3kdd4qTHN3EDuOxZ2wMZd6gnsvaoihJak+z0psTqNyFz
	y2eOigV7vsW+COxFvuS53SVVObo5jp2P536dYq8OtSwtJA4Z7h06eYBtzrty7ecmlsACEnX44EETd
	7GbNeUTmNISDS1MangQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRnEi-00GehM-7k; Sun, 19 Sep 2021 03:11:24 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRnEf-00Gegb-Ik
 for linux-phy@lists.infradead.org; Sun, 19 Sep 2021 03:11:22 +0000
Received: by mail-pl1-x631.google.com with SMTP id y1so1879735plk.10
 for <linux-phy@lists.infradead.org>; Sat, 18 Sep 2021 20:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=G6BucwPaZnnmqaLd4fYBveJkURWi7kDjQMGIY7cMKK0=;
 b=r554Mpl0BWcOt8Cj0gmLagxeJwfxwlc/lRfhLTiC/U10hq1fm02juk0DBXOnlhO7mZ
 eFTtK4sU4KRhV9WL5ip37UxxO2DIOlGG1CWc+fEtBkxnM0vOrZnczvUShnT4pX0ukXLH
 1UcS09Gs5zyYd1hMxAhh9Dv+grhC2FjI1cR2NnP1eLXmXFSFKgX0gSpa6AU5ZbFABRxb
 CuvgcLJ8iFhsYUHLFmzz84762YJSYQBiLmFOEOV2z1b9dh0389DftNeiT5knN0Q2m2HI
 mrXP940pu86rSEjg1TCwE80SUQT89FltRfKCNuNqczD3ELv2yj/pBvuNVsg+Q8EUOZvI
 SZ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=G6BucwPaZnnmqaLd4fYBveJkURWi7kDjQMGIY7cMKK0=;
 b=VFfhfV1OarP4TGFn16zOrwLJBv4kWdmpEwvT8cpF2//qPERhjDUCxNFsCFRKjmoI54
 JgTDePBs5G6NIK6fmb42BQBL4AL9xnLa8adOrdg2P4+gKJ+tpgH7ubOMx1jrW/9AOl0A
 /9VIa5ho26WGwL1eqlGhzARsIU924kLaUpvxCLSzSo7wc9BBbhK4euw3PxDibT/m8DjY
 0rGfc+wqJD+wh6xW2dWvtD6wEZOCbi9o7rokVP1RplKXhVaYIeVoJ1fItdGETlg1FQZk
 QSs5dAfNAcxGluuQ0qkMeJN5J7nc2ZIY7zbz6LeSWAx1qn8YHPnD1b0tuupedC5CNAVw
 4Kzg==
X-Gm-Message-State: AOAM531v+r17owmWZac2NgCl3opH/32/jfbS9M44/XBggeyU/X8SjzWK
 ZJwWwWzIyhpcPSXW3rQU1QVgMQ==
X-Google-Smtp-Source: ABdhPJyD0FI4fnI4/dC47KuFVzltQiWcHwub0OlDiE8wqzPFlaUZqzP3X0SR2VsCBK4dWHaKdSVv4Q==
X-Received: by 2002:a17:903:1208:b0:13a:8c8:8a33 with SMTP id
 l8-20020a170903120800b0013a08c88a33mr16701433plh.89.1632021079903; 
 Sat, 18 Sep 2021 20:11:19 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id 132sm10224931pfy.190.2021.09.18.20.11.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Sep 2021 20:11:19 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Loic Poulain <loic.poulain@linaro.org>,
 Manu Gautam <mgautam@codeaurora.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 0/2] Add QUSB2 PHY support for QCM2290
Date: Sun, 19 Sep 2021 11:11:08 +0800
Message-Id: <20210919031110.25064-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210918_201121_724903_3F4FFB13 
X-CRM114-Status: UNSURE (   7.73  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The series adds QUSB2 PHY support for QCM2290 platform, by documenting
the compatible and it into driver match table.

Shawn Guo (2):
  dt-bindings: phy: qcom,qusb2: Add compatible for QCM2290
  phy: qcom-qusb2: Add compatible for QCM2290

 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
 drivers/phy/qualcomm/phy-qcom-qusb2.c                     | 3 +++
 2 files changed, 4 insertions(+)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
