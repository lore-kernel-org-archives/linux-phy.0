Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA998C48BC4
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 11:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n133kywqYCVKiGkvQCghmVR1l7DFv6T9/srRP8iUBfQ=; b=2/4bbT1/tr7eeE
	rHlbMfs5Tm2IU3a3oMbCReudEYbFcO4gM/JyysaIUi79nc+3pL4Ldk0dLENAow2QmiErxNfUCYt08
	v1LfPGGOoxMAEjNH0T27+x5YWl9LvIpvqMhKGxX8HY4lQA7zeyPfIZX6+1X1nh2wKaJG9ggRgerCD
	o/VmpQMBBzDU+VpHghQGBgX61gMuoVIZ/Ae0KQQaAw9jc83ffsCyObh9U/dQ29zja0a9wIUMWl+hW
	saejOzRv18SMow6QhR1BMcvbMPJLw1bmCjrNAVTFphlc+2acBorEmp5UETjaPKMbNIZsss2Qu0UBm
	V8uBaFaGdKX2fUULUS6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcOlU-0000000EZKw-1mbe;
	Tue, 20 Feb 2024 11:58:24 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcOlR-0000000EZIK-44Y2
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 11:58:23 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-512b29f82d1so2944092e87.1
        for <linux-phy@lists.infradead.org>; Tue, 20 Feb 2024 03:58:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708430300; x=1709035100; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YXniBx4zGce2I+zUvQZeh9F9TJPf5+YSFwkB/zgLcpo=;
        b=HvfEJNv3A0sanz2JL7aKmjq1qith+xqUqeyw3M9wzoXuHLt4CpxH8QOgXd0xrFcv+j
         gNk66apEbpGB1hC3DAaYzHKE3c24V+JWwQm6YPNJdbHLJh+gLi85z7LRslSpsUiipxoC
         wgYz4UGMaWlfgKNLXpEOHddp4uMaOLvAIwvAwWEtZvTEpbrNfsXC1col5G2JrdOZ8Esj
         ApsHotEpZn3wtEvUlItgYgBwE6JirKScuEiSJ7okTTgfRuNJFUWfk+nEuK6qs7m/dlNC
         d9fnNCmCmlGiamDjlMwAKOMkYbQjxP4XECoBY56V7x6jHjjF5YoTH/CmbH89kloi6SES
         M99w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708430300; x=1709035100;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YXniBx4zGce2I+zUvQZeh9F9TJPf5+YSFwkB/zgLcpo=;
        b=gDvFTuVnrCcTp5ngIgolQ9E1IwVNCCsl0uP1U6pPhxd5hSHM84WvXMOxOPX2aNr7is
         U3aIlco6wYxLJdwCkbF4tGjSLlZPXuComS/ht/bN0Oo7yHe1WgE3ZLkhUJL6ayLVkeY0
         UwHw5M9MhRyhjB/ddU0Lx22fhnbt0sAWD0o2wy7GR37/+hronyE0YobVV5TBWScjClnT
         26DRokItjcvDGg+LwVyPbx4FR35En1hhfVrVm5hnt8dYChZRETl1SM8HA+ITs0McNt2B
         8cR+9MCFuPMigJCqR7QriR0qDtYiZKmRMAIxaOJ8X6jdB9VcD9jNbh2aWJLc+BJuM9G9
         4hOg==
X-Gm-Message-State: AOJu0YzROT+OtoxJd5csQsKCVvtc6dtenxdZ4JtxSU8M5B3Pp69lYIeC
	8rZvY60cBNzdrygUUOcouvpn8t85KvLrahoR+mflIOYZt1hDcIi0yJS0SZeG69o=
X-Google-Smtp-Source: AGHT+IG4jWWO+KknvlzpM+Lin7JrB+HmfQsUsz/gayBqrfoSc7B9J+Cnq1Ez2e+vd4q1YCG4NdRrVw==
X-Received: by 2002:ac2:4241:0:b0:512:aad2:80c9 with SMTP id m1-20020ac24241000000b00512aad280c9mr4291841lfl.27.1708430300290;
        Tue, 20 Feb 2024 03:58:20 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id hu11-20020a170907a08b00b00a3e0b6ea9fdsm3806200ejc.26.2024.02.20.03.58.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 03:58:19 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 20 Feb 2024 13:58:10 +0200
Subject: [PATCH v5 1/2] phy: Add Embedded DisplayPort and DisplayPort
 submodes
MIME-Version: 1.0
Message-Id: <20240220-x1e80100-phy-edp-compatible-refactor-v5-1-e8658adf5461@linaro.org>
References: <20240220-x1e80100-phy-edp-compatible-refactor-v5-0-e8658adf5461@linaro.org>
In-Reply-To: <20240220-x1e80100-phy-edp-compatible-refactor-v5-0-e8658adf5461@linaro.org>
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
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=715; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=UEn883fEvn74EKDrMBY5HRtTZ852wPrXNTB+0TMl9N8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl1JPXL4Ic8N92mDtTIZbPRk9h2SHNRLPdcNxki
 2nwDS20y+uJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZdST1wAKCRAbX0TJAJUV
 Vth8D/9NTlqJoCtLixiwCSoEDO+8wgtAsvUobYA3/01ndpgPwajs8duOOTVTUd/F1pAvwOd4aYd
 fEw6G0L77T4oaedJ/tLeGbVr2oo+BtxtYAdzQDs6I0ZLLF7J+P987j9IZdtSz/iG51YQKwYK/1c
 kqDYEnpSQLG4V/0ItMUqOsiFzGvjuI7tMoS7ieoM07EbfRmf5q0Qn/uP1oMscBQFPnx+JKiEKM7
 VzbDetS33Rol2vbz6/P1nitKxR9ApL3ZENaCVvOGd1fCGiZmLbH++fnb1+meX98Zr9QGY2Rb4zg
 80ri+T/edvDFujKP1Z6NvI6Fs/ogyYzvGFxd4Z5MQxaKwxgSJJHamT1TQ/0OgvG236Fvd6QKakP
 iAC4llFD4+nd/xqofsCxh76F7bksT0ps05VgAUvmwKE6pn7Rsywj6p9a+tl8si9AREkg8S9dl19
 vmWSakQ9VUbzanGQx+JxkTysGv3v4YxC7t++zFvESIijWYcp3l5gbFfl2RClc/VdO9/aACXESGd
 ZqiXo1P3E0nKYbsQSf3c/gIJRMN3VYxOHaRbvVw1NCfC4t0dep+LFtLgB8nOBrYUXI30qrgeSFq
 FD12D/dF7xLE2uaPUPfryjE+J08evl3yXtHYtFqxKbplCSCZrD/WdfoYwqDGULg9E1NZpTR2ujV
 0KyKifVBRS5Z8sA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_035822_066657_735CBDA3 
X-CRM114-Status: UNSURE (   9.75  )
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

In some cases, a DP PHY needs to be configured to work in eDP mode.
So add submodes for both DP and eDP so they can be used by the
controllers for specifying the mode the PHY should be configured in.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 include/linux/phy/phy-dp.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/phy/phy-dp.h b/include/linux/phy/phy-dp.h
index 18cad23642cd..9cce5766bc0b 100644
--- a/include/linux/phy/phy-dp.h
+++ b/include/linux/phy/phy-dp.h
@@ -8,6 +8,9 @@
 
 #include <linux/types.h>
 
+#define PHY_SUBMODE_DP	0
+#define PHY_SUBMODE_EDP	1
+
 /**
  * struct phy_configure_opts_dp - DisplayPort PHY configuration set
  *

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
