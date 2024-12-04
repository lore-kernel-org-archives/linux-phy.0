Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA2B7E7716B
	for <linux-phy@archiver.kernel.org>; Wed,  4 Dec 2024 10:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lSfZUTpqqnemdHPPObXAor2JQhrVfZXgmGqjCeqXvqg=; b=JozwiMlxXdGJjs
	WDojG4b0jUM14iFJKdkwqArxqzL6iwM/emKm6K6K0QQFQlij+Zh/KQiv7uQiaFIB7GzQeT2/Rvdqf
	7E7bAwKuvTaPd1T/Sa+ITejZBORCbbmM1CW2OhHI74eYEq5CPuqw67lLlWjuZ0U8AAOFHZN7Z+vzF
	+n9y02laWBaKt5xQgACFHMs3/FwlvlrvFI8buWc+mz5V+eAympaU/kh94afzZVwTQN0I7d8Y2lwTw
	Wjzb29Blrj80xePZTqjJQ00dwLfwstGEdj0WNzhssIL9CtrMzp3QmS/itPiBhMJ7+rDbW+zxqSQd9
	WSkkaHkacjsT3jopjyZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tImuB-0000000CGJ8-09uB;
	Wed, 04 Dec 2024 10:46:51 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tImib-0000000CDm0-2eNm
	for linux-phy@lists.infradead.org;
	Wed, 04 Dec 2024 10:34:55 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-434a852bb6eso60635825e9.3
        for <linux-phy@lists.infradead.org>; Wed, 04 Dec 2024 02:34:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733308491; x=1733913291; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uO3BvUgmsprpv1MY1OmfchYOeLaMigTJVr7dgM0b+Cc=;
        b=rkOe9zhXtuPBZ1XlJGXWBhNosOyiSg28W8YPzq6KFToQ8ZncFuGUZNVv2RAg4q52W+
         Is6pTfrSuHyjl3VSVvoSgmo0YBp4qTwGUVXT32zO+QeOv1X2mB9r2PHSR9xhp5abFFgO
         0nPa8XRXtvU5ABGL4hfSgdrfVv9Hck8UdT71KDGLmCxLMISuKCJPt4mteChR+EV0bZkf
         4qnGhVwOU4wMvBFQO/4LjKPWpnJjqLAk4yWLDNW/s3YGr6edqaXgLTNoU5Lpcaq5Luiu
         TJ/dUCRL58/4D4r7XG7h/mTqtwqrvGM2N8TOv7g5QlgwTjvCeXRDNG7XQzJJXI9Mb4Oa
         8BDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733308491; x=1733913291;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uO3BvUgmsprpv1MY1OmfchYOeLaMigTJVr7dgM0b+Cc=;
        b=MS6xFjprcOX6KVTSg9sjaTU2GHIE9rzAcJOQBy4NDEgR7jgrTZ5fDD+ce6K+au3oyQ
         ptgdT78TOx6rGs8e+YkvZPD7l+4bu3w0sDZS2RdWaWxvEhftOFokCvRPZ1pChIKf5uPt
         yaVUeaFL0HjaWbU+kfbf8G0ILnskw3c8z6n8Q3JH5vQGGfjTCbNDDTJJ4ecTU3TUq13M
         Z0nKUGmRzFVhgaKfdCXvafFqM5lV19efPX4Ej4JPors6qbNI+pc/ElMf0gyOTnViK4UF
         qvInWb9CPzzGT74kMMKsRYL9k0PNUhxbR8nrXwEyacoN/yViGlaY7Gxqna9q/5WLaOYW
         1eSg==
X-Forwarded-Encrypted: i=1; AJvYcCU/6CXSWOxDu6K96KHj7zsRet22rsaLargs6xBmmiZIEwE9rJnChikAEk/MqT2u11aJaoUZpo+BekY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwmK+hJTxYVhvAqB3gwZjLzE2KZVz8WQplLdK7pva0oJ2AtWLYr
	UMsXZ5Pv0lo/9JZE7FH2FwcUtLh7ye6x4pPFa7H6W0p2hiRHP4q7skzXDphjF70=
X-Gm-Gg: ASbGncvDmJ/CMVqCvU4AQbws2ccZBUIzsXNVlbDy+Ml8RWUAh9L7IC/kUt+kl32YiYl
	tRB+iitRnYPaphcGRJValeOzgWFw3vEcRZxunT4Gb1IhRKoSOcPA6EQsDIQ/8RfdDar3QftjEm8
	Ji/IegYtbG+qOpW/WDdke+9Ceinb9yHScUydhGsr6Q/v3BaGS/YnzetcvUoct+Tg//CmpvrFRKm
	OU1ZbEAi+Ztcu43W4LndkIBjpr0TR2G39xkH2UlgH/tYSjLcFGr3P4z9rya6C0+HUiahok=
X-Google-Smtp-Source: AGHT+IGCG9hkg/1olMRRgCOtkZhmDQFMey8RvFnraLO4O8jzTjXEXdbntz2PRq+8ysC4kvSSIQEXFA==
X-Received: by 2002:a05:600c:138a:b0:431:52da:9d67 with SMTP id 5b1f17b1804b1-434d09b1831mr58071775e9.3.1733308491571;
        Wed, 04 Dec 2024 02:34:51 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d52c0bc7sm19667825e9.35.2024.12.04.02.34.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 02:34:51 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 04 Dec 2024 11:34:50 +0100
Subject: [PATCH] dt-bindings: phy: qcom,qmp-pcie: document the SM8350 two
 lanes PCIe PHY
MIME-Version: 1.0
Message-Id: <20241204-topic-misc-sm8350-pcie-bindings-fix-v1-1-e8eaff1699d7@linaro.org>
X-B4-Tracking: v=1; b=H4sIAEkwUGcC/x2NwQqDMBAFf0X23IUkpij9ldKDJhv7DsaQLSKI/
 27oceYwc5JKhSi9upOq7FBsuYF9dBS+U16EERuTM85bZzz/toLAKzSwrmP/NFwChGfkiLwoJxw
 82pgGsTKk6KmVSpWm/5f357puA2D6SXUAAAA=
X-Change-ID: 20241204-topic-misc-sm8350-pcie-bindings-fix-81df7e1e7fd4
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1709;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=t/Xw+VoKf+YwKQU16zm0iPdxdX1/4JqsN9BzS5tjM1A=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnUDBKbj69R83Pq7mINWmrvoOmOZOBsaCNuOITPDFW
 vSbgUneJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ1AwSgAKCRB33NvayMhJ0aaDD/
 9irTaxNrpT+nFRsd2S2ZrL2hKXVzYAfGQNaEnqdOtxn0py8Lwq0fP2x04j3wsrg2HpVebHb2ZDliOK
 Go1KClVV8NfG14f7X3BJ7GgtFu4F+onImsx3gINcNaD3a0LUcRKA1Gg5Xs1BOwvwr/hkNQoRf0do8B
 nbTE5kezdyuRmWOEzHZfuExapAcV7TlzQ6axKvMouDlH0VtGQwCVE5Nlxrk5/TM8+6I3FSY01rRXva
 HT+PXxParFbv1fU0D7uO8/CZQ2yYHvULI9Glrwuo+0ITGDw852ba/uUvDf2W9t+YPaperunPchjNbb
 qxUpZXVMg8CkgUHvJICRJy1gZYBuUBq5zZksY49KlVJpZulxBZ1GH1OOXGPZ9Zk8iu7dDAwJI6M9aW
 fDRBOHs3rDm4UFhxg7Cas3RV+Nw+bB3UPnXa6Sab6qxjFDVVt4e5kaJV59LxYFXqUZBwr9R/AmKbZf
 oA02SqMHHL71tVDFhLJ/Z7Yfq5SlLIn1CLdxSS57hsYzlLBIkjtAkwa8Bx9hT+cJfIjtq4r/SmsukZ
 xSwEFhw/nrzGVMo9s8yLQ3l/QItgT6cNetdQk2DVKeGX6Tb58F+0XWqcrz7Li6xiWyMF+tCBRLs7q4
 YtNbpcCmVwyzaHJIBXhG5AfZQpWu7NKoTT9PxwLs5eQMsZ7fpMgGsH0H5LwA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_023453_682975_1FDA6EBC 
X-CRM114-Status: UNSURE (   7.40  )
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

Document the two lanes PCIe PHY found on SM8350 SoCs along the
already documented single lane PCIe PHY.

This fixes:
/soc@0/phy@1c0e000: failed to match any schema with compatible: ['qcom,sm8350-qmp-gen3x2-pcie-phy']

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 13fdf5f1bebae92b59f73a0cbe12eb4fb17379f9..14b689e717e6bc60a6f2abad1a7ee1e9be998f05 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -32,6 +32,7 @@ properties:
       - qcom,sm8250-qmp-gen3x2-pcie-phy
       - qcom,sm8250-qmp-modem-pcie-phy
       - qcom,sm8350-qmp-gen3x1-pcie-phy
+      - qcom,sm8350-qmp-gen3x2-pcie-phy
       - qcom,sm8450-qmp-gen3x1-pcie-phy
       - qcom,sm8450-qmp-gen4x2-pcie-phy
       - qcom,sm8550-qmp-gen3x2-pcie-phy
@@ -149,6 +150,7 @@ allOf:
               - qcom,sm8250-qmp-gen3x2-pcie-phy
               - qcom,sm8250-qmp-modem-pcie-phy
               - qcom,sm8350-qmp-gen3x1-pcie-phy
+              - qcom,sm8350-qmp-gen3x2-pcie-phy
               - qcom,sm8450-qmp-gen3x1-pcie-phy
               - qcom,sm8450-qmp-gen3x2-pcie-phy
               - qcom,sm8550-qmp-gen3x2-pcie-phy

---
base-commit: c245a7a79602ccbee780c004c1e4abcda66aec32
change-id: 20241204-topic-misc-sm8350-pcie-bindings-fix-81df7e1e7fd4

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
