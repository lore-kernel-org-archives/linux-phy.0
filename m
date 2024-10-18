Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62D9FD30007
	for <linux-phy@archiver.kernel.org>; Fri, 18 Oct 2024 13:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dfDuM2GksibORnWkMYHEacXIBHvKWfaGSHRy/Y6wOZw=; b=W/MidU+Ks2kRve
	EnN52AOJzG8Vst4TG2Ry0u9Kb5wZpS8T7BeB8KiZ7tKRTpiBWYKyYbaN+JM43uMOzwyvhTn8Y8c6M
	jr0fQAvAYMynrTzjyAyILvfpcWQaJAKJUbL2sB8ewoUai4xHCByz/EzmYmYSpde+ZnvJrrkFN6HPk
	qrX1hty0atBgPkRrcPCAUt6Yz7JXHcxidcESBxdzk/3Ky+dASKvOz3SD8AOFstIT/Ulx4iWnXnECw
	CQtDioCgejaoNgN2wfNOLCf4rana8anNWPyxZLNpxF7lXcpqX2CRv8nLOU9IUogk+EHrckep3AjH3
	Y4h+JYGrRLT7kHOZG9sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1nJ9-00000000waz-0Fhs;
	Fri, 18 Oct 2024 13:46:23 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1nAo-00000000uLP-2Fcl
	for linux-phy@lists.infradead.org;
	Fri, 18 Oct 2024 13:37:48 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-43158625112so19997765e9.3
        for <linux-phy@lists.infradead.org>; Fri, 18 Oct 2024 06:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729258665; x=1729863465; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9g6X28B6QyIz5mltae5jx7UaHpkhC0PDITotQrVOf14=;
        b=MUkWoJDkBWNswYmqDWu1sNsCr7MnepsPaZPmj9zmsoDAowdqFZFnUf/JhfXwZ1NOwO
         N8bUO1xzmoI6h6k5rzqyaxiLuPWkhK1UdXiaOgXvZaVRYpQO3270fW2KxYwDQrVDRe+H
         zTfDIJY8N7BVkA+UfDxLnTOz4cvm6ByEdqtDRIl8U7hQ+J6JanoI8vo/Y8H7WlITuug8
         NLnUJYLkHcc0V7LsiOE9cVF95JN0CzY8q8WwU3PgD67JRQMewakH8qDvSYg1hLuctxVS
         IceMgvuDnZLW/PAuafBWmuX9gYirgRy/F+6zjOrVgODVaIA4OCFdN+TqpfM8Ezmb9GZD
         DGHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729258665; x=1729863465;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9g6X28B6QyIz5mltae5jx7UaHpkhC0PDITotQrVOf14=;
        b=uZU28HCeTxrlnSwRG1OoguO09imIWwjP0FAfmXY2YWIEqWuLQJRLY48ZyZh1mL4UpT
         fgWGyGEtosmkzKLPrs7TMLp7VdvpbFjnVhBkvGTlCcc25F5HauSKeblOeOU0dpbTXFTc
         OBdxhq60Pt3bM2nqwqIf8QHedkEePyN05hz8mpWscYyRogwKnXpN/QkJJ7nJAvDNT4e9
         uCB/Iofacp5VQC8nWXEJMlTwOsYCJXoGN7Y2DSlTXaRnGYkKUs3kLxHCrgPon/aqUMpw
         MJOfhLMKXZLv3zvxhcCBWgy4JMIE6+fCktuRIw328m9uYHzn8BjBja0tw7iQz9qbzmc/
         YfuA==
X-Forwarded-Encrypted: i=1; AJvYcCXIYbC29Fwat8YDE4PRE0O7Civ5L1sW7lhpe0P1kZ8oqAFN9S3egzJXbhM+bhRCk17uv6zzuzpdHEI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxrqhMk3DPSg+IvrFJFrbEabT/0VaethG8z9tfrp+HRT5MpyiEC
	ZHl/3COiNk5o69ZKEyXDuUtdFcFBSBlMMty1Hy662Ho98btAIYKaGDpr1+MEJDz8jWY4l5FG38+
	L
X-Google-Smtp-Source: AGHT+IFCUgN7OzzYT+R+UjYNcvyXfv69g2h0+VHrvjEge4+4nbLU62Z2mcykFjWYCuiCipDnNr9mRg==
X-Received: by 2002:a05:600c:4f09:b0:431:542d:2592 with SMTP id 5b1f17b1804b1-431616a3aaemr15875525e9.27.1729258664468;
        Fri, 18 Oct 2024 06:37:44 -0700 (PDT)
Received: from [127.0.1.1] ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43160e4437dsm24305925e9.30.2024.10.18.06.37.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 06:37:44 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 18 Oct 2024 16:37:36 +0300
Subject: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Fix X1E80100
 resets entries
MIME-Version: 1.0
Message-Id: <20241018-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-v1-1-f543267a2dd8@linaro.org>
X-B4-Tracking: v=1; b=H4sIAJ9kEmcC/x2NwQ6CMBAFf4Xs2ZfsYonorxgPUhfYA6W0xtQQ/
 t3G4ySTmZ2yJtNMt2anpB/LtoYKcmrIz88wKexVmVpunbD0iPMXm18XbEtE9KYYraCI9izMmDS
 44pA06ztjlMHJcD13l46pJmPSav9398dx/ABPU/mXfgAAAA==
X-Change-ID: 20241018-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-f1b41b935750
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan+linaro@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1472; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=NrBqsWCuaAQ/Cuj024knkF2DII41vrMEDac5L3LP/gg=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnEmSiuAUWzOzRknYiBKK4XsGyfZq0uJbv4jtkv
 /gpfSjkVb2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZxJkogAKCRAbX0TJAJUV
 VpEyEADNVS0D7L+QFC6C01wOBEDU/N/MpIsJDVUJsA2T0SZFxAX0vfVa43uZaHeuq5QKFeLgdD1
 PWAnNBY+2PINh18jAUjHB58us46ZFK7BscC563BCTxioIDySUOGG6aWcBMLtzslRk6u30A1J4tz
 hlCZQOFlQp4NoKR5JHquZXErtF01oCycx4d/qxNwVEIcI9ozWeDRC0W1cN8L6/YU/0alhQIUKdk
 TXoQesmcFrs6roJBsq51OH4fhwYOUPa9A8qxcdrfYaOaqOEpowu8QbsPt8zB07vZbLVPrmbOPqT
 KoLO4cZw52O8ejRcqMF6g/NUdMqNGPaAjL7mbJpCmjlm+ZiNwGR/IQOK2sR7mOc3sDV98N9Clca
 ErFVzBXM977a2hRl91IqCMmMtBYZ1GPcw2oa+w2rq1JlXUvGPkmB7rWVOi3fw3bi8ssbHlbDSH2
 9p3Pa7Bky7la9Ye/l0z3zAskfHdiJw9a5vYX/9cqc+s2QUZO+/MNL1/miONnweHMfmASwE+mpIU
 hhGJe91Leb+I7HMgzx7uexHRk2y+JlgZ5hnuUKuhhVPX5VZtd5JEJu5f9SJbhLrDrB2Av8OFL2v
 R1SZFzXPY0r0bBvaOLdjQ7wtvBDDtll7mX9ttNUvUMMbQpKshiPwJpM/EIvbP17MJOzNiddQiTQ
 08kpXaTs4loiHAQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_063746_691604_7E8434DA 
X-CRM114-Status: UNSURE (   7.32  )
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

The PCIe 6a PHY on X1E80100 uses both resets in 4-lanes mode as well.
So fix the resets entries for it by adding the Gen4 4-lanes compatible
alongside the 2-lanes one.

Fixes: 0c5f4d23f776 ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100 QMP PCIe PHY Gen4 x4")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202410182029.n2zPkuGx-lkp@intel.com/
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index dcf4fa55fbba58e162e5c7bebd40170342039172..b5bb665503c86c79940031bcb58a36a833918a4e 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -201,6 +201,7 @@ allOf:
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
               - qcom,x1e80100-qmp-gen4x2-pcie-phy
+              - qcom,x1e80100-qmp-gen4x4-pcie-phy
     then:
       properties:
         resets:

---
base-commit: d61a00525464bfc5fe92c6ad713350988e492b88
change-id: 20241018-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-f1b41b935750

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
