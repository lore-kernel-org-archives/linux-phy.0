Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE964C5321D
	for <linux-phy@archiver.kernel.org>; Fri, 23 Aug 2024 07:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+GeYRvScMByXTeBi8DAfa715nH2eAMiJQjxzdb+FQDw=; b=iVSycIwBbS/ODb
	+UH1TVlyNel+L6V1iSLtOkTffuJ4YiJqSLklDHHn4hr+HN8gbuBZJ8KW4/JYb/337gZw6BxIER0xO
	oC/kzKQrFx/Yb3DqWmhoNNziA15trhYb8WHBmaSNnMvDlx82PvRkhnlE3VkS7yx1XXND+YAgADnPV
	r3Hw9RGkVylERtywU7bctJbZMbJ1DqHAcjZPsPdJ0f08VRiAE1/6+gPz9IxzSTcqg78551AfTgpoJ
	IczrdMCgLah+a5+L31l4t8Wy1/cur5HVYRptt+eVnpqC5+qaas3WkVCVtY2jGVaSci+Pny9cpaI39
	xZrh4+u/JiWTZ7UJiztw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shOLY-0000000FZAX-1aHb;
	Fri, 23 Aug 2024 07:04:32 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shOLU-0000000FZ85-355O
	for linux-phy@lists.infradead.org;
	Fri, 23 Aug 2024 07:04:30 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a8682bb5e79so237020266b.2
        for <linux-phy@lists.infradead.org>; Fri, 23 Aug 2024 00:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724396666; x=1725001466; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tfbhFy6Ox66uvahUJonALEn87DK7o7CG+5xtuFswxJo=;
        b=sjX6VtUu2vdh8C25EVayVu7ljYaXuwb0e36xASL4d/zy5fM42UVvABYHFNYUvPBPEP
         b4hRnPMgbWMZohYvR7vctwSr+XyshNa98gV1phgXWdPXTAYHdILafVyEm+zb6jDEs87Q
         /WfNA1EhVUy7HacNoM3rfEwcVZ1pxkpizs0VykH/Gnk964MO/EFIpFYLBvVlLlzDMhzI
         eAAnXXQwv46SfD3P0qK4XrjQ273O6VbIUiW5raPhYaQUHvq28/4BOorfc+fVMtt1hjDQ
         TTZgnGN39y4NpAP29zsfiaopkzVq0qvPWJUpnceLThZKkmXAtbf819t+WTtD6hJZX5UX
         hheg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724396666; x=1725001466;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tfbhFy6Ox66uvahUJonALEn87DK7o7CG+5xtuFswxJo=;
        b=lWTJKx4NomIU/r9gXYqpT5YY4GLL0MFrWkfMOp5KsVHMB7PzEZEAIjWql5PPUI23oF
         vd26VXVoQL3ph2dB+KxqU1l+IgEF6B1v8bgj5jJitRK4Xa1QJqOGP3LA5Qv4mAh39ogV
         Su/Cb1JEBZHSeEMpKVG/6ButVqttFzcUxbovoCEFMm2TddupXpq3klwxRGWRsAJGkSRP
         0HwpdqCqf1gEX35tl1yVC1TyMPq441/ZA4V8NqMEvbvfO1p2eUvYiRGpvLrGGwB2Lbqa
         Vvpo9eaCyy1zKI3G1lhe8jGVH4ELu0ouHNYdolFczAqjO/l3lJwDoh5EZgc7cM3KReaJ
         DxVg==
X-Forwarded-Encrypted: i=1; AJvYcCU7JOVC8chEVbKaS0nsGzy75G+ngZViYZRrXOfUO6J9HbjQwmnLQYF26Vw2QQQCFYRWQVtxaKXSsik=@lists.infradead.org
X-Gm-Message-State: AOJu0YxCJMRkA3BTudmkEBP4l3rY50ssGbhAY8kHpsccxVG3SyfFnNMo
	eGOG3i1IiN5foRIPRj9TWw1hlGjtAoxyTw+tq5Gjy5IE86bFE5jjwd3fFOtZAPw=
X-Google-Smtp-Source: AGHT+IElMbJWNLHHHW/KhCmSKBNkv041eSXQbeeUNDsxk+eZV8ACwE7C1am0WTGxRumdS8jZtECbfg==
X-Received: by 2002:a17:907:d59a:b0:a86:91c3:9517 with SMTP id a640c23a62f3a-a86a52eb66bmr92555766b.35.1724396665642;
        Fri, 23 Aug 2024 00:04:25 -0700 (PDT)
Received: from [127.0.1.1] ([82.79.186.176])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f48ae0dsm214820766b.184.2024.08.23.00.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2024 00:04:25 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v3 0/2] phy: qcom: qmp-pcie: Add support for Gen4 4-lane
 mode for X1E80100
Date: Fri, 23 Aug 2024 10:04:14 +0300
Message-Id: <20240823-x1e80100-phy-add-gen4x4-v3-0-b7765631ca01@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAG40yGYC/4XNTQ6CMBCG4auQrh0z/dPqynsYF4UO0MQU0poGQ
 ri7hY1xo8v3S+aZhSWKnhK7VguLlH3yQyghDxVrehs6Au9KM4FCoZYcJk4GOSKM/QzWOegoqEl
 Ba41EqzXq+sTK9Rip9dMu3x+le59eQ5z3R5lv638zc0DQjVHcWTobjbenDzYOxyF2bEOz+EBG/
 IBEgRqpXK2EkEiXL2hd1zcueKS7CAEAAA==
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Johan Hovold <johan+linaro@kernel.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1508; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=jRHGY5HSVFsSc0uY4ShHAU9jyUHZAPRynwLu81wTfI4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmyDRv3soJLtO+to1Vi/NQ+VyaleD+TpvmEDHpG
 t40ToIBjuyJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZsg0bwAKCRAbX0TJAJUV
 VjBDD/9tCC91GzYpK3PNiRzU/xHsv3KPMM7FGmo31HX7Exg7gkknLgcNLz9EEN5GaXvh/pJR3rb
 l06/UZT91L5ZwGzMg/UYkCW2I8gDdiiynW5sbYpZQ1OvGXvKqc4wC3GSRizWLGSWvqYjsYeusJa
 +2FKh9NFPUZ1pP+4vkUfsgNlTS5AWkYsDc4Y0acg63L6mRDuTYwEXRd2RmyGiy5SzNLv3XmNd7F
 rMVk3JH2mPTfRwu5opSsYZ+oJ7/GF+U5Lkf0WiXGM8G2U+Gv/+88CPL2DLZDkl4j+mN+Dy1OY15
 4N0xY0CwcECNo7uyG31YyQYSZeQLE7vq2V2mn7zOWIBvYhbhPSIv7pD71pU21I72TxcHv9bxAQl
 RVngwfEGrvqhmFeYCNqeRDxXczXgjwAoddogu2tBijffIctOon2/LMMCjE5zdPaNHp22r8ih0TD
 rURPraRAqef5JIsE8jGOrXSbaTvXafh3s+q3gP3bScGEs4/Qf8JIpSu9SvjFUey/22l1wOUAlcL
 BKA2BNQAf2jyWZ/axEuiTqjmLsABJ8KkJ7QHjDN/HACIJ7K2dMcP2I7vNMDnbidCB60z9WcuiwM
 3CGYgaB1kjFQdxqCpcyY1JgRA3NK6Atc5t1yn9kOorkae0ZuAwQZDN0bEFp/RuhT4pF+VT2p1z/
 fq6mzcK8a0hJ/8A==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_000428_847622_E514D381 
X-CRM114-Status: UNSURE (   8.28  )
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
Changes in v3:
- Moved the x1e80100_qmp_gen4x4_pcie_serdes_4ln_tbl right after
  proper serdes table, like Johan suggested
- Picked Johan's R-b tags
- Link to v2: https://lore.kernel.org/r/20240821-x1e80100-phy-add-gen4x4-v2-0-c34db42230e9@linaro.org

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
