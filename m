Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C0C8C7EE45
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iQGwY3L0oVWYjPYdqw/xb5TJ9QiM703DlyT4HuGLrsE=; b=xrqzFG5cxhp2VS
	qaKkEN8aGTjc39LHXPGn7B1RfnnYPvPMxsmRbodicjxuoaecGw4DsxwLW9HpAo8nt66t4jDxX1/8K
	6YM7s7UM+GXMz74RkSYg2IhsxycWF64fxuCmOA3TViJJLVyZM9KQTAabaV5aekQStNC6J0uBPCiqO
	QOiy6Qly3uyjU7gs3Oo3ivhTWHuRPFbq1og5AJ8lsc2kWGmfI4LuMR3i6vYOLspgXFvuU2CnRrhHi
	xtFORVeDW/+RmEA9WzaaEqJekdJnIuu+6hBec5ZHzjIUEVLnbUxs+0eEXJKYle90nij5ZbYPXkkWD
	yE37QAe4VBCqk2yxnlcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dnZ-003HNj-0e;
	Mon, 12 Jun 2023 09:25:17 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dnC-003Gzq-14
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:24:55 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-3f739ec88b2so29384385e9.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561894; x=1689153894;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O/BwPT61gNb/fpvsQAhaitGbvL3MEPuuuuNNy2pTzoE=;
        b=KHKdjQnx0PTEmRzkJeZY3O856gAgS3Hdc359skiRzSs2ciEHOPaOFgjUVc/wO0JOvu
         8QRdBnSv+EpJxtw+vLXcuZ2cXgNGtF894/O/Z/fQDBOMUUO//qoKGVyNWVnPGZblfP7S
         9fuhxIDMQebFvrJhPuZ4btq9pjjepa44vnED5QD5aXI9zMok4d/PF4D+0jEWDMXfujCn
         oPpYG9VmBg5YBg8Rw5qGxzf6uNUd6/FJit9UvVSVn7GOGDFdSxBGLyVDpcVg6UUUn4Py
         1unlaSr7kVEPk0ryxuCCi9hRPqDELZuCqySYJWzNODdIiuQcCRL71x4NS7A49Xm3HIc2
         nw5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561894; x=1689153894;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O/BwPT61gNb/fpvsQAhaitGbvL3MEPuuuuNNy2pTzoE=;
        b=c4dKYrFOonwbbCZwHQW1YqVikoz2+kcEp9Ffxd/7ERyb49BaNOwKPEBBLOoWTXx+xd
         jnteXMytXGiPNI2uSVSBdIIPcbEIQNG4nUJQrMUKCTaAAE+v2zrXfDkV52ClUxi7lcwF
         TOi+7/8HKV+P++kIzYj+f3ZDlDigNRqCX/Ko8rkenPqCprtCvYyZ6/qq7Hw9kq3PnW/1
         1CCMIaU9c6uSTB655Z9LLpN1p/kBO/h0qBRhiMH1ToJl3h6KAa1ensCfsY28KmbdV8H3
         jI/FUaZIp68GM1rMMcnWlQ837fovJoT6ITUBDzC52DQ9sUg/fJF344FBqJ6Kyycur6aO
         As+g==
X-Gm-Message-State: AC+VfDztJfESsistf/dUOmx8Hj1uUhx5czpxRIQ6t4dnyn+9cg7/uzoz
	Uh96AWGAXCY0+/mfCFQSG67vSg==
X-Google-Smtp-Source: ACHHUZ4E3nyef5IaWSpbvQhPsPLIUwzbLrCVEH1BYy2PCoLie+du+ZB9jNZyHE7R35n0ahbM/lttWA==
X-Received: by 2002:a05:600c:299:b0:3f6:444:b344 with SMTP id 25-20020a05600c029900b003f60444b344mr5600857wmk.34.1686561893854;
        Mon, 12 Jun 2023 02:24:53 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:53 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Vinod Koul <vkoul@kernel.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 19/26] dt-bindings: net: snps,dwmac: add compatible for sa8775p ethqos
Date: Mon, 12 Jun 2023 11:23:48 +0200
Message-Id: <20230612092355.87937-20-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_022454_367192_2681FF04 
X-CRM114-Status: UNSURE (   8.16  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add the compatible string for the MAC controller on sa8775p platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 Documentation/devicetree/bindings/net/snps,dwmac.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 363b3e3ea3a6..ddf9522a5dc2 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -67,6 +67,7 @@ properties:
         - loongson,ls2k-dwmac
         - loongson,ls7a-dwmac
         - qcom,qcs404-ethqos
+        - qcom,sa8775p-ethqos
         - qcom,sc8280xp-ethqos
         - qcom,sm8150-ethqos
         - renesas,r9a06g032-gmac
@@ -582,6 +583,7 @@ allOf:
               - ingenic,x1600-mac
               - ingenic,x1830-mac
               - ingenic,x2000-mac
+              - qcom,sa8775p-ethqos
               - qcom,sc8280xp-ethqos
               - snps,dwmac-3.50a
               - snps,dwmac-4.10a
@@ -638,6 +640,7 @@ allOf:
               - ingenic,x1830-mac
               - ingenic,x2000-mac
               - qcom,qcs404-ethqos
+              - qcom,sa8775p-ethqos
               - qcom,sc8280xp-ethqos
               - qcom,sm8150-ethqos
               - snps,dwmac-4.00
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
