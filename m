Return-Path: <SRS0=YzZ0=OR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB48C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 06:48:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8995F61041
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 06:48:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8995F61041
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dud1lCDiAJ+ewAQHdTAz0kWBx1GeS9rJybBbQ2Zb2gQ=; b=VdSi9nfmnoy/BR
	sJe12nceTSy33aiEUueh/h2cp12PNt8KaO0MZa2/5dozls97dEkR6OZgorL3W2oZABtwVi5MQt5uD
	w8bsKGgjZo3xFR1gtT8qK4DY9rvr5gzXT9HTfLaYY/YMUkhcuy4/BEjQCSkjiBCbG8Wt9Ex40I35G
	lHZK9oqblRcafnncB6vDWGz1Cb8sz3qPviPdNC5BiV0w9ne6MukuxjOtBLvNfhw9Z9cr94RiJpL7o
	8tfGFiEW5im/HpM1LFpn4HW7AZAcY65tjVMKi+SO3BycDLYKHlNgM7/iEaHcoS5wxJGAdQggO4dQq
	AkerL24Ek63RF9xGpFQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUkRX-001kHT-3x; Mon, 27 Sep 2021 06:48:51 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUkRU-001kG6-Hf
 for linux-phy@lists.infradead.org; Mon, 27 Sep 2021 06:48:49 +0000
Received: by mail-pj1-x1031.google.com with SMTP id
 d4-20020a17090ad98400b0019ece228690so2960639pjv.5
 for <linux-phy@lists.infradead.org>; Sun, 26 Sep 2021 23:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=JGgK1pP0+awojk4y6sIFF5gFJNXp8xBI/eToel7KJRI=;
 b=D03xhEMQoE8HCYK3EP8igCx+K+PxXLn2YcVBNqcaYPIJkVlwe6lPvral43lBANxnq7
 429TOCF5KNb1VmC/zwx7295eDjjPG1v2lKJnnTziuRVrvrI9DWBFRsyIE+rswctqbMbu
 A3H8urXOhWwKzPRmkMOID2ojKlQOXhlJo9/35mRM0b3VXwnIj/Gc6yQbLgB44DQAX89f
 uIPH0Hs8dZqDQqiM+UwHM4T8Gi9+IrZPgUOyJQKPcfEmYFslJpptCMF8xX5QNb6i/LfN
 HcPEOOTKFcmicZJ+I8Lw7s4hI5rO1UidUT2O/NkQQtEgr4JE8nbS2I3RC/zK/ZrSde9l
 PXZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=JGgK1pP0+awojk4y6sIFF5gFJNXp8xBI/eToel7KJRI=;
 b=eRkriOXReu53EybXtwfA3VmmApfAqezNBC+Bvz8Bk0TdFyalFuC5TT73ISZjCK3yEb
 weNBu+252KQyVX3+JJXiJdA8CDCyb2nwWOfN/efq6rNaXzV1w2jpIVuk4T8UKBvruTy6
 CHmOUR3qy1cYN8h75AJ7asBZJ2lXrSlJS1jwxLhY1iafHu1pDjen65GHUY3KgNvLExpW
 tVkmoGYgIEV4jYP7zB6WGgtLOjFKoIZ1MN1bj+t2jisC3GL6R4XKRfz1SoBECj3O8kti
 upsjWrqFxBUgqKhY0fHg3QoVDp1tkdCWZdrZ1SbsGUPi/IA36aH2dMrdtTvvW2Tcro02
 NyGA==
X-Gm-Message-State: AOAM530UBsY5vn9sxXzY0kqfE9d48rNNNP+DquYBWAqgDsMBXDfS08mM
 Xv15gdERcdssTBqWm7wY3h9SrQ==
X-Google-Smtp-Source: ABdhPJx1HcMXkW5t/LysfiEuICq6FfiPRjiYjTxRvAWl/yGWqirR5BPbcfMGwyg6TftdVkNLfFAA4Q==
X-Received: by 2002:a17:90b:4d08:: with SMTP id
 mw8mr17640366pjb.97.1632725326394; 
 Sun, 26 Sep 2021 23:48:46 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id o16sm17169910pgv.29.2021.09.26.23.48.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Sep 2021 23:48:45 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Loic Poulain <loic.poulain@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 0/2] Add QCM2290 USB3 PHY support
Date: Mon, 27 Sep 2021 14:48:27 +0800
Message-Id: <20210927064829.5752-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210926_234848_607124_FD5D32E6 
X-CRM114-Status: UNSURE (   6.95  )
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

The series adds support for USB3 PHY found on QCM2290 SoC.

Shawn Guo (2):
  dt-bindings: phy: qcom,qmp: Add QCM2290 USB3 PHY
  phy: qcom-qmp: Add QCM2290 USB3 PHY support

 .../devicetree/bindings/phy/qcom,qmp-phy.yaml |  27 ++++
 drivers/phy/qualcomm/phy-qcom-qmp.c           | 143 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   2 +
 3 files changed, 172 insertions(+)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
