Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C07FC47072
	for <linux-phy@archiver.kernel.org>; Mon, 25 Dec 2023 12:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xbEmWpDYM9LlQ8Xae1e0LT2v8+EyT5PcOHgRuC5XESc=; b=ojUDNUiXTtf0S8
	WD/wkK9eU6CFDCBPxsQJh1hpIqyMzhxGX3w2MxZ9R8btsQxhe8GM0jpVqyhJja/B653uLrmAYCaoZ
	oLltUpEgkzL+oyWJe3NNg4+HfPZGM247u4aZD+fUKAL5oE9zpiiawZPDtWVgTjyaAB5/L4eO+JnZZ
	SG4uiMXmPPkCY7JYE6W1y6X5rhDoKr3PTLGH9gQbD52vXvYNFwU/2ugJ3C+MliDYzQi7/0eCRIIwt
	M/8tAQ8Q5VVEMbiR4TX7Xzi3Me0Hl8e5mBiu5ztj0zy3HmVp2LQEJuZTWdH/cnjmHbcpZBa0HJ2mg
	vn/Zcw/EVwHd2g8efDPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHjgQ-00Amx4-0R;
	Mon, 25 Dec 2023 12:03:46 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHjgM-00Amrc-2A
	for linux-phy@lists.infradead.org;
	Mon, 25 Dec 2023 12:03:43 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-40d22d3e751so27574235e9.1
        for <linux-phy@lists.infradead.org>; Mon, 25 Dec 2023 04:03:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703505821; x=1704110621; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wA2GwbVoxb7vt9RNqPQ+B0nt5JREg2MA/Ix8qlZazuQ=;
        b=kI6pq2tlTXXToyqfpNFjRhAQpfqf4hhJJDhSnA9AQp2jABAu54INUKYRd6YfW0QH/U
         thLKylkLjwkD/KoQR7DySEoD9z5pUCJPnJOKNo3gJX/eJLalRieSoIbSQDwrDxMJPWI/
         oZbgYmx4fbxP9vBgcQtgovLrQsn1Qu8udsRMHZYxehCZNCdwU7fGy9Ez2FBsWbAEc8Yc
         rH3J/8Y5Zg592zR1euNVItBw2NQoKG919YCKFcrGV7s3EsBrEAQJUUiN1bpQl14Af7jH
         NpAXTxX7s0w3gPvco8h+dLDcj7Wvq9X9YnPv0wS9SRjRWd5db/ZjoppYjObm+BjcQlbV
         Vs1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703505821; x=1704110621;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wA2GwbVoxb7vt9RNqPQ+B0nt5JREg2MA/Ix8qlZazuQ=;
        b=p/pVAc5m+Qp09WA4cgDF7GNPkXsg8wGxGxJqZiFU6RYTin9PRol//vYAkLCa2U9NZ2
         efuQVG6pmSxXkfeIrbABlkMmxdOnNFT2h4T/kVY8ZBdm/ve2V/pTctSy1Hd0hRTp+YB+
         NNTxrVit4IM+J4VJ83+bInEqDh6XOTSne2B8pqA9kR4KmuoSJ6I0q4eSv9oUDcx2Jesc
         pah5X7oUd+7H6mVobQ19qNd4e3RowmJpa/t0JQihGY1BRalVXUgKahHJaCl+bc8lflil
         9agDg0Ast5D4DLsWJJgsAuI2gwILjWT62TlQfJSi7zfBKaMf0lBdg5F5QC1p9IRnnHV2
         ZtsA==
X-Gm-Message-State: AOJu0YzCdthvqxC1W18Wm/yxwAPNhpPTrxdE/SPQp2xrMWX0GKKdYFZ0
	TWoau1kpefLE/IWthTydNTk=
X-Google-Smtp-Source: AGHT+IFC0NQhcxu6RcuvKfgUGzeb1uVPeKQOxXZlwOy4+uTIL/cxXPsw2nN6RyAnz8JE2poyss5tRQ==
X-Received: by 2002:a05:600c:3548:b0:40d:4d60:5276 with SMTP id i8-20020a05600c354800b0040d4d605276mr2111975wmq.142.1703505820534;
        Mon, 25 Dec 2023 04:03:40 -0800 (PST)
Received: from david-ryuzu.fritz.box ([178.26.111.208])
        by smtp.googlemail.com with ESMTPSA id 14-20020a05600c020e00b0040d23cea7bcsm6349456wmi.1.2023.12.25.04.03.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Dec 2023 04:03:40 -0800 (PST)
From: David Wronek <davidwronek@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S . Miller" <davem@davemloft.net>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Joe Mason <buddyjojo06@outlook.com>,
	hexdump0815@googlemail.com
Cc: cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	David Wronek <davidwronek@gmail.com>
Subject: [PATCH v3 5/8] phy: qcom: qmp-ufs: Add SC7180 support
Date: Mon, 25 Dec 2023 12:59:58 +0100
Message-ID: <20231225120327.166160-6-davidwronek@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231225120327.166160-1-davidwronek@gmail.com>
References: <20231225120327.166160-1-davidwronek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_040342_748859_A0E2B86C 
X-CRM114-Status: GOOD (  10.79  )
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

The SC7180 UFS PHY is identical to the one found on SM7150. Add a
compatible for it.

Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 3c2e6255e26f..0276de802d78 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1880,6 +1880,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sa8775p-qmp-ufs-phy",
 		.data = &sa8775p_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sc7180-qmp-ufs-phy",
+		.data = &sm7150_ufsphy_cfg,
 	}, {
 		.compatible = "qcom,sc7280-qmp-ufs-phy",
 		.data = &sc7280_ufsphy_cfg,
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
