Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6CA4C3DA7D
	for <linux-phy@archiver.kernel.org>; Thu, 29 Dec 2022 12:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1PxH1PMHcwL/m0+sK6FnTwB/Ul0Gq42pa/tSa0xRkjU=; b=yS78NY7FVfI6+W
	gSQBQ0qmxvLuPIw2vuMkQPP66+vIbo1v/efLTmF+lRhVvxsTMkL/YBmEOTJLUtyEvTsZ5CMgnig3F
	EYfPRA3/JVtBJSXnswIj1VSilDetRE6GnCuUboIglongnjWMXcLa3gufPgWXHdsUqoiuNuNNgeml/
	SToc5weae1hJiIC65xwsrYohvMnnjX7XVDAg5L163C7bgECW20KazfxC/6180aRtsUqU5yasy1PkE
	pMdNGoxoMirlbwKqlzJwm6XdsXCzx2qKA1Jp/mz7t5Syte4RjREQfTcVxQecHm73aLXbTryFEIIFU
	gDJKRByvybiP91ZHqVPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAra3-00FMy4-Ua; Thu, 29 Dec 2022 12:00:15 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pArZQ-00FMZm-0v
	for linux-phy@lists.infradead.org; Thu, 29 Dec 2022 11:59:37 +0000
Received: by mail-lf1-x135.google.com with SMTP id f34so27191757lfv.10
        for <linux-phy@lists.infradead.org>; Thu, 29 Dec 2022 03:59:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gEsFbKUIu0XVvlqZcexvpdadohfi+18CrCsQnK6kHVo=;
        b=pwLPTDeNfutcTpD97wfs9uklsc7z7CN5BJa9bHyW+Bj0FlXcZVAZjRRRyyGX7W3Aze
         Pa133yepsSy643bjjEXJni7xZ2g3hoVJpqpmeQfC/A3on858EUETMzytPhywhUqjBnN1
         Kk0rt+5yW7CRwGFydXMcK6UtJn2q/0y/R7pYuSGZRSoxzEzT0Coaq+UFYWKGT+j6nP4b
         3sJE6ea4ipDvxT3rxxTY8UtoExGCHYHEL0VKyQPvFXL2d0rFYP+VWhtA+QBcka/Gsnfx
         c0iYyHOzfD9qTbSuRuNOX8m8fMkbFRgJHEY7wl1IXGwell/ONuqwIq94Mer5SRi0CIrf
         3Oog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gEsFbKUIu0XVvlqZcexvpdadohfi+18CrCsQnK6kHVo=;
        b=MupyNB/jIzuuw9ESx5TygDqCuutmc1DuIz8VExTg5A08pnb9PXesFIAjg86T3nGKsJ
         swlcZW0JBYoHDc0oqRjRiH8ozPjq+47yeReIkNphqd1Gp1YmwqOj/xFnrBFR1tIUVoF0
         /xuTIPjPJsNSV8aHqQ6f5LDc8VF5lxStF+RiqTAWGG94ij0EOk9kDZgCwZohj2JbCjx1
         mER0rVG1k6XAfLxaGrtxY7waeNY/8oI9vabkn+0dpjJsPe0G5RFIATJkXi7tyNNGw03G
         wMNtLim//+Rf4zm/vvpV1ZD68MVFVf6HJbyTsrDstIIelM7oLthcrHzSnW0TJpBjN/k9
         GqNg==
X-Gm-Message-State: AFqh2kp94GKnnCebhLttqE/rrQaAFmEklwJ3ZZ0u1UyVk5TThF9c60Tb
	GPaQBc10NuUDNeAy25vK6Yel5w==
X-Google-Smtp-Source: AMrXdXugQ6tsD415QdLyqJf7RmcCWDNO7Rfdbo/Hum7s+PEBIynbUG1Q1GCUFNzUKtcDximBmyiiqQ==
X-Received: by 2002:a05:6512:3288:b0:4a4:68b7:f87a with SMTP id p8-20020a056512328800b004a468b7f87amr12419339lfe.30.1672315173741;
        Thu, 29 Dec 2022 03:59:33 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id n7-20020a05651203e700b0049464d89e40sm3006313lfq.72.2022.12.29.03.59.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Dec 2022 03:59:33 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 0/2] phy: qualcomm: pcie2: register as clock provider
Date: Thu, 29 Dec 2022 13:59:30 +0200
Message-Id: <20221229115932.3312318-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_035936_248905_3A27CA1B 
X-CRM114-Status: UNSURE (   8.44  )
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

On Qualcomm QCS404 platform the PCIe2 PHY provides PIPE clock to the gcc
(Global Clock Controller). Register the PHY as clock provider.

Changes since v2:
- Removed extra empty line in the schema (Krzysztof),
- Dropped dtsi patch accepted by Bjorn.

Changes since v1:
- Dropped 'phandle to' from supply descriptions in schema (Krzysztof),
- Reordered clock-related property definitions in schema as suggested by
  Krzysztof,
- Dropped extra empty line at the end of the schema (reported by
  Krzysztof).

Dmitry Baryshkov (2):
  dt-bindings: phy: qcom,pcie2-phy: convert to YAML format
  phy: qualcomm: pcie2: register as clock provider

 .../bindings/phy/qcom,pcie2-phy.yaml          | 86 +++++++++++++++++++
 .../bindings/phy/qcom-pcie2-phy.txt           | 42 ---------
 drivers/phy/qualcomm/phy-qcom-pcie2.c         |  6 +-
 3 files changed, 91 insertions(+), 43 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt

-- 
2.39.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
