Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F042CCD187
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 10:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nKixcIZVUT7s6/U/VA6H9lc3EFnq/mDB3aehyOzeSJg=; b=ykSasAKze9WLGO
	oPjLErJv49yAzj+nHdjgHrC5OP5HdIZATUANc/CDmKJN+kG/zom/fgW3jJUDlPyNgicngxfjQcWjc
	fXQ8/FKoy5bmDrBdygNXEeZhx1znEKTxvPepWB5wlU4oooLtqujM2Mjg/tuXPVDCpOJUzHxbEb+F4
	vv6AbSeBt0Y/2dhyjtHeLDQ7gg3pbwM7STQM3uqkdb3Vo/eXLwOhd587hVAVnhVUOuXvRgfZRsloV
	T/M98ZY7cDFVCtfG63OKHXmEX/SZla9Jht79apKiRq0SDBZShNJjluTSy9xCeH6tIR9mBcVOhzIoL
	Ka6Nd3o6XLE8lc/GuiKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8brs-0000000Fro5-2uWD;
	Tue, 14 Oct 2025 10:02:56 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8brq-0000000FrnU-3ZlM
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 10:02:56 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-46e2c3b6d4cso38477615e9.3
        for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 03:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760436173; x=1761040973; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1c6b+GqeawN6AugUtZw8SvN92PfqxV890zC2ujYfseM=;
        b=AGI3zUP5Q83p5RpuoSg9QfqYCcSbstZF0k87czt+30IQrLjLnbPFJF9i6+pHa/Zh1v
         mmW93ePpZz/R66StIERMfugw3dPl4wp4aClMX4Imz+bueRq6wjo/7Y5TZvpxFHBRW+XW
         jqN5Vc/u3GUfNM6T+IPl+WYf/vZ9ICO6m3h/VihkV4CNZ1uQVIV+hEDNgZFb1cFDWcMq
         a3xFZfLTtnb1evTkUhgCAglhrPmVut4f+uZv62UcdShHf6XlgGck3aNe65yYQhV33yXC
         juOZlXDVBJkfxADwfTS1rFe86pH0KD5nnrFuV7mnkUOgaXB2Rv6pDLT+5BmBSywPxYVX
         hXRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760436173; x=1761040973;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1c6b+GqeawN6AugUtZw8SvN92PfqxV890zC2ujYfseM=;
        b=LHtl7UiprENeB94xzR6N7679i+qudf9T3SMZpuLunuV8KGSgGQjCqz8DTJSCt33JHn
         9AFBsvacVDq/JL2Iwqsy38IJJODRXYpoIjHgDntDCWLqY1GGI/VKN1baOMQuxFRRGxQg
         Kr4Vmn9vKwoeuUSdr9NsOCgNMAhDEmyhPRCCT8H1r4/T9awIJFwrPfuiJ59VG52nYu1L
         OvtaDGWbQyaSlFwysiULaFeyPG43sWooB6SeoHsVSM4VtSzaiNpAWFeZojYj75HKvDnl
         LO1NJmi4+Zzk7lfhOFX9Hdt+Rs85JTauKsSb2597b9HqcY7Jrh3ERaLNUjyp/VkhIkjB
         M84w==
X-Forwarded-Encrypted: i=1; AJvYcCVREP1GbMCVqCp4t6Axc6hqryuGPUakPIYZnDCl0o2p912NYK8gqHnwGGx3n2qcHYEut2Lg8RCpwzo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2ZSoRlK+MNIHiZ0JqzwiG2H1/Lv7xNImf4U3Dkdpxogo0diXJ
	nIMzNgFmXZAfzF+Wmq5tLYbYwW1r8eyUib5lJwDYk/pjOyTCraVDg6CqZEqEEEMdN0A=
X-Gm-Gg: ASbGncufEtdLvh1UOKYla5ELeYAPMW6UZAhf2gBNVbxTNE7kH7ASKk+9OMhWe4oEfiZ
	vmp8ExCDYpzpg+g1wGNO0olzver3wpDsfXkRb7iNZXNq+NoxIfIvo8o219Kf3Ra2yBk41VFPbga
	0KjpzYZK2hklO5aBKmcidcix2LQ0LCgwkvPrOOCX2dQd6Vxi++oetPxu++TK5rLeTYnfhABM/Rb
	NWeGfTmsvq7leHpNIO/Cd4Y2qcHhqAvWLAwF+qVvYVAC8MCQ6EYrMNLiPqki7zbhmM7GG73fogG
	Y5E0ioL9NtCZJqdTws1icIkq/0QNHUxKTLGm4jsQhJWgb/e04VcUamcvMgj/1v/WN3Ch6Aczcek
	Q+S9czLXoA2aimN+9CeHptJn6AskS9XKWK/mgdn74HZY+QDdYkEgJMQ==
X-Google-Smtp-Source: AGHT+IFeF879+ZVKEsJpJII/6YXJBFFuE25hKrVz1ilfZmhvgCYyYIsyl9axbuskS/eO0lovEnBZtQ==
X-Received: by 2002:a05:600c:502c:b0:46e:1f86:aeba with SMTP id 5b1f17b1804b1-46fa9af014cmr155783425e9.17.1760436172814;
        Tue, 14 Oct 2025 03:02:52 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb489197dsm239615305e9.10.2025.10.14.03.02.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 03:02:51 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v3 0/4] phy: qcom: edp: Add support for Glymur platform
Date: Tue, 14 Oct 2025 13:02:26 +0300
Message-Id: <20251014-phy-qcom-edp-add-glymur-support-v3-0-2772837032ef@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALIf7mgC/4XNTQ6CMBCG4auQrh3TH5DWlfcwLgqt0ARobaGRE
 O5uITHRFct3Mnm+BQXtjQ7omi3I62iCsUMKdspQ3cqh0WBUakQxLbDADFw7w6u2PWjlQCoFTTf
 3k4cwOWf9CFRyQkolaMUFSorz+mne+8L9kbo1YbR+3gcj2a5fOz+0IwEMmrP6UglJ8qK6dWaQ3
 p6tb9CGR/oLimOQJjA9F4xxovNS/YHrun4AN9TtnSABAAA=
X-Change-ID: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1831; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=SVtMO7VUBLSAh8tqnEqoTPss3ef9mx54zpbAairZ8UQ=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBo7h+83gSTsRn9fQ8mn3dvjXIkW9tI8b06P5FCJ
 a90fnDYkB6JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaO4fvAAKCRAbX0TJAJUV
 VoTyD/wLoSKlk6qM/kYRJn3q2sUnNKCGjNvMO4l1wD77dL6VELuCYerCQ1iqRE9M2vqXsmHU0Kb
 9LYILHrsywic2wK1SZvJ1FKfGx7dvreGXljDLjqx34ANm5bwu1ZforYQonfw7ngEkThuGQl0T1V
 XyVcqDy/zkAvoJ0nU0PCaH3DlWj3H81shqWEwiJtQIPLaO5xrmbrW75yC/v78cNjKIVR8HC9xFf
 EjbPbCXZY1n9UIuewFuQbK+dYTOxeA3Ze0V6BWWeRYiFWdbXfH1grqXzrBiiMcaSxer6z/ZL6P0
 UJWSSCFqNbA96c0scoRuM0fjDNhLnsilrYuBYEfBkaSNczAOWTzU0Lb5o0I0OyrCmwU4/k2t/Ff
 Uj4dnrYYXRDVmt2Sse97ZJLLvijcmC0v7avLMCOxJQBQIQ2V/4qg/I6QP/tONMHYn1Qs8qBwkuS
 ryIsn7/Hzg0AwloJLq+dxZhPAI6fyqOX7TmFTQSFxs2w0PCu6lPfMo/W+WYMOHFaxI3pGh4PV0Z
 hdct7EEVRw3ivOwmPqvL7y6FeZT9UJqflZitZB75V2vWl6AjUyVbg5kPSkpP/SeRzYttUL2jJqR
 KULGBIJMsm7fxfe5SKeaJrcapOFh41xwHdTne44Ylb1Kk8NRmcOde4Zk3ciYoG2Ncn7X9Z9iJpB
 c5ZZQjFbfS1j2Qg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_030255_069974_FF7F3203 
X-CRM114-Status: UNSURE (   8.88  )
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

The Glymur platform implements the eDP/DP PHY version 8.
Add the necessary registers, rework the driver to accommodate
this new version and add the Glymur specific configuration data.

This patchset depends on:
https://lore.kernel.org/all/20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v4:
- Force fallthrough for 5400 and 8100 link rates in qcom_edp_com_configure_pll_v8,
  as they use the same values.
- Picked up Rob's and Konrad's R-b tags.

Changes in v3:
- Split the DP_AUX_CFG_SIZE change into as separate patch, as per
  Konrad's request.
- Re-worded the dt-bindings commit, as per Krzysztof's request.
- Link to v2: https://lore.kernel.org/r/20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org

Changes in v2:
- Sorted alphabetically the both the compatible and v8 specific
  configuration.
- Prefixed the new offsets with DP in order differentiate from PCIe ones
- Link to v1: https://lore.kernel.org/r/20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org

---
Abel Vesa (4):
      dt-bindings: phy: Add DP PHY compatible for Glymur
      phy: qcom: edp: Fix the DP_PHY_AUX_CFG registers count
      phy: qcom-qmp: qserdes-com: Add v8 DP-specific qserdes register offsets
      phy: qcom: edp: Add Glymur platform support

 .../devicetree/bindings/phy/qcom,edp-phy.yaml      |   2 +
 drivers/phy/qualcomm/phy-qcom-edp.c                | 232 ++++++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h  |  52 +++++
 3 files changed, 279 insertions(+), 7 deletions(-)
---
base-commit: b529e9498b7948df2be579282cbf0d5a9a3b7f9a
change-id: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
