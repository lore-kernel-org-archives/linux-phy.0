Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ADE3CAC594
	for <linux-phy@archiver.kernel.org>; Sun, 14 Sep 2025 14:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cJcwPHax2bn+y05CW+bxuB8r9AyWioOGhnwwkdAy7TU=; b=f043ilv/B3fTDN
	LEJi0D7jOgB7jUYVKoCd3QbZ1bRjyyFM/50u/pBSu1mGgpSRITIxsy4VsgXVwJiNtsqUQAf1UNI6m
	UV8msjk3CGa9MRghwmo+8Guop7vP39qfuvaB8nH1leVpgnK2qiOq2puQwtlYTd4SOqiVIkfe527gb
	ECzvRjq9A5sXnlsOnP83BeCg2O4z+DL7tsxOHpK9mfI/E/CDfxJgWlCfnxHejOoBCTKGMljgvac/3
	c2XtPMDfIIh8Wy4iBR2b1bfWy9CSyiRQ+zNQ30luz+SxV2fNlctAS4GzdaZQjf+BBi6jxQz/zpkXH
	2DP9lCGS3eoNYHafR5cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uxnYK-00000001TiW-3pEk;
	Sun, 14 Sep 2025 14:18:04 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uxnYG-00000001TcN-1a5J
	for linux-phy@lists.infradead.org;
	Sun, 14 Sep 2025 14:18:01 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3dae49b1293so1867326f8f.1
        for <linux-phy@lists.infradead.org>; Sun, 14 Sep 2025 07:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757859478; x=1758464278; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2UA8yGhG9kMHYtx0Te9toutlRddNLKPlgFwt+Jj5ZBw=;
        b=b9n79imnUWHsepb8n+h1PUd/52syDAP6j9CuO07Q1zZnVC/+1VFNW4Kl4T0zzwwCDD
         AntSR1Tqfrxbq3cJ1HihuzcT954s+VZrPxHStmm8+w4ePbB6se7j+3PM+ZVJQiiF3kLG
         hHM7MIwFAVcetOdhsaQc7NzPS8NKJ/bFmU+/HFr/aCobfzFjpEiFvE7C+ug3i0vL6r4/
         V4vPj0a4xeCyukeBQXidYxRCLUPCEwobviDJTD6HuimPiFdYyu7fdlg8gZwIXwiiq3Fz
         VKJP0M7VOUI4XpWW+xvqO4Gi2ycJO0k7yKNu65MWTyWpTjrdetidtr9VV+bPCgtl9Si3
         nM9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757859478; x=1758464278;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2UA8yGhG9kMHYtx0Te9toutlRddNLKPlgFwt+Jj5ZBw=;
        b=svtuKUlwUTWdjvS5BvF5cul7Y1sh3fl+Fq6hI1tNuoR5R1gW3AF32zXXeS5A37wWei
         iFv9FMze1Sh3TZLhO+243zS7i0coqHsXIMd+o/MZL37ioZY+Wm3522zteiXkGagQ94ry
         xV0zFGkxMGUUyTGfUINW0FfvZqxabg854xugQ/lLp/zp2S5gCZTZpXX01wSrS28cv/gQ
         2V+nMaxOYispwpHalevyX87zzPrMZskf/I0tBPBBWf9ZLVd/agi51VXof4Q1TJ2nbMWS
         rgIphnB9Clr45X15Oa6bZPs6CzjQ7l+GZ1jQbSZui/SJaeUPLU4/PwbSeAhymAFRkxsP
         NUTw==
X-Forwarded-Encrypted: i=1; AJvYcCUvJb7URsdZwHIuC3XFKxr9UE6PE5UIwfhmQpfUIetrMpjX17hMofq5sTlUs4/MNg/q/d3AX/8jGvA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxFDwm+l97AVIEVnBJPA4M6KcDLdIb8ADcZ128mGl4B5+sHKVus
	BdyNFByw4bezAPR2ZIMzEao73+V3IrvABc7mlfjoWGjF6VW2KTNked9T
X-Gm-Gg: ASbGncuCnigt8pxNsqbhZQA179rmva5cVWiPYH+2z+drzpWkXNTlnl8STVy88SXA6VS
	JJhGBQlQbk0JlvebLAzagwq3yPFRqhmv3CrB99FUxBlpu452WLASbQu6PUOyckeK32XcyP7uwPb
	DpqB5hHQcVuSMPiM41XDbkbdv5MoygwCjrT+zGsMo6E8SH+jPj+YrdiVPNUiG1isFBLfRqU8JUB
	9ZCs9wtot8iuZ0TONeEXlnRfwFHlIuuP/9hitctwvhhzsfmjkSOa2u7VehoHTW/aaQjWiSyfjR7
	dy/K1CNx9hFfc83jU3OvvMqDyAf1Dgq+gW9Em65gTxx+R2Af04Avx4M39L7g1vPvixM+P2s2o5k
	2aITCfleuw2lMPNP+U2NXLlbnfcZGv2YbQAbDbDMMKWEU6aiOyKNaY+AYsjvI/qHBVWeAs4gbgQ
	==
X-Google-Smtp-Source: AGHT+IEVZ6Z6kRbK2/B6B8AOG5votgND2aiK+Fq2TrFsSb/gyiSqAj2GfqraBbQ0O5p8f224y8alHw==
X-Received: by 2002:a05:6000:420a:b0:3e7:5f26:f1f0 with SMTP id ffacd0b85a97d-3e765a13179mr8756668f8f.40.1757859478364;
        Sun, 14 Sep 2025 07:17:58 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e813eb46f3sm7319270f8f.23.2025.09.14.07.17.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 07:17:57 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] dt-bindings: usb: samsung,exynos-dwc3 add exynos8890 compatible
Date: Sun, 14 Sep 2025 17:17:43 +0300
Message-ID: <20250914141745.2627756-3-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914141745.2627756-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250914141745.2627756-1-ivo.ivanov.ivanov1@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250914_071800_444547_B2ADF302 
X-CRM114-Status: UNSURE (   8.91  )
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

Add a compatible for the exynos8890-dwusb3 node. It features the same
clocks and regulators as exynos7, so reuse its compatible.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml b/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml
index 6d39e5066..6ecbf53d8 100644
--- a/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml
@@ -21,6 +21,9 @@ properties:
           - samsung,exynos7870-dwusb3
           - samsung,exynos850-dwusb3
           - samsung,exynosautov920-dwusb3
+      - items:
+          - const: samsung,exynos8890-dwusb3
+          - const: samsung,exynos7-dwusb3
       - items:
           - const: samsung,exynos990-dwusb3
           - const: samsung,exynos850-dwusb3
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
