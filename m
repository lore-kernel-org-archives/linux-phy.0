Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07ACDC072A2
	for <linux-phy@archiver.kernel.org>; Fri, 17 Nov 2023 20:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nK3Y0Cgzpd7xotLeEgqtbSeP5yEuXER0ZL4bz9WL/YE=; b=cuGaDyjvInGmw5
	Q+z+skFW7YnQjxJY/O0AN1GmmixP5iatYYEwubTgBedIEc6aXVxk0EP3ytyG4uMHpHvegxdbNLOP4
	wGdc2XSRTk1lQfQXgkUVapL8Swlat0el7dOUeSqJyEmgbuET3jx2EWGPNn6ZrJDRzOHUfaI515j8c
	VVcwgTgfTvSZsM+cQ8LdfrmuIdXaAsgsmgNzIlVx7cZ6WVw0XyYOWxkHiUkNAlqkLMVPUQQejmdh9
	9/ZXClzf7KkakAznhkGIkWT7Kr7IxuQXJpN6HFG40t5hYZolyI1+gv48v7BfMAYYlD69czryKDmW7
	MVKnZ7FGzBY3G4g0iINw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r45Hf-007DlY-23;
	Fri, 17 Nov 2023 20:17:47 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r45Hc-007Diz-1n
	for linux-phy@lists.infradead.org;
	Fri, 17 Nov 2023 20:17:45 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-507cee17b00so3144987e87.2
        for <linux-phy@lists.infradead.org>; Fri, 17 Nov 2023 12:17:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700252262; x=1700857062; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZKYe02DmJmwFFNmiKnLALvfB/P1IY/5H1knBpaadyWk=;
        b=TkAUJ8jmkI86OA26T7DhDFn+JeJXoF9UeKGfB5ATDuBZBFh992EactCpRzpJHJTdLh
         SFwcNsjfkb32QP6gu3Px461sRSb9ibumzlpeS6KweAumug53VkBw2l2g8aUhp1zCTm3r
         icFuPLhP9NVnlu+3k4N6UCxKLNfM7kEQIa/hR3/LTwFvHhxu+N+le2PY+vEkj8QLXgLN
         GQddP4sxLGt3RQO+x7dt7gPPOGiWEHB+z3sgZWXKnaOjbykiz5tGsPSWl8oMdiSsKww4
         TXKamNNDd8jqVAnBVwlzbYAfimogjNToySmJPTbb09pToBFCnUYTlRi+WyKFKoKNi9D4
         3C2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252262; x=1700857062;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZKYe02DmJmwFFNmiKnLALvfB/P1IY/5H1knBpaadyWk=;
        b=uWY4CrTd3mlcu1TjKNuJKv+P++NyL/2kvAf5qWxgRZNhFQgyYNacKAxzsjWuaq65AN
         BE0rJGZv8LOXFvEFV/MEUTtodmwcUfscfkvfSaYl0YeF9CyzffXGWoyHqR6685xeXMO2
         tIMi0KlhKvF+Jfhrh4trDZ7w8miOmDNNmRphaSXdp7I4/ejjh2zLA07i8FwSs9mjTShc
         GQRR3DbTjjflcpCy8qApISDfkD9Ak3s8mzoY/ob/8XF26LgE5pR7c3sOwUwAdJUMKP1Q
         ZfSqhEcQfUaX5+uYnT9Vk4Ds+7iw9wK9+Ay2lFNCy+mVSgm1o7NoAouT3FUZ2kybQZJE
         rRkA==
X-Gm-Message-State: AOJu0YyvT4EJYQ8koBY3Jc/xVRM3fEhljDP4TrGweCnha4czPI2L2FQ2
	a6lS4X0qFqrEc2vGdWfKi5c=
X-Google-Smtp-Source: AGHT+IFe0hmC2VgViHFT5wuAsjrdil67dwDNZQZv0yUV06HkOxSpStTOzG2BPmbrbVMIt2AXxBTN/w==
X-Received: by 2002:ac2:5a04:0:b0:50a:9652:31d2 with SMTP id q4-20020ac25a04000000b0050a965231d2mr451791lfn.15.1700252262115;
        Fri, 17 Nov 2023 12:17:42 -0800 (PST)
Received: from david-ryuzu.fritz.box ([188.195.169.6])
        by smtp.googlemail.com with ESMTPSA id e7-20020a1709062c0700b0099d804da2e9sm1130630ejh.225.2023.11.17.12.17.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:17:41 -0800 (PST)
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
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/8] dt-bindings: ufs: qcom: Add SC7180 compatible string
Date: Fri, 17 Nov 2023 21:08:34 +0100
Message-ID: <20231117201720.298422-3-davidwronek@gmail.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231117201720.298422-1-davidwronek@gmail.com>
References: <20231117201720.298422-1-davidwronek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_121744_591612_FC8BAC3A 
X-CRM114-Status: UNSURE (   9.17  )
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

Document the compatible for the UFS found on SC7180.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index 2cf3d016db42..192217ea1d24 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -27,6 +27,7 @@ properties:
           - qcom,msm8996-ufshc
           - qcom,msm8998-ufshc
           - qcom,sa8775p-ufshc
+          - qcom,sc7180-ufshc
           - qcom,sc8280xp-ufshc
           - qcom,sdm845-ufshc
           - qcom,sm6115-ufshc
@@ -212,6 +213,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,sc7180-ufshc
               - qcom,sm6115-ufshc
     then:
       properties:
-- 
2.42.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
