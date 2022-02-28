Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92DFBC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 28 Feb 2022 12:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nAhyrAv7gbh8LJJmWRm8VDzk2p4KSG3huTYQtfBxtZA=; b=k14XoPuMSPlG/d
	zu7Gv9zk/jnL5gK9h/2qfOMcEPNM0wvo06V+TTNjH1teBXert1GnedhyVAh/7ao8RNo90EZo8cSXp
	9HJY2M3H0o3MA6AwlhX1w6ewWr1sRu1H40k4rTY3KwBLxztHIop6YJpD2um63M59lmhSsZuXOMH4w
	67GR1Dk2BxsxHWJg+d+VLXWeEH/jWuiPnkpArztsTI0jFphtPiKzNKy6VT+YXTrj82UsKmSKv08TM
	KH7MLcuWCMIyroXSjaAglKpkeFuETmVbd1B6jobC4SXwCV9LtuqlTW9Tbc5LE9jgm7pnUSsZg5fLP
	2rFw4QccRnDBySxj/12A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOfST-00CKTw-CQ; Mon, 28 Feb 2022 12:48:57 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOfAn-00CDY0-Qw
 for linux-phy@lists.infradead.org; Mon, 28 Feb 2022 12:30:43 +0000
Received: by mail-pl1-x636.google.com with SMTP id bd1so10549253plb.13
 for <linux-phy@lists.infradead.org>; Mon, 28 Feb 2022 04:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nAVvmeFPIjPaZ8Ic6jkgvNjs8mBwZCyzpyJ7eU2Zm5c=;
 b=PsrilE//k/KBeU5lfyDt7ncyeCRTEibDue38hBEJBUHIvkzBWoK+qMbmKZLMJ4NFhE
 VRLAsCpCkYSIgkkDZRh8rep5UDSNHKG960QXJDENxs8hai9thhWS3pUfr0fDDSYxvE0L
 cZzzQSGjLJi4360Cm6fw0xSijbym/jrkPTQDSsTIoh03gIS1JU6t1RsRNIHYm2CEMawU
 wIVqC0ZtRXAIhzSYmHz954aD88uQaSm8ohACEB/zXvNOLOeGvxIXKDhtQ4yM5l/yoV7h
 3mtikdVIHu0kqL1EGbBY5gNuHUh0ggqL3ZjSHU7zNP/PE4RjuGvVe9hM3u00v74aLf8e
 yGiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nAVvmeFPIjPaZ8Ic6jkgvNjs8mBwZCyzpyJ7eU2Zm5c=;
 b=6Y2hPdMQ7h90/joZGe58kpX/uzRx0Zf4Q2AF0rNKS1aFHWAsqTaIdZGJIWw0BzzT+v
 abwqRzglvT1NAVHiE8Bd/dKlSQCEyVDhb8nWjukFVPJzvryQTDtv7lNDD5P3FFYhmGsj
 khuBoATa4iWVUkRQCsM5jkDlF7AKpKqjXsFZANR3tugys/KX7AjYneqlcJ5Z2W8MmAiA
 L5a0eGWipT0g2hSBVZWm8cBy0+rDmooMCMW03/Jhkh4ygLLSGJnODZDkCD17CD4/+5mF
 wfbcV+coDdfxLGx+Y5txEn85+VD4GwpkiwiBgofNuRMZ/Zc55oYnT80ahs6HgjTV20D7
 105A==
X-Gm-Message-State: AOAM532WP13NFdWhn0rymBlGx+P2cGq3qPP1VvL6meApFZ4ADR3bYGV5
 iMR1UyjYOZZRBxozXdrZ59vrQA==
X-Google-Smtp-Source: ABdhPJy5t8eALRHCJam/DcW+LuiRUR5zjwBdLipSnmBRkvJ+XYeLJYVECL6zv2428OGGf5chqtp06w==
X-Received: by 2002:a17:902:cec9:b0:151:532b:7074 with SMTP id
 d9-20020a170902cec900b00151532b7074mr9421726plg.123.1646051440499; 
 Mon, 28 Feb 2022 04:30:40 -0800 (PST)
Received: from localhost.localdomain ([223.179.136.225])
 by smtp.gmail.com with ESMTPSA id
 f7-20020a056a0022c700b004f0e9d686dcsm13790001pfj.137.2022.02.28.04.30.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 04:30:40 -0800 (PST)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com, agross@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 shawn.guo@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH v2 2/8] dt-bindings: phy: qcom,
 qmp: Describe 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties
Date: Mon, 28 Feb 2022 18:00:13 +0530
Message-Id: <20220228123019.382037-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_043041_918936_26DDB5D3 
X-CRM114-Status: GOOD (  10.28  )
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

Since a few boards based on QCoM qmp phy use the
'vdda-max-microamp' & 'vdda-pll-max-microamp' properties to
describe the ufs phy nodes, add them to the dt-bindings doc as well.

This fixes the following '$ make dtbs_check' warning(s):

sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
  'vdda-max-microamp', 'vdda-pll-max-microamp' do not match any of
   the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 48cd6b6171a1..70e7cd75e173 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -87,6 +87,14 @@ properties:
     minItems: 1
     maxItems: 3
 
+  vdda-max-microamp:
+    description:
+      Specifies max. load that can be drawn from phy supply.
+
+  vdda-pll-max-microamp:
+    description:
+      Specifies max. load that can be drawn from pll supply.
+
   vdda-phy-supply:
     description:
       Phandle to a regulator supply to PHY core block.
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
