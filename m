Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B99DC61D97
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 10:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0WjTSSkuPfFG4pIyTaf5QozR0fA6vWnxz+ia+L7fbXM=; b=3QYpdDJM8N2QtI
	PXLKbytRA8MsoblLyFWwCdEgaPGt19W8Et3J7k/eyBkOzG61h55nWZYMMELHP0jOTpKtV93qJk+hx
	ktAMC7s+E10SxDgeUijrpipq6ONlFLJozhzYSL+ls23dkYoLelHYSTISCVVLjlc/k6zb7/vcw83iP
	nmaHP6AkywDBcXyOlMCHgIN67dx/I/Kyu7gfSy7FHhZuai+qLPeJPI+0PMPIk/xKyFIGtaLMzPmqT
	TPov9L3R5M3tDjV88baT24c/6dJjKHL9Ji3ZEpkiHZdbpeSv9Po4oGyC81NSIKnKocHd2kkKGxnDS
	ySAMIkcYD7x6U2trP47Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kto-001Ubm-0b;
	Wed, 22 Nov 2023 10:56:04 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5ktl-001Uar-0r
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 10:56:02 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5491eb3fb63so1232915a12.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 02:56:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700650559; x=1701255359; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HLDI3wzMix+NWssn2rikTDQZvDop8e4c6V7Woh1WHUU=;
        b=mKRKI8k6v/rtTqPsL87NYp4C+iRn++7gKYCxpZ+8e9uE/q7GqZSgvWlEzOBP+Cp9CR
         oZVuyJjUfXgcLI8GSUcmoXfgF+2VH56ZIbB/qZo6O8v2RGKMe9MSk0fImJWxulG92r/g
         rjj6McwAeHHQu6u/I/7EAhQrj3zJ4EZjmEEQt9144V3EzWlBqsfYhGNpeH8981EKMNtm
         QnwODIPR31OxBiZPOVJ2J/0J8S1R+APQQwNsTW3hDS3Nxm07L+dXPNsGPLMsbRmUDRuJ
         8KbpTo7usEftW8JZns0+NSFvfB2RDvkEnyskLw5dfddy5mswhB4fhi0bB6wGn3pQSO2G
         vTXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700650559; x=1701255359;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HLDI3wzMix+NWssn2rikTDQZvDop8e4c6V7Woh1WHUU=;
        b=jq+Kd5Ex4c1OgswK5wkO6A5eKMfR9lCvoJvxNJaFoB0E3hcctCfsnIPW0H7RzeIeut
         1m8o/ozqQ0asGXjMJGlzdrTJUxCEt7kjOFDojF3EwSKlg5fYaRNGrMrvfSxqKoD5tmqf
         leRMKOc2Yli9SkWwJk7qbYjXLm19lQyT+RAhmFMwqi8qoy44L3fEzSJcRM/Uw2w7TEj/
         RhI3O+0Whl/MAvQ68PRtQgRKlj/WPWzQVI/r7tBLFc1FGhCjdXEUb2xAghXgjveTEDMH
         vPDF4Zvyas3hC14sNx/nbojVClzjaScka0ZoqlIklwmtrQ9F/G0DpWdeip/ZGQi4PPhZ
         0qNg==
X-Gm-Message-State: AOJu0Yz7TP009BmH5E1QIAWAe7N6aktff7q20jouB4JZPrJArCq+J1RD
	rKvhtC/XWQz7BwLf9RNBe6IqX6yUyiyzlfH966Q=
X-Google-Smtp-Source: AGHT+IEcUs2DzE0DCcfF/Zqi+FS19jJkgid6BYQFfSIGdYh4e0kqwIWPHfhZgF/ve8h/TZgtEuuWDQ==
X-Received: by 2002:a17:906:2d4:b0:a04:d5e8:cd84 with SMTP id 20-20020a17090602d400b00a04d5e8cd84mr539404ejk.56.1700650558988;
        Wed, 22 Nov 2023 02:55:58 -0800 (PST)
Received: from [127.0.1.1] ([86.123.99.122])
        by smtp.gmail.com with ESMTPSA id mf3-20020a170906cb8300b009f28db2b702sm6423557ejb.209.2023.11.22.02.55.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 02:55:58 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/2] phy: qcom: edp: Add support for X1E80100
Date: Wed, 22 Nov 2023 12:55:47 +0200
Message-Id: <20231122-phy-qualcomm-edp-x1e80100-v1-0-a9938990edb3@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADPeXWUC/x2NQQrCMBBFr1Jm7UBmSlG8irhI0okZSNOYUKmU3
 t3g8n14/x3QpKo0uA8HVPlo0zV3oMsAPtr8EtS5M7DhkYgZS/zie7PJr8uCMhfcSW6GjEE7XT1
 NIYSRHXTf2Sboqs0+9oe8pdTHUiXo/g8+nuf5A6sW876AAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=866; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=6Qe8P7OumubbvMZ9Ocse/XGaxEKzcj9WjK3I0PgWsKE=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlXd42TNpKNmMaTa4qcGZmrA2jYc/smPgdRuMrW
 v60cO4OVtyJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZV3eNgAKCRAbX0TJAJUV
 VhmdD/oD6CPBHJwtRsdfJJ7iQXCg85N3wd7U3WD4obqKy6M5x+kTlVi1uW67vDAKI9vFoVMFnBi
 u5mSHcHcxVzRfvsizSZ0kkLhUTU0iEISy/WCJBr23Uzx/u5C0Ew/4wRwj/LA+nekqZlqmXh+slK
 Oq0cjxfuAFmlqGBfMLxsPVrtHebmSk3qSetoA9p4x0Djv7bdqhaupitLw1/yGMeIv4zlPxeG9I5
 3RxOlffUk3N2ahtdMlnJt6x0LaWtOtBdpZppBTUJ3G/7z5zadLv9o8nxihIOU55BizsM5v0qUcs
 w0HevtuJEQmy4xdOw/oSsOoBX4F/3843czrKYMEmeYd2AUVQaioZfpxLYREha4bJtGSqZctqqGm
 5mmDeH5pWa/TnKDjb9mRemQ7fo/sJR31ROhV2DXub8YnbW+CvGhe7vW+THCyWwiJ/TKdwWLYEn+
 zvS+lb8Jy4qvgHfn09pTqnUKI6Dkw0VEYFKFoSmUJ+PInsTTMXS3+aHHY1DIeyQza196qWA9XDA
 CjM+E4RDxU1CBBdBnQalmSt62yldlGHd9KBK3joRkFxZWnPcgbRVV/Ny6QvlIl+YuxQaLnKIKQB
 J0/uQxM+RiUM9yMzJpA24UzJCIvaGiXr0QHyy0YM/xrjyVkuVRswuQyG5zSo7EgAi9oEVDLCkwr
 6vYaEBJmnvim1KA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_025601_337857_9D4ADC6D 
X-CRM114-Status: UNSURE (   6.28  )
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

This patchset adds support for the X1E80100 eDP/DP PHY and documents its
compatible.

This patchset depends on the QSERDES_V6_COM_SSC_ADJ_PER1 register offset
added by the following patchset:

https://lore.kernel.org/all/20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (2):
      dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles
      phy: qcom: edp: Add X1E80100 eDP and DP PHYs

 .../devicetree/bindings/phy/qcom,edp-phy.yaml      |   2 +
 drivers/phy/qualcomm/phy-qcom-edp.c                | 305 ++++++++++++++++-----
 2 files changed, 233 insertions(+), 74 deletions(-)
---
base-commit: 07b677953b9dca02928be323e2db853511305fa9
change-id: 20231122-phy-qualcomm-edp-x1e80100-a57c15fff32b

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
