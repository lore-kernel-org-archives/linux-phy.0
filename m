Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72024C43334
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jun 2022 19:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=25RFxUTyDpkqaaewM/I3XkxivszyBMcOX6xxdxcpWDY=; b=Yf2+usqLI86Tg2
	QQDMixE2qTRQWxvCAW+E2CNRmWfk9s+Iqw8n59/qeTg0r5mC8/JPQASExywsjKw4k7n50mucXbcwa
	Fu04Q7aouiBuZGJF1E5Sl3zaZ/K7oedO2tT4iy+lCfJ01br94w9h8AykdHhG3lHkG1kMcVUcn19qC
	2I7fabTHqcrSfbc7SD5cILkw0joMMtaqLiCZENW1kiDGPSmYk8zEVXpqiHU3G09CjUQMcZQrEMmpI
	cyALI/e0IQc7ZSsxJgr1NLRSgsE0BnV9VL3ZXl+pEeRclHxz1bMIozUW8E49BmuDgCt8/ekPgGQ6U
	2/m2ZMPcSA17hp4QRP9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3jfh-006wG6-NA; Tue, 21 Jun 2022 19:36:21 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3ja0-006tGc-1k
	for linux-phy@lists.infradead.org; Tue, 21 Jun 2022 19:30:29 +0000
Received: by mail-ed1-x52e.google.com with SMTP id cf14so10982560edb.8
        for <linux-phy@lists.infradead.org>; Tue, 21 Jun 2022 12:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=v7nxHvlawisf1+yiWy1FwkyOpuVc183YG++a4GngDmg=;
        b=oXAGreYOm6U9pkVcl9Owt93RMP3LFNzhel4cXUURi1+uamUoHKQlBRtaTQlJppmyAj
         eFiw72IyqgxlG3Dz6+OaTr+bjEnQr0oR+hDtIVgawtP4SIzfAv63nSnld1DOeUzRB936
         egOB5PYHb4AxUnGW7OCfsa+m/0ATVAh4pQWv/XPgGHY4LJQl/b87RVo/skV86oGQZrCZ
         Db+ogTLsBqWZ1pvNWGuy8WnZgmtEWNRgsErqjG9YsY9y9AGwsSl9jMAvFz/koxDg5SWi
         f/zyywZMxA4OuIHWpQWuRdRgvlDecPSPardqoiiHij1MgPFDoCCwFxXMt3cn5eWAQmzg
         nXnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=v7nxHvlawisf1+yiWy1FwkyOpuVc183YG++a4GngDmg=;
        b=bwewamkrnSUwEglPwIxNnUxH3Ajpyqx8vlfUSYZWL8Jk162oKCbjnigPry9871iyCx
         rlbDCMGaULfj2QaSMDr1EylwHUuWQX050c04SZkKpIWBLOdkiIzjOvLI6D8eUu57t41H
         iC0YiCS2VYfpg/u1jg94kvebRqv7t7ei5k1nTLpcGbXxND2Y4pzJgLrgujw2YzqbjPbA
         7cvMI7zbACDAeTucZcMX+YXqbPSDiRprJX6pvxx3KMleDfRHtaIvFE+mNdrUlmAafvPq
         oFNltxYGGeBZE6sINnYVqQw+ddEtgar5nkN20iuhlx0IKSpyV4of15ccosI+Z2V+p9/3
         syrw==
X-Gm-Message-State: AJIora/zr0yG2GiN+sP/ZZUGJMzvxkapUXeNSqfbwhlOYimJPVt6L7bD
	8Rvup5hQPGqy6+tJ0nNUvuQ=
X-Google-Smtp-Source: AGRyM1v/BRBFCbfV/aJCwAu15pD6PbiuWQeXNXuVos3juQeJtOqFdMNjTED86FlGFPoPwuckz/DiQg==
X-Received: by 2002:a05:6402:50:b0:431:69fc:eff4 with SMTP id f16-20020a056402005000b0043169fceff4mr36767169edu.243.1655839824459;
        Tue, 21 Jun 2022 12:30:24 -0700 (PDT)
Received: from fedora.robimarko.hr (dh207-99-158.xnet.hr. [88.207.99.158])
        by smtp.googlemail.com with ESMTPSA id f5-20020a1709064dc500b00706287ba061sm8020586ejw.180.2022.06.21.12.30.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jun 2022 12:30:24 -0700 (PDT)
From: Robert Marko <robimarko@gmail.com>
To: agross@kernel.org,
	bjorn.andersson@linaro.org,
	kishon@ti.com,
	vkoul@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dmitry.baryshkov@linaro.org
Cc: Robert Marko <robimarko@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 2/3] dt-bindings: phy: qcom,qmp: add IPQ8074 PCIe Gen3 PHY binding
Date: Tue, 21 Jun 2022 21:30:19 +0200
Message-Id: <20220621193020.1630180-2-robimarko@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220621193020.1630180-1-robimarko@gmail.com>
References: <20220621193020.1630180-1-robimarko@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_123028_170203_8DF45974 
X-CRM114-Status: UNSURE (   8.24  )
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

IPQ8074 has 2 different single lane PCIe PHY-s, one Gen2 and one Gen3.
Gen2 one is already supported, document the bindings for the Gen3 one.

Signed-off-by: Robert Marko <robimarko@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 8b850c5ab116..220788ce215f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -19,6 +19,7 @@ properties:
     enum:
       - qcom,ipq6018-qmp-pcie-phy
       - qcom,ipq6018-qmp-usb3-phy
+      - qcom,ipq8074-qmp-gen3-pcie-phy
       - qcom,ipq8074-qmp-pcie-phy
       - qcom,ipq8074-qmp-usb3-phy
       - qcom,msm8996-qmp-pcie-phy
@@ -312,6 +313,7 @@ allOf:
           contains:
             enum:
               - qcom,ipq6018-qmp-pcie-phy
+              - qcom,ipq8074-qmp-gen3-pcie-phy
               - qcom,ipq8074-qmp-pcie-phy
     then:
       properties:
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
