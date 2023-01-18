Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 354C5C38147
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 00:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=114icRpBW0yQKV0sNEbR+QX5B9Aqvuip5VYP7cN5tVo=; b=PvB+HfCy63eayp
	IHVWNjHQSdSfu1OYVEVYcqAcW9vdGbAaHpWAnxo6eHzKT6voMwM46vtWC8fYKTfyVET+h73zqHX/R
	7jumvPIsU7lMVUwKGevPjSQd90Tc46+q+BA7FMMtBjN7fjTAMxygU2y0QBmkMxmFpnA/GW4qH/U89
	rRVl19O+NUgJSTwMH/PYVnaYEeHQquhGdvQRFC3lgmv8u4ANoLvUN5N0L5K7WINjLCHE9B/f89HnN
	isXN4r6MXlYxO53U6S0jPu78dr6Qni+3ezBrhLJXZ7kTcYri51ku7PXUnOafQxEgs20XAiBrygQvK
	WtgoC3DVxgi9i3a1i/Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwTf-00GLjK-DF; Wed, 18 Jan 2023 00:38:55 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwTb-00GLgj-Pr
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 00:38:53 +0000
Received: by mail-wm1-x329.google.com with SMTP id iv8-20020a05600c548800b003db04a0a46bso587667wmb.0
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 16:38:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pT/tvb1zs7oqJaGipg0jXRVX8X7JE27Zd8ObevMN1oA=;
        b=enNQAmr4/YEv7DVQNGVjKt4QCfUBVgk6jAWA8s7rI7iuWQu4n8UVOs9s5EECvf2YC7
         uuFFdjVbCIle7SDvK94UQ5uvRAhOO2EQ0aVysnIoORXsNwE+yXmnE7YAXKdB3dRdsbo/
         8GfZ88gPRcrZV3tdyD5zyfAoa7DP/rdIoTyEknmDHuBzvKGHEUahr1teVVJLhDJ8ci8h
         cfTL4UMJWpqVG1Q0qYEOJjbXGa4ZraKnBUX9+31yomwJLy468YSE+HnnibN1c5cqT8Nj
         10gTrRPrRTveieo0rdCiQhbXb4Jy4jedSUoHQ9+55CxXwhsLRTI0udnFZVRRzr0egqq1
         yAig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pT/tvb1zs7oqJaGipg0jXRVX8X7JE27Zd8ObevMN1oA=;
        b=12++Aur4M1l9YtIxwbvksSBB0JnVSd7W7ms12IziPb+00zEO2EFj/YKIrvo2DNzp/7
         HCYXQz2CsRTpXckIINLb8gd4JioD9uPzANg4Gp8j6i5Wjl9a9H8Tw4w+6PDckUp0upc4
         z2crzS/ZCOU+YqYL55+cAp4VBxWT3LJbssOMkUBWcFsQfvKvVOym4MuibGggNsMrR2iv
         +dY7FGNxM2SrSjn5u53xNgRuKxnXHyME220/Q9Z0bkRrSEO9/b2C+JVt6Wm0HtW7ULOt
         n6y/e5mnMaY+fKhc/h7XbP++JQXTRSKXbbY6VCp7auN3MTcFScrQNP42SkbaKnlJpMfM
         lfEg==
X-Gm-Message-State: AFqh2krhp9cDe6/zBcPVK0ITgzP8fs8zLPAWScG24sfBoV9m1HoxYpOc
	H4KxgBRd8BqmcKWn3igzasRZsg==
X-Google-Smtp-Source: AMrXdXvpvk2x693gfXhCStD/lN1ESwg8oZr6kmyQBnvzdRQ/Em4ANZPFnreUiW4QKcD8a5vip2P63g==
X-Received: by 2002:a05:600c:1713:b0:3da:fd90:19dd with SMTP id c19-20020a05600c171300b003dafd9019ddmr4835990wmn.26.1674002323045;
        Tue, 17 Jan 2023 16:38:43 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id m9-20020a7bca49000000b003d98f92692fsm365199wml.17.2023.01.17.16.38.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 16:38:42 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH v2 0/7] phy: qualcomm: Add PCIe support for SM8550
Date: Wed, 18 Jan 2023 02:38:27 +0200
Message-Id: <20230118003834.2330028-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_163851_931033_92DC6F70 
X-CRM114-Status: UNSURE (   9.91  )
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

This patchset relies on the following patchset:
https://lore.kernel.org/all/20230117224148.1914627-1-abel.vesa@linaro.org/

The v1 of this patchset is:
https://lore.kernel.org/all/20221116120157.2706810-1-abel.vesa@linaro.org/

Changes since v1:
 * dropped all PCIe unrelated patches and also register offsets
 * split all the offsets into separate patches, like Vinod suggested
 * dropped the legacy dt parse changes since we intend to support
   only the new dt parse mechanism from now on

Abel Vesa (7):
  phy: qcom-qmp: pcs: Add v6 register offsets
  phy: qcom-qmp: pcs: Add v6.20 register offsets
  phy: qcom-qmp: pcs-pcie: Add v6 register offsets
  phy: qcom-qmp: pcs-pcie: Add v6.20 register offsets
  phy: qcom-qmp: qserdes-txrx: Add v6.20 register offsets
  phy: qcom-qmp: qserdes-lane-shared: Add v6 register offsets
  phy: qcom-qmp-pcie: Add support for SM8550 g3x2 and g4x2 PCIEs

 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 371 ++++++++++++++++++
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h   |  15 +
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h    |  23 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h    |  16 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h |  18 +
 .../phy-qcom-qmp-qserdes-ln-shrd-v6.h         |  32 ++
 .../phy-qcom-qmp-qserdes-txrx-v6_20.h         |  45 +++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   6 +
 8 files changed, 526 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
