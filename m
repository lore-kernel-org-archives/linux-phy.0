Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C023BC3DA79
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jan 2024 01:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bM8Qq5AIJ5rugFpEv3nJSc2bQUzMyAXvivMkQdIwtoQ=; b=jDYFDZdFxGBrWv
	BslR8/eTob8Hn/mLSiXzrDhFzrE1CGF2RlJEF8fkwIwzHvqwzvaa778aKPxB6YL9q4K2iAjARMHga
	XOVNhzEqXWmLtGPLxOFcHxzL1pq05uKrkGAMyP6neoqOgu7/KPtMNqLgl7uRmhLtupq6HkNviHfGS
	tn6M9XqtgtwMCjJ/XDIVKnvP+XIXEX2F5h4AdJFjOOxlVifrGcPYIO54zKD8lQWNA3u03P7OClVHZ
	MRDAdmr1Gx/kDGyKLBXmuNsHGA6qx/VdmciEDH3xmLYWw9ZuSbgIdYsOUmyXLMzUGVzxb4EB1dcZx
	lOTjimDYVRoCAfb0uYIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXwb-00AdaL-1J;
	Tue, 16 Jan 2024 01:08:45 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXwY-00AdWv-0p
	for linux-phy@lists.infradead.org;
	Tue, 16 Jan 2024 01:08:43 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50eaa8b447bso10307781e87.1
        for <linux-phy@lists.infradead.org>; Mon, 15 Jan 2024 17:08:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705367318; x=1705972118; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+IviJOxjWGSwzTR6EUReJVzvbpTGAhShFaB+riIyipo=;
        b=K6mFAMPYg5B4dWxevRfPX5qQrfF+kKMJ0NV88PplnxBwaOlKa8JepuONbQBbaEd2wh
         fkkBFDYbN9AqLq48trZY5qZdakmXSEWwLltxJjFw/W9gE9y48M38pE5gDI3TmGFNTXx5
         bE6w2hurXBYcbChNevvoRB7Tc1YN3eNlk6J3jPkY5MF1Cea7fAYaZGI4MsvGV4Yy2j6f
         ZnxtFib+aF+flO+LYlh7YuDuKtGGBCB3vd+dkX4bIviK48Be6CNJTWCDR8weMgiNkVGg
         /4JHdHCza/OmBtGmLR3cwrm8Nn8QgbZfrKZPh8oYTmHf2UY9ZTCp0SULljVYYIppqyn7
         OaAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705367318; x=1705972118;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+IviJOxjWGSwzTR6EUReJVzvbpTGAhShFaB+riIyipo=;
        b=DK8aPFJ714lLX0UajkS4xbS+6S6pTfoazDrEKp56Jta8FjvA+DY8rnmJ/lVwwszw9x
         xunuZgdQuG6oLBjGwZ6z2i2MLKXWG60yhsN3A7Pcydh2FXxhvQAxGpiz+t0bPMMIufCF
         1oifiKwYZfPq1yMH5kYAac0J28jtJUPnSGv6f3KnUCI1h1AggZ/qRLdC2fBPhPXvxbwx
         9h/A1rQL3V6Mg5QsEKw3fTUG6z+41NQbwtCEBSSH5yGNovh1n3q7xvsAPip5IUCVWuZq
         oPztbieYfjLgXpbKULbzKUR691ppDt/HbKvok7f/zt/XnevBzFB1oZgwAIz12F77KPn1
         //sw==
X-Gm-Message-State: AOJu0YyN3DH+9KgL5QE4CaqsnuOEWDKdw7LAxdWgIYc1yLCkOHDEWm16
	2/dMcIFcWhgzxAJJA+6bgGAyeeoG8MRKjw==
X-Google-Smtp-Source: AGHT+IGrrM4Vbmgr9m12MkFjiL7ZBoX2UKNafshAVTocDeAOpDoy1fFCyn2nwh999ekX59TtMHjDVQ==
X-Received: by 2002:a19:3858:0:b0:50e:8119:21e2 with SMTP id d24-20020a193858000000b0050e811921e2mr1271898lfj.173.1705367317821;
        Mon, 15 Jan 2024 17:08:37 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id t3-20020a056512208300b0050eb2325472sm1615507lfr.37.2024.01.15.17.08.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 17:08:37 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 0/6] phy: qcom: qmp-usbc: properly handle the clamping
 register
Date: Tue, 16 Jan 2024 03:08:26 +0200
Message-Id: <20240116-usbc-phy-vls-clamp-v1-0-73b2da7691c5@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAArXpWUC/x3MSwqAMAwA0atI1gaaIqJeRVxoTTXgpzQoinh3i
 8u3mHlAOQorNNkDkU9R2bcEyjNwc79NjDImgzW2MEQlHjo4DPON56Loln4NSIaqmv3oPFlIYYj
 s5fqnbfe+H3pA0O9kAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2378;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=WG5aoSjp586WL8fOrnwJNKotljm9XIOQ6TGo0OqnhCc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlpdcTr1oe+6CLVOtN9B/dycfQoAVk5pta/8upp
 iDb/y6OUxaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaXXEwAKCRCLPIo+Aiko
 1ap0B/9ovzVFK9v82KghdYiMVc/RTDWisUCoN8ysBMXfg1gTckg9THhviCVdADVVqMDQIKT2FMq
 tOnbYV7vMCj9G3RFCCJawBBnIsuGKYnSZx1a77GGIiCpN/V0pBFy+lRfVyvv8zvUR5DvjFNoNr/
 C48o5cgQbwlHT3zXr5scZt/eQUC9tE0QN9lXCuDtxGQbIP7lzQDmn3sP2rXroZvoNxrHc/QyOJ0
 lCIZLHfGtzDBXKLjNxOSxDYeDhd1x7IZC0nWOPbAQ0bDau5WZ+f+l2fF3Xd8f8FOE5cKD6wYpn4
 mXf8OT9ACsxscR4a/+j5dQRL4eBsVJQZhiNBzX8HkFpJo/vz
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_170842_323479_91F9F4BA 
X-CRM114-Status: UNSURE (   9.15  )
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

The USB-C PHY on the MSM8998, QCM2290, SM6115 and several other platforms
doesn't have built-in PCS_MISC_CLAMP_ENABLE register. Instead clamping
is handled separately via the register in the TCSR space. Make the new
phy-qcom-qmp-usbc driver correctly handle the clamp register.

For backwards compatibility the driver treats these registers as
optional. They are only required for the PHY suspend/resume. However the
schema declares corresponding property as required, it should be present
on all relevant platforms.

At this point I'm not sure whether having a single TCSR-based register
will be enough or whether we will have to add more TCSR registers in
future. In order to avoid repeating TCSR handle (and having multiple
instances of TCSR regmap in the driver) use qcom,tcsr-reg property
rather than someting more exact like qcom,vls-clamp-reg.

Dependecies: PHY-related changes of [1]

Note for the backporters: if the patch is packported to the kernel
before the phy-qocm-qmp-usbc split, the phy-qcom-qmp-usb driver needs to
handle both PCS_MISC_CLAMP_ENABLE and VLS_CLAMP registers as optional.

[1] https://lore.kernel.org/linux-arm-msm/20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org/

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Dmitry Baryshkov (6):
      dt-bindings: mfd: qcom,tcsr: Add compatibles for QCM2290 and SM6115
      dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: add TCSR registers
      phy: qcom: qmp-usbc: handle CLAMP register in a correct way
      arm64: dts: qcom: msm8998: declare VLS CLAMP register for USB3 PHY
      arm64: dts: qcom: qcm2290: declare VLS CLAMP register for USB3 PHY
      arm64: dts: qcom: sm6115: declare VLS CLAMP register for USB3 PHY

 .../devicetree/bindings/mfd/qcom,tcsr.yaml         |  2 +
 .../bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml    | 11 +++++
 arch/arm64/boot/dts/qcom/msm8998.dtsi              |  2 +
 arch/arm64/boot/dts/qcom/qcm2290.dtsi              |  7 ++++
 arch/arm64/boot/dts/qcom/sm6115.dtsi               |  7 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c           | 48 +++++++++++++++++-----
 6 files changed, 66 insertions(+), 11 deletions(-)
---
base-commit: d0f9c0b672a974d32c40d369f63e441a7dd66d74
change-id: 20240116-usbc-phy-vls-clamp-10189efdcf12

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
