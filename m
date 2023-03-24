Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FE40C77B6E
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 21:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vKGmJnQiruop4OcG4IMCg6t8ccAs75hyDxEOoweTmwg=; b=3eiq586JBnOEBC
	lXv0Erq0WA5QB0WTYIr+6sIFtTu2gHWcw/cW0R56tRdmQHBTZnUt1PbxtO0VwuzSrxsLX5eGScH53
	0QBXVDqY2MOr0cDMazqs3DaD5Dr9hcbuZ5Ejx7FqajMJa3c6u4zgJUENYWFQk14uM7RgMElXB/OYb
	RUwSgDLyKhcMA9nirAdKaPL+iJA2wEpKHvQm1O98lI+EURPK5uhPF8dK2te6kwOcpM1M7y1VvCFjQ
	RpX3x5KLagubsPdPYkfPtcyTdN75SG24n1uj+05NGkhxocvCQmpkBGxjhWt2dmTOkkxsGgU5Zj4Ld
	p2kBW7vfty2JPaDJI02g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfpOC-005gkH-2R;
	Fri, 24 Mar 2023 21:56:00 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfpOA-005ghf-1O
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 21:55:59 +0000
Received: by mail-lf1-x129.google.com with SMTP id t11so3977611lfr.1
        for <linux-phy@lists.infradead.org>; Fri, 24 Mar 2023 14:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679694953;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8+k49y8vkq2xcxY7Yu0qyM15XqLOBvZj7lJd33kjylE=;
        b=DIt7fgQP9aIBziEje2pbhgkfgk+aBVXzDXA54iSuwKnziMqKHlLbk7+cwnVALohxPm
         t9xyHDZp0/haQxE2s2aqwH9+HGDDGovGf3XyTCuXVo960mVUziEf7IlEjDuIAOEm5uWI
         3wdiSB2euhDQA2BUwgtyGKe8fdtaegos/9FkxnzdBhp5blQf7Z/UnHXvGQexmrahDU00
         eeaWiXyQsOjRqK0jann4maWbCKWuJkZyczQ1CwrYf9XaB+8LJXMpB6elq5TlOtGI543w
         A6BbAkant+xs/1ZR8lvIEUpqNv6188R5bBS8xnKNvlXtOLUw7UCykaa/YssPfFgpCeG/
         PqyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679694953;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8+k49y8vkq2xcxY7Yu0qyM15XqLOBvZj7lJd33kjylE=;
        b=7D6hfCP5xZVQFXwPvcKMEZ/pCWKt3epEXDn0W3teOGAAFVsvJctbu7pr5JWxMCAfdL
         3nEBSeMQGxr7Q7KYv3rX0KxO9FbloQfNUNac1ipJVjcAgd+OZy2+u2zJJBk5Es2ywehc
         SdJNCuuhUcFBYjD60jJX+RpHNkxUcctdf5zasq/I4qHNjnG8uYeMxQONWzv3OmIOenD6
         NwlvdrZbtzO/28RCV9ptb8cssJ/FnH9DRvM94grM5y812x5B/41lgaXK1Bngjw9BOAvS
         JwKwcbs1BGzRoPYHG1UQGMVaE+YdbAOheMHe1N2wtezTpFO4+sWmMmiSuv04kjdgjQqS
         XdLQ==
X-Gm-Message-State: AAQBX9fokt0S4+UdBYVNCV7kRITsDxwuSH7KgEOn1yVbJVasSfhP7gF7
	i47DhMi9YF4E1RcND1sq7QkT+Q==
X-Google-Smtp-Source: AKy350ZoIo3YqS+8G0Ry9LXRU5W/KUssG5ok8McFASmNcoJp0io8xqb2FfzJRidHCE6aXp5pi9ssJQ==
X-Received: by 2002:ac2:54a1:0:b0:4e0:dfd0:fa9 with SMTP id w1-20020ac254a1000000b004e0dfd00fa9mr1052700lfk.56.1679694952854;
        Fri, 24 Mar 2023 14:55:52 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y1-20020a197501000000b004dcf20843efsm3488285lfe.239.2023.03.24.14.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 14:55:51 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 1/5] dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy: add sm8150 USB+DP PHY
Date: Sat, 25 Mar 2023 00:55:46 +0300
Message-Id: <20230324215550.1966809-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
References: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_145558_467970_95F479C6 
X-CRM114-Status: UNSURE (   8.33  )
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

Add bindings for sm8150 USB+DP PHY. These bindings follow the older
style as this is a quick conversion to simplify further driver cleanup.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
index 0ef2c9b9d466..a2ddf718ba76 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
@@ -24,6 +24,7 @@ properties:
           - qcom,sc7180-qmp-usb3-dp-phy
           - qcom,sc8180x-qmp-usb3-dp-phy
           - qcom,sdm845-qmp-usb3-dp-phy
+          - qcom,sm8150-qmp-usb3-dp-phy
           - qcom,sm8250-qmp-usb3-dp-phy
       - items:
           - enum:
@@ -192,6 +193,7 @@ allOf:
         compatible:
           enum:
             - qcom,sc8180x-qmp-usb3-dp-phy
+            - qcom,sm8150-qmp-usb3-dp-phy
     then:
       properties:
         clocks:
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
