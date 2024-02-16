Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F026C48BEB
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 13:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OMMS7bT7/K3gO63jQuafJY4Dp/lwD21Rk3YAUnX52Kw=; b=HObdV/gobaKkho
	WyxzBVmNV7tpXtkJt7+sqZj1QQTY1z68m1BQRBbo95ipUUuDUNjyZ7GUs/L+6ir0HNVjU08DSFXdo
	r9bqPCtD2v0DrdhXt4I3cB5p0W4SsCzpeQa/gVjHGnLPjRtLk/zoELnghGzJvbZcIIKsgGjqyycWj
	YmwGdLifBDt3EglHTza30ttkdbpq0S2S/q2P2YCnJjSD5zPdZJ/0hIVqQFihOEn/ve2Jqd+XGq6+8
	Qf36mTazaKcaz5xxJPBdUe7A6KNGU0hFUsCcXyAeroAslRFUE+01+B8H1X6ro9qr4bWT+EZRDpjjp
	yeEIgZtt9HjJPl5k2bSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raxrQ-00000002N86-3n1W;
	Fri, 16 Feb 2024 13:02:36 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raxrM-00000002N5v-3eMY
	for linux-phy@lists.infradead.org;
	Fri, 16 Feb 2024 13:02:35 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-51178bbb5d9so862351e87.2
        for <linux-phy@lists.infradead.org>; Fri, 16 Feb 2024 05:02:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708088550; x=1708693350; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WogvKBnTSfqlenahj/21fSgTDCDEh9d69i3ysSWZV/k=;
        b=J/oebG5IRaoOqfBeLAL+mMcz/eZVtfDZmKpdjbwpaUBGjLF+llvJn5b848dSCbJOkr
         lpEsdZ+fIMlpxhbGzkl/Mk5I7GW6kEUvNUJEHxFbOO1ucZ8NAl6QNsMrIJqbe03fRJSH
         7WbU1RVzgmmr39WS7PEgL1hLidY7RiG+/I4/mCmSxOdg/atGSDhGDCnXsE1lfNrJ0un7
         Ss+l89FlPUJJ/RxBbHGSB4n0AiB0G2qFN7ZeTwr5Mixqlos0M4K1+cY+Rt11DRQVFntW
         Im96R8pyGVfc8x6P3cM6NaNwEetGQKUaPNd2T5Se6mXBoXxAqTdf5dziywo+e/WFq8tJ
         d8VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708088550; x=1708693350;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WogvKBnTSfqlenahj/21fSgTDCDEh9d69i3ysSWZV/k=;
        b=qLb7yBLRl29c9AefRL3uPo3ts6KeWOpr71DrcnmvH/fpWz9v6duLNE1QBSGTkhdrzt
         /GeK867mhaP94RSj0ATQP9PzcOLDVZ5hR58MNvZF0urg3FIqEZbacmO/eol2Of6C4qrn
         BkUrvUkKKLGAjZqVmDGc1eYx82QyQv2/uMxKMK8OAiqFUTHXk0gbhAQ2BruWR9dy6X86
         76/Txh9dQPVOIhFS77qhgLOP8/z/fQCXheGxndrASDHhrkXIm/RKw2K1lyofRcoedOmg
         YrT4paka62MYTvLKiMi4H0IvH13lO2kQFqS2cSsf4QwhXN9UtvFZt11z03BTFS9ENDZd
         dh5A==
X-Gm-Message-State: AOJu0YwbuNfKxeGQdw3t9vWtWsriFMTpL0ipUXqQ48zD204/jigsX5BO
	YO9s1AX5wLpL4BxZr82FSiwNdaekiJyaqLhrBsJyfb1P8aqY+LfXy3BpNRus65I=
X-Google-Smtp-Source: AGHT+IGw/AlDiLLA+RB7XpLCrxWnOc5MjQI5KGh9YGBH3DXlLo5thFcDGBTSJAq1FNpVLXuadpNpBA==
X-Received: by 2002:a19:7707:0:b0:511:3283:e3af with SMTP id s7-20020a197707000000b005113283e3afmr3385555lfc.27.1708088550281;
        Fri, 16 Feb 2024 05:02:30 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id lg20-20020a170906f89400b00a3da60acdd3sm1317105ejb.27.2024.02.16.05.02.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 05:02:29 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v4 0/2] phy: qcom: edp: Allow eDP/DP configuring via
 set_mode op
Date: Fri, 16 Feb 2024 15:02:17 +0200
Message-Id: <20240216-x1e80100-phy-edp-compatible-refactor-v4-0-c07fd1a52186@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIANlcz2UC/5XOwQrCMAwG4FeRno20ibWbJ99DPNQucwVdRyfDM
 fbuRkFQvOjxT8L3Z1I958i92i4mlXmIfUythPVyoULj2xNDrCQr1EgGTQk3w4U2WkPXjMBVByF
 dOn+NxzND5tqHa8pQOCIO3oVQeSVUJ5t4e9bsD5Kb2MvZ+GwdzGP6Z8FgQENdsnPOYmmp2p1j6
 3NapXxSj4YB31TEH1UU1R+tKzYByZb1l0ovda0N/voricrO1CRksGQ/1Hme7zmOjrSFAQAA
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2300; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=ymGKj7gvKTmsiEBKEFvNUrhHmeS3+tvQXhuPlfQonQ4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlz1zcfuzNAkEVglQWrxL9kzvWKVd0FwHcrgncB
 nypshDoGfKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZc9c3AAKCRAbX0TJAJUV
 ViX2D/4y4X7nqbgO6z9vuSlCELC/e5oKyj/bPJ3rRs0trPeeqYK/vMj2KRBZCD72m8e5Owf9gJm
 +cuOTIgAtN/rtcctYamzdF6zakdqBkilNAp8nw1Bz9Qa27CTkRo/7qJgK/hvQ79N4rD7mJlY1yV
 Q3v1P5sRZoDWHiVKvWjOwrYqjQJM6bKfHfIavSmahchJxOSuud5FW1YSU1+hfl47/6yjV1yJkuy
 sNJcHtBB3OvMrNtcW++vsjW3eFAjNvm9nMJcdhRMIbY/mBtJEZFm/rqCFoZn74C3rNnu1j6NKDp
 RvyzAQ9iqZCDpjtPFp+4SR5T42C89a/hpg2b+Mx5q44IaOt2zm+tND9ppfZmwvrL9bm6xwImUJC
 b8Z7836woAQvsdIegYTdU6Q6zPptyNZGzXqRBXUAO2GrlpJUIrzzv8VOSNFxKEHBynWOnQYrJVF
 bzFSfi1Ch/60DlC5mkYoKZAkKoS/XX419qipWAOpmwOYC+8/HMZYiuBqNH2uBekwtW4QGDNFfBh
 OkJ4T7KRBTeCjw9Zo1qMqVzLoE0nKq2JJMq0l629tTFYLbld6F3ifL1yH32XIgqImyWcFml97ok
 SNYD9p0Y/xXQdNvncon4kWJjKkYYsT5s1vJFD3k3gXdVyIdmButDLchmid1Aw9RJKbUwGuKyPie
 zEiIsG8kh0/SbBA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_050233_122988_11B2B528 
X-CRM114-Status: GOOD (  11.17  )
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

Until now, all platform that supported both eDP and DP had different
compatibles for each mode. Using different compatibles for basically
the same IP block but for a different configuration is bad way all
around. There is a new compute platform from Qualcomm that supports
both eDP and DP with the same PHY. So instead of following the old
method, we should allow the submode to be configured via set_mode from
the controller driver.

The controller part will follow after we conclude the PHY part first.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v4:
- Added todo comment about setting the value of cfg8 based on swing
  pre-emph availability, like Konrad suggested 
- Fixed the condition in qcom_edp_phy_power_on, reported by Dmitry
- Link to v3: https://lore.kernel.org/r/20240129-x1e80100-phy-edp-compatible-refactor-v3-0-e71f3359c535@linaro.org

Changes in v3:
- Dropped needs_swing_pre_emph_cfg as we store the table instead
- Picking the table based on is_edp instead of overriding.
- Link to v2: https://lore.kernel.org/r/20231222-x1e80100-phy-edp-compatible-refactor-v2-0-ab5786c2359f@linaro.org

Changes in v2:
- Dropped the dedicated xlate function and added set_mode op instead
- Dropped the eDP PHY type and mode addition
- Added the DP PHY submodes (eDP and DP)
- Removed the device match data storing from the container struct
- Link to v1: https://lore.kernel.org/r/20231219-x1e80100-phy-edp-compatible-refactor-v1-0-f9e77752953d@linaro.org

Initial attepmpt was here:
https://lore.kernel.org/all/20231122-phy-qualcomm-edp-x1e80100-v3-3-576fc4e9559d@linaro.org/
Compared to that version, this one uses the phy-cells method and drops
the X1E80100 support. The X1E80100 support will be a separate patchset.

---
Abel Vesa (2):
      phy: Add Embedded DisplayPort and DisplayPort submodes
      phy: qcom: edp: Add set_mode op for configuring eDP/DP submode

 drivers/phy/qualcomm/phy-qcom-edp.c | 76 +++++++++++++++++++++++++++----------
 include/linux/phy/phy-dp.h          |  3 ++
 2 files changed, 59 insertions(+), 20 deletions(-)
---
base-commit: 225cd66584b578351668a2a6f6c723819ab8921d
change-id: 20231219-x1e80100-phy-edp-compatible-refactor-8733eca7ccda

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
