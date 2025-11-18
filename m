Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37B39CEE348
	for <linux-phy@archiver.kernel.org>; Tue, 18 Nov 2025 18:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=77pvv7L9VF7ZtMEQuK7hEcObm1imE/6x5INvFduL/S4=; b=sPnLWp+Lhdsvms
	/TX29YkPmosaG6svwNnMQEYqSouvHo3A0K8MnrY/L50yTkNXWzyRAHhYzMlm9+zGA8IYyQlqMViCr
	94I4SkLRx+lB8wpCIxACxURUi9NsdvL9ea1ZKPeRlRm/VmcXTTES6FD0H8tadUqnsz61hJRqAzM3h
	b6CE17Illo/ffFdgBUY6Y7mEHfCcA2V7kI5I33Uk8FlACfbXnBfro+dddoYtPj8B6SO0pDtxzFPs0
	QMbnAgROelR6YksX5duzc57W5/6cDMxm0923IDUx24voNwZZqTkxFA7k2HTtvBeKEuz8SYCgcp1OJ
	GAgthX2gdjkoXzFAAwTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLQ7K-00000000uY0-11Et;
	Tue, 18 Nov 2025 18:07:50 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLQ7H-00000000uXa-2FjI
	for linux-phy@lists.infradead.org;
	Tue, 18 Nov 2025 18:07:48 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4779a637712so24009095e9.1
        for <linux-phy@lists.infradead.org>; Tue, 18 Nov 2025 10:07:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763489265; x=1764094065; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=R/M1YJyRKnlzVlZ9Q7GR17zCRQfIeFWmJQjOozU2zL4=;
        b=gWeg68ChnYd6q5WGM9XnYxapcYWA+HuHUhTq8NyATf2u7GD2/rY55/0kHsSXvD9uF2
         PtDOAixmkUuWxuI0HcPgLw7YiJgX+Sc1NNaDlRawqY9G1XGzgAqk5mj8/nwv5XgYpOPx
         eDiqKq/yUgnsPrsdGqrFFRb+fqhAmLB27jmt6FOetSBIXxJV4CpwsQi2DWDqYwHqXAEr
         U5MeNJxvrvvyWLWC4jr6Mt05nK9Pq6HpBe7zOr4UgEwXfJA3UBALYOKpgh+fhsCMo5Qw
         qMqcummmV6mEEWfmHTeiHDh2TfWwGQ9M0fN3pEfav2XinR99dJv6Sj97BDyfeVsvWJJg
         C71Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763489265; x=1764094065;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R/M1YJyRKnlzVlZ9Q7GR17zCRQfIeFWmJQjOozU2zL4=;
        b=CixPpBVyc7MyG25SPGUGNy6x/e/A7qLA9t0tS+LZLJNjtR/FWbFMzLL2o5fCa2tVw4
         iI1YCZFmFvxvSOndWou7mnCZ2JXR4hbf1jMbtpzMuzNRKiK8RkQmlsm/rxnu7hPM7uGn
         vBYgXoUpBl4whah9kPu/iPblAD9bwUW9JE+aC1NnEtOi9GHFFsIYQRngDseCEcN6aFwj
         PAelWf0CdeIXWh6QLCyamtuDXINhnHnVM0kV+IyMJekdRfrUG+OHk6ey9u00K4jUtJVf
         CP+wgW7ROpmrV7A0spwEhRCdRJtR0Rjds5YCKT6R+58ztBUV61feQyVbfB3DPTYyUlEO
         fPyg==
X-Forwarded-Encrypted: i=1; AJvYcCXRAABmeLRBIcKxWBBufV11tu08asynqbeXTUOWexTMVKa9b7nfTEi3YoXo8mrmLCF/y0BhmS/WNVM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx73v2yPR/fI9yeohiZeil8ZuVCu55k/IUHiopmrT+95FrbA4Y3
	7A0tYcyW+6FSihSjZtSY1TDuyBuhzzzBVcGfTVzSHUZgbWBacePSkfVI
X-Gm-Gg: ASbGncsGuXbaBULmBleRHLtyFHeZZOi5NONhkOxp7VGjdCWdbQ2WfWSj5XyUBiTykb1
	xJDsxEVufgUJ6jOqcc/JkWeThHI2kBs+z4UrG7v3UrXsnT3+bx2zw1Z8RkQ980BqLu1QlrE2/PU
	t6LgSxGYBTRL89SNtBjlEazF700dHYqT88PWrKSA6mrgxGusyS1C3tp1NYLpOJEZ+wGRwLEpcCZ
	9/uKfw+Wz1SI9JFInH1NOvIc6Z91PWgCyA9z+XT5moYzJ2R561h7CZwkyXfZ8uIxrTXXqGK/aMu
	sN1jOchx+AcIgEGl29EwxLPRg8AM1aAMczE9aWxguTOmEPhAKdnoQrwNKtAcVWfPqxnoWZCMNEN
	N4ytbCBkEu6f7MoPL/SMo28V2XNWzN4HID8iRUXGNpS6679zaf2gOwcut85HmFLkcg20epjQ7Qo
	2zUIR39cD4pg7rSyt1hJ4hjsXfcBkM+CNYZvQ=
X-Google-Smtp-Source: AGHT+IEh3sirWGP1AlsXkj1eQIWJOzKDxVDaDjqASMoIHo7Hap8krokdr+e8M1r5XqRdGdNKwyMiTQ==
X-Received: by 2002:a05:600c:a06:b0:477:7c7d:d9b7 with SMTP id 5b1f17b1804b1-4778fea6cebmr194830125e9.33.1763489265043;
        Tue, 18 Nov 2025 10:07:45 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:af61:3b49:841c:d9e5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f0b894sm34832452f8f.26.2025.11.18.10.07.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 10:07:44 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH] dt-bindings: phy: renesas,rzg3e-usb3-phy: Add RZ/V2H(P) and RZ/V2N support
Date: Tue, 18 Nov 2025 18:07:12 +0000
Message-ID: <20251118180712.4191384-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.51.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_100747_597961_BEE82456 
X-CRM114-Status: UNSURE (   9.65  )
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

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add compatibles for the USB3.0 PHY used in the RZ/V2H(P) and RZ/V2N SoCs.
These SoCs integrate the same USB3 PHY IP block as the RZ/G3E, so the
RZ/G3E compatible is used as a fallback for both.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml  | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml
index b86dc7a291a4..6d97e038a927 100644
--- a/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml
@@ -11,7 +11,14 @@ maintainers:
 
 properties:
   compatible:
-    const: renesas,r9a09g047-usb3-phy
+    oneOf:
+      - const: renesas,r9a09g047-usb3-phy # RZ/G3E
+
+      - items:
+          - enum:
+              - renesas,r9a09g056-usb3-phy # RZ/V2N
+              - renesas,r9a09g057-usb3-phy # RZ/V2H(P)
+          - const: renesas,r9a09g047-usb3-phy
 
   reg:
     maxItems: 1
-- 
2.51.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
