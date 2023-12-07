Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14EFCC10DC3
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 10:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DA3Fg8i2yOwLOxGOg7o/IhhVOs8b2veWiriBo2psAsY=; b=XBVtIc+JLveLaV
	bqcOhT9zjjdV1HjUPMWORGN05C2Vw/nzKzv4ftBWkf1+kfc6WXNthqU9AuopejYE4rphVMTKz3XDb
	4InK8vMGjNEW9aX7/6+hu8u+pcx/7fHPFe2a9c3VSbhfgh1PYdjbp/lcwzm72DhClq4Uaza2kMfdp
	ieiMBGpz5Xc9USCpQWDTOamHoXpn1mI8PpNp8yxYN7frQqcWRULO2DCvhdhYCKDWsvdIyl8/RUjw4
	7UcvM7YVoMkAAyiPF7fncOXwaGmVJjEnOTdUxUgJJowdQ7mZMMqJUEvYqCANOiMSr0PSB/0JaHqbr
	8uUh3tsM+HyJqgQMvJcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBC0C-00CW04-2A;
	Thu, 07 Dec 2023 10:53:08 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBC09-00CVz0-04
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 10:53:06 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a00cbb83c80so81813166b.0
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 02:53:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701946380; x=1702551180; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AtCSycu5VoV4XGxtf8UzVv+51mWT6iBDiDsVSWX2wmQ=;
        b=bndz2Q4/JBg14onh9Vx2A6Qh3fqVxxkuupZnXrdvEZIKhc29O4CtwIKLLTmTHZvkch
         Ab3W65my0xiYiWBqDZ7H3aws/jSzmXaodhC5zbDc6ytKLbZdaU4ELLpHJhs8PELbLoRi
         DJhi0i7+UYrmN2ozetzmPwVAWLfYUeG/Hr4MHYfLdKUmqhcyBAkgciHqRG/684ZpK17+
         +ToqaTPNVVXuT1OGcXKvs2qk2myTwDD2uK40cOgCaNC67kUJQEWkuhVN/EzLqNi+WV77
         44awEvZojG6KxOCMhWU3Jhi1dkXnSYeYp54dpB5kCw8MF6m99/1p2LQ+RK/pPKOYptgW
         xXTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701946380; x=1702551180;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AtCSycu5VoV4XGxtf8UzVv+51mWT6iBDiDsVSWX2wmQ=;
        b=h5EtX5KHrEuL8g8OpbhTPXeT2A0NxQdh4fkR9216PTon2rNH6W/UldTKSCeYYSkMMP
         MSTCfEXd/mPJyCRFLsvrO3pcMsTSxKLDes8p1Lj/LAKyESSxnP9QSFQlXZeLDY1YBdAY
         AYTkEN9qWo2lqpRUwPatz+kBQ6VTn/ODrczJaa90aMzqoV9SK6qtSJXrqKSG2W8HTYkC
         MnnqBOyCAk085ktstpYRzQEvhOMn3jHo5CzHKlSgcaCfPN27dyUMRIboYZQy1ChMuNcA
         iFXfXIMJsLRzC9/x/efIEu/5F5PKnviiW5BVaatgeLy3LGVFwchLYBMp+GqctlgtStC2
         KQLw==
X-Gm-Message-State: AOJu0Yyd1cYs9ks+s/0T0cUQabrZ5JYftRsUDJ4ZA1B/nhCjmMD61Cuz
	mPJAHpInX7AOdhMKCM/egtyRrA==
X-Google-Smtp-Source: AGHT+IFZAW6iGHIUOWPQlYEIASIETzRu7Kbq8+GrvsORtO8W4NYmCpiJpraQ3A5q8w+f5CAqnaWQHw==
X-Received: by 2002:a17:906:12:b0:a01:a193:1d56 with SMTP id 18-20020a170906001200b00a01a1931d56mr1427724eja.14.1701946380521;
        Thu, 07 Dec 2023 02:53:00 -0800 (PST)
Received: from [127.0.1.1] ([82.79.186.233])
        by smtp.gmail.com with ESMTPSA id k23-20020a1709063e1700b00a1db8b08610sm668700eji.148.2023.12.07.02.52.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 02:53:00 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v3 0/3] phy: qcom: edp: Add support for X1E80100
Date: Thu, 07 Dec 2023 12:52:47 +0200
Message-Id: <20231122-phy-qualcomm-edp-x1e80100-v3-0-576fc4e9559d@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAP+jcWUC/42NQQ6DIBQFr9KwLg0fapSueo+mC9SPkCBYqEZjv
 HvRXXcu5yVvZiUJo8VEHpeVRJxsssFnENcLaYzyHVLbZiaccQHAOR3MQj+jck3oe4rtQGfAigF
 jVBVlA4XWWvCa5H+tEtI6Kt+YbPCjc3kcImo7H8HXO7Ox6RvicvQn2NczqQlo7kkpKikZtrV4O
 utVDLcQO7JrJ35axbMK4I5lJTUDWfyptm37Ab+EthcjAQAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2332; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=J0EO7EFg1UUSjme4RsWRaM9iONQtXhLwbGIIZFOz4eQ=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlcaQBe5bGJRePDF3FebwqZ6aTKwsnphqkGo1c1
 zwZfP/GC8CJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZXGkAQAKCRAbX0TJAJUV
 VlSWD/9EuCWKfjtiFjobk3uxsDeMKlEyfKMAURDentVCqtx/tdduq+aN2Paubjw8qIhYFax0ozD
 neobZgMzFaQmvOZMM5pBO3c8+BH8lEG8JLTI5MXXlhPsEdf9WR1rbml95OcE2JPprTbtj86Aus6
 6nBw58IPFJo0BciOkTNSMnCHtfWxPTQj47qxIHvnawGXtXmMJDSjTeml5MBz0X6CzDeGTs8Kvkq
 mkgBWLPkjnQDkDc5puoGNcbIgxE/zyh2HErKs1XCy/kbds7ZPvUE3j2jnLLh5Rx2lJ0K8R7A3Ed
 mCfvf1cbXPF8ntdGUaeoyekEEQSIIGcnwyPZwKUxIIOtNUgOsuidcLxCMONth9XZvTEbh6KqztF
 gaVsRR+IHLH9hBYrC7AkLNvY5mg468QY+jRbBZ54QpBPTdc3LVkuaqc7GHdBnYh3M+tOhEaVk/q
 tn6fN/EHTcDK1aeaTQjOgBDfZV4lJKbndbaTejHAq/84/YDpvPOnlbT7qhP7GV/TWKe+4waOi1/
 UmPpQjpBB2hIy1hUuBblQhj26ekUtjcZSBSgaWL9YCtRGqQbgvtzijTbpt7uHyFLZu7JpnAxlNp
 zuCOUWysDY/ceX4muA8bLxOmAjGHkd96vIsFWnYw5P5t7h++u1kR9zO32swP6a10M8A6XF0m1QH
 dMVZFfDD9qSNabA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_025305_064588_16D2685D 
X-CRM114-Status: GOOD (  12.14  )
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

Now, the X1E80100 uses QMP COM v6 registers, so it is added here. This
required configuration-based register offsets support, so that's done
here as well. Then, the legacy "PHY type" specific compatible should not
be used by newer platforms, so the platform-specific configurations have
been added. Rest of it is pretty much variables renaming to make their
use more obvious.

Only tested this on the X1E80100 CRD. Need to test it on at least one
legacy with "PHY type" compatible platforms.

This patchset depends on the QSERDES_V6_COM_SSC_ADJ_PER1 register offset
added by the following patchset:

https://lore.kernel.org/all/20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v3:
- The whole support for COM v6 register offsets has been reworked from scratch.
- The bindings now document the phy-type property. (dropped Krzysztof's R-b tag)
- New patch for adding PHY_TYPE_EDP into bindings header file.
- Link to v2: https://lore.kernel.org/r/20231122-phy-qualcomm-edp-x1e80100-v2-0-114e789f0195@linaro.org

Changes in v2:
- Added Krzysztof's R-b tag
- Re-worded commit message for bindings to suggest same PHY can work in
  both eDP and DP mode rather than being different PHY types.
- Implemented different qcom_edp_configure_ssc and
  qcom_edp_configure_pll for each version of the PHY.
- Dropped the cfg8 override in qcom_edp_phy_init
- Used enum instead of defines for PHY versions
- Link to v1: https://lore.kernel.org/r/20231122-phy-qualcomm-edp-x1e80100-v1-0-a9938990edb3@linaro.org

---
Abel Vesa (3):
      dt-bindings: phy: Add PHY_TYPE_EDP definition
      dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles
      phy: qcom: edp: Add support for X1E80100 PHY

 .../devicetree/bindings/phy/qcom,edp-phy.yaml      |  15 +
 drivers/phy/qualcomm/phy-qcom-edp.c                | 583 +++++++++++++++++----
 include/dt-bindings/phy/phy.h                      |   1 +
 3 files changed, 506 insertions(+), 93 deletions(-)
---
base-commit: 629a3b49f3f957e975253c54846090b8d5ed2e9b
change-id: 20231122-phy-qualcomm-edp-x1e80100-a57c15fff32b

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
