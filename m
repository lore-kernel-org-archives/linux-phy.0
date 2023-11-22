Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24C33C61D9C
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 10:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jWPj3iTM3NCd6bRiz0qa9kMIJiFXVRS114R8risbJfI=; b=Yn7O1wE0QtagJ8
	9B72FV+CAI1S4/+2nHOYh0DM/+/ODwdKRl80xvm3NX2L5Cqv/DLcHe5hpGro9srxi8Y6x3SbGmIvW
	QAXH19iU1kBnPnBXJM40mnilTlcAB+u+FE/KhjKTE47dRU943Y9BLXLnkGg1EaeQp+AULM1yZH8WX
	/rWT/C9T6BokvUWQx1WHtqycPu0VD/NI60IGNV9N1+tzdiVeElKFgJAXCzbmMzaceQWVgXLK7NrWg
	Mv3l2Ai0xs1lFEfR3BP092ml4baT6JWC77SI8fgE8JzJxK7L3GssW9rlv5XXCxHsh3D3VBqF5i+st
	K/18dVoqh3WNpTfdajrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5k5h-001O0h-2n;
	Wed, 22 Nov 2023 10:04:17 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5k5e-001NwP-2z
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 10:04:16 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-543923af573so9647826a12.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 02:04:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700647451; x=1701252251; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MLFPkW/MlV/uq+oo/Ao5FwA9Bhrcu1wf5pve2aYJzvE=;
        b=w0IpULfkqkTZBuwflsZme6NpeefEUdB96GEApdBMy2tPUAUj7OkvNTQhx/SVpf5R8A
         HhQfiTZ6qwCJlGjWE463cNZcHB+uBiGLRDQtuTs23mMAQJ4/DPjA4DAF0qkucx5baZG2
         a3PHvSdlT4HjO2j2GFXVIQ7Doj4ndNNhDpff/Btg2CR3T2XBBrDle5zioARuzHU06HwE
         SL+WUVyeGc9dYRSA6J3fxtXtObqpxMHHCnFVzjwtbZ9nR6vBCE8YnyRrfXnVa1v4QVXC
         N8QeTyOeKNaZhO7AG1FGzwxtJFKOlhg1hwKznmxkcSBHbtfHPcoWhGHvXul5B0i+QmXj
         xSiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700647451; x=1701252251;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MLFPkW/MlV/uq+oo/Ao5FwA9Bhrcu1wf5pve2aYJzvE=;
        b=aUnn7a8vlJJYAP3clzygKx6VKxgGajIaBgYde/9exNZu8GV27A3/Qs97Cp59clxD5L
         8I0IMpSoqnVMLu3lTR0jLmNX1+F0lfod6wmnXN3L+j2SnOWBMgEndl+vm0SchCkW8WWW
         b651vpuzi4I0gtt2hX6bzI42J8e6Hgy2aIGohsAWnZRMDLg2dQlgzM5xIJuaT1lpVEvP
         h0UaI4wcWUOKAiy+PoSV1yt74XWop34iStIC9sy44EGw1UX06KR3rZvVulbWuyQRoWDw
         Mf0Wv69x1vp7fRItUbSEpL+8g3JnMxLbvtOOHF3sQmadoSxleSXBK2T47d/zH8IHABoM
         S7Tg==
X-Gm-Message-State: AOJu0Yz5zAN3B5LEYKrS79xqyobtuN5K8NdwO7S8wNLvA1X8baVYmRAH
	zTnM0Vi03In3tR9uii9OsIfj/A==
X-Google-Smtp-Source: AGHT+IHdDcR3jLfFw+Fnvj4HxUO8NreAp3BGyDjawRM1EQMcpq0SK4I6POFVvH6XkT4cIhsEVDApOw==
X-Received: by 2002:aa7:d158:0:b0:543:bd27:f4a9 with SMTP id r24-20020aa7d158000000b00543bd27f4a9mr1253990edo.12.1700647450974;
        Wed, 22 Nov 2023 02:04:10 -0800 (PST)
Received: from [127.0.1.1] ([86.123.99.122])
        by smtp.gmail.com with ESMTPSA id o9-20020a509b09000000b0053deb97e8e6sm6110456edi.28.2023.11.22.02.04.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 02:04:10 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 22 Nov 2023 12:03:54 +0200
Subject: [PATCH 2/7] phy: qcom-qmp: qserdes-txrx: Add some more v6.20
 register offsets
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-2-d9340d362664@linaro.org>
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1473; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=CQCC6Yo01m3EkX7DFbVM2rHCtyL2n/UNlvvZq6QHvbw=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlXdIQ4jXPQZSqmEmRr6E4lDxBv+hNol1XBRRHm
 GNjV4UYEnGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZV3SEAAKCRAbX0TJAJUV
 VipUD/9Ghzw1LnTe+JfhAgsUpLbfkWH/CvwFhlDdZj2Ql2+LcZnDvsCXImob65IsPx7BH3h4iM8
 Nl8Dk74jr4I56GaoQTtsnb9VInWu5AVn8Pf2R3JVBt2jwPdgOMgPZCm5PeD0ckBtpNj6lOiHpkj
 cYICPvKJ1YbR1WMusstk9LNrGT7qGN9y+WJQe2gZPJJjTtGN3PB9G4dbZaxIus0J3GbtoWJwAwc
 Wgf2DcfIYduPqw6kF/guL2IoqIDUs6g/gEWxpVVZt2Em2ifasBzxMYkLFpJcgHHbA+4iYfM8X1T
 jLOejesPOmcxsyaCgZDEQw8eujdwxeEZANUR/MHIO2Qa4J4Mr1ZBP4qQF2EqQQAb5iHp9vAE5Qi
 y4CWV1eoPjFooQx+LnycxqFYj1NC52t36jQabPWfy09s9lLeSTtsl8/iGpFbN/sfoo95Yuy37Yy
 SsN1QftljzDfqfV0Q4eIGrYy1++/F9uSiNWYJh5TW87A3hHzE1RIc9Tj5GFZ8RAIRpoNdxhO6f+
 C96Wrw5r8ukHi7FrdkbFXq3nT6XpG4aC3atWQvCs+CmFFTfRFCp+PKO8vK95FIQ0SYqA7GN8+Id
 ELzHiPPDbPGnDxFhF8jzPQ9df2L20fZqJd1oAMrAeCYg8VMjF3Pa2MhJkOIqUcJKNGKKs1T1Gdo
 U07zTLFhPs9S7Ww==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_020414_965465_C3A39DF1 
X-CRM114-Status: UNSURE (   7.22  )
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

Add some missing v6.20 registers offsets that are needed by the new
Snapdragon X Elite (X1E80100) platform.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
index 5385a8b60970..7402a94d1be8 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
@@ -14,11 +14,14 @@
 #define QSERDES_V6_20_TX_LANE_MODE_3				0x80
 
 #define QSERDES_V6_20_RX_UCDR_FO_GAIN_RATE_2			0x08
+#define QSERDES_V6_20_RX_UCDR_SO_GAIN_RATE_2			0x18
 #define QSERDES_V6_20_RX_UCDR_FO_GAIN_RATE_3			0x0c
 #define QSERDES_V6_20_RX_UCDR_PI_CONTROLS			0x20
 #define QSERDES_V6_20_RX_UCDR_SO_ACC_DEFAULT_VAL_RATE3		0x34
 #define QSERDES_V6_20_RX_IVCM_CAL_CTRL2				0x9c
 #define QSERDES_V6_20_RX_IVCM_POSTCAL_OFFSET			0xa0
+#define QSERDES_V6_20_RX_DFE_1					0xac
+#define QSERDES_V6_20_RX_DFE_2					0xb0
 #define QSERDES_V6_20_RX_DFE_3					0xb4
 #define QSERDES_V6_20_RX_VGA_CAL_MAN_VAL			0xe8
 #define QSERDES_V6_20_RX_GM_CAL					0x10c
@@ -41,5 +44,6 @@
 #define QSERDES_V6_20_RX_MODE_RATE3_B4				0x220
 #define QSERDES_V6_20_RX_MODE_RATE3_B5				0x224
 #define QSERDES_V6_20_RX_MODE_RATE3_B6				0x228
+#define QSERDES_V6_20_RX_BKUP_CTRL1				0x22c
 
 #endif

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
