Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1C00C47074
	for <linux-phy@archiver.kernel.org>; Mon, 25 Dec 2023 12:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LNny+Brs5BVa0V7Mx4nbYlF3ekG1VLOJ8X4xJ60+QF0=; b=WAFIG8bra1DWQZ
	mQWvMP3Y/wLzsIkBKiuZl8M/SlnTHB+dQo4DZ/yQvzVJ50iTbM8WPFoMg8eFf3nSi8joPYyK5p+b4
	RJVvTlWzyGIKjNsJ/tKHBV3Yk8C8mbvk4aNQFwrHV806G1DsGAaN1LWh58/aSVZs5Q1BHIpCQzTeD
	Q0BkRd2DtvvRK3xMezbIRxCV1el88RXJ6Qka0R6NLPuBX7XdHJl46Cac6MXXIXN3CJ48Lwz4RSIN0
	i/af4eppf3Is+nGKRd4dm/AUCUICQ7Lj1gMNnBjoZ2x6NxxUCPCFBsM6px4ZhMS+57nqjV7pDlwCt
	I9iSEfb0uGd0svFQanvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHjgN-00AmuA-1S;
	Mon, 25 Dec 2023 12:03:43 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHjgK-00AmpP-0U
	for linux-phy@lists.infradead.org;
	Mon, 25 Dec 2023 12:03:41 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40d4103aed7so44314705e9.3
        for <linux-phy@lists.infradead.org>; Mon, 25 Dec 2023 04:03:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703505818; x=1704110618; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Gxdj5UfxaQ2nq7Garedy2IKp2jkZmEQCBZViAgVV5Q=;
        b=XEUVdI896fCKaJ/sDzhv30T/Z62exkc6BLScwdtNw+AsPZo/PyDsn5jo5ZWc6LMQJ6
         io9HUOW6mA3SJeoT8Yj4EGzKOgSJVQ6PT0HFKygnSDPjkWwaRni+XU8RyAoAyXBKASOA
         6VoUmMnu/8NR1Vabo3Ej7f8qizoBQMrKnXRRVo7KxBReJRqlEwCKFXZQ+HrLTTKPQ+rw
         RSSfxC3rG6VNJYHj2pdA6eKDMPHb8sk7x60+Nfw/6HPQULVRRIiFzkqDLwCIYUbNuo7z
         +rK2fXV5VKH1d17c5t9JyYynOuJqIQ0CzSMkTAvQmSNMUz8826OFo3g2jIEXvZ3ICErC
         jWEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703505818; x=1704110618;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Gxdj5UfxaQ2nq7Garedy2IKp2jkZmEQCBZViAgVV5Q=;
        b=waZF7dRwVzc7IsBr1mfd1Sf+dG/Uu06QXz1W86r1hMiHll6G5llF/RUHQ7jHvfvSvB
         jNcUwypqJ+/+7yoAdMGTwnTta8Ju1VAnprPTbhSkCe6En1JspWdHu9yu19mo93cjNRHL
         /01dw6M3Cpw4hzzr3LDZ+2BTFND5LG6xs/k6sQuF4Hi/gOVHplfWeqFwM+3Jfi6YlNvc
         vA0TxEfSJGW3mCNsQlHXMzJRZoeVK+Zfw5HHBIZ6sHZh2Wl3tF5exwtSNtoUde2kXiW8
         LNxpsYbOMp5TaM7eauIw21fxqbs69OS83T02vu41hTW+0ETI37+MHONtZdnmCxqdCW8y
         32mg==
X-Gm-Message-State: AOJu0Yx2cTXEZBBh4o33ZwzqgBUHY+x0E140gvkKv94rkwaBP3FAfSG7
	dwhviI3cQsIq0GfHry9NfU4=
X-Google-Smtp-Source: AGHT+IGLVJrESYMJwVtRrpww8sntaJmSBENn5rNt/9kodDNpzCduK7JfelgPVdm4oLgRlJyH/+NfAA==
X-Received: by 2002:a7b:cd8b:0:b0:40d:2f89:2dfa with SMTP id y11-20020a7bcd8b000000b0040d2f892dfamr3349971wmj.50.1703505818162;
        Mon, 25 Dec 2023 04:03:38 -0800 (PST)
Received: from david-ryuzu.fritz.box ([178.26.111.208])
        by smtp.googlemail.com with ESMTPSA id 14-20020a05600c020e00b0040d23cea7bcsm6349456wmi.1.2023.12.25.04.03.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Dec 2023 04:03:37 -0800 (PST)
From: David Wronek <davidwronek@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S . Miller" <davem@davemloft.net>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Joe Mason <buddyjojo06@outlook.com>,
	hexdump0815@googlemail.com
Cc: cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	David Wronek <davidwronek@gmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v3 3/8] dt-bindings: phy: Add QMP UFS PHY compatible for SC7180
Date: Mon, 25 Dec 2023 12:59:56 +0100
Message-ID: <20231225120327.166160-4-davidwronek@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231225120327.166160-1-davidwronek@gmail.com>
References: <20231225120327.166160-1-davidwronek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_040340_193279_5285C54D 
X-CRM114-Status: UNSURE (   8.30  )
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

Document the QMP UFS PHY compatible for SC7180

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 8474eef8d0ff..5faa1cb3a12e 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -19,6 +19,7 @@ properties:
       - qcom,msm8996-qmp-ufs-phy
       - qcom,msm8998-qmp-ufs-phy
       - qcom,sa8775p-qmp-ufs-phy
+      - qcom,sc7180-qmp-ufs-phy
       - qcom,sc7280-qmp-ufs-phy
       - qcom,sc8180x-qmp-ufs-phy
       - qcom,sc8280xp-qmp-ufs-phy
@@ -102,6 +103,7 @@ allOf:
           contains:
             enum:
               - qcom,msm8998-qmp-ufs-phy
+              - qcom,sc7180-qmp-ufs-phy
               - qcom,sc8180x-qmp-ufs-phy
               - qcom,sc8280xp-qmp-ufs-phy
               - qcom,sdm845-qmp-ufs-phy
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
