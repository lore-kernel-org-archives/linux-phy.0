Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93ED4CCA471
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 08:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9fCtPcsWMmF9GNw2EMqzFp0sdlukfPLa+9KTcGlA+7I=; b=TyRDzoQ/bioeqs
	K9MFdZ2dmzlRvFTz5W99RSwLmBG3RaiM1jUnt5VkFrHw78IqCOPZvgnUOrsCxE4e8Ec2Pd56GXY6r
	Xvixhm4ZIi9KPsb4MHj2zN7bAdUwOBmOXMphIUDPWNrz6S+GYp4KCpWZlAd2xcHEM/+ltkl7/311t
	mUwHo67gRAVrY/OqbVp3FCkWZLJWcIRyIJ77IZeeZu5aFjk/Fiw8uL+VmsFzllJ4PtX77cLU8Qh3e
	Dgv4CyVnlefcyMs5vGzZt5mCAhYZMtznsL0HkNKsg9DOYpQrnLn8M0FtfmGyVADVVNBls9HDuuQWs
	aJMnDCYMq5Pw40U0bRMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5gu6-0000000HCxA-1N7i;
	Mon, 06 Oct 2025 08:49:10 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5gu3-0000000HCwr-3mJJ
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 08:49:09 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-46e4f2696bdso56683825e9.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 01:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759740546; x=1760345346; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YbAT6oaiZCHuQJnaizYq2lCpZbdpU8AnX6J6JAHyWdg=;
        b=ZR90EhhCDAECFeRUYpgQ1TI9eqqh9/DyR5EZ3I69UZeu0mQwT6wDAGhKL05Yuqsda9
         H8Ht9e8RF3n+RCbmTEdEiOajNyu39nm18VJGyv5Z1ltZWxzFYufWq2NkUEwdN7vq3rXS
         Tup6e8sHc8zvyZQ1/PQBZ6BXhp6cjXPvqFG0IkMwaN0mB8kaCechU52z16+oRAiprJW+
         zN+QFGhZbxQnF0L52NAqJ1bm1iLQWG009ZwKA1DXObHGMGVhQaW6evjYx9GsUy/CbI+8
         p7r9ac0QUj0gqy3Hf6aIr3+zKh/1hOLgK9N0JMxDe6clm7UMjU/lX6+V+YQM2eg3wW+P
         RLLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759740546; x=1760345346;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YbAT6oaiZCHuQJnaizYq2lCpZbdpU8AnX6J6JAHyWdg=;
        b=J6XRh76M93ejwrFgW0NJtcisl+J1UjRmxozIEafFgxWzQ2/3g99FSKSCTte9qD4KCQ
         3wFb3hR1wfys3eSGLMJhLY4UJwgFqzm1iC2PnIlDGccveWduahtHOPmL8LhbwZvSVlbF
         0IgiYa56AfXpUSwsJAyTyY5ZVdxFLJ6Fy5tpnqKvpqg2cJ7PXhcB+CDhc70d0SiI511S
         qEgqEo0roy3U6PNTGfcfrlaOEFyt9jeM9IXiyYbOi70f47TPi6xFnreCHwUPejlL8V5d
         BjArjatl4huPbkWr4ElGmreauCQps1qEHKHQ0UKUCDti61p7bqzUI3SaSlXVtQc4y+Jy
         imiA==
X-Forwarded-Encrypted: i=1; AJvYcCUnFLUw8MdyYI20sUldTMJEfzlvUK+Hkn41PqvKgNkupUYbz1/B9HPAz+/BNneMrP69+LXbJdlEsYs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy2z9icXaQe7ZsEnhG+NnVjmUqYFWJeOILJ+syDJzJ3hTOeO7dT
	cvLdWaG2s5GvLG5FTkpEjmBzjypnm6HMIb8Cuj/0BoYK/AeF6nvqBBx+LiJV3EtQ9yg=
X-Gm-Gg: ASbGncvquoqnDxSqSZLCQejhg0Sxiw6w3HZbnh38GQq9hBNw7/Q/4ZXq8SPPyAoRwpA
	qTtaIsF3ss/t4J7IUZeUhYwcBfQT0o9wwfT88G6PSTXevAVfAkNbh7sWYa9CPOHkAg9uZRt/LR7
	edF6sSWLd5+IMzEDcP3FPebx68dWv6xnj8wYpkY+LX9D+qhrtZCGIj/HVxX/FX1SDgye1JZleNN
	fYe34vZRj/5os7w//N728yI1l6kaXoZm9BmvgDgnvuRFGz0VXTRZMpq51FvmTIhUs7gUXjO1cwf
	6SKAYPdu+ovaCcPUdEiWro8Q5ztF5pTZnVG8HCYjhHNlCx3M/2wodpOsOis6EvmBSMGvwavPJqk
	YFhNSAxWxHbx4Zr9yhlNoN8s1wbTYX7W85Z1yOm5f9VbSti++kKTbWDwZEuQ2KBy6iEvjKB8Xl9
	A0IjERYw==
X-Google-Smtp-Source: AGHT+IFuemcdpK1hsaVH+01fuiZxwwbiWMYfsisLLKaFVUrVIL0g0fyyl8LiPZzw6aGmFC53x8tW4w==
X-Received: by 2002:a05:600c:138d:b0:45d:d1a3:ba6a with SMTP id 5b1f17b1804b1-46e7115c136mr68788275e9.33.1759740545841;
        Mon, 06 Oct 2025 01:49:05 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e675c67f7sm109777965e9.2.2025.10.06.01.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 01:49:05 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 06 Oct 2025 10:49:04 +0200
Subject: [PATCH v2] Revert "dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp:
 Reference usb-switch.yaml to allow mode-switch"
MIME-Version: 1.0
Message-Id: <20251006-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v2-1-3249e511013b@linaro.org>
X-B4-Tracking: v=1; b=H4sIAH+C42gC/5WNQQ6CMBBFr0K6dsyUUlJceQ/DAkqBSYRCBxFDu
 LuVG7j6eT8//+2CXSDH4pbsIriVmPwYIb0kwvbV2DmgJrJIMdVYKITFT2SBB7NphJY2mIcJXlx
 nqjkT+E2L7QGtyRzWulW5FPFtCi6uT9OjjNwTLz58TvEqf+3/jlWCBMxR56ZxhVbm/qSxCv7qQ
 yfK4zi+a4tU498AAAA=
X-Change-ID: 20250930-topic-sm8x50-fix-qmp-usb43dp-usb-switch-0c84e0b5f361
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2041;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=yNJrOtK/gIhrM0HawPnU/od6BicNtAz+e6fvmZWPgpY=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBo44KAHijtiuEihEpjhyr9YUZ5lAldZqTjXxuD5uTv
 M+hnVkGJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaOOCgAAKCRB33NvayMhJ0Rv1EA
 C0U8trYFQc8ruIQYSGm7VKuXzxsiTIvJl/ojYTO3Jbgwa2r2hdl3v9q5w8Wx7HAZsXV5CwaKbR8c0G
 c2uKXK2k89qsirYSsEpnGpq7Tg0NBfLvLjdKcEWVr1WbGJVYCJItWarEK3NwASeWzEnIgk+CTi2yj3
 hn0Ut751uon10HUAwISvPyorIAS+CcZADvdKfUyXxJQYfbxUw9J4BUKWMVuuYdIzsplEqH3Hk6SD9j
 nMd1Ru8T8JiGr0C/GIm+ovxN/+gznSc3nVJ/WwNR3M7BQm3F4yqQ+Isbq6WDZGPketmUUP9/tcYnUY
 3VLWNeHvYyYOm4l3BByNmb3aOC0sEWlNPVWCfpdgVf4kBE3gp++2mV0rM0ancqbUnHSZlcscY4oOwz
 b6oLEpuy7yYFNwtGYmmPm3YEaF3Y9nKOK+SyK6StLaraW52J0dB7ZfVtQyUeoxoN4DeaKXMXOaE1Sc
 dL5A1E0tzwP09eZ8MK3iDOengOeRL90RXjCXd75gA0NZ/TYlFJQhlWUVNhlzL+GYSKFMwZw/6/o230
 Vi2LPrr95STv3dP03eovQ7qoVYzTHedxHpAd4vXbrEhZrpO5jZB/m0LXZgos9NRsMJN5Msvm77bcj+
 bH4yhGcxq8KhBF45CRTc+R9K5C4ttJr48MuUjZptyJ9Jxnar2je+HvLq7Vng==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_014907_963768_3E14B16F 
X-CRM114-Status: UNSURE (   8.42  )
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

This reverts commit 3bad7fe22796a420c6e16b591c37ed1bd6cc2a30.

Referencing the usb-switch.yaml also imports the ports definition which
collides with the definition in the qcom,sc8280xp-qmp-usb43dp bindings
and also enforces ports as required which breaks DT bidnings check on
a lot of boards DT.

Until the granularity of the usb-switch.yaml bindings allows us to
only reference the mode-switch & orientation-switch, it's simpler to
revert the change and start again.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Instead of splitting or loosely referencing usb-switch, just revert and start again
- Link to v1: https://lore.kernel.org/r/20250930-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-060568de9538@linaro.org
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml     | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index c8bc512df08b5694c8599f475de78679a4438449..38ce04c35d945d0d8d319191c241920810ee9005 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -73,8 +73,10 @@ properties:
     description:
       See include/dt-bindings/phy/phy-qcom-qmp.h
 
-  mode-switch: true
-  orientation-switch: true
+  orientation-switch:
+    description:
+      Flag the PHY as possible handler of USB Type-C orientation switching
+    type: boolean
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
@@ -104,7 +106,6 @@ required:
   - "#phy-cells"
 
 allOf:
-  - $ref: /schemas/usb/usb-switch.yaml#
   - if:
       properties:
         compatible:

---
base-commit: 262858079afde6d367ce3db183c74d8a43a0e83f
change-id: 20250930-topic-sm8x50-fix-qmp-usb43dp-usb-switch-0c84e0b5f361

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
