Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E658AC41535
	for <linux-phy@archiver.kernel.org>; Fri, 22 Dec 2023 10:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mz/tvIxiRtUoINAxcFLfokncpgLkDz2ebyh9vS+Tx0A=; b=B85bYpfcYz2H0m
	7fK2xibx/NBCTZTruCg1EDac545wpaTV7h8hbTbW5/Thn/4x2q454bFmB9XGyM1iU0NM5sIQ4sa26
	Y/xhviapN0MiEOKgJelJj1+7Pb4D3qBb6IfqOnlK3eJe4Bh98Zw+oUV8SYUBi1LAyDv1XaVICOKet
	+iEnTDwkXjCFmw5RtP09gFnZOtc6xzyg/HPB7zvQeuTOi2RoR/Id+GfRUl+VANHymxxRpfIntwcd8
	1lcM+3aCBsqb0wIeTfz/FEb9Y/XlUKrxGxvCN3g9ejD2S5RcD8Afj7B6jPUS5+NDela86sNY25Dsy
	VIXWVnGxsgBnpT0VFZaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGcxw-005Z2b-27;
	Fri, 22 Dec 2023 10:41:16 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGcxt-005Z1m-35
	for linux-phy@lists.infradead.org;
	Fri, 22 Dec 2023 10:41:15 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-40d352c826eso21032455e9.0
        for <linux-phy@lists.infradead.org>; Fri, 22 Dec 2023 02:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703241667; x=1703846467; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gxqyUslSqcrN4IMz7Jp+2fHS5AF+1/LHXk7BhQrPANE=;
        b=vUoPdmuV3JKBSl9gEb7naFuIN/ljudMS7SeIMq48+n5e5mfIBPAqvOQQY7wpOMiUla
         IpcQrHepHARDLw1dLdhWEiHb1TGkkbabJl1ePdrO0XtTTF47r/lNasVevYcwkvfCVurF
         wB4yrCrxYSa+qmks06dy+rbuqokCvF5EFslmygXxcAWmsLu2ABAKbRRZd3ScxX3XFg7y
         22h11KwLI5r7tPXA8jsVpeKmybeK72Ex83qTWcGJFOp8tNnHueZe3jumAVYuIYR/LaCI
         In8YAYj0N1ARl32OXUusG5v6DxUknXjlXxEdceZRO77kIHxwwUQnCDj+Y91saMtwbnj0
         y4oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703241667; x=1703846467;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gxqyUslSqcrN4IMz7Jp+2fHS5AF+1/LHXk7BhQrPANE=;
        b=FE+EVtEw8IkpinIs0AIdjYQtZsnemh+E0pI7eGgPg2QE7qGELhUUBjVm12cdHyNg5a
         2+2hAEy2X6G+Nlz2ChSApwA6siE4dRZ2qhxE5kmJJfLA8eFJ//QxGTeGDk5ztmXmlFx+
         Owmp20gETLHiT9RVI/BIDE2KRznk0a3K8tydZS3HTq1eONIADdPfs/OLA8o2W0pvNASt
         Et67K33ny714n9wYUiCMYXHciTD07v1j1PXQVihXrc11fZHrZlhlVXvWHSwN77loalUb
         QU7a0l/pEK+LZwQAxSNhqycdL4sEjov9TDHy59DnDNTgeuRmA/5qcBF54uLGX9IoO88k
         Z9xw==
X-Gm-Message-State: AOJu0YyKf9skxnqA1an9hKmjRx55Z3MtYDYGTMzQZ+9kcWQ4CilhVwW6
	aSi5Kn2gclvmxxdNFZzaLf72emyHYAOhKQ==
X-Google-Smtp-Source: AGHT+IGDzPdK5TDoFGMnm8+yqYXhXxmc+5xJkgHPnuOTFZuEuxW7Rc0UivHB89pXIQedl+5g7puc4Q==
X-Received: by 2002:a05:600c:45d2:b0:40c:48c2:f531 with SMTP id s18-20020a05600c45d200b0040c48c2f531mr663809wmo.42.1703241667326;
        Fri, 22 Dec 2023 02:41:07 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id v11-20020a05600c470b00b0040c5cf930e6sm6348728wmo.19.2023.12.22.02.41.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 02:41:06 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/2] phy: qcom: qmp-pcie: Add support for G3/G4 PCIe PHY
 for X1E80100
Date: Fri, 22 Dec 2023 12:40:52 +0200
Message-Id: <20231222-x1e80100-phy-pcie-v1-0-b74ac13390bf@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALRnhWUC/x2NSQrDMAwAvxJ0rkByAl2+UnqwHbkWBNfYNKSE/
 L0ixxkYZocuTaXDY9ihyapdP8WALwPE7MtbUGdjcORGdsS4sdyIibDmH9aogpKuk5/D3aeRwLr
 gu2BovsRsZfkui8naJOl2jp6v4/gD6KQiz3gAAAA=
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=662; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=irkRhzefKYsakpWhuD4GCaIxkmHudzvNsUgaVCxP7vA=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlhWe6BrpWct/AD+CaAw8TFtqtC3e5rR6OtHHWq
 bms4hzUQ+WJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZYVnugAKCRAbX0TJAJUV
 VsduD/9xBIaySZX8hrDulUrChEN82nNpaiDE/CANv9LrucupoWRb0qP/8EUf6OoVvrk6J/QlIf3
 +nCZ2wcBvuhavjmTN6gF2kv3IL6vivutNDIE8wTLWUcd2l3zN4BdjZVbTjnfqMeArEiHdkon3Qh
 vP1cQc1R0hxy0xhp5Wfe2ISMBCUBLT7cvG6iOS+kgCy1RFolx1kO2gJPC/rD7oiBX8kW3BlDewF
 /ZqRBnwOmUqYf5reyijBRNpKRzpicQEnBESTF7wH02mV+URGpyJO2l66ivb/hkRVgvARybYR02J
 3ru7bhJAK6TEikAGyLJ1JBDTFZrm2K6nend+5vla23223ygub0VS4WWH/zXF4ukmSwFTL/thFgS
 v9VsMzXYp+BQKCoLvhASmVD5oWQaqvkhb5lF6NXoVcNLr9CEOB9CDJF01Y+mNni947Hr4hh+4yN
 I7a562ZPPHUqrzzrFLvHl7Yt0gWcasXnCmRBBfZDBtsCkL9eIQmL8/HZ4j9K8vlQY0M1YErstFs
 4dou+08xV8l5hBaEBl7YHzxJdoN7N60WOPcTGLg9pExkyk14bBILz8ocDi+7KUOK/Qgm0ffNgJW
 cq03i2D4HIN3AhhiHGgcuoLlIJBEhYxFFcHdRM0fbnKDsmkEmp+yKIPXIS6gsepGAb6CC3FYrOV
 PbKjTVADI8umfPw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_024113_994173_D9B02D13 
X-CRM114-Status: UNSURE (   5.01  )
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

This patchset adds the G4 tables and G4/G3 compatibles for X1E80100
platforms.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (2):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100 QMP PCIe PHYs
      phy: qcom-qmp-pcie: Add support for X1E80100 g3x2 and g4x2 PCIE

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   6 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 173 +++++++++++++++++++++
 2 files changed, 179 insertions(+)
---
base-commit: 8a9be2a3cb673dba9d22311beb74be261f0b3f15
change-id: 20231201-x1e80100-phy-pcie-ef74adb9af30

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
