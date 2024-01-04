Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99F1CC47074
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jan 2024 14:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XILaUJg6HJx1XXREVEA/WWwi7u4nuEYQAaPLrWhH/SI=; b=ZV0p6jKSYVECgh
	x2WXhYfdOOJox0vwKa6kglzGkyqC8nzyUvcvrOXBGCi/IHtBg/5dNPJp2OBs7eBXrQzPMXWUi1Gnv
	z3k5Sh66Fgz6Un61MaDajHDafU6pIQN1UqsPPqJxrDSWI3jksd7tRx+P+Fe6RVgxz/UL9tEjt9xdT
	SxH4wNMf8OVbVclxLpnIESy0g7VPZPApScsTtTPa1HwqfCaOu6xGEhnRoYe1pJGh1pCabLD/tLdVJ
	2AI3Z17e6tE6TmAbYLxt1SWADgnKTL/1MP7iV6enTxPe5rr5fMV/rdW3NzipeKeYV83H4rBwZzkLI
	DQP0s7BDdapZp1zJ5r/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLP5G-00EOsc-18;
	Thu, 04 Jan 2024 14:52:34 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLP5E-00EOrz-1s
	for linux-phy@lists.infradead.org;
	Thu, 04 Jan 2024 14:52:34 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-5542a7f1f3cso751640a12.2
        for <linux-phy@lists.infradead.org>; Thu, 04 Jan 2024 06:52:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704379947; x=1704984747; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zZIogcHqx9uTCJq4N+XqsoGveT+CoaQkQRlLlJgbysk=;
        b=WIKk2v+YXiZa4Ydz0+zyzgwwnJJkClzP1FfAUETfXW9r59yi6fyYeKNVFdMnijfZfJ
         vUikGmtat/aJPMQ6OG1ZZw5q3iyeYpm1KS0bZ1gtXLdH9BTbQ0XjyE0doUIPF8gtVlAj
         UE8tDlrJ76egYQDMTlXjXOFCVj1Ra+Aq/euLDQ5/09vuL41+o7VOXZd3jJjwwNT0jVRa
         Gys2g4tAuCfSFAsOx162eHq2lmXeSSEcdaVlUooEpgMDflxo46eEiO+iVdHPvvX9KkTs
         LfNHPlQHiu5peurQSsV4LWGZuh0HH7BGlHKiNAgClOdsTTb4wBlpOwWFManNk9FbwlmG
         4nGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704379947; x=1704984747;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zZIogcHqx9uTCJq4N+XqsoGveT+CoaQkQRlLlJgbysk=;
        b=wF97q5SpWPuqDIhZTgEOWFgUDHdmTMLCkSs3hKPKsEL1xYWEVwMYjLkpIF7wyPqG/t
         +VZbBYsk3CQo6fqfrUXEaCQN1eTBouLE0IeByQMTeM9iT0HIpdrID4x+mW72P2Dj0Oxk
         DqGc4PKZ29GD6XjGQo5vKAzeOSEZViga5ALIDDG0pkndcNLZR2YzUhdvtsVdkDynDjFT
         WUZGzWK81J/2YPkiu83X51jTgnRsYASnAkmbjpqPDPdbHQd9lVtgGqdE6ziukPq9kc3Z
         kmLoKkpyCnraAeIn3mPQSHtIbx2sFAlBZjQHgj1k2F8NWOid2pgvFjVvAKK8AamTt2s0
         buwQ==
X-Gm-Message-State: AOJu0Yy5vcmsbVDVY/zgJnmD8KUPL1TZj95Xm9VxUp3XiHuG1OIqhCXj
	mTZ5lyKvxMcHMVN0G9b454Bn+saR7jGaieI5U3qhjyIg6ug=
X-Google-Smtp-Source: AGHT+IFXAx2ANimczd8Sgl4948w4u3Nl18N4rN5i/YkygdtqRa/cmktNNtOAN3WAuyYeZwnltT6Z0w==
X-Received: by 2002:a50:c259:0:b0:557:c43:1e51 with SMTP id t25-20020a50c259000000b005570c431e51mr311959edf.23.1704379947335;
        Thu, 04 Jan 2024 06:52:27 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id k24-20020a056402049800b00555e52fed52sm7970592edv.91.2024.01.04.06.52.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jan 2024 06:52:26 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/2] phy: qualcomm: eusb2-repeater: Some fixes after the
 regmap rework
Date: Thu, 04 Jan 2024 16:52:10 +0200
Message-Id: <20240104-phy-qcom-eusb2-repeater-fixes-v1-0-047b7b6b8333@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABrGlmUC/x3MQQrCQAxG4auUrA0kaTd6FXFRx1+bhe2YqCild
 3dw+fHgrZQIR9KhWynw9vRlbtBdR2Ua5xvYL81kYoOoDFynLz/Kcme88mwcqBifCL76B8llb6K
 qvfRWqD1q4B/a4njath9VivBTbwAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=639; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=c+pvrccSCpOgqh7ydKwxbBRfYF462jh89UpoQ5iwwdk=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBllsYmbj67PZ2TtbJqISo/ydyuy6XlIWLzEi/YC
 RLLrn2b6wSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZZbGJgAKCRAbX0TJAJUV
 VtK/EADFV3NeX2ydmpryOIbecPaE7INDEqVyyKUK0wmtewgsUL+Z04L7kGWr9dB42XrpBKSjr3M
 /io8L/lcSjgBSNHQP+NZCD+4t6ce1kyI+GmPxg/A/1CuI8QARQr8eKm96/hOw5c+M16TshuYy6t
 VERh3FlNrt7JFRa1eHQfNUrVPkfyVzfGwIo7hjyBpadNB43yBamxlWhTBIxsR5f5WW2S9/KK/qA
 NCgb+3oqLR5pwe2fEAm+Crrc1QZjX3necfvdTf2cCcTANUJ8W07OHPeFaLB4P9bVuhRdXQU5+Bx
 Wn4eJCcs17xQW3i/ATAOn7NX8/3vY1uiXdSPJ0r64SF4BDKOicoGXH3Ej8I2aUJyKYWMAQUZ31N
 /0bRVXCd0+0wLiEZDLj2WpQu/jQFZypgbZX3Fo7oiM8taOYDEa60ati6YivJj2CPpx6/rImiS6q
 njArJwRyZqNFUduN8gFFZCPtsluxUUG5k10IMpnwS4BXn/RdhM8Ce83y/vUdzCfe1Vn2g07ZSpD
 eSQAQh49FK1UfBR2LCsVvEEcv15hhu0bM6xGr6Aaus1Wi90efLSXg+njYRWnAk7sNrkDVKITTIy
 PL1Q6l3q2GUn+DVglE7rUcsuje8Ylf+Bvs5tpUKM472dt1Wb+4Fsr/XwzOWkfV4/eYERjR4r+9I
 ySvKGnl1XeZlUkw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_065232_627314_150ED4F3 
X-CRM114-Status: UNSURE (   4.93  )
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

Found the first issue (from first patch) while adding support
for X Elite (X1E80100) which comes with more than one repeaters.
The second fix is just bonus.

---
Abel Vesa (2):
      phy: qualcomm: eusb2-repeater: Fix the regfields for multiple instances
      phy: qualcomm: eusb2-repeater: Drop the redundant zeroing

 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 23 ++++++++++-------------
 1 file changed, 10 insertions(+), 13 deletions(-)
---
base-commit: 0fef202ac2f8e6d9ad21aead648278f1226b9053
change-id: 20240104-phy-qcom-eusb2-repeater-fixes-c9201113032c

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
