Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1CD5C48260
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 13:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n133kywqYCVKiGkvQCghmVR1l7DFv6T9/srRP8iUBfQ=; b=L+aLqs8x6200d9
	9DVR9ikNMBoxv5//cwdKjvfJkJXsTiiXk/KDr6RPym+TeZUoyT7pWbd5arWhCKDvBklJLGPGNbQXc
	uzKUqBqz3w+wjo/8YQ+sB3fjSjWYMecE8Lw5Tu38C6o7Sat1dHEaRGIBJNDtQwkVoNRBT3Dib7Y2s
	+ue3F3zDGVNNHA7VIZS0tzLSHmk12w7Y0ztpsztyaimdQDOC2USN42E6YCp1jzw6zdCh0ud1UGsIJ
	BxOklxPTlKthI7I5RzmwZL5ohVHCVRuryYAOsWpEtoGTO54qXYnhqab/gmIw69CjNlASrP279wQpA
	2a8mzKCZS1Ql1oLpdGdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raxrQ-00000002N7q-2FCo;
	Fri, 16 Feb 2024 13:02:36 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raxrN-00000002N6Z-26Rx
	for linux-phy@lists.infradead.org;
	Fri, 16 Feb 2024 13:02:34 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-a3122b70439so233436666b.3
        for <linux-phy@lists.infradead.org>; Fri, 16 Feb 2024 05:02:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708088551; x=1708693351; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YXniBx4zGce2I+zUvQZeh9F9TJPf5+YSFwkB/zgLcpo=;
        b=QlrXXLvdSPr8VISjiCapTa5tuy/sv87fpz2FaPXNZdP72WR4ON8T4+x6qBZ1tZfcwz
         OHvKbykM/mIhIfmY0qfdjQsuXXSPYj4+LaZCI9Lb1pXTjuifzWOGjpqN1eHcw5IjoUik
         OnjN7dUcRKx0a2wDVx5N9UP0bPtDawc8h69YSZ2X/8rMgXyCj7Mwq9JjeQrrCE3Vs2HU
         DDGGK1FSsmPmfekPU4KQ0vfOT77zZWNHkxs3upOvSA9WIkoVMmx1k6DOZKewZs+PrGGT
         96jDjrEuuRT45n9KSAfFjV1c8epB8AYlWsR8IiRbSI0u90tIOcaNsTjeuc0HzFVC0lI9
         LtQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708088551; x=1708693351;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YXniBx4zGce2I+zUvQZeh9F9TJPf5+YSFwkB/zgLcpo=;
        b=o2AX97wRvrNNb0dgRyqfNmcAqpd9x7g6RmiJ8vQXPT8Y7lnPUl52592ZqJkGJexWE2
         gMgqdxy+ATfFMy1jU6XRMq1BLCe/GSuBHuD2Kc9NY2RIKDDeWAHiIVrflrr60vkIZO8+
         I7gbV3STIo98iMZDMVjc/+rrmGfmlU//YZ6DxABkKUhkghZHU7LfdYwSRIZ+uVT8MUwr
         4azCVl5La026SRBlCpFOZ3lGkwwLrRorc3/GV99AZWZaClcI4IIIV+iws740E3eYrWxz
         2s2wzq+rXAsud0I66Bojdb6X2Ji4TjkfvC8RmUb6/Sc3uaQ4YmRg+mKMfoGSEKoVKYjE
         Kykw==
X-Gm-Message-State: AOJu0Yx6rm2MRjsKA5boenjVbhtUyPHqoYMp4vbjcOnR8DaCXs3tN53u
	nXUgBWfiHjnGbyOqzOKC2Q0wkGiwg+Y8wIXZgMyf85PWkg8HoG17w7mB66Z+S6U=
X-Google-Smtp-Source: AGHT+IEgEcb1m0Nnzg3PGnVIsyGiVQGwk/Ru7SOA8W3ivWwH/8eR85AResYbugpBrxCuY+w1HOCtzw==
X-Received: by 2002:a17:906:3453:b0:a3c:2146:a0be with SMTP id d19-20020a170906345300b00a3c2146a0bemr2562714ejb.70.1708088551667;
        Fri, 16 Feb 2024 05:02:31 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id lg20-20020a170906f89400b00a3da60acdd3sm1317105ejb.27.2024.02.16.05.02.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 05:02:31 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 16 Feb 2024 15:02:18 +0200
Subject: [PATCH v4 1/2] phy: Add Embedded DisplayPort and DisplayPort
 submodes
MIME-Version: 1.0
Message-Id: <20240216-x1e80100-phy-edp-compatible-refactor-v4-1-c07fd1a52186@linaro.org>
References: <20240216-x1e80100-phy-edp-compatible-refactor-v4-0-c07fd1a52186@linaro.org>
In-Reply-To: <20240216-x1e80100-phy-edp-compatible-refactor-v4-0-c07fd1a52186@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=715; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=UEn883fEvn74EKDrMBY5HRtTZ852wPrXNTB+0TMl9N8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlz1zhcNOfojzegsl6uRYJc4ozupuOL7Oat9eQ1
 +FfaWs/3vqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZc9c4QAKCRAbX0TJAJUV
 VuGeEACN6K5Xg2Anz/CjeZcowaPNqWdcwqD3wo+40GURz9+1RgAnvn9z/BfVjd1Kyg4ujBjQ5ah
 r6m/OPe3ELJlbSmy3cSdIPEheRVf7Zk7M+l1Cd1n/VayhxeXbf2xIl1u0FeBfQLvsRhpmo5okLw
 SpvyF2onoI9zAHC9MA16YHpxSALyQXEdO54Q6+uuUiKK9r+1dOf2WoMbCzNHWMIZ1/45VqMXezj
 7NaAxxhr5GtY1gFdp4Ts0l3jiW90vb4Q2ry8aun/OkWcSxM+jzfZ8FK2G/XJLWvFVdccSX59s0r
 0OcVL4lAUNbwMgDbNmjNwp4/f+N7rP5pz0OLISvsIlEHz3HP0WpqxcuHn8E0UBbsPHITqnT14ej
 cUuLqB8JxL0vaxISxOPHumrS74nJBXZN95UdJHn7lFTQlqc+ko3+j105OirnaanKpONbT1a7lSJ
 gOmYWJcVPReujYX886kILmqNsOpeswG5gpxwSK4JZddfPFN09Y9oaSpsQ8jAicMAvfuK2LN3SYn
 MIL0UOarQKMr84oBryIk4vj0nBKyMOQhbHsiamhMwiz4yK2y+yliNvz5vur0Kj+FWzXklrNuseu
 w4cOquy9eSdnS0Gl5O+EikCZzIYXk23LEbxvY/+oDNGOKLaPvUSaHPmf/I2W6Vw9KWqZzLeGHc9
 2DSE9pj+jr70FSA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_050233_586884_CA145788 
X-CRM114-Status: UNSURE (   9.45  )
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
