Return-Path: <SRS0=nKrG=M4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB291C4338F
	for <linux-phy@archiver.kernel.org>; Thu,  5 Aug 2021 09:17:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A92316104F
	for <linux-phy@archiver.kernel.org>; Thu,  5 Aug 2021 09:17:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A92316104F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kY5MHKx9ePzh2fIds6jT4kvmxAHeWgoWCmoIfsnkdOY=; b=QqFy4RcAdFmOFF
	oWId1rYr+aMTcS1NRxFGYLSAAltx+7iNXZQQIM+yUjhQvxjQ6pSHLG7xt6npm6V+1UzA2H455UVIG
	/XYlsAwk3owJNh5f2Mo7ZGPOBOZEiR/d3mUhZ7mTSlOjEByCbZVd1kCe4LftQSWc0Po3/2zybNA8l
	SNwahJoaLtMVZMn9RKTNlO9W1GuwqG8Tv1w3FqyM3BOa6gayqBvjThg8qsxbutKqhjLkuLC7fa0Gt
	OVhS+Aog5qWEGGk2p1g9UXvdYA5EhnRRCWRRyMPcl/8kzdwvLJwtvk1Ltx2XXoZpV2Jxba+qmdrKC
	ugQTEzhijG5RvmX6HuRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBZVl-008q8O-4V; Thu, 05 Aug 2021 09:17:57 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBZVO-008pxl-JS
 for linux-phy@lists.infradead.org; Thu, 05 Aug 2021 09:17:36 +0000
Received: by mail-wm1-x336.google.com with SMTP id n11so2874920wmd.2
 for <linux-phy@lists.infradead.org>; Thu, 05 Aug 2021 02:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kCcVZEkYGRKFKKDWnwfipeEmkrP7zTh5P/d+2TB0cUM=;
 b=CecqXqs6u0MwWRSNJzmPq7ZV9p5HS1nJTgxLI1+KshvG77X4R7GDcvsBNos2j+7GPI
 OhxZg8ddcYi/Ospo5gRFQefQAjBmlTY75Bh3VQ4c47DVKruUvGaLLXk7+tGv4sVq3neH
 RQhvSRahFuwTeqiQuH9gexX/J7QYVKaE8FHdOYBLQHshHFfxOF2OqkWcBoeruiDPQ6Dw
 xPOua4v2s0dNKzrTX940Ocr3o6FsmBi7e/w5tTSwrpiRw/UHeO6+aO5ZYB3IOPbBrbNy
 5jpgXPcMephl4nYOj5jg8xJ7kIfVxVSiHfIRN6URaO2YQUNtTbreY4u/lXVFltT/8mCC
 2zxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kCcVZEkYGRKFKKDWnwfipeEmkrP7zTh5P/d+2TB0cUM=;
 b=aynMXTPA0/mUTyVAPSmZgE3+Qc9i+vqZazMkeJU+EUJhexrhWVWpcTp7a25WvWerEY
 wOOvkiNSU4MIKyRzk4m2naIpF5KYblpqYQOhYYmAPJn2QuW1x+7/9vbXwCBe8AaR8VvM
 ueS6zmIfR802rM78UGxAMJ0D0VaadsQvMfqyyzn44L4n3//qBQpK23PZ1Zxsg4iOYj8G
 VwEryFUEwkOG4mAWgYpDOV0juxzUtfsSTfTDi8rm9bwJ10byJ9wjJ8C/4MQ4JSObfRRx
 G5d+Rp5xCxVWZsYXpE3NdXTDKKM2xLG+O3YgotherpHGOc+teqa6WmIOWf6VYt9LA214
 5VVA==
X-Gm-Message-State: AOAM531OFKUOYVLXVW196kcXIuRm5gHyy26ZRCLi3+yHEpHqUgUbWn8n
 sBenruizUlRHTb1vGTsOR6o=
X-Google-Smtp-Source: ABdhPJw15xqh1brrWI8Pf+be3kDcHP2cDuDoXwAt8GH1TssNeJErGCOUrxxWHyXbeJuwraVEQA2/5Q==
X-Received: by 2002:a7b:c779:: with SMTP id x25mr13865095wmk.88.1628155052199; 
 Thu, 05 Aug 2021 02:17:32 -0700 (PDT)
Received: from localhost (178-169-161-196.razgrad.ddns.bulsat.com.
 [178.169.161.196])
 by smtp.gmail.com with ESMTPSA id l5sm6238776wrc.90.2021.08.05.02.17.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Aug 2021 02:17:31 -0700 (PDT)
From: Iskren Chernev <iskren.chernev@gmail.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Manu Gautam <mgautam@codeaurora.org>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht,
 Iskren Chernev <iskren.chernev@gmail.com>
Subject: [PATCH v1 0/2] Add UFS PHY support for SM6115/4250
Date: Thu,  5 Aug 2021 12:17:25 +0300
Message-Id: <20210805091727.942471-1-iskren.chernev@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_021734_732012_FAB0490E 
X-CRM114-Status: UNSURE (   8.19  )
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

The UFS PHY found on SM6115/4250 is named v3-660, found on cheaper qcom devices
(possibly starting with sdm660), but up until recently wasn't used much due to
prevalence of sdhc port for internal storage/sdcard.

The name is a bit misleading, because most of the registers found on v3-660
don't share much in common with v3.

The register values/sequences are taken from OnePlus repo [1].

[1] https://github.com/OnePlusOSS/android_kernel_oneplus_sm4250

Iskren Chernev (2):
  dt-bindings: phy: qcom,qmp: Add SM6115 UFS PHY bindings
  phy: qcom-qmp: Add support for SM6115 UFS phy

 .../devicetree/bindings/phy/qcom,qmp-phy.yaml |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp.c           | 124 ++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           | 153 ++++++++++++++++++
 3 files changed, 278 insertions(+)


base-commit: 8d4b477da1a807199ca60e0829357ce7aa6758d5
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
