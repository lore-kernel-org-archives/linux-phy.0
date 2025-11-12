Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8A18CD13DD
	for <linux-phy@archiver.kernel.org>; Wed, 12 Nov 2025 16:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ssse33bVqCzMPOR5GCIb5wm1J6RmGWN9t0xFea+qv9s=; b=VzpnrHAc+VI8V3
	u4UafI2fdqOEQ8MYc8xalu5T7UdDmLbWLACncGbQ5HV3xv8MoUTL4AHkUlaHFHZwAbMklcGen8Jfu
	VRwFbw3dLQ/HpOjKzUkBUT79Hd7WV5uCVSekDmKSotuCZAczr1TCcUv+IGUdbGFF6byNRkIhrh1fp
	Vh8JR6MG0uGy6YnO2FqVU9hjhYgV51l6N2acgMkV8uSkD25h6FcP+e7dz7p9XzVlXTIp/eqekBAaR
	RctskjP14JZZBsT1lZAqCdk2yC8FZqxNpuNCaXmCJjGiVS4Lzng3WKgagMIMYoA/N4Td2nmf1PDo7
	HL4eH8bxC0FvO7oKHPAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJDgl-00000009B4W-2UpH;
	Wed, 12 Nov 2025 16:27:19 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJDgi-00000009B2Y-2H0v
	for linux-phy@lists.infradead.org;
	Wed, 12 Nov 2025 16:27:17 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-475ca9237c2so6080995e9.3
        for <linux-phy@lists.infradead.org>; Wed, 12 Nov 2025 08:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762964834; x=1763569634; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YPkr/JoKjH8U6Lko6pTK2QTabDhqIIQDxw6EgSjYcZo=;
        b=xCNhwQjzhVPqpPSqIJozNnZV1SZG+qXZaFZ3mg6QrEDQIK5RL74QudQZtODgq+gTfM
         2yiCLJGENmT4/hldTyiN+9w7VIpg+jOs7yr00qdK1h5f3OWhLVjmTUFmR0E1wLTdr16Z
         BLiWliT+ME6cxllyyCVauDLK6xIERtKHDzRO7bI5BAOaCk3DROf/GLi80Jy2Zm7C0kfc
         oNgJZvbY5DVismYhHjrs4yUut6TndZNJH75eIlT6691m1noqs14oNPrnRjsQgNGutCH9
         kvfeDYIW/LwLiu5K2KSXORc7m0N7esMyZkaSXfa5W3/UO18TEV7C4DSGmHJVpRI/Ha16
         gxJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762964834; x=1763569634;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YPkr/JoKjH8U6Lko6pTK2QTabDhqIIQDxw6EgSjYcZo=;
        b=bPmoJ3+ufOPslfURfTJkAaHAinxAkH8oeMiahB/JFGIgBTMx9ptORtuQizX9jukXgn
         YGYNqjUjf42WV1BlcyPcpWwCNuoHMUue3d1QVYd8YgQHBFGaPT0Lhcw8ccJ6AwgnYRvv
         JrOaQ6535po4XIgab24grNM2U1wvoLtIEeE8lE+Dqu9cwmy5ufiBNNQgjXtHO7eIeWfr
         7rnJkhcg3hHyi00dmDTdHnSDBg8XXjYIWF3dAWdY0/dvv4XuCiKswKgqkoay2GuqyvaG
         /G+OVwtYaTlumYbE2Mlx0vb8H2FIQN8UAldQgpDKxC94YIzr+8JsqB9WM7hVWG63zdYF
         bfgw==
X-Gm-Message-State: AOJu0YwGjvSM7TlC6/b9XljgS2PiVZaIvmR3a/3IRayj3eEwd4wZtRLJ
	r/pKmt9tE8zjxKsIBnQKGtOmupW0YsYqnO7WqqorYo39aEo0spIFc5gWei7zebMrv/5zpGPDxds
	1uXbeYbA=
X-Gm-Gg: ASbGnctGeg6IPOA3ERT4RVfo2TaEU0CdWqQhvBuHV2h/KCpf1jb8cjWDbgQbOeWxWwT
	wvU2dVk0aXvJ+29/6V+PxZ4FKVOfUS0/+GOWu8hui1QJ0fvzQqs4luX3A3tos+zaEI1wpn3Lvjt
	E8QydvBEpkGZikHBQmT8IvjNU1Lr5IU/aic+xTeJni1DM9uFbc3lSVYCe7jtroxOs8jFcWqtand
	NHzN5Q6xYB2uYzTO7XD8xN98zospVz5lg15i5Dlg//RfgQR9uB5IEVLV65cjYXxQXlvhmBfNJYo
	1QqBEsac0jaj7/L3z/3SWMj9DLN0Gpan+i+xLFM43o9yRRX1lRYgF2absxqNEexijZ3TeV1Z2ad
	HqZGjFWuG8O1wbaOEYQVJ7GGuXaJUV4CJQcb0If0VZ2Dp1XaUSg5LBoZVGnv11GfLzDiGvuim3D
	tusZErMcyeLdT3RDx4s0FSCDPXaOIQRJc=
X-Google-Smtp-Source: AGHT+IGkEoN4sWg2lAUJ3rXUtrl89smNrKDWX680+800326hJYTJQMWhDrBhsVLjs3L/pc050EyNZw==
X-Received: by 2002:a05:600c:1c85:b0:477:76cb:4812 with SMTP id 5b1f17b1804b1-47787000e64mr38038745e9.0.1762964834332;
        Wed, 12 Nov 2025 08:27:14 -0800 (PST)
Received: from gpeter-l.roam.corp.google.com ([145.224.66.100])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47787e36ca3sm48534815e9.5.2025.11.12.08.27.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 08:27:13 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v5 0/2] Add new phy_notify_state() api
Date: Wed, 12 Nov 2025 16:27:05 +0000
Message-Id: <20251112-phy-notify-pmstate-v5-0-39df622d8fcb@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFm1FGkC/3XOQWrDMBAF0KsErSszM/JEdle9R8lCiSRb0FpGE
 qYm+O6RA20pSZd/4L8/V5FdCi6L18NVJLeEHOJUA78cxGU00+BksDULAmLQoOQ8rnKKJfhVzp+
 5mOKkBzob5o78kUUtzsn58HVH3081jyGXmNb7xoL7dedaBCACZOZGKUWoOklydsWlZkjB+zC9f
 YTJpNjENIgdWui7/O8vC0mQ/oLHHlrVI+oHQ/0aHT43VDXU2Rrugdla9WC0PwYi0lOjrYZGbXU
 H0FvkP8a2bTdj3YVgegEAAA==
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2163;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=2J28k+rkBGEIQnqpoey6EUz8XjM8ez1dZhEzYa6oxzE=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBpFLVcYFXUfJuYXtUM4uyqJbaJ6Y1c9sCsE32zd
 GbAifZjux+JAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaRS1XAAKCRDO6LjWAjRy
 uuElD/4upiReXgng0xFPts/n3ptS/LaaZKG8BuwXA9peTmNePtMCmrgipdYQQQsNQZT9JEnLwcE
 QeLVgaAbODCp1WU4xlw0FbDR8+OMJciud3OLA8iOEOJyFC2vulmkIsS2QIaQO55LJeRhV7L2Iuu
 qC0S6fV8h8R8NJhJS0eQmrvfOXcMt7X8QFWO83xULfVXJWokZws2c29b7EMmEVn1e5mXTXo8F/t
 HToMgLlEvniN5KzxOLHsP1JyOuO5Olv3CeN9T9aIsgu4g4MWOUNp9WcMiyctkWhteU+JCpU+7+1
 2hBbhq+w4MKQNZUwk+Zp29lg/GvHe3jKc8kBMigkZdMZj0PTC11GmRw32DUdefMIuQd009Cmq+C
 FmI11O9/5DbloYzPvg6YAqVY9a+161ADKITnyKyNG/gqk3fUvb1RMYXMcliZlmMi8Yk98/jlDzc
 YwhGGmuv7jM2/74e59posAroBT8heOInlLav7HBMLlOnBfB6FffTE58bhIxFbFu5ciQ+Iqutf6K
 KzVQoeGGKtmYv2cnxrTTBwgEMrqGpNnod3X+cN8WArmlhDOotvgoK8HP71X3l/l3SaXav6bvDus
 +SRPz7xb1rHLxLRZHelG9PmQrZwriY8z3QAQhfT5Z5M8StdtGAi9jmxfWYeappyFNvp7T2Hb3e0
 P1VM8WhxE15WVgg==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_082716_605056_9F06CE38 
X-CRM114-Status: GOOD (  11.08  )
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
Changes in v5:
- Fix typo phy_notify_phystate to phy_notify_state in phy.h (Russell)
- Link to v4: https://lore.kernel.org/r/20251112-phy-notify-pmstate-v4-0-717d78009d15@linaro.org

Changes in v4:
- Add missing 'used' word in commit description (Vinod)
- Fix 0-day compiler warning
- Link to v3: https://lore.kernel.org/r/20250813-phy-notify-pmstate-v3-0-3bda59055dd3@linaro.org

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

 drivers/phy/phy-core.c                | 25 ++++++++++++++++++++++
 drivers/phy/samsung/phy-gs101-ufs.c   | 28 ++++++++++++++++++++++++
 drivers/phy/samsung/phy-samsung-ufs.c | 40 +++++++++++++++++++++++++++++++++++
 drivers/phy/samsung/phy-samsung-ufs.h |  7 ++++++
 include/linux/phy/phy.h               | 19 +++++++++++++++++
 5 files changed, 119 insertions(+)
---
base-commit: b179ce312bafcb8c68dc718e015aee79b7939ff0
change-id: 20250703-phy-notify-pmstate-f02ba5582f65

Best regards,
-- 
Peter Griffin <peter.griffin@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
