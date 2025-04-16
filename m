Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A18FC369C2
	for <linux-phy@archiver.kernel.org>; Wed, 16 Apr 2025 12:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wkcA9kYwStFM14dzqgNOLJKhcAP5D6tO8xm3ubqVYJQ=; b=Y87Rlgn7thkCxU
	KD6QJal9/w6UZdsFScvw+6JEt8RHgTDHbZ+bfPnQru+c+YljQ2gH75UBI6fTSzulUPxz0c9lVr1ji
	sia1Yh0BScCvIWG34raIl4/cK97imMfE9aLOOh1qLmIjXjTwlz+4IplV0gRDTeClu7+oSiVdJ5za9
	ZS1OBqArjhojkQKtXMa6ROyKAj+xd3t5+dg02ZKrLZGbg8aOMG1lotgOQr1rD0Yv4IrXQpLduqBhJ
	ZNrg8fkk95p9aPz51eOPZeFTREZjv2r5SyuEWmLx+Hh0g5rU3YtoSuomxS3Nv3A7ZEKH1PCu8P41K
	Oqd2kdhs+EXN92Gi3Lpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u51lo-00000009Ubo-39nF;
	Wed, 16 Apr 2025 12:21:36 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u51VF-00000009Qvy-0pJ0
	for linux-phy@lists.infradead.org;
	Wed, 16 Apr 2025 12:04:30 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-22c33677183so5698305ad.2
        for <linux-phy@lists.infradead.org>; Wed, 16 Apr 2025 05:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744805068; x=1745409868; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9tGlDQ1IGUwDLO9hraMXZmL07bXao+CXFFnK+kzwkl4=;
        b=Ng1GE5vmBRGLGXW3v98Wjy6NkdehyWY6bobxPKR3i9UsiogtzWEzEQJehkSOBW8b3X
         yDGEGJgU6nRmP5mDotabBTnyDYCmvbqmcNEmH0Z5ZcRDNQwqcSFIJDOWZByM1T7sBruU
         0QAcvGJTyIu09+rXjMSpOetHLiT3ygB2b5l05rt0f9aIJZYDNfrx8Q8uWIIPWEGl89q6
         o+qls5lHwRmLcTE2AzDDnSjEeIEtUazBZ3eKG81+UGlEPEzkZvPalhjcE4UNXfMJOYJV
         znndAxFYYvpsbFHCv4ZhvYTvNlqDl9hIE8R9pWY4cA5GTvyFEBd1NXe2y42+UJJXV4nZ
         BXIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744805068; x=1745409868;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9tGlDQ1IGUwDLO9hraMXZmL07bXao+CXFFnK+kzwkl4=;
        b=sWbI9HWBXktDUYPGf67S3L8tMKYkkkHG6/pc/sWCFt+KO6/fMdkMEF+fdlZW9mQSAj
         HkZnd01RctCztfIJcFyHmy00RpTzavCeH9cR2/Ei3SGIoIZKVDIz1aiNPOgVpZ0PuCrp
         YXx5SfSpz02JlJhFpQCRWg8Gft7xOH51LVjqBGUKYR7siuFqITSVdirV+VHk6aGyJnef
         G09W/B6KP1mZKvHOqDD2+RDGLTtECziIEF5VlnOpl8c1semXG+r6G9JL2zpU9uOa1Ngb
         VwU3oMb+8XkZMdCMb4w373NL0TNr0BjG8pyLwLdxzysCAiYgXK6ScjKFF/hukRUfkUmJ
         4Wpg==
X-Forwarded-Encrypted: i=1; AJvYcCV0Yyi3ovmivVpZ2phPt4o53uaDOOCPDq+i0vPIiA8eAI10GXhUQhfahfNK4e6jx+wLrUWKnqYuAjk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwhyCqXODFh0KzQqFceO4Msr6tp2EHTTCXB+L8cMLvfanGr6BWn
	b+gw1HetsKoBbNn12FZ+4/8nb7cqFDYIXoikz8b1iLLVzgXXDwVc
X-Gm-Gg: ASbGncsbO6lZjMsVgbXNtkPVIRZDGhTP+UFmQPWgRZ6vqHtTbWhVcHAnizSOui+qVLf
	aYx3spyvY78lIbiOslsTCm+9V9YissAkL6Q9POIvAlBYusNCwvOEJvJy749ykZACl85acsJXYwx
	w7jJ1pEZUcCARVET2ZJvzppeXSCWjUoOLNcLU/b5XwV1DMuQF7zC/tgTJk5EvKN4/CGVJi4YGqq
	Mc29nV/pTB1eMmfojxwcF5rSHnThfvwjUe0jqZ5XbcUJcGVyw+hJRNYclm4RmLmjAqb0PTJ1uaY
	nQ0f0ZURuCspcCfhrgkLBG1iYzqi7E2shliu/dfpTfmz1dS+AA==
X-Google-Smtp-Source: AGHT+IGQweeqw93BBrEZ2xKPnpflNgKnyE2iuuUblGrDtL4/O2TrHxcy8ICju5cv/v4MTTf4qYa9rg==
X-Received: by 2002:a17:902:cece:b0:223:619e:71e9 with SMTP id d9443c01a7336-22c358c4130mr19704575ad.11.1744805067880;
        Wed, 16 Apr 2025 05:04:27 -0700 (PDT)
Received: from nuvole.. ([144.202.86.13])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c33febfb3sm12033385ad.259.2025.04.16.05.04.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 05:04:27 -0700 (PDT)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pengyu Luo <mitltlatltl@gmail.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] phy: qualcomm: phy-qcom-eusb2-repeater: rework reg override handler
Date: Wed, 16 Apr 2025 20:01:59 +0800
Message-ID: <20250416120201.244133-1-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_050429_254928_E3D4680B 
X-CRM114-Status: UNSURE (   6.18  )
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

In downstream tree, many registers need to be overrided, it varies
from devices and platforms, with these registers getting more, adding
a handler for this is helpful.

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
Changes in v2:
- Drop dts changes, backwards compatible now
- Changes for dt-bindings (Krzysztof)
- Drop sequence overrides to use single property (Dmitry)
- Link to v1: https://lore.kernel.org/linux-arm-msm/20250405174319.405975-1-mitltlatltl@gmail.com

---
Pengyu Luo (2):
  dt-bindings: phy: qcom,snps-eusb2-repeater: Add more tuning overrides
  phy: qualcomm: phy-qcom-eusb2-repeater: rework reg override handler

 .../phy/qcom,snps-eusb2-repeater.yaml         |  41 ++++++-
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 105 +++++++++++++++---
 2 files changed, 130 insertions(+), 16 deletions(-)
---
base-commit: afd30f00ef898643491ce0c0c2571b3498f1a61e

-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
