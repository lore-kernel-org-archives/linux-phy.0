Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9995FC4167B
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 12:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wt3EW5CWNwvPw68SPoRpEJJ+D6V8Z1JBzx8leBdVZgA=; b=cQy2jMPGr5zsmt
	tyjZHU9+LMlf266JSOlzb2sYab6AcTyc63rdEWZ8UZkyL7RrTRClJTzoW7D8PIFmZPIVOGrurckm7
	WBfXwUUzOBf/r3Z2m1HpVXImYvZom6UxoyTBjOq/mlxvjuCz4SdFQTT9ZgSav8Dzz6S3cZMQIJl7e
	ff6Ggs23iQKf/5+gq36lk6qAyFe9oAVeRjC8P4TOB+PceRhYtPBibLjRxduX/WguOdrOrwdQqaIM6
	VgY+3e5Z/wgF2Q2k/2gzPreQ94TCPIxLks4cCxCQT1IJsTbEeK5TjAWFe3vCnFGmNPzU+l/dSW544
	xPvnMe8S19mkEWBB7uXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDaJ-00Cnbd-18;
	Thu, 07 Dec 2023 12:34:31 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDaG-00Cna5-0w
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 12:34:29 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-54917ef6c05so1198224a12.1
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 04:34:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701952466; x=1702557266; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pu5gT7dq+Lj5agumkZ3dAyGbeE9PHCB8yBb5zyxdgSM=;
        b=RSiN5NnvW2z2QNDQ97HFjBt5CzxCxL/zkAjqC2ZVnFkNfFkEtzI4XyaVpZpm6VTkQL
         Srmyz60I2a6kM4CLsIoZzeFViPs2T6g+6B7cxnnj/yBd5LlWAZUjRFOhomtfcM1A9G8k
         qXA8UAZwLxXYbJJyFo2Q2rL2tMCi4QNlrBhx3+3H6PJ6JkJSBElxTCQggLLC1Y5l0CeU
         eTDtuwyPAMfe75/QOJvon5J/96crIQ7z7cw441CLa/dQoVLYmbEoq59Cy7g1PFb4nG2b
         uklpKW2y/1/RuECpWlAdgPVvOFp0E6bTAI/cluqaSAubJlRtclYksE+SkKPqlSW5V6g2
         1dZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701952466; x=1702557266;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pu5gT7dq+Lj5agumkZ3dAyGbeE9PHCB8yBb5zyxdgSM=;
        b=MqEZgm3tiiYxJ2VTLuMBEbiuy5XWDhLvAwbwO6RdeQq+/Qf1FDpYdM+GzwUBlKULhr
         y0PGI/cCXoUW+Z779j7BFysVHdIkPFbsbgXuFHewCg57UklCnM18ZhyGgNarFBRJ8hEa
         QdL2dvYj/V167MYyc48S3N2tERy6XX7ngbwO8wwHTp2Twkkql+nKZAje0CpXmQfvgh0k
         mFnPz8hjpIOo8g9iJG6A5JUfXa+9rSrUmhvq03FOIzTrA5AWvQg+mAUtGlt0jj25v4XO
         ItbcYQehoFYCSGymkh13fzgryuercsZGKiQ1pNSpSZIWNrW/7JmNvWegyt1LRP0Wl7bT
         OVEQ==
X-Gm-Message-State: AOJu0YypBv+a/SgCU8AmPkuBk5OK4PykYDoRe+9VpVo01gdxJyRflTxq
	TJrWjaQMC8/lfvM/BFDi5UZwXA==
X-Google-Smtp-Source: AGHT+IFQXnJxhcpwGfXd39k+g4OXZsoSvZ5FCNPnXv+BjqFlyKZR0KR6qnibt1pjaodhZGjhGgs+oQ==
X-Received: by 2002:a50:8e1b:0:b0:54c:47cc:caf9 with SMTP id 27-20020a508e1b000000b0054c47cccaf9mr1129012edw.63.1701952465967;
        Thu, 07 Dec 2023 04:34:25 -0800 (PST)
Received: from [127.0.1.1] ([82.79.186.233])
        by smtp.gmail.com with ESMTPSA id c69-20020a509fcb000000b0054c86f882bcsm747331edf.22.2023.12.07.04.34.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 04:34:25 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 07 Dec 2023 14:34:11 +0200
Subject: [PATCH v3 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add
 X1E80100 USB PHY binding
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v3-1-273814c300f8@linaro.org>
References: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v3-0-273814c300f8@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v3-0-273814c300f8@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1429; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=utB1T7I75v9LzfmJ59Je25V4HOmp9C94RGZ7SpNNIrE=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlcbvM2PkimcgCpgUdiXAzddwccxNGISsRWCJoX
 W7YfF+JfdGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZXG7zAAKCRAbX0TJAJUV
 Vo2qD/9WM7vGXEYy5h4ZV4pSOeVZGTbHj5Tn6iqCsjKLRg9a62S7IXm9leZzatgX2z3GE4a7mrU
 Y76K7BgRA1ufuGNAicMWsf599AW+Ul/I7HjfZ1hErgZPiYhjO8W60urLBGjeUcCVI3e1YaAZ3Zo
 e4OBd9FE7Q5z3vIWA0kXz+ZeGHy1/az1Z0cmfAeQCMMZN9/BLXZRG9HEWiVUVfo/T1yimK2DuqO
 ib/S4YTQs97oSPy21WIwRzHczLPgCuroUW3WmtvXlozxF2hWryKfchCjP1huwqMZ7USRWyTR7sm
 Wi/ImufPYkX+L0a6qNJ3XQd/UMwuD2HprId491XmuoTIv5dGUUihzgv9IYtSRWnprZ6Itegmjpw
 V1u/eCry1UXwxYOPvB9bBnNDAiSJf3UkTz2kvY5vKl3Su2MCWjwCTbR9y2DjrZOUMkhWZ2CZ2PN
 YIcmyRBNysWBOI6keDqdl9Ohv/ZxPJV74BaTpHHxOK4Ss1Dv/HKboYnLeEfMz0GaNM9DGYGxIxV
 03b0dnOP8HpWaSYAu5vOAUHin64uBh5UQwZoLgz4VWiZ9IMrJYh1Ti+pKR1tAxIdKo+MBg1UYgU
 lpGMk/IkfZ6fcOJGaMTSlHbXxCpZMcqTdt6tComNTqe9y8iye/TLT7NHWdnhE0Flj+rYeB6QFnF
 Qc8gUuU/8CvZWQw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_043428_330122_0F3EE9FD 
X-CRM114-Status: UNSURE (   7.01  )
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

Add compatible string for Qualcomm QMP Super Speed (SS) UNI PHY found
in X1E80100.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index 57702f7f2a46..15d82c67f157 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -32,6 +32,7 @@ properties:
       - qcom,sm8150-qmp-usb3-uni-phy
       - qcom,sm8250-qmp-usb3-uni-phy
       - qcom,sm8350-qmp-usb3-uni-phy
+      - qcom,x1e80100-qmp-usb3-uni-phy
 
 
   reg:
@@ -135,6 +136,7 @@ allOf:
               - qcom,sm8150-qmp-usb3-uni-phy
               - qcom,sm8250-qmp-usb3-uni-phy
               - qcom,sm8350-qmp-usb3-uni-phy
+              - qcom,x1e80100-qmp-usb3-uni-phy
     then:
       properties:
         clocks:
@@ -171,6 +173,7 @@ allOf:
             enum:
               - qcom,sa8775p-qmp-usb3-uni-phy
               - qcom,sc8280xp-qmp-usb3-uni-phy
+              - qcom,x1e80100-qmp-usb3-uni-phy
     then:
       required:
         - power-domains

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
