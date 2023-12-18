Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5779CC35274
	for <linux-phy@archiver.kernel.org>; Mon, 18 Dec 2023 13:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J3zcoIKzhN/U1o2ZFx79uBs7P74z74VGGf0JWLvJsfU=; b=wefwmzNuVVMjON
	NAajpGE1m1fH1QczKh/0/puueHYwk5lIBHXm8SnuDu+l7iNycMGJrrU0wjsxaFSF0ngYO/g5Zqun3
	iAvMtKz3cTuH3yrpLCcw0VHwjaBIFqmxrNkII9d7ESVgpGZsj4+ioak21zivCZgczUS7CX/3QJDxa
	a1sIzhp2gndQm+MvuCfBYqeGb0icPq9xMvap9mir1wMc5J8vJpGiS38PJ30M2ch4HPTOIl5+l8Jmd
	iPjAMIBWtU/uCnuUc33yyfF99QHS85vlDTlFLfAXO7nP2VVY9I0sf9aTkkd3O0O0qpwPrWDCExNik
	s8Qw307MPiT27XxgbKwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFDJr-00AmcQ-0E;
	Mon, 18 Dec 2023 13:06:03 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFDJo-00AmbX-2Q
	for linux-phy@lists.infradead.org;
	Mon, 18 Dec 2023 13:06:02 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-55372c1338bso497155a12.2
        for <linux-phy@lists.infradead.org>; Mon, 18 Dec 2023 05:05:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702904757; x=1703509557; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zf8GU1jucs6jTjct5l69bmCFz5L/L0QfZmLNB/CjUWs=;
        b=oOHb8hqGUijg6/WI8C3rp6WrQ5JQbcyuOn7KjsCmYpcSF7KbiPLRObYMFrSgsTbldj
         cZtOcIrTY0LrTjZNkppaIslGm+QlYGMwCUViRlUeb8Oz6AQPKITJzSzMebdoWJreR7JI
         6sni1yhdZZN31obmRDsQOLjpwTeBEJWYTsDYuunVndA/5iJYuUa72OZpMu/AVNKCuNgW
         lu7GxXyxUtsRUR0rI+YxAqUN2k59be4MuK9mY6bocUAnpXPnlSc+L+voqGRnov9uRO0R
         a3NwMshRpT+SvyEQvUVCeu6fRsU/K7YIUAgQaCz4xJdj9edwG51FW7ZMe1pBJHFgV+FX
         rfmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702904757; x=1703509557;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zf8GU1jucs6jTjct5l69bmCFz5L/L0QfZmLNB/CjUWs=;
        b=fjkkzxU6qVOn3W4GflUt3YPfTZMIUO2fP709oxwBZBzfIju7vdj4BHcEupZ2G6xFIz
         fp5d9cv/2WMyz2egkU3QrKyRp4DjgDwp3i9A/q5XdbtAF8LCMEc/zwMzk86IUOARBxcT
         mLe6HVu65tqnQkEsVJsjjlYZnqo/ID3W5U003vloxGwy+LjONn46KPHp7Wq8ivuCtsuC
         ejD+E7DHKZxVhfrIVQjJaL/wT3gN2UjRMozO+NM+4WJng4YoRMnlFTOfJPgMOpcrzsI9
         d1iFlJ83thNJajgA+uaJsalT4YE14JWLLG1DYUDVFxuu7g55RR1D4lC0x/ArDL0zqBac
         7y1Q==
X-Gm-Message-State: AOJu0Yyxaw8HKhMA0YZOWb/a7yUmXK7Dp47sHsY3xqKXaJ0ijs44iwLI
	e97Aq8ol3922RlsK2X++0GCy6Q==
X-Google-Smtp-Source: AGHT+IEdbcnRsIGQQTEEoVP0zaBZsY9T309dnnP5VQFvrOWCpgKybfRfxBuGkcwem1DLUb2bJvNoFw==
X-Received: by 2002:a50:bb49:0:b0:54b:d16:4c4b with SMTP id y67-20020a50bb49000000b0054b0d164c4bmr8502094ede.19.1702904756948;
        Mon, 18 Dec 2023 05:05:56 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id bt13-20020a0564020a4d00b00551d6d51401sm5943048edb.53.2023.12.18.05.05.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 05:05:56 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	stable@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: fix path to header
Date: Mon, 18 Dec 2023 14:05:53 +0100
Message-Id: <20231218130553.45893-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_050600_790070_ECA8E9C1 
X-CRM114-Status: UNSURE (   8.41  )
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

Fix the path to bindings header in description.

Fixes: e1c4c5436b4a ("dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp binding")
Cc: <stable@vger.kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml           | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index ae83cb8cb21f..59d34a2a2196 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -63,12 +63,12 @@ properties:
   "#clock-cells":
     const: 1
     description:
-      See include/dt-bindings/dt-bindings/phy/phy-qcom-qmp.h
+      See include/dt-bindings/phy/phy-qcom-qmp.h
 
   "#phy-cells":
     const: 1
     description:
-      See include/dt-bindings/dt-bindings/phy/phy-qcom-qmp.h
+      See include/dt-bindings/phy/phy-qcom-qmp.h
 
   orientation-switch:
     description:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
