Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5ECFC6FD18
	for <linux-phy@archiver.kernel.org>; Wed, 19 Apr 2023 12:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hRW4JUe8M+i0JP1fSJWym5cMs41bb4Z2S4aYdhdGBqE=; b=TE/IPR3zJza5vP
	pSWC9XbzsvsEtlHuQ/D4YNY9KEVRdy8r4Ur6oc79vcmOUDeZyy7cfueW6/tq7KKTWUwYDlQ79XQ5+
	waMYfXE49FDe5RsZL0G/sX7g7yyzY8uQ37U9mOgHHp9m5DDFYIJs2Ro4864QyirgxH96GY2TCA8Tn
	2KIYu25OaZ9YXoArBhg68vLY8aQ15OkkoIxhtd8A2+OMCePDqfXdhVEOytZ3aVMSQP2GaZ0Ge/gjw
	lLY+TfOQAc7XRtWXZPCJSWTn2fDfMJqD9V1vfiYQRgD3LJAoMn01w/t2WP3StB8g9a7BFi5jy4uq8
	EXuiUA4rpZ+gZ1rnVHtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pp6cn-005ILJ-1F;
	Wed, 19 Apr 2023 12:09:25 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pp6ck-005IKX-2o
	for linux-phy@lists.infradead.org;
	Wed, 19 Apr 2023 12:09:24 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-2fde2879eabso1040691f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 19 Apr 2023 05:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1681906158; x=1684498158;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ICV+ifexo83o57cRcwBX/lZ8ijdYT70+Vp9Lz3f2oAg=;
        b=ykMoH/onbS1531mCkS58WF+fhQb/0kz8ZY36KbB/9u0gHHuOZQOTNOcmePMMX3kdcC
         JrZg2yRBqAm6Bueq4rgEySjGr1NJE75dSQkn3jO1q5NFFu/3XDpN3QkIh3ZYNH1amdEa
         MglUuRz0NUd0vIE+JsxOWG4uSvWjcud65TMNLqrFHKUXZjbyxCt4tz0tl+SPCZecRDUt
         hvTGl+Qi8eb98CLLxeZCktJ9fd5qtP3LglWCDJs1KD/yRmust4LchvLPkPzJHp6U88yQ
         z24WJ5AiLKoRN+bHeQ6sisSV5ZVab8ED083r2ZGweEnFvBh6gromIbqRLY5tpYZ5ZD4l
         Vcjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681906158; x=1684498158;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ICV+ifexo83o57cRcwBX/lZ8ijdYT70+Vp9Lz3f2oAg=;
        b=PJgjrIjzDjoywfPc7n1R9Boe63+ZoMTTutA33F+MZ+CP1uIeCLQdf5+zzpa2HrL1rG
         KRn2zDVBuhB2lnyqmAXsSdBwBNXMRXKKkyBVCmAnxhjpsnOqwTgblT1M2AQS7tRB8P4Z
         yv/q4rWGoo/7gT7cD3rQrrv72R0gGAdWT16l2lxVVEmGjr3eLSX7EseWLBxUkBzi0/Gt
         +XmZ9h/grD+n3XRWOBmQj7XvVDYwDnkkycLR8uMRXDFiw6zIu4XgJA/R5mnDCc0KjWS6
         eFE6lC6CYeM14LHXkj7IsQgkLx/4HqALeO1xOypCGfu20zfaPGScl/VOy3WgXDLEI1J3
         1P4A==
X-Gm-Message-State: AAQBX9cMTr3EO19+eCoprJaX4bTkhksAVcgL+zY1j/Dy+kNHGNCehxAt
	cPB2q85V1PsLbhf9AUJZS5EzYw==
X-Google-Smtp-Source: AKy350aKXVkWQBioUWRD45UWirKdXtYI4Q7nfX+i1Dn7PTo4kmQYfduYh6Pb3t2kw30YkIia5o26xw==
X-Received: by 2002:adf:e688:0:b0:2fb:f93f:b96 with SMTP id r8-20020adfe688000000b002fbf93f0b96mr4416492wrm.31.1681906158527;
        Wed, 19 Apr 2023 05:09:18 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:e836:64e1:77c8:1d5b])
        by smtp.gmail.com with ESMTPSA id v11-20020a5d678b000000b002fa834e1c69sm7634899wru.52.2023.04.19.05.09.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 05:09:17 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v2] dt-bindings: phy: qmp-ufs: tweak clock and clock-names for sa8775p
Date: Wed, 19 Apr 2023 14:09:14 +0200
Message-Id: <20230419120914.173715-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230419_050923_122685_3AEF53EB 
X-CRM114-Status: GOOD (  10.76  )
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

maxItems is already globally set to 3. To make the binding easier to read
and remove redundancy, set minItems to 3 for sa8775p as this platform
requires exactly three clocks.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
v1 -> v2:
- rephrased the commit message as this is not a fix but rather
  a readability improvement

 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 94c0fab065a8..a1897a7606df 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -78,9 +78,9 @@ allOf:
     then:
       properties:
         clocks:
-          maxItems: 3
+          minItems: 3
         clock-names:
-          maxItems: 3
+          minItems: 3
     else:
       properties:
         clocks:
-- 
2.37.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
