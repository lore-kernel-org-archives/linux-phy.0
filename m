Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B57FC05027
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 14:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NpKgQgZHs3i2FnBdbeoxUMYa/V889SAmgarXxsM0/qc=; b=P/i5RrtLRjstva
	BU1F3+X/TiCEmgZb9xg4s3EF5pkmjotFM/+Yb6t3Dcm455zZogKgPmcis+1YTU0L1yMv/EUlmrayI
	jDZGpZijOe1Kp57mLci+vgar3xzVqxFH2MINUa6SSrNPSqLvR4XWeoH8RWSxOSwb0T2dRX4TmtSfK
	J8xydj7EYKc7qSzOosUbAvo8k6fx8ebU3MjwZC0J4TUrgg2vCxK5812dHSaMivDM7/e31giAY5PH1
	3/D343lXHOpCHxW4/H2TCtMNnYCbdgat8CUGVl8e1Xz7sRRFfj7v9cvJkXlsO/keDFFCaPuVFclEW
	jZ3tX91RIbTAGDDSHEVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNacD-00GAQu-C5; Thu, 02 Feb 2023 14:31:05 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZab-00G088-P5
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 13:25:23 +0000
Received: by mail-wm1-x32a.google.com with SMTP id n13so1375899wmr.4
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 05:25:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x8m91VYv/puejzL5MHZVbxMAIVE7uLqM3nM5Mvkt490=;
        b=hrS+NVJcmJxEOfn3RPLq2dveF8YHZO8VaeMxSgRVyFtndX+Ew87vIZAIxSlXjyS2ee
         r4MNN81WsibhyqQI7ETHy0f+Chms1gyi+uK16nV78C5WdW+QsRvgTWJ3w4S0piunTCS8
         sYckFqhaBr2sUaPRFWItOfaTcb+e39GviWZ2q3ZETOLd9PGq7pX68pbEtOWZfsAVO+bB
         4+Z/wkqX3mCJixPz0Lz+qnAJMFG6c795ckK2dKtrtX6rwZa9jL+9xxxH7nME+niMKwN2
         Fc+O/XzCj+dm5i5m0QphwyeTx9eXQWxxHer2iZydXk3Dk+EYjo9KK23Vrm+mxFOW4eJg
         B+cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x8m91VYv/puejzL5MHZVbxMAIVE7uLqM3nM5Mvkt490=;
        b=B2Gg4h+3QIMq6aSbpWPduLpzDiuZ8xPJniVzK7hFw9dGD0pNxadkayNDNVgQfdRqJM
         anJ+Ef4WXF4aLMc8AxCO6L7dgU7X1L+vjrEi9DenPLxcdTgN3tDQ765vOTDicoD8ex77
         ey5O5JiV7zGlN84kRdMGxxnAuEV+/7nNH2+ErxYTns+di4DYdhWya/E3x9rR2qsPfduw
         BS/A8n4PYycWHAFAC1+i+a7TSSlcKqj4Ni0F8hEP3F8Kt8OoLq6YLs8zNmuxwIT9GhNK
         SAeAxJRi9SQf6AlYSEXMdSGo8ZB2iDEN+oTMpJbJAMbtOGJbo/lrdzREFKdyIthmu539
         nTqw==
X-Gm-Message-State: AO0yUKVE3X4gIa8/wXFWWHDeah3kPER8iyy6Lm/fjC4q/KkVAXlqgd6B
	Djobavngf0OzQEhOFGWmJPfKag==
X-Google-Smtp-Source: AK7set+G+wQtSO3rtMGGB8DGu8P4Ka1TkKTHl23T4DSx+skrnYCpDBIePlmEigCVQOtMISpTLbgyGQ==
X-Received: by 2002:a05:600c:4fc3:b0:3db:2252:e50e with SMTP id o3-20020a05600c4fc300b003db2252e50emr5590843wmq.24.1675344318117;
        Thu, 02 Feb 2023 05:25:18 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id e22-20020a05600c449600b003db06224953sm4690943wmo.41.2023.02.02.05.25.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 05:25:17 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 3/8] dt-bindings: phy: qcom,qmp-usb: Document SM8550 compatible
Date: Thu,  2 Feb 2023 15:25:06 +0200
Message-Id: <20230202132511.3983095-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202132511.3983095-1-abel.vesa@linaro.org>
References: <20230202132511.3983095-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_052521_830381_3E67115D 
X-CRM114-Status: UNSURE (   8.81  )
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

Add the SM8550 compatible to the list.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
---

The v3 version of this patch was here:
https://lore.kernel.org/all/20230126131415.1453741-4-abel.vesa@linaro.org/

Changes since v3:
 * added Rob's A-b tag

Changes since v2:
 * none

Changes since v1:
 * moved to sc8280xp bindings

 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml   | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 6f31693d9868..ec00fbc06abe 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     enum:
       - qcom,sc8280xp-qmp-usb43dp-phy
+      - qcom,sm8550-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
