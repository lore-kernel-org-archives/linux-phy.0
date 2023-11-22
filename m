Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BE1CC61D9B
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 12:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s6mHZlS4P3vQvvCF6fXiOl1orBFTioqSLMA0FKYsyyE=; b=s1rKZVi5AoXXmk
	n1ebO9WS8TZxrTcENQzEc9+WQ0UW9wY672k5jbxOcHfNT4Rz1kjiRiJwMql+WrVzhCfsgzUuOSCKL
	lofoWRTVl4B2SVPJnM2HVIR6nxMhrn0hnK24ez6oubL6+2+VtfepLtQJoUZ4Ee24g+HHwqJTyMbVC
	WwDG63a5f3HXRT+6+yg0Gu1OvsOeTUrszESe9n3MNSzM/3O47In72cKpWRFRQR4fBepgWZPTS/ChM
	fCGyBjaI0c+lHcICBUr0EYGMmOyJi71BMIPw3tJrEJ5/DZHEoHKYKBNioXqNNDeSGs1UcdkVk2D6w
	oG832fZmzVlhCK2ieMFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5lz6-001jjM-2M;
	Wed, 22 Nov 2023 12:05:36 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5lz4-001jiX-1l
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 12:05:35 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9ff26d7c0a6so429930366b.2
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 04:05:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700654730; x=1701259530; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F3iRTyYm++LfKkBAqCvb+FLSd+8UJIkyMkD3WQQLyuE=;
        b=ABXQp610Q0+6dfyYue6lLx9IdN3Ytnfz1TaA5g+jOuHSR84V8EBZtSJFL90qEjCLlr
         dFomu5z5N57Fr+/7pB5xf5x4PzQ4fluc/+F+3LwoN1QcJLwuP/egC3PfbmOI1Lb4WXvk
         N+R5vrQQ7epUVIPmEnq+9EY4gHHNvr2SXgA6v/mK5/7krf+AEJkmyUtCqDOLBhfHgTgz
         4S5PTcYAUGuWKEEVr4wb3pS/F7ghEqdP18jzV6pXbR8r5TGCVrLc068/FqFNSlMYdNsv
         ScII6ykgC0GtBHEhwbsgL3rmrcgOG6yCAXoVnDZYMtQygzsOStl2xNE5nAOCYRlItBvM
         HSgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700654730; x=1701259530;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F3iRTyYm++LfKkBAqCvb+FLSd+8UJIkyMkD3WQQLyuE=;
        b=A3SxrAmKA5y4UdVHk0ne4erNNAXlQaoR2KlLS9OJI02MhLsoVDOKai9TKxZyIgybBD
         Rdwfv9xFWBIUL5rExVLqZez3roAvJ5m0VAVUEsUgtiCJeV66w9UoENJgTGu5lGNu7rox
         N0QmCT4+St3a9v0u+rm/NqQKBbDYx4H+jiwwp+tUmMcZVhO6la5Ai3nOiCMt3pUeBHlU
         uq7f0zxhzMp1MUifFsxzWm819+Wz+LZWzVBD0m0MgxBdtrtw2OedHp6cCqxiSDi12TR2
         t+tLCxS22lg27g/7hM6lHef8RrjR5RbWvD7NHn6onib9EsBVhjP25HpNUVWwRwnXEmtH
         w5aw==
X-Gm-Message-State: AOJu0YyqJezRNynMym6zTHV3dD7iyyEaBaRmLs5M5dxzeI2USxz9N4Cq
	wI2l2yqsNhPE5moLxK7uJPitTQ==
X-Google-Smtp-Source: AGHT+IGDuvN3XpxCMad1R4oTrZlqTFp4K28uSJGx5TCUw6otAoFmnB30kMshZ4Dfx1vmSXvLFKSpJQ==
X-Received: by 2002:a17:907:2913:b0:9ff:cdf3:553 with SMTP id eq19-20020a170907291300b009ffcdf30553mr1258514ejc.61.1700654730525;
        Wed, 22 Nov 2023 04:05:30 -0800 (PST)
Received: from [127.0.1.1] ([86.123.99.122])
        by smtp.gmail.com with ESMTPSA id kq14-20020a170906abce00b009fcb10eecb2sm4383416ejb.84.2023.11.22.04.05.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 04:05:30 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/2] phy: qcom: qmp-usb: Add support for X1E80100 USB3 PHY
Date: Wed, 22 Nov 2023 14:05:20 +0200
Message-Id: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v1-0-3f5bd223d5b4@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIDuXWUC/x2NQQ7CIBAAv9Ls2U1YiJH6FeMBcCubUFohmJqmf
 xc9zhxmdqhchCtchx0Kv6XKkjvQaYAQXX4yyqMzaKUNkda4xg++mkthmWds1RtsWX5yI7aKlML
 xYoK1+jwST9A73lVGX1wOsZdyS6nLtfAk2398ux/HF/QYbuWIAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=834; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=eXw1PqnDXRaa9q9LSnWqKj7Y4vQ414LWHrJ5zXCLXcY=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlXe6CIfxfp+7KFdffH/AKuF0jZrge2rhNCZck9
 Xitrixfu2CJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZV3uggAKCRAbX0TJAJUV
 VscqEADCMX8wxjIQDp7Ts+yxwcdjGaIvk4Dk0x3mRQOs2yib9BEsK+wOoAVG64XaTFhmrZcOxo7
 gIXHi7EniFlc8vmYWA0uibbT6Z0OFIboDtINccW7bgJy71VaizIt33NIZChKg2KfE8ppUerdRQv
 /IRGtaCFuuPoRpDizOLXNsWCutzpjbTecAPcl8TKZY7fILlj3rUg9i+57Pl0o2yB67shUrHDKJi
 gYqeOgjFrcee6zZTVJJRoQ4dI21kshKnDEtTSG5TMDSVHcaBin2C6bPTFoqIvDSCLil9phFetUk
 BUCqXbtafZKL/pXvbAgopZtXMUUEsvC+YfOI2n/VgKx0MO08D0Uw/B0FNK4kyTI8wkQymkDfSFu
 uB/iUshNkj5xTjde2WUr+NV0cVcBP7EULmeVxqYKU3AiDzTr2t1l0qCWjrAt+QrxxcgZ68njFQ3
 g78MwreFBaOCB5F2rZrFQMsVubB/4X4F6B9oEAT8KxRf1ycF3Ht6pDR04wNFsHuOC76cGWK8rq2
 qVoFS97bb5H8es0G3rARQWNkBOOf4wBmIaSJOLLYOCkf/MQXyUKS19Ow7xOW+uZZl28Cb78sz7M
 5mnwIRJc75dE7qQs/ycLzjP0fsbUQjK/JTMGVS1a66A7ko6JTxaYOTsn5hgEA/uyPZWUm4+VGcJ
 PMdiO0Yr5cAvwtg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_040534_608911_CC497678 
X-CRM114-Status: UNSURE (   6.44  )
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

https://lore.kernel.org/all/20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (2):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add X1E80100 USB PHY binding
      phy: qcom-qmp-usb: Add Qualcomm X1E80100 USB3 PHY support

 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 152 +++++++++++++++++++++
 2 files changed, 153 insertions(+)
---
base-commit: 07b677953b9dca02928be323e2db853511305fa9
change-id: 20231122-phy-qualcomm-usb3-uniphy-x1e80100-973c882591ef

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
