Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F6BDC10DC1
	for <linux-phy@archiver.kernel.org>; Mon,  4 Dec 2023 13:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LAI09bNxh+2BRrPfIISUDOr90y/Piu9uK/7QWUqPTas=; b=K62yXUFl5YqKqr
	kgIjNV4rV3JaKYXtmuHGvx78TlimVnbcpCKSCJW3liwSjkAMVr03u4flTOZJ/nxVn9a8fx8iG7OvX
	QtlxSsVIeAz1d6tOOco0jWOzYZ5GEcJR/t0+StO2MBJj4JPlwaWKqD+lIk/ejXtYDkQqUoGSwrmZ+
	R3chrx4tiV55s9uB76PgjhY6TYadHKbHokZO7EvQqS31kFHgKOJne4iRjOhgs29cVPbefSL3TX8dp
	d1LtqkyCeYAx+tvB1PBikAIju35lrv6+/HAphik1EkKq48fGLkzdTNB5z13VJ0++Oe4yKQBNy3cmB
	51PT4G+f/yYxYUG/v51g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rA8g2-004OoJ-2W;
	Mon, 04 Dec 2023 13:07:58 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rA8fz-004Okk-1O
	for linux-phy@lists.infradead.org;
	Mon, 04 Dec 2023 13:07:57 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-40c0873cf84so15700245e9.1
        for <linux-phy@lists.infradead.org>; Mon, 04 Dec 2023 05:07:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701695274; x=1702300074; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0SVyYW6HMoNCW9ahkMqcZ8lqPYY7XQP+vwUVqyb0ygQ=;
        b=wUCkBYv7Li9H+Eg+zTN/hpGopXllcvbX3CAphDwUFDE96XyR84igIqd+RrNzzCrpzf
         rIUCDiuI5VmnQl+keR3ybbxOP6rmGaIy2XziUWE6Pp+5qmDoJTQQy/SiwEmlVLDXKKUH
         a7Q6XDUrobtJue7oEsL6bjoKtup4WNAWOp/0nS8QiEu0Rajrct8eFo0YjgIrJG2PnGsu
         4o5dbG+nwOYlpq5iWd6689XF1keD3xB8akUorxKKspSpndNPAiqh4kC+ivfaLG45DIN7
         1Jce1pXKsvRrj99Jh4unis7MV/RTDzJeRmIKAA7DAXNE7nx850hIDlhXJTrN+67V9ecb
         Bzyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701695274; x=1702300074;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0SVyYW6HMoNCW9ahkMqcZ8lqPYY7XQP+vwUVqyb0ygQ=;
        b=EsZppQuL2MA+9PJ2ZrF21X1tQ02gryRgKLB+8dcwW6rryEm0vu1acn3TXhvLazY71m
         uN1ZbFNVU20wYWcwmAwmuuk6Uyq2n2QIUkNrcZmp2saGYf33Sp5BXIOj/qhDTOInaMtc
         X2PHL4j6VO4TFEniLzNvcDr1KWUfWZe9QrUQVDdIEh5rDjDJXDZlEqAnRTN1PAf+FFOP
         rRz6vuFYrcRwANAaAAM0pjGwpgFvCPy6Un5/5ctyDb+WUnBeukF+qBxd89PFN0dJCvpB
         90yGkZWH49fOuW3qqkUeFEtOL++sw8IpOSF319KoOyWQPP+kx50bRAYnKogEl0eOBn6W
         DhGQ==
X-Gm-Message-State: AOJu0YxKBkXmdj+Yh7bv12DYyB5j+jHiRFYwfh9ETY4Q/7JuY6zTHNG7
	XN94e8sHPazSCxberBQ5M5Yd5Q==
X-Google-Smtp-Source: AGHT+IFecRLXQz2AHpn4bOjQGLLjyAvR2s143US6vjsmmDLeqWRurF3VWG48Mt2S0ySIM+ApD18afw==
X-Received: by 2002:a05:600c:224d:b0:40b:625a:d8e3 with SMTP id a13-20020a05600c224d00b0040b625ad8e3mr2289968wmm.150.1701695273863;
        Mon, 04 Dec 2023 05:07:53 -0800 (PST)
Received: from [127.0.1.1] ([82.77.85.67])
        by smtp.gmail.com with ESMTPSA id n10-20020a05600c4f8a00b004053e9276easm18494166wmq.32.2023.12.04.05.07.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 05:07:53 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v2 0/7] phy: qcom: Add register offsets for v6 and v7
Date: Mon, 04 Dec 2023 15:07:34 +0200
Message-Id: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-0-21956ae0c5c3@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABbPbWUC/5WOQQ6DIBREr2JY9zf4VWq76j0aF6gfJVGwoLTGe
 PeiN2gymzeLN7MxT06TZ49kY46C9tqaCHhJWNNL0xHoNjJDjlmaIsLUr/Be5NDYcYQgjiCHcAN
 DH7BKeZo9FNQWWDZlqQSyqKqlJ6idNE0fZWYZhlhOjpT+ntuvKnKv/Wzdel4J6dH+uRpS4NDes
 5y3mUAh8uegjXT2al3Hqn3ff+UlirbuAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2164; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=N6WiaC0IuCi1ECGstgxOqRPHVLNEYuAK33Yhs193vd0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlbc8a+atua4Lv+IhEVqXjoaDuE/uoIZkAhn068
 61kaInVsWGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZW3PGgAKCRAbX0TJAJUV
 VonNEACr2PgUXJehYKPOc5JHpLfUGKTohkTStQ7f3xzwujMXpEqaIPe7zESp+SG2LuXlxVbub5E
 hu0MuM6ijQn5cHpMKaONrx0KM+doV6S8YTTUD1KpSoD4Wzd2bJZNT8MC+ySv+01beK/MBQNjf6Q
 KOJsQ22iBsPBV+SiYQfTm13ZctYSSkLkjH1ErZwGYv4I6FAELt9odz7Qs4LNn6U6RuDITsaC83u
 gn0EN8dhZInHslNtX5A0YHoozPjBRFyXoumDcnuA7TruqkyTAwlaDJSJ1aMclvziKf3zgPNGqpy
 BsPgYDMya9tq9SwmA4pEkwHCymggVXva/rpswV88qafjmoohIQd8Rfr8d45HOY9N8dXKbLx/ev7
 7NBSwUVNmkqBa5UV6D/ko1wZFmLbVIGR0t3xdpEKpzzpYECu+jlTDAIJjiBK+imvsfgxjDYbacY
 b9IjRdK9Nz5sjMXHrbgIRTXZ6VnHjQPO0uRrJfgWyJm6Khj/6e60jhGVxJgEEhOOBIWYEPzuLG/
 lkmhyplPar2fsQKu+95UqQ6Dud27lVpBUbpWksI0/6poeXFsqqQRnDBpVZ+ZbAa2e2mE7Aat/Fq
 Ipfpli+F8EtrTiXpul0KjavmxRdAqh3cdN/V2O9ao2MD1kT4nuH/69LagOUF9dwFoP3k/Ik3QoV
 T1UOVVaxWs8XhLw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_050755_503026_CE76A64F 
X-CRM114-Status: UNSURE (   8.11  )
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

This patchset adds some missing register offsets for the v6 and v6.20,
as well as the new v7 ones. These register offsets are used by the
new Qualcomm Snapdragon X Elite (X1E80100) platform.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v2:
- added Dmitry's R-b tag to patches no. 1, 2 and 6
- dropped the duplicates of PCS v7 offsets from USB PCS v7 header, like Dmitry suggested
- fixed comment to suggest v7 (instead of v6) in qserdes com v7 and pcs
  v7 header files, like Dmitry suggested
- renamed PCS v7 RX_CONFIG to CDR_RESET_TIME, which is the correct name
- dropped the "_USB" substring from the include guard of phy-qcom-qmp-qserdes-txrx-v7.h
- reordered the SO_GAIN_RATE_2 offset in the phy-qcom-qmp-qserdes-txrx-v6_20.h 
- Link to v1: https://lore.kernel.org/r/20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org

---
Abel Vesa (7):
      phy: qcom-qmp: qserdes-com: Add some more v6 register offsets
      phy: qcom-qmp: qserdes-txrx: Add some more v6.20 register offsets
      phy: qcom-qmp: pcs: Add v7 register offsets
      phy: qcom-qmp: pcs-usb: Add v7 register offsets
      phy: qcom-qmp: qserdes-com: Add v7 register offsets
      phy: qcom-qmp: qserdes-txrx: Add V6 N4 register offsets
      phy: qcom-qmp: qserdes-txrx: Add v7 register offsets

 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v7.h     | 15 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h         | 28 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h |  5 ++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v7.h | 86 ++++++++++++++++++++++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h    |  1 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h |  4 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h | 51 +++++++++++++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h    | 78 ++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  6 ++
 9 files changed, 274 insertions(+)
---
base-commit: 629a3b49f3f957e975253c54846090b8d5ed2e9b
change-id: 20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-5ed528c88f62

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
