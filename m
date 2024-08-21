Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CCBDC52D7C
	for <linux-phy@archiver.kernel.org>; Wed, 21 Aug 2024 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fdegLfpy5tA+c482NFznovZwYRvMxZLjrohe9bQhXL0=; b=2YqxJGiZDJcJWT
	KhFTnbxDob2al5BzjK1c6nOJ7CorN4YoJISGfPcu7QwMigWAPKBfhYC/hPmGTjXjYK5tpcW6jqtBi
	0ySb8xzK92+qdfikFgpKRlq9rl5iW10NdZxPbCXwvK3prw3y6XSJhliOGSAn2hSZxSBW+WdwpxI57
	MdgU2iWNWL7LYFpklVGoJuiYVaNF6KpySeGXIbuiilE/7WOh3hCwt83yDKW/8k+vIXR6uSnXaFRVu
	VZVhFQDHWKoEg33Abw8OrC4Yq3u1Xiq3BpctCSGHXNXZYioyGdxxLCIWCQmvyIW8Y41/mSmtmUG7b
	XeCGGGNm02x8AnMKailg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sggth-000000087Ed-40xv;
	Wed, 21 Aug 2024 08:40:53 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sggsC-000000086uE-485l
	for linux-phy@lists.infradead.org;
	Wed, 21 Aug 2024 08:39:23 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-533488ffb03so564967e87.3
        for <linux-phy@lists.infradead.org>; Wed, 21 Aug 2024 01:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724229558; x=1724834358; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Me8QiB6xyaZlcbL2CCoVp22MMqKHiaQrWWtzVJ9JT8U=;
        b=WgLd2aP1EWbMn2O91vNglgyGPIzgnSZIuTjJIyK0k+81e/uRya/MGk+rtD+0wXhW1W
         yRDWGpCvklK3JSAQ7ae+UMZOANP+vbYXdVDDPNC7/0teHCgcsPBwz0ZBRtk0XjeWtiP2
         im4BPcPEAHcHg62GY4jlt9pA8P3iexJAOWzo+zXkSy8wYWs7RogMsXCgK4BEX92jlVV2
         0jrFcO+mnELySE2gTQ1njegvuIOaQ1CxA+1QyzGxJx8UFu8wiiSu4TtEDTIGKi3kpy6w
         0s1plzLKCD1B+CsvLCWGphZQYA1NxlsN69m+UoKveE124231gQ9yGre86tY3zb9hzmTA
         mTrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724229558; x=1724834358;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Me8QiB6xyaZlcbL2CCoVp22MMqKHiaQrWWtzVJ9JT8U=;
        b=h1FAkhT7kdJLMJ+njs4StZF8/WsLVGIxR5CbU9gLJbNH3Ruy+2FTPAeo3Ah8OXpJx5
         rIWPYUkOJ2uoLxZyH7nxyTIYFT0MdJu2lWzkfkRm00FSsH0quWxR/qiAoP0a34MvnCuM
         tJhxmTUswJPcNiGcMzndnypuyzsH4qc9PJHS701FvWtTrNEU7lh5W9Idowf6iA/lpqVx
         35g+FrfjfzckTmiSLZv5iP9DnAHuDt8KrjxxLQscci8vIaCMyT/xMUybVPfAulN9+IM1
         esrb29D1iq9fDkP7xTmBApJyPGVVVlCQZJ5SwAIHhg32UcUBK2tW85RgiUqSB22N3E75
         H23A==
X-Forwarded-Encrypted: i=1; AJvYcCUCKXAj13qvhFSIvgh4rBKMJGmidQe2dxoFin6ZRGGZFsvtYN0rR5rxwZ+AyEUdZE5MrdiFqqSU9R8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyNBxcjkHapjCngV0l68nBABFfJ7fORo7TXdJme3cobG5sEhTS4
	Nln4swZY3dO+VLxo+8A2P87Sx3l5No3fh0gbDb/GKR3z9FpuvpKJzMs6XXMts68=
X-Google-Smtp-Source: AGHT+IGj+hXZYBllOsX/kgCr//z3RQ8wmghc3L1/myZ0YR48vdXPJJn0GqAwPLWXTU3Dh0QVdCiOEg==
X-Received: by 2002:a2e:b8cb:0:b0:2f3:e2f0:f79 with SMTP id 38308e7fff4ca-2f3f893f8famr11704031fa.38.1724229558336;
        Wed, 21 Aug 2024 01:39:18 -0700 (PDT)
Received: from [127.0.1.1] ([82.79.186.176])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bebc0817a8sm7785019a12.84.2024.08.21.01.39.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2024 01:39:17 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v2 0/2] phy: qcom: qmp-pcie: Add support for Gen4 4-lane
 mode for X1E80100
Date: Wed, 21 Aug 2024 11:38:59 +0300
Message-Id: <20240821-x1e80100-phy-add-gen4x4-v2-0-c34db42230e9@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKOnxWYC/4WNQQqDMBBFryKz7pSJJm3oynsUF6kZdaAkkhRRx
 Ls39QJdvgf//R0yJ+EMj2qHxItkiaFAfamgn1wYGcUXhppqTaZRuCq2pIhwnjZ03uPIQa8aB2c
 bcsaQed2grOfEg6xn+dkVniR/YtrOo0X97P/mopDQ9FYr7/huDbVvCS7Fa0wjdMdxfAEN+0Oxv
 wAAAA==
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1250; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=9FVwu4pJOklFTnZIWwVB/0zj0Lw5GkvoPp1jvnSF/bw=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmxaeuAmocwiEhNdbEfhgTpBcxB8g7XdnzMbZqY
 BkoDb8QsNqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZsWnrgAKCRAbX0TJAJUV
 VuvOD/9k/CnVQSL37cU5HkAresKxzN2+M8H1F+kjdbyt3zJjgvQ1vHdq7RtWXnlsYrJk8Xggkdg
 AvVYThqKkOAPnOWT7E77CedOdHxs4PwOW2HHD6VDEfBX+6mB2IM+QnHC5X6lXy5dGZjC3wnS7yI
 +DK7EwBjc1wq4mEQ3QV0HEM+kclWvsx9HWJFzzvrAc80KAIiL2/rH1X8dQDpN5fqLCgqQDSRKvG
 aINa9OpAir9l8Wgpwu7r9xYcJtBYD+B7ENYZFXuIa0kKXyvvcUudXzbaVV62LLfKiRNcBVztsRl
 h5RP2wj8tq3axh6zhhPCqocKeNOmNS9kgtVW0d44eV8IQhxbnukwimPjLOjJz+tFlmRFCyiS7kt
 aCtsKU463SVKiaxAU8oKbJRAQ1G7rjTqyS9ansvGekgejEZeU3uUMBQK8951knMNwWUiISxvE3M
 CIs92q2AN80+ZMT51ck1BSFiNvpi8KjAQhIEfpEZq/GiyKVeoUofi/dJ+e1DxjkEnHrcHkZWVHk
 WGEaq/jLc25EjDLH5U+sL5rDVu3OX/3UTe4miflWXRHLaPVjF2hgFFPd+UzDUrJ76gGrHTkVa1D
 qA2LyUFJjV8vaafKn1v6pn9602zbOcKal236qY8XHEBLmkeqP7AQZ/B9wB0jb6y+1lOCfD41UZv
 xrU7PIFNHxJYMhw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_013921_069418_C9D89424 
X-CRM114-Status: UNSURE (   8.52  )
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

On all X Elite boards currently supported upstream, the NVMe sits
on the PCIe 6. Until now that has been configured in dual lane mode
only. The schematics reveal that the NVMe is actually using 4 lanes.
So add support for the 4-lane mode and document the compatible for it.

This patchset depends on:
https://lore.kernel.org/all/20240805-phy-qcom-qmp-pcie-write-all-tbls-second-port-v3-1-6967c6bf61d1@linaro.org/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v2:
- Re-worded the commit message following Johan's suggestions.
- Picked up Krzysztof's R-b tag for the bindings patch
- Link to v1: https://lore.kernel.org/r/20240531-x1e80100-phy-add-gen4x4-v1-0-5c841dae7850@linaro.org

---
Abel Vesa (2):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100 QMP PCIe PHY Gen4 x4
      phy: qcom: qmp-pcie: Add Gen4 4-lanes mode for X1E80100

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  3 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 42 ++++++++++++++++++++++
 2 files changed, 45 insertions(+)
---
base-commit: 81528d2de965dafd6911a0f9a975fc30b25e7080
change-id: 20240531-x1e80100-phy-add-gen4x4-fa830a5505b6

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
