Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28BA0C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 28 Feb 2022 12:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZPXDMxK/QRtaHADmxk+dxDS3cBMUbcEezoThEXB28I=; b=DpV1OCrzXGzFOZ
	vopF+tCDC9L3L+era94qvpKDFsI7ki/BrPlMIP+K8zl16wlKj3Atd2uaIdIcsbeyJTvRXL2xOSYiU
	LMtrK7SgwvAvdWf7IS9RjbgtTuzx9l0jDLQ9xvxYhLTVXQl02x0zvvpdiTW7t6aA2CainQS9U/bqU
	pZxOdIo+FmFJdAiIKD4gtpVxbHpd2q6M7xdI/9DiYfxltIzBe2HpiRXvzCaqqd2YLoAms1Y8nR/cz
	es1NQ+luukd0/xb+JbnRPuE+q72Y7n3yqm+JwNetZOl1g7bL4JDbs08mLm9udNeNRzoqZWf7oNDbE
	5UmL8at/CquugjvfFDIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOfSW-00CKWY-0T; Mon, 28 Feb 2022 12:49:00 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOfBB-00CDjA-1h
 for linux-phy@lists.infradead.org; Mon, 28 Feb 2022 12:31:08 +0000
Received: by mail-pl1-x631.google.com with SMTP id ay5so7757447plb.1
 for <linux-phy@lists.infradead.org>; Mon, 28 Feb 2022 04:31:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/8taBKoMDwuBXrBHwHiH7IQw4Wx0rjuJwsRFaSAfes0=;
 b=iVU4B5hQQnLbfh9uaJsINNioVJeu9qJ9TcEDyayPMkGYfnHQsnj5TjNPWq7zcW9mQj
 wkTqI0uRilZ9g2W3bL+R8dmi1FTZgiidlhfSYCIrNjCRU37WcAW2pFK8JHhBuKbRDWfq
 XyN2ws/FAXwbFzpBXFwQ4ESMs9aFxZIDFPXak7w3h4UUfIAwAYi4egcSB4JYMfjx4YC0
 o1IIBPZRgOUG/h157XJ5hdhnYsksLGRHAYb3PRK1EvnRaW8ZFETX8lmzPQ6dkBkP9w7O
 GfIIuR38Bue4XsVtJwtwZhztz4U7xVIbJTuwkRfFQ29DzHfi91DGBzgKAnECnrd2TJcI
 d5Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/8taBKoMDwuBXrBHwHiH7IQw4Wx0rjuJwsRFaSAfes0=;
 b=Db/ERyHu46CL/kECnsL5TRxg4RATNUsyGQw6cunmqMjpTGC2M8kaZQeNQcAewriTe0
 LelvBEFjxneOtjFpfq5bpdKWgIcwCiRSRlotR9CC0NW70EW03ZSzFKuUOVwBAKlIhcky
 pQXY/68x+xFTPHTNtSy9B51LD+84DafY/36C2Km7Obzhq1L32YKracH4Gdp+bRWjvT6M
 qVBPWmU5Nj6tcjJEWuzP+QHmqBnTVVMq/BGYhp/6LRkwH6Bm31YDzevKCOrTu3tYJrhH
 afN0cjmmkYdprTjhH9ZWyid7KkmZwFo8q8iKaDd4CplkWwFLyequhxbxMLZEmUVuuDH7
 NqtA==
X-Gm-Message-State: AOAM533uJmxPrMoJ3CN4JYubRAecWWc1kqb63DsqB5HvYXK+H9fOIaId
 BQsiQwTrVF1/h0lu1RkKtv7GnA==
X-Google-Smtp-Source: ABdhPJx7BT+ANOYcgay4P2hv5BH5yYL/PknXIb6f7/pAMVDqdQ6KA+zofh9k3Ds+a74/GA3PCbHtEw==
X-Received: by 2002:a17:902:ce8a:b0:14f:fd0e:e4a4 with SMTP id
 f10-20020a170902ce8a00b0014ffd0ee4a4mr20601951plg.47.1646051463982; 
 Mon, 28 Feb 2022 04:31:03 -0800 (PST)
Received: from localhost.localdomain ([223.179.136.225])
 by smtp.gmail.com with ESMTPSA id
 f7-20020a056a0022c700b004f0e9d686dcsm13790001pfj.137.2022.02.28.04.30.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 04:31:03 -0800 (PST)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com, agross@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 shawn.guo@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v2 7/8] dt-bindings: phy: qcom,
 qmp: Describe phy@ subnode properly
Date: Mon, 28 Feb 2022 18:00:18 +0530
Message-Id: <20220228123019.382037-8-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_043105_170747_2B6CF367 
X-CRM114-Status: UNSURE (   8.14  )
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

Currently the qcom,qmp-phy dt-binding doesn't describe
the 'reg' and '#phy-cells' properties for the phy@ subnode.

Fix the same.

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 70e7cd75e173..f8a43acd229a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -115,6 +115,13 @@ patternProperties:
       Each device node of QMP phy is required to have as many child nodes as
       the number of lanes the PHY has.
     properties:
+      reg:
+        minItems: 1
+        maxItems: 6
+
+      "#phy-cells":
+        const: 0
+
       "#clock-cells":
         enum: [ 0, 1, 2 ]
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
