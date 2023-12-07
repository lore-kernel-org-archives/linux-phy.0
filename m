Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E362C4167B
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 12:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3ETjHMQme6Z7+g/R0RYgrS6tSzCrNy+FHjfbCNFwiCY=; b=M6qiWlNeRGgJtC
	7Mps9+L+BVUUuiB0gKNKwDrgaZMuj8U1HRGpK127J73xtIKJei3cp/ugpE5+yfUDgIhIJuDepjv2v
	m3D4PHSsyz4a3LKEu0e5AM9ezLqTRRCMhgt89nYGccVd/QFctS+/2SykS7iX+bOIyidPSBDk9hMUG
	tIxv6A3f0wQtJ+3eWvOz9XMiH4wSfUP74j0t1ydrzJGQdVfDB6X86sQyIWfyNTpmTqP0ZGXJ+Ifu4
	VKjjITlhMkDZhaSdgXsxoq2ad3Jl1oXMI5GH3Hs8GS12YyGMiM6Pt1irgC/REYiUvO6Y371yCefXZ
	+A30M5EoFCyd8myAG3xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDaG-00Cnak-38;
	Thu, 07 Dec 2023 12:34:28 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDaE-00CnZi-1z
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 12:34:28 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2c9f57d9952so8585171fa.3
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 04:34:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701952464; x=1702557264; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=idNFXUDeTCb9cuCDDJuvMArzVa/3N4PhXRLdWCeeLAQ=;
        b=VKlG39GSjUonQRbMEWKT5xL9yONcOadmPbD96mpcXRY5tTUzzwwgD5r3Hc/K/pFy3l
         0yncVjoyoew5YoxL2tx+Brxr3sNBIglS3uktYCdjrItS3CsfVLGK2EAzGVcmH+v5CGv0
         QbpyKUB2O9pg7ecMW9hY5LFhkhrqoGy0u5Pn7rVH5NsG9UUUVOVQujcL7uI5GFqrNSdL
         5Yr5+HedSLALq3/UcSmvjP/1q8t+L4e7onmhDeRIOEWu/OjcWossBGyhlqz3d9ec0SrB
         CnNG9stiyTWCmAkNILIhIXmHh1u1sef4WjDWjzFCvnJFGmaq4hc5+0ZBGA4rKbVWJTSY
         PwAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701952464; x=1702557264;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=idNFXUDeTCb9cuCDDJuvMArzVa/3N4PhXRLdWCeeLAQ=;
        b=V76hb1g/MlE42/dYA24tkUoebblKTKXMVbv9O4lpUSjURR0HZVdsl37sVT2cMlphvj
         PJ2VqhpDVwN9nM2ZiwPBnJ/M2+cI1+qD2LiBsAcLO112l/N6E7bqy2vcj81gGJWYYvej
         UlkrHG3PGba10czgSz7tizghzH4nOeUlASe32CiydpGHBlCFWSr1erzmz2Sm8m30Piwe
         5N7yW+TYyokmqSbugLOf7ec6ILD8tEJyr7ub8z1UOtEd9mPfiNMO7i0SvY7NvRKjmpxe
         6QLiRvyUIXuFMY7zZMyoHWQHtzvsjrCqgeTDU+MZJyrqhTXEGp+vcX85Hf528P8WqpCG
         4aEg==
X-Gm-Message-State: AOJu0YzACFiDPLjF1McD4lKT/C92+9ZUmh04ZZrDIunoyS/EhTadgQTN
	74X2gqed49rrn92PWt+C/Ugo2A==
X-Google-Smtp-Source: AGHT+IFw9+jhBJU5GR2px5plT3QUZ62XtMeTFEJiK9qC7iWCtK5RiA8HWa2W2HfALfRO0GvwU1z8bg==
X-Received: by 2002:ac2:4428:0:b0:50b:efd4:1475 with SMTP id w8-20020ac24428000000b0050befd41475mr1392716lfl.9.1701952464529;
        Thu, 07 Dec 2023 04:34:24 -0800 (PST)
Received: from [127.0.1.1] ([82.79.186.233])
        by smtp.gmail.com with ESMTPSA id c69-20020a509fcb000000b0054c86f882bcsm747331edf.22.2023.12.07.04.34.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 04:34:24 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v3 0/2] phy: qcom: qmp-usb: Add support for X1E80100 USB3
 PHY
Date: Thu, 07 Dec 2023 14:34:10 +0200
Message-Id: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v3-0-273814c300f8@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMK7cWUC/5WOQQ6CMBBFr0K6dkxnCgquvIdx0cIgTbDFVgjGc
 HcLO5cs31u8/78icrAcxSX7isCTjda7BOqQibrT7sFgm8SCJClEIhi6D7xG3df++YQxGgWjs6u
 ckUuJUkJ1VnVZUlEhtyJ1jI4MJmhXd6nkxr5Pcgjc2nkbvt0Tdza+ffhsPyZc7Z7JCUGCagvTE
 KmmMPm1t04Hf/ThIdb8RLuTlJKoFWNTlcUp57/ksiw/u1tzSzsBAAA=
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1458; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=uCgc7bBM7vglJNBa0/vPovuGzjNc308c2ZpWtT5/tX8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlcbvHE9IMZ3fwyYvfhXsLPGnaw5Cm10fetNyMn
 +z/C88MSreJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZXG7xwAKCRAbX0TJAJUV
 VlmaEADDe5i5PHYiZWvX5vSkL46jtrGdXj183eVPG/jscT/eq9bCp1+Xy8sGeMsjrZAxQge8tDJ
 ljQ8VE7I3PjguvYmkLhuM3d4ASL1kUxT7LEU05jM5RFFFcVflEgLbQMBDbiPHTEA4Hhwu/Ok0sL
 YxJ5m9Mzq86x6HSl15BgRVcHf15XiAmMmCJSCwfr2EkF4Ja/ISzJYprn5qnLrvYVAg/S1ssL55V
 XxHspXYn5J2AfdZwfiTF3x1xMTP0vGzONHTP3iy4wqPS/j1c7QE067x7FgCVQxsJXUK8JzI6hoM
 qBQlg5jHcLPW+W/5URC7tF9au8HDdtV1sWsDfv/u87aiZ2U5pF3fAQUDXjHNXItPred3tUA82MB
 EjDh+EDW9nXvhgpatZMw8g6T6PjITCg0KH9cO3yKGt0OuvMhUKNAsoJfc+jCGoFISTyjIoi2tPs
 +Exf7zKA0NKxLH1rDUkgcoCZ/Cz1AIxJsNsM7mhHdr8rwuOYyaja1n7jb/Ix0rJXw0EL8Gn2pPf
 AjfsMXmdVXVHGMqtyhmtAvElGzAt0DpJLpeP8Mrvn0etfgiSddu3lKu138t2wHnHT8YENdYqgqn
 EIvzQHwtQUmPzDxhdaGB9DL9vbNbQurk/PXU8bwnjy0yMKzcVRzGB2EQjF5yzzkgeWUyl59PIR3
 7gFqLqQKOQy+wSw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_043426_657619_0139DCB9 
X-CRM114-Status: UNSURE (   7.63  )
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

This patchset adds support for USB3 PHYs instances found on X1E80100.
It depends on the v7 register offsets added by the following patchset:

https://lore.kernel.org/all/20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-0-dfd1c375ef61@linaro.org/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v3:
- Added qmp_v7_usb3phy_regs_layout like Dmitry suggested
- Added Krzysztof's R-b tag to 1st patch 
- Added Dmitry's R-b tag to 2nd patch 
- Link to v2: https://lore.kernel.org/r/20231122-phy-qualcomm-usb3-uniphy-x1e80100-v2-0-1a3e1d98564e@linaro.org

Changes in v2:
- Added qmp_usb_offsets_v7, as Dmitry suggested
- Properly sorted the init tables, cfg struct and compatible entry, as
  suggested by Johan
- Add entries to allOf section in the schema, as suggested by Krzysztof
- Link to v1: https://lore.kernel.org/r/20231122-phy-qualcomm-usb3-uniphy-x1e80100-v1-0-3f5bd223d5b4@linaro.org

---
Abel Vesa (2):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add X1E80100 USB PHY binding
      phy: qcom-qmp-usb: Add Qualcomm X1E80100 USB3 PHY support

 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |   3 +
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 171 +++++++++++++++++++++
 2 files changed, 174 insertions(+)
---
base-commit: a2a7cea5da9065b9e34a8bf3275241c1129ebce0
change-id: 20231122-phy-qualcomm-usb3-uniphy-x1e80100-973c882591ef

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
