Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8826DCA1007
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 21:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3K5G7AaCuiMxlyODKDhxWyYqmRAjvEqxpLYXV+va7uM=; b=PdA+rKk1zfsv5W
	TkDIgXje86vnXnB3XUMgxF+YIToO3vjg7gk6+ImSt7gd//elBdrtvDT9QlLxqZursr0a9An33C4aK
	M7XzlMV21ycP6iMmHp0JOpMdZHvKgwQDph5cEv/3MCN72BmXoEgkni4vzabrkIWW3JJlDHMKEJ61a
	EUg9GitqVtVySGdoUvF03siEZSTPnl7Qcv1hQm75hmv2niCd/uf+pp3/B9WfrpLTCf4zUr4kO9jkb
	qY+Nka6tRRZQ4R/QrQLZArRoOhrmNPLmtnOnxkPOU0Ck4R8RPCPoUr7BmJfYFhupIocjGORNo+OBj
	LdjuKNWevv5D0sPNJZKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utYlp-00000002ABA-0bki;
	Tue, 02 Sep 2025 21:42:29 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utTaC-00000000sSj-3KxH
	for linux-phy@lists.infradead.org;
	Tue, 02 Sep 2025 16:10:10 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-45b84367affso30455865e9.3
        for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 09:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756829407; x=1757434207; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bfhmZPSi1KHWXKJTbzEPGUiLR9+Cog8BCQqxFPGA9f8=;
        b=oqBQGO+BBNqqq9+M6320a4U/VgEgHlUepUYwoznRdRN5afWkSJu62yz5SMeYYbL9gp
         XbK381K7kj2NSuaazloMRM/SfnAq8RLnUc3/Vtt5xHEhkrFNLg7WEZVj7CWZ8Qe4KFmY
         S9gyOBvR7Ys3J+hepmqnl6JWzjDUf4T5yXnykOjwHG67KeyvcOp9U5x1wYCNK4jST1xM
         R9LeLtfPnfOBNJBfCuKU5ohb33Jc7AXWoqjFT0KZyfYz3O/0/xv6qsOHXIn3fPIJQWBZ
         quE4nOFP/ctEAd7rz+VJVkMNJ0B2FGaIgF2XwtW2IHzasxdiOMR7OIuxt+1RST0Z9ZQD
         x12Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756829407; x=1757434207;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bfhmZPSi1KHWXKJTbzEPGUiLR9+Cog8BCQqxFPGA9f8=;
        b=tGDIn5xxHFhM0Mvn8gn5ulFCoOqg8DPAwS52t8gXz5EU2sNQ21oBl5PSMIeL4a8m/6
         Nao0Spk1W8FP3xMyS0efL9yDP4qY3chvYslH45vrQM6cn/WNVt5zFQBZ4ZFD0vsRoWdD
         g5JtE8voZ+MSTu5lCE+2d97HZ0oy5sxVsUomICH0lCm6qJrB6ggmx9H6RIqFFpYm8kG3
         JIdsCjlwigDZkc3gSAu+jjBG+gmh0WlM5d1E844Oq79G86p49zxPfpGZkM4FftiDuWj+
         Tq5VmipitbJy8OcQnXve9wyNs76VqPp7bt/BWObli785dBikJ4wGyAemzFrN3aYPiWqb
         veyg==
X-Forwarded-Encrypted: i=1; AJvYcCVMnol2adBmXL+PJU8fAwkIRAynFd4fw1cYXy74ecBRU3hCjsJE5BNMTUSIDrX1/VKavyyUNiJYV+U=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx91RzQaPXtalpHczIijBD025GjN/hj7tV0uLgEDn8oDWIV3jN8
	50oL7OFRWZTq9Yt2TSH5voxa3HbctYr1pL1AggtiUD0ojBdVuogLemBTPL6rSVZCuXI=
X-Gm-Gg: ASbGncu99LB+u25Ke3lKgS8YeBbrOW6nVLlgZCTmLNk/esFXcze4O3qLS6P6THuXXTg
	ts8jYlDsmo3hP0Z72otnqlySaHoAGcbDoZSU+sF+NcBOKgk5DimeKphcSlCDYSgijHd4WLcdPVH
	2RGuTiFslzpwrV+wLQmI9xTZzERFeCqwKP0L76zE+L3yBX4/ciUtrZ6ECDUfv0ExPBavX2k22fT
	Yy5XAmCuK1OJQzR8wxR4MBKkBV6MTBaDbFIZNM9B3q+6cflKPdT7T+yP0RRz0iUF7IBg7JY0M4p
	ODwKXGYxXGDBPWAUOlflnbQvAMBKKO2/VdIyBmVRHgGEluxSsWsP55hw1P/IWk9M7TgwgtzlTYp
	qFWCjVTK64GE0McPoX8TyfP/AApZTAQJ8etkvC+28BC7dAIgcmbpohw==
X-Google-Smtp-Source: AGHT+IGyVF7oEpXMquEUvaM+UpeKMTllrx2t6qEOJfRIe99zcju47Lbg52A1eC99wf5MacESo4LYUg==
X-Received: by 2002:a05:600c:154a:b0:45b:8a20:5437 with SMTP id 5b1f17b1804b1-45b95fd646bmr34034435e9.31.1756829407005;
        Tue, 02 Sep 2025 09:10:07 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b9a6ecfafsm29858595e9.21.2025.09.02.09.10.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 09:10:06 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 02 Sep 2025 18:10:05 +0200
Subject: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: do not
 reference whole usb-switch.yaml
MIME-Version: 1.0
Message-Id: <20250902-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-5b4a51c8c5a8@linaro.org>
X-B4-Tracking: v=1; b=H4sIANwWt2gC/x2NQQqDMBBFryKz7kCaJlJ7leJCk1FnoaYZrYLk7
 oasHg8e/18gFJkEPtUFkf4svC5Zno8K3NQtIyH77KCVtqpRGrc1sEOZ36dVOPCJvzngLr15+UK
 Ugzc3ofVD7U1j+s46yGshUq7L07dN6QY4qj7GeQAAAA==
X-Change-ID: 20250902-topic-sm8x50-fix-qmp-usb43dp-usb-switch-5df6d494ba5c
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1790;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=f0aScQ/J03XLZhKUQrnrs4HuyH7xtridjeGuO9Do+Fk=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBotxbdyYMqAfs8JqgNnyDZEviHhnQMD+Wp6Rh2YYKi
 Y7dimPqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaLcW3QAKCRB33NvayMhJ0R/nD/
 9V8ivt0sW9FlCcRXjqpYPaM5Gpt6cQXkgSVHSgAGLVjXCkyNCMac1qkhb0NbcxFopA4HLQFazMDNum
 OP+jYUdmi0xqgyCKVELcboDGB8QtPAXVpfzrBk6mAgmReJtIQwf7fAflwk9eLpKBz0fNKlv5HUnd4G
 CaxKP5T+cWFRGjaHVsJ3/00gWVaiPmeQFkCi2M5o1O+zZHBOHul+VELej+WZSFrm/NfAWcDnoUoFE/
 e3TYJY8ddMY6hJtpdCSdBxbVfFBWRwK8DDi89tQqAYJBX6WtKNsgJtwShnMgxxR1mv5QoLsZuBbRML
 eccsBbZEBQCd+Kxjj4mBQiE2skKcnotDtVSD3WbunVoV7hg9OjrGBfacsCRecbQDgoN4tOgerVkItw
 KMYPY8U3qaE00MXqO6/H8nXRDXdSyjCMapbpbfCS1rW78/jVqvbRNwoWQ+TK6amSqDMgUEP7o1NOMs
 w52lipoKuK+7NdhS3DuugIzhAHQVD09dAgUWJoW3VQ3ULxbV41eDGKEqFtFy4sh7fty5WSIxNiv9Vw
 ynGTZOQOcQmXHBNlArh9bkZHNz5c6AqzQcScJLjGOOMBwFe00TPz4kyZ6mNQV+QcZr0usUkBYge/C4
 DvQqapiH5EdUmhxb0TzOTEjZ5BSANqdwMVt6/vZddhDjom111mBiBDNzjlqA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_091008_841148_23260B65 
X-CRM114-Status: UNSURE (   8.39  )
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

Both bindings describe a different layout of the ports properties,
leading to errors when validating DT using this PHY bindings as
reported by Rob Herring.

Reported-by: Rob Herring <robh@kernel.org>
Closes: https://lore.kernel.org/all/175462129176.394940.16810637795278334342.robh@kernel.org/
Fixes: 3bad7fe22796 ("dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Reference usb-switch.yaml to allow mode-switch")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index c8bc512df08b5694c8599f475de78679a4438449..5005514d7c3a1e4a8893883497fd204bc04e12be 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -73,8 +73,11 @@ properties:
     description:
       See include/dt-bindings/phy/phy-qcom-qmp.h
 
-  mode-switch: true
-  orientation-switch: true
+  mode-switch:
+    $ref: /schemas/usb/usb-switch.yaml#properties/mode-switch
+
+  orientation-switch:
+    $ref: /schemas/usb/usb-switch.yaml#properties/orientation-switch
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
@@ -104,7 +107,6 @@ required:
   - "#phy-cells"
 
 allOf:
-  - $ref: /schemas/usb/usb-switch.yaml#
   - if:
       properties:
         compatible:

---
base-commit: 3db46a82d467bd23d9ebc473d872a865785299d8
change-id: 20250902-topic-sm8x50-fix-qmp-usb43dp-usb-switch-5df6d494ba5c

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
