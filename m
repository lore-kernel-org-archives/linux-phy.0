Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00AE8C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 28 Feb 2022 12:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fcAcLOzjul1WorsiwSbx1n/QJtco1EvYlRCxQR+dbAg=; b=AfgS2DvxKtz+oc
	QaJEl0O1QFtpQneaexpH0V4f3I5Dp5H4PUoV6MrnkpRocjrZj3DouiP6pm/t32zs8Ybe8hh3VauQR
	E8YGEV+vO3m6ygsCYcpKd57WAg7cNsWxsG2A5Xi/cLTyG58ieD2ko0tuTw8bucNxNMfrMHeXtdqdc
	sFtH9b7b94yyZdK4qiwx5rKhEQTauvgPa7l6UEzAScWqI9j0Ea2gbRJtjjYMoLA2FyhAd9VvGtNsa
	Y4oVr7hBGNT9Lf3sWVmLbcM1rAaLmDJ1zXFIDY4CEksuKHMP8zSWjk3zXT+crv5fhxNKGLeF0Pbxt
	Bdqr3Et/1MFNkXd8DvEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOfSV-00CKVS-1z; Mon, 28 Feb 2022 12:48:59 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOfB2-00CDeV-Nr
 for linux-phy@lists.infradead.org; Mon, 28 Feb 2022 12:30:58 +0000
Received: by mail-pj1-x102e.google.com with SMTP id
 m13-20020a17090aab0d00b001bbe267d4d1so12060453pjq.0
 for <linux-phy@lists.infradead.org>; Mon, 28 Feb 2022 04:30:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=j3aWYND6Rah5MwBRKosGEcq2he6bs68uYcHr/zACh+Q=;
 b=B8IPW5mdWip8zbN63uWgzsenAT++ZjK5Gzfd2G8hEShQnxQZU2uw4GUE+N5tGRjK7q
 JdLLGD3gmOpS6X4Vvk5OaHgiCYtT5y9mx4kuMVvVpawFFnXyhUosdViFnIGfzdxjRZRl
 DVy0iPbg0MpDRwBvrq1zxDWdMxeC4f4IrgoTaUL/Uuz9YOyul3k4Gqhu7gfY6Npjvm8o
 GEYrgw1EWCTTkORX0gwcWVXJAnf4/DaRQYmqo3MQBcSRk3MV/gV/QAYJlpD6gqsbkhgt
 2CBxzsdwv3+zRHjtK+1OMliIXfcjkzsl3DISJTg56FQ8G2oQ6+/vK7UZj9o/X5PdNC9F
 6lOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=j3aWYND6Rah5MwBRKosGEcq2he6bs68uYcHr/zACh+Q=;
 b=6Wc8WLGwpuk+TNBfG63KF/uXCkjJ6WTJZxPjD81hj24GauNvtyl+VBeHsvf8y217Fz
 5K9xAyFp9XdJ8BWaSEJ1P3nEEzIOw2FjjZcAeQ1GifeS+oyzKNpq5SoTrQtR8Pwp52w6
 0W8P724bRD/5LCQgbe7SW/Pkr6eTnGqhvWwu7THYYXsYyuUGiGekMU53E2zqWkzz0qz1
 nXd6nqUTwekHLOzLZlLkzwjKnMAtBI+M4bWpLd1UAk8gwyw7jJsluR98wByoFlUeYhko
 fjBLkd+hju2M+i1I8W6A8VkZvDDSI6mGbp+vwYvteNh0pYrxCoJaw5k55ZuygNAn0bAE
 RguA==
X-Gm-Message-State: AOAM5322vZHCYbLMlWMQSbSHyw0wVL9Homs8EkgBiJSv39nApyfjhn4X
 pXQTLBo3DdMc8kPRrNwHI/52iQ==
X-Google-Smtp-Source: ABdhPJxWcPHi467ng6xttXcLULyyw3GisHpRAFDT1q3PqYaIQQOlCff5blDsVc+bjTonIfz3jtrgvQ==
X-Received: by 2002:a17:902:7c88:b0:151:6d4b:a27d with SMTP id
 y8-20020a1709027c8800b001516d4ba27dmr3526141pll.17.1646051454738; 
 Mon, 28 Feb 2022 04:30:54 -0800 (PST)
Received: from localhost.localdomain ([223.179.136.225])
 by smtp.gmail.com with ESMTPSA id
 f7-20020a056a0022c700b004f0e9d686dcsm13790001pfj.137.2022.02.28.04.30.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 04:30:54 -0800 (PST)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com, agross@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 shawn.guo@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v2 5/8] arm64: dts: qcom: sm8450: Fix qmp ufs phy node (use
 phy@ instead of lanes@)
Date: Mon, 28 Feb 2022 18:00:16 +0530
Message-Id: <20220228123019.382037-6-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_043056_824387_C2DBC696 
X-CRM114-Status: GOOD (  10.45  )
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

Fix the 'make dtbs_check' warning:

arch/arm64/boot/dts/qcom/sm8450-qrd.dt.yaml: phy@1d87000:
 'lanes@1d87400' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 10c25ad2d0c7..68f7fe26f7b9 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -1049,7 +1049,7 @@ ufs_mem_phy: phy@1d87000 {
 			reset-names = "ufsphy";
 			status = "disabled";
 
-			ufs_mem_phy_lanes: lanes@1d87400 {
+			ufs_mem_phy_lanes: phy@1d87400 {
 				reg = <0 0x01d87400 0 0x108>,
 				      <0 0x01d87600 0 0x1e0>,
 				      <0 0x01d87c00 0 0x1dc>,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
