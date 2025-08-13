Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8FA9CA0EE0
	for <linux-phy@archiver.kernel.org>; Wed, 13 Aug 2025 15:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v4SrDgH14UmXyoBnb2VF6sxXqYWdmpPoYL5ZulhszUc=; b=L/hf64fNkVSl9j
	/JforPnOQ+hYMHojNLkNpabmqJE5J8eoSgrGEffjlkOr6nkBNllRNk4EIbZtO7v27qdQWCOEMqiEG
	32H/0a8qiNfPzB7ZOFLWwjeMllgOxqv2EMZV3coabMebvn53+k0AH+mHaFg26BA8pNANh7HXKp1IL
	nvdq4ag4pzT2Qqa0M23WvmKVfcYjgE0gFnqA7HZm44TynXB/UXDmKSYiYnxbVjIXI5XdU5GEWuB0P
	J0RlPsOeMha22oj9+043XoW9Wtjtbw1zUhI3ueAWMQipWdTMiy2Wq+Y2lidRJm0P66JqvLKaQtAs6
	nvCqEhsiHxQHbh8slucw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umDWI-0000000ECyt-1FKK;
	Wed, 13 Aug 2025 15:36:06 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCz2-0000000E73u-35Gk
	for linux-phy@lists.infradead.org;
	Wed, 13 Aug 2025 15:01:46 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-3b783ea502eso742457f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 13 Aug 2025 08:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755097303; x=1755702103; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+ZjYg8bYZKeQRQQcTg3Cp0VfZeqh6q0mPFPEWR4Ir4Y=;
        b=ypmvMJMgaNBIoGARTxJ+xVJ66vvgfTpl01c7ZxkBRyqYUdU1Iy3sRgNIQtK6aZUz8A
         SB6ui3zVVz6T63U/N59lz7Wpq7IhQ6ryUsxMBYDEi7zHG5TSPZcv6Gz3J6l7kBoI2Ol0
         CeOnotbWdlfOicEts4cwBS2oEnWepuC62CKe/nl52e7s3ofAiqSknnfRoIfctnjp++jO
         ESwucGna5Kub7qzES0O+goxV3iDS7UL8s3vO5Ng6Teabful1iYm/I0kSFcBXwcOlGsOr
         hlFoX2xdZbM3hzYw/s6RSCG+XnKa42CNyJwwgnrH52ktu4RR2+jA3+kcpKFhH4a+5KHw
         rYcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755097303; x=1755702103;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+ZjYg8bYZKeQRQQcTg3Cp0VfZeqh6q0mPFPEWR4Ir4Y=;
        b=LjhP2ng1EzzioEaUMZsL78zQ8WRc9N/CddNAQWYJ5mHoEMg8E6066VpI870d5jgMSe
         cUUHkVSXmopUu9mY4Ou8by8zBOnZC2jyLeISZ2dyK2Yv5ptW3X/Q1jW74LXmSyeMD+80
         O7cBsKe1ZRlPBm0g0VfYarDUS2xGT2IQUKxXyW2zDPcMjmEFAWIKzvVCHpF3szlBQ6uo
         RLgjPAQVdbd2P0Gt3AdgdhQeLczdiNvXhKR7uVOvns2UHmzYG2cGrZERwULsISd1aH6X
         qN2+usFK/JsUEXop+njoRcw0iicHjYejzJPIkvCy83zrqS45lEEAlLZyXhF+00dVC3l3
         Ol5A==
X-Gm-Message-State: AOJu0Ywdhi+c/puNO4sXPWeYqt7d8CVNBVMJmCv5DNVXx9lm/DxM6mtM
	koK6+ympT5iCWjxxWrbiUZdIY7/oS+p5U3h0eEuJGgR5dbKespEBCXjZ5rUS5SHnUeo=
X-Gm-Gg: ASbGnctfjl6nLPuCbyk8IBn9Z+l99H8RzzNsWkrLcbkp9FaaJgFxHPVUOLQghUoTVzQ
	5OEuEBZU4ELTFjNR5lUK7ZpVDi4fOgJrSlvB2ONMG3UNNT2DUMM6VxxnUO+uA1Jg6tXf/usD8ZL
	rseiXPTWynjwBUz9xpuuGZooIg1nulMzdHfpsA3LOosXphY+IQBBiX90+duQewzS7UIzM3t0LnZ
	rGXpvwiFTFjPXeHhurzS/t0yWT32qv1fry6IECH1pMJAuSZ5zpvcgN0Kwe67ySxuWw0BAFlT57z
	1p12pKKZQHDJTgGE3lo6rnnkAEyunPNJdFQATQlH2CGb7kO8Dn3EJa+WyQjMSPtvdAdyXDLgux0
	0t3eb2MKipFo1y9K5TKj6SiYAUgt1xgQr2qHD8wcl2wL1BZ373vUs
X-Google-Smtp-Source: AGHT+IHGvynWNGnvSA7OYlBBf/7gl/Nh7E2z9kJEbRhnGw3Vbg8mnkSNWKEci8XTra92+d3/1Aer7w==
X-Received: by 2002:a5d:64e8:0:b0:3b8:de54:6e64 with SMTP id ffacd0b85a97d-3b918cf9b79mr2657354f8f.26.1755097302446;
        Wed, 13 Aug 2025 08:01:42 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([145.224.66.191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c4533f1sm48402964f8f.42.2025.08.13.08.01.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 08:01:41 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v3 0/2] Add new phy_notify_state() api
Date: Wed, 13 Aug 2025 16:00:45 +0100
Message-Id: <20250813-phy-notify-pmstate-v3-0-3bda59055dd3@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJ2onGgC/3WOzQqDMBCEX0Vy7spmY/zpqe9RerA20YU2kSRIR
 Xz3qtBDDz1+A/PNLCKawCaKc7aIYCaO7N0G6pSJbmhdb4AfGwtC0lihgnGYwfnEdobxFVObDFi
 ke6t1TbbUYiuOwVh+H9LrbeOBY/JhPjYmuae7rpCIRCi11rlSiqSqgWA0yYS8D2wtu8uTXRt87
 kMvdtFE3/LfLxMBgu1k2WChGimrH8e6rh8u7y8B8gAAAA==
X-Change-ID: 20250703-phy-notify-pmstate-f02ba5582f65
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 kernel-team@android.com, William Mcvicker <willmcvicker@google.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, neil.armstrong@linaro.org, 
 Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1778;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=W5C4Jb/87TEkHjxZzTAhHGOUm7nNwtwZIRnVcZUesz4=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBonKjT7hPpRY5qXZZedoet2Il5XVhKZC/pOtbKi
 +0CtwW2VqqJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaJyo0wAKCRDO6LjWAjRy
 ut5TD/0TOzju4DzjH2y3pvzRzJijBdv5apB8VHPYifqqj7MLn86Izngf41KZwGwKbazWnZUQsbO
 1EnJFS0eECeObLYmtsuyAvCeTZpzp76buX55s0arQgnrFia742gUzSFLTMckgDZ2kQe7ZfdcB/7
 mVi9suq05k1eFJPKUQJoYbj2L5i7akr6TBQIeZ1XqJnp2OOFr009CI7pRF35hRcQrx4x3TmG5+z
 d4Qwz92t5VIRUB5dJqSJjplMQOthKYpdfc0SdwnGWgJtRtTDvyQdxUprh1rlWzdtbZPhnkFt4pW
 Dd00kxzySCvu8neFuSdVAsC0tSfQXN/eQrTToqzxuWtv8ZCt7zehCBKZbuQOZHMtvYHR3EqmSYZ
 oKn4GhUnCWUWXw/TZ9OAXM1VppLz+XqjeTgHaL/Bj7ewnO1jEe0UaTpa6I9KRHwXjHpiLmqBAG3
 5Bt0FU6QTDoPKejfGLE0nUgNb+5glAK/GASaA/lnyoHYz0fYWIa297yHH08FwXrzf8F7fGcMiui
 jGATUZDHuI6qi2yQ2bgjT7f0OvjDDNWnFEXKjkZfs7uvy2m3N2g6lkmntTC9weJ0WGnCJrtgrRA
 dTbHzxY0pC+tAMc8nkWDbxryoEHc7AqGCwt8o1NUMY4ZPoEquzQHAsq1vHQTuwQXSdm6p79g2ed
 rioz0wrkgrHVGQQ==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_080144_784314_050C0249 
X-CRM114-Status: GOOD (  11.24  )
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

This series adds a new phy_notify_state() API to the phy subsystem. It is
designed to be used when some specific runtime configuration parameters
need to be changed when transitioning to the desired state which can't be
handled by phy_calibrate()or phy_power_{on|off}().

The first user of the new API is phy-samsung-ufs and phy-gs101-ufs which
need to issue some register writes when entering and exiting the hibern8
link state.

A separate patch will be sent for ufs-exynos driver to make use of this new
API in the hibern8 callbacks.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
Changes in v3:
- Rename API to phy_notify_state(). (Mani/Neil)
- Remove inline kerneldoc comment (Mani)
- s/phy/PHY (Mani)
- peripheral specific enums in phy.h (Vinod)

- Link to v2: https://lore.kernel.org/r/20250703-phy-notify-pmstate-v2-0-fc1690439117@linaro.org

Changes in v2:
- Add new phy_notify_pmstate API() instead of using phy_set_mode() (Vinod)
- Link to v1: https://lore.kernel.org/r/20241002201555.3332138-1-peter.griffin@linaro.org

---
Peter Griffin (2):
      phy: add new phy_notify_state() api
      phy: samsung: gs101-ufs: Add .notify_phystate() & hibern8 enter/exit values

 drivers/phy/phy-core.c                | 25 +++++++++++++++++++++++
 drivers/phy/samsung/phy-gs101-ufs.c   | 28 ++++++++++++++++++++++++++
 drivers/phy/samsung/phy-samsung-ufs.c | 38 +++++++++++++++++++++++++++++++++++
 drivers/phy/samsung/phy-samsung-ufs.h |  7 +++++++
 include/linux/phy/phy.h               | 19 ++++++++++++++++++
 5 files changed, 117 insertions(+)
---
base-commit: 43c3c17f0c805882d1b48818b1085747a68c80ec
change-id: 20250703-phy-notify-pmstate-f02ba5582f65

Best regards,
-- 
Peter Griffin <peter.griffin@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
