Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0914DCA0FED
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 09:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ruFYmyZqcfRb7n7BjQ9Vy63jecgQzj+DFQtx4tkYsS0=; b=BFxKJX/Eo4K1CN
	Zxgk7yEbAeimRfmkjNjvC91Mg4IUzP+GOWg759kCmp1OzYivODWrXWaByKWbQewVinN1uEYJ1/fFH
	0XfNfJEEecKa4aRm7IAlxvOvD8hDjNNgk/J7/i/mIDA/TPLYZCrWxk+N56ATYJdmOlDaNg2QrnzOK
	F3dIWU4T8vrpjhCU9DhRimwsmXVLzKnRYOkaKzlAWYsaJVJ6P4QG3I+rqpInD7JLTxfbHrVa3lPmm
	OEjVebwwslmptGvdk1NsDoUC/6ScDRWx00E/g3wW75n9rCnh9n0xUosxYnlyhmd8KkseVo/gzpY5Q
	D2eY8j0kHTeMNCLm9KKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvuob-000000062Xl-2eIY;
	Tue, 09 Sep 2025 09:39:05 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvsre-00000005Bky-1PGB
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 07:34:08 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-6188b5ad4f0so7541839a12.0
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 00:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757403244; x=1758008044; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=i/1NLxMBX+MAh3xYLikiYbFyJW+a2IOC8i0oc5vP7Nw=;
        b=HUQhfBxAtQDrOEwYE5yGN8Cifkux+XqQg2Bh++x43O0KtChvbPJquch5lkqYswB/GX
         BpvVtWpmjjaZ2hDg+Bh87YXqM2HvbH3NKSM9zrdkDO+A4yVxE+0kr6nVW2QAH9skcdbd
         LOkU1SUKP/eRSWXvljR4KpdYV7L2JpmpUxUHuenrnE2PfxlnJSbdjYMFlNat4WcnKAaa
         3oQa1ZrVVQEZA9Cw1YlMfsAvDpES7gBojBd88yFmy8UI6mALGdsQYy21tvU6uwvgDxFV
         d6MIURrlnZlbIITaAD4YORJAOm/QUR9eMk+8UtrcbxgAAHglSoiIPDXA1tzIkhcWtdfM
         10OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757403244; x=1758008044;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i/1NLxMBX+MAh3xYLikiYbFyJW+a2IOC8i0oc5vP7Nw=;
        b=HDKhnNis4Gdz1oKEC6mk5SEYO8Lmt5CzvkKljKVo4vAGxx+oVDYqNN7Zl2DRVLULQZ
         0hxGz2v9EQySOKaleQ3HQcipsLJDEzwo+G/GXrM+Hu5EICaqi2vQfUerN7zFjFgvrbaN
         w4WoWRtxYYNV8mZae+c0fIua17RSFnrbi7O4HCVCxFTRs6XDWV8Wk6nU6Y80rOblCEhM
         Gk0yKtgOnhx/FUpL5gO+RQZwiCBcopNG/cBJA4EFpJw19gdcn79OHVSdtnEbwmUE3ktj
         3OYrdgLfVgmtqepVJc9m0WzZK4SWQzPYe9cOv8ehRj3C/DlFeDksCFJhMCWTypUYrwQ8
         r1iQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjiyNjNv5RKCuaHKH/CsIziLVafQmF6DUqvLpsBS/QZtkk7EaNlr+H1Nkl/1G074CphFYbWehcnsA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxLdPUfIcK67wz7BfVtZkzmDw7JbQ6J9ie6BOC7U5AuhpaDe2Ny
	9NpeyT0GI/k2cJHKyA1hpRAShmACuQJPPSAqfC34VURStAPkCMP4Co39XtZeI0B9q6Y=
X-Gm-Gg: ASbGncvvDMGWjZ6epSJPhGBd6OISjrGeNNNXPmz5ShzAyYTnUYfXCNfrqpbJQOV2zgP
	HQ5/Mi0pSs0ltX7UMP2F48arEzXVXEJxPoeEz3jnw7c+APEC8OEvEcxa6Lwjfb2Ckk29wi6km61
	LYhoT7Gc4qQc9P2fQiadYRULporpHPJ/jWNFES0GvySMTfDV3NJXeFWXc/8pwzYRlWMIj+xdqwh
	Lvw5038Nx8xPDfMBez0AQKNjuN49V1fIJ32jIBFpI+7yymdtlu6HvFxuYw2V2szHzC5w7fQd0K2
	ecBj4fHVpen5dH9yB/cNPW3PhssL148lt+Q948RnG6nTIXkskpq+zrE3emEG1FeHgKF3lfO6zRU
	dSPFjUXAKJMMuMwxObXIVGXtVhLaH4kxpIKR7M/zIRLFo
X-Google-Smtp-Source: AGHT+IGkhJLDbobgy2C5BuMSZlcQcqtyLvt/MH/bODV/Hsxj6fUv8CjpszsAijwFStZHJf6wNxnCIg==
X-Received: by 2002:a05:6402:2790:b0:61c:948e:59cd with SMTP id 4fb4d7f45d1cf-6237edb3818mr9962943a12.24.1757403244324;
        Tue, 09 Sep 2025 00:34:04 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62c6a264285sm226976a12.2.2025.09.09.00.34.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 00:34:03 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v3 0/3] phy: qcom: edp: Add missing ref clock to x1e80100
Date: Tue, 09 Sep 2025 10:33:32 +0300
Message-Id: <20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEzYv2gC/43NTQrCMBAF4KuUrB1JU2qjK+8hLtL8tIM1qYkES
 +ndnXYjrpSBgfcW35tZshFtYqdiZtFmTBg8hWpXMN0r31lAQ5kJLmreVBzGfoKHDnewZgRlDNw
 xJfQdROv0cINatVLQOWkbRspIPb62hcuVco/pGeK0DeZybf+3cwkcDq6RylllWu3OA3oVwz7Ej
 q14Fh/wyKvfoCDQSKnLlmtD/wtcluUNlYJH7iABAAA=
X-Change-ID: 20250730-phy-qcom-edp-add-missing-refclk-5ab82828f8e7
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1983; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=MTtQcTvsFl6BJxIcDcZnuZz6haCfFueIa1gYdkc1MB8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBov9havRs3r52gUJUdKpU0j7bzrJpwOZVvDL49O
 z+L6hX8XRaJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaL/YWgAKCRAbX0TJAJUV
 VjKVD/41QcU3UdZITO4EEcZsCNvH9FFL5wTJXLkBVSsQiOKRN0v+t2zm/QNF6CijyEDiRuHltZM
 B0zu8pP5LapLU+NvBBKNoZk3//dzgqice4fUqggd7ELkaV/VP6uIpjYLlDKb3YTHdiI/6egOqHr
 rnAfwfdvBFLTHNu+QDyc0cP+AvvjcmtVdedX0dAW0djpLvI3ek4/89/4tVS6rQ9Dr6onukpSV/o
 1DXcSSFHDsc37Vua0RbUc8piq7Dgz2rBrA0Vi0uzTLTYmhMrmaMv835xj2Pdtax6sGE7d+fi7H8
 HnsqIbJZ+eh0egHv5xg2XOfmiZirqCEYPl2Q/HYn+LqyFtpcSPHxoacfm3DgoYoLzUSC2wdBCdM
 HA5qXCEq+0oYTiyJro5Uyo2EACoW5HvLkt0FfhcB/MaCSFeZby4ap3SJ4fF3t7fohKabdeEN+nY
 EjXve4k4M3Zrpu2PfGxa343RIbbL7ICqP2QaTdN3KC0I2qzstRwzOb7YYN1vLMH2amCloR2s5Ns
 03PWDXyHx3jIvU2LU5ehi9hPTewS0e6UDGcF3ANQBq3O8w7SXgM/o/mOjDQ+Var+lYUTjiTn7xD
 DiNSIpByvn9PExEmrD+spROm2O76wI4dKI6EtVtMoMIAhysE4eaQJOACIBkRj+Vgh3b5U+drmyl
 mzK6SXkSBKDfzCQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_003406_403163_0BAD0163 
X-CRM114-Status: GOOD (  13.00  )
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

According to documentation, the DP PHY on x1e80100 has another clock
called ref.

The current X Elite devices supported upstream work fine without this
clock, because the boot firmware leaves this clock enabled. But we should
not rely on that. Also, when it comes to power management, this clock
needs to be also disabled on suspend. So even though this change breaks
the ABI, it is needed in order to make we disable this clock on runtime
PM, when that is going to be enabled in the driver.

So rework the driver to allow different number of clocks, fix the
dt-bindings schema and add the clock to the DT node as well.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v3:
- Use dev_err_probe() on clocks parsing failure.
- Explain why the ABI break is necessary.
- Drop the extra 'clk' suffix from the clock name. So ref instead of
  refclk.
- Link to v2: https://lore.kernel.org/r/20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org

Changes in v2:
- Fix schema by adding the minItems, as suggested by Krzysztof.
- Use devm_clk_bulk_get_all, as suggested by Konrad.
- Rephrase the commit messages to reflect the flexible number of clocks.
- Link to v1: https://lore.kernel.org/r/20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org

---
Abel Vesa (3):
      dt-bindings: phy: qcom-edp: Add missing clock for X Elite
      phy: qcom: edp: Make the number of clocks flexible
      arm64: dts: qcom: Add missing TCSR ref clock to the DP PHYs

 .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
 arch/arm64/boot/dts/qcom/x1e80100.dtsi             | 12 ++++++----
 drivers/phy/qualcomm/phy-qcom-edp.c                | 16 ++++++-------
 3 files changed, 43 insertions(+), 13 deletions(-)
---
base-commit: 65dd046ef55861190ecde44c6d9fcde54b9fb77d
change-id: 20250730-phy-qcom-edp-add-missing-refclk-5ab82828f8e7

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
