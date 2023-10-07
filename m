Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B9D8E95A61
	for <linux-phy@archiver.kernel.org>; Sat,  7 Oct 2023 14:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UPCfdgqoUvA58izlY8mywI1din2gyFMGd2L2BMiBEyw=; b=kxZtKJGmu8+Z/O
	cYuiGgspCWHA+2D2qndv368jPHDQXkdqN4RJZkdhsLJU+X7OXFOVMtYFLWMfKYCvwNpfFwRTcbLh8
	OH1Jb5ejJ/LXVa1n94qptgbvJCWcGjWpJ2FYRwKYMjI0xjkVZmisSunks+MC7zbQHCrA0PucAyvIK
	+CuhmZuOEaJ5eRKQ84ubE5FoWXLKFYHmZHtRSLuAF2rPBD08mdOQLyaFGBOP8/fHbgdM4tOg7co12
	FN0rsWFaybDoVdErLGaikywYnFdHamekK9i8zBbnjbSsqdi/0csEyYTwpUKyorugC0p0E2FgNlEsf
	/YgCD+o+LcZoaO69RPiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qp7rf-007ckC-3D;
	Sat, 07 Oct 2023 14:01:07 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qp7rc-007cgv-35
	for linux-phy@lists.infradead.org;
	Sat, 07 Oct 2023 14:01:06 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-3231df054c4so2846359f8f.0
        for <linux-phy@lists.infradead.org>; Sat, 07 Oct 2023 07:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696687263; x=1697292063; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OSyejUmIYUE/ugRzpClD0C9mW54tD2QmJtfXKPfskwA=;
        b=Ju32PguowWYJEjAPl/tAITKmErHWscTpx1yWVt5d3vtWa0+hYLaT27/dRgaR88QoMQ
         PKgtAXelBu1ubtR6OhXpukmPwy5aYMHZkFf8NFnpzEI1GAPf8wdn85/JGACeYdGWranR
         gw5hQNsQKO+EIEK916RO61DZbyx0+aeyrr8dFPy2hONL3w1A7u2aSUxZS/kd8ea2u8We
         KceO2hI/JW7HwQmgFPQMNActyJAH+X595bMJ1oMxxp/1awidz+th6egyjiHM4ZK8zSov
         Ih7+tUARt/13ExRVksav+4n8SpC6fO1Scsjdi7izaEw3IBr4W2ZsykR8J1cM8xYua+Lp
         44ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696687263; x=1697292063;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OSyejUmIYUE/ugRzpClD0C9mW54tD2QmJtfXKPfskwA=;
        b=IhZFJRRGLXtuikxyw7qdlCJgRU7kqSfacBsQniNiVWLgElMtbkL8azTW2VaCBilG2H
         ZsvhNzuGIGzKG4GFbYpsP6qym3SJrwP8ZBvOmca5UPiiu+wsCkedhxM3W17Ct0bcWmcs
         3JzHBCWJ8Z4FKrGiLPyZzuwiVFQy01qSeEJ26QxsL+CGfRSRzxtOd81K6S7DilacNslT
         421uoFVIG3S97ul/bckUMQAaYD3+IabudEbHH6/vvl0yfLrY1jtxpdd9aJM5kKusfUBR
         pvDGifzYlh4xZ+zeLQhN+CUKdlEX9EHHKVZwM5D6UhLsded5ky0pd7ywTWGeOTA9BbgY
         M9Ew==
X-Gm-Message-State: AOJu0YzuVjGVYB0ijPFOhb2a7aYuARpYbMzm0XzWyL8YfL1utatlUEx3
	6srExVEI6eh08IBcWqY3DOA=
X-Google-Smtp-Source: AGHT+IGU9FhqUnrVQzrFhL1KtxM6QZuUbG2ri1efmrRV6OD4JzIZ4VoDEnddJbWUGYgeWXdqywDcEA==
X-Received: by 2002:a5d:5607:0:b0:31c:6591:d415 with SMTP id l7-20020a5d5607000000b0031c6591d415mr9239447wrv.39.1696687262498;
        Sat, 07 Oct 2023 07:01:02 -0700 (PDT)
Received: from david-ryuzu.fritz.box ([77.22.112.104])
        by smtp.googlemail.com with ESMTPSA id q8-20020a05600000c800b0032415213a6fsm4332043wrx.87.2023.10.07.07.01.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Oct 2023 07:01:02 -0700 (PDT)
From: David Wronek <davidwronek@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Joe Mason <buddyjojo06@outlook.com>
Cc: cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	hexdump0815@googlemail.com,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	David Wronek <davidwronek@gmail.com>
Subject: [PATCH 4/7] phy: qcom: qmp-ufs: Add SC7180 support
Date: Sat,  7 Oct 2023 15:58:28 +0200
Message-ID: <20231007140053.1731245-5-davidwronek@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231007140053.1731245-1-davidwronek@gmail.com>
References: <20231007140053.1731245-1-davidwronek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231007_070105_000784_EB227B21 
X-CRM114-Status: GOOD (  10.72  )
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
index 514fa14df634..1919b8bf5a85 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1787,6 +1787,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
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
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
