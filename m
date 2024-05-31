Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E06CC25B75
	for <linux-phy@archiver.kernel.org>; Fri, 31 May 2024 16:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=byvnBjMpxAu7ETNv9ApMs311QG7bL1hYBi791dvG+Og=; b=tvBSHVTKbzKe9G
	mWz2+sW0YjPKAs9CHGgEe05BObr+Ehuv3KCC16Zgy467O3AwiV4AbjWGSbO0kJK8fL59PeDmFTnTM
	NMiSOV1QkQC9Q3dLXh4k/HweVeasierixVY6gjSaDeAikfUPvG45/R9vnGsxWF3Rluz6hk9JARnc5
	IB9NRvqL6xAR7o0ZVQ58xNz5PQtSL/iFJfAGTOc1pDYnD7iIlokOGTm2mM0Dpl2MuyVd4tA6XSbdb
	jNCI/V13/Q4xTdIAvHxrRdWdKuCqaWKpZk8buCFr0yhOd2OJd8c63n/316RBG9Y0WHZcbJK7wyMAj
	qgVmslp24W0hAJYM7hcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD4mW-0000000AlnO-0QPO;
	Fri, 31 May 2024 16:07:04 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD4mQ-0000000Alk2-0TDw
	for linux-phy@lists.infradead.org;
	Fri, 31 May 2024 16:07:00 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a6893c33403so52857366b.3
        for <linux-phy@lists.infradead.org>; Fri, 31 May 2024 09:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717171614; x=1717776414; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lAlOyuxLq40uKFygEFg6vCKpbB0JOMz+nnMl6D3JEa8=;
        b=bKrJr+JmjVn8CgZIDQ7negXwVejhxjPQqCQplotGSBo7/u5/GNfZGuT3PktMfV8m+E
         HbXc7Ti3nd3BcdcGkUDSiQb6Gp4sjZmYAg0xwbo4gHOedHpHeEksrala3+gvFEyyKg+d
         cKRkKH8UqJy33odeShh6Og/dmUkO4vy1ADfkUCvN2xTGdUkX6idSLnrNFepkRiOdxb0c
         e5gzHMaOXJDDh9AO9JOIYlRGvxATtaECFZOR1wYvbeplEPdO6EmzthZfnYxYBR1PcVvF
         fSKnMmbzJYSkCWWvnOrDfRcKWBm9R9Se4RBnPdht9OQxOoEbJq+RpqaGCWTUAmsH77Uy
         kAAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717171614; x=1717776414;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lAlOyuxLq40uKFygEFg6vCKpbB0JOMz+nnMl6D3JEa8=;
        b=qNwbOLAuSrAEWoXsjXv2D5NRCEYdRTiVwbifrfIap6WR23HLJV9u8avdKe1rVFI7Hl
         Wk7DCeVtO+1CqV3lXGUhkvdP6D63OpJKmk2MyJWSjGguGepS9tR5JfWgwgqtoM55I+uK
         fu/m8Oj9xNA9Tr0Uo+CELuLAXO7Ke41X2lOzTuF/i2QwGxXlCbAqubI0Z2uZQBv9ZVcZ
         fk+CcRUEmBM7oEinb0ewL/j2kSXRID1oIs11dsL1Vgir7MORH/N8CUss91Q7xa/IRL5Y
         AS1Qxn58kZ7PjDEUhjPTgJ/swgizOKQYhZxQVSfSqdpeiNaAGPIBfOcnzn0yeF/muhKc
         6+/w==
X-Forwarded-Encrypted: i=1; AJvYcCX1xZX85dIaYj7fbVzDKBoPII1LbzUfo2Rfj0Wo/+E6jqly16WimyVWzRJEN9y+DS4GpkYP+jH1ivs04t7sinFZXYACem3a4lJPpMPjbw==
X-Gm-Message-State: AOJu0YzNNiQxhLGl6xqqC1TUvkn0mlz0ReFrUhAixDZiYrUmU8bSNDZ7
	CXodTAS+pnRscTGTCjwrL/p33dXwFppeBGWHwkTsbinEbQchFghgIl12ZemQEIA=
X-Google-Smtp-Source: AGHT+IH0GwuBKMyEd7qzHgXQK6TawsZtYrpdIeATwNspSXc/G36o6tAJpE8Z9zi1e8gFHLgQatIzjg==
X-Received: by 2002:a17:906:22d3:b0:a61:ac3e:2b4c with SMTP id a640c23a62f3a-a68209f9535mr204682366b.40.1717171613800;
        Fri, 31 May 2024 09:06:53 -0700 (PDT)
Received: from [127.0.1.1] ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a67e73fc1b3sm100802566b.74.2024.05.31.09.06.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 May 2024 09:06:53 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/2] phy: qcom: qmp-pcie: Add support for Gen4 4-lane mode
 for X1E80100
Date: Fri, 31 May 2024 19:06:43 +0300
Message-Id: <20240531-x1e80100-phy-add-gen4x4-v1-0-5c841dae7850@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJP1WWYC/x3MQQqAIBBA0avIrBsYUyO6SrSwnGo2FgphRHdPW
 r7F/w9kTsIZBvVA4kuyHLFCNwqW3ceNUUI1tNRackZj0dyTJsJzv9GHgBtHWyyuvjfknSM3d1D
 rM/Eq5T+P0/t+K4+2tGkAAAA=
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=870; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=grSrVDhSfTbD009pKZqLVmksSuvVt7nHFbOAVP58svo=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmWfWWvNZyiI9ri2SCtVX2wfHjvNyelu8aaTLZK
 83w8uDrJpaJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZln1lgAKCRAbX0TJAJUV
 VtktEACsB0QeRG0nfQy0mlvsp5CDJXhoWS3qoGUhJfVVJCyiysZQwHeGoIPgNrI3n4WzY2a0E5S
 mesVvMoNSnopY5uxL1qibkiEnvffRtwB9O8GqKqogRIr9tlmG/3NfylM+f/DHLgWyFReYXZX2XL
 77XdRpaw/VvtsRuSXE6OBPxbhheRS1PF0T8faJT0CTTCp5AbBeYmUXXYJuYQfIuZs+tcq6EBT8L
 tfbb1Ir2ogA4qTdkVeKrEUKMYW26fKmJ+qN6Y5Ypb63LLslTQMzphtcYxU6jOE/uMOjndkPqGv6
 Tv5h+F+lxRe6l9gRZ5APbY++NgbPFYGhb62kfYRltsxnRofRmHyNe/BGnDU/JUu6+BCDp6Zt5z0
 hB0QevQAzyEardkpuj8O6hoQZMowRly/GliYPUhP33kRDNMSUWTPT7A6yOJo20wR3IuwNq9DYH+
 1SYdLsF73mKcO9t+k4aeONBBkdN60DFNomjFl0LUy4jA47zSf1tf4b5SoPAgielcMDWJCnxdGCN
 Zmt09DkmCIepuo+rXVFzRqMWQKuL/KavRuXSbbvVHAShLF2D4FSpPNmhf73xFxf+wVwmwGvJL9m
 hiTRALa3Fl2uU4BwYBi1QDDrl38sms/qrspJtIC/SFp/DiEOA8Ag6mHcyV/xK3WO4r1byoZnDkc
 s3q51jZzCfvpZxA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240531_090658_283656_D8100781 
X-CRM114-Status: UNSURE (   6.82  )
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

On both QCP and CRD board currently supported upstream, the NVMe sits
on the PCIe 6. Until now that has been configured in dual lane mode
only. The schematics reveal that the NVMe is actually using 4 lanes.
So add support for the 4-lane mode and document the compatible for it.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (2):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100 QMP PCIe PHY Gen4 x4
      phy: qcom: qmp-pcie: Add X1E80100 Gen4 4-lane mode support

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  3 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 42 ++++++++++++++++++++++
 2 files changed, 45 insertions(+)
---
base-commit: 0e1980c40b6edfa68b6acf926bab22448a6e40c9
change-id: 20240531-x1e80100-phy-add-gen4x4-fa830a5505b6

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
