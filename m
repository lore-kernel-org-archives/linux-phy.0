Return-Path: <SRS0=+yjZ=L6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06B39C07E9E
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 23:05:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BFF9461CB0
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 23:05:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BFF9461CB0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ikwcF1w+piLAD2lyVhMEQj2hrn1Y2aP9lXLTgsU/jR8=; b=KE1oIHZvakpGpv
	yLvzLwaxXaXUaqRcBPH0k+RYzRsF4wCcqj7OZSK5vJ5V+LPq42iYTMT3A3RPBpYDKBd8NTiyeKPeo
	x9kGzrV+Aa3qgyYJaTU/og5wzcVPUBa1iFQLFGOZZ95xGlSdMArL48W4Vn1DNrBJfBws1ABUZzgxw
	LLUg9dOO37lzRjqw546xfauLTBongXDa0yT6Ym3vDqW7WSeImzLUKAcBEv1WGE6GLUy2wpEDG2Duy
	9Agjn3H44PDEyqLvStcpT2syN7ymRSxnD82WO9OWMJ/9AJfDR5SIvel6Cq/tEGs6u/kft56VX+lO8
	gg2HGISk8stFyTtZTDGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0u7y-00CzvO-2x; Tue, 06 Jul 2021 23:05:18 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0u7v-00Cztn-MH
 for linux-phy@lists.infradead.org; Tue, 06 Jul 2021 23:05:16 +0000
Received: by mail-wr1-x429.google.com with SMTP id d12so194286wre.13
 for <linux-phy@lists.infradead.org>; Tue, 06 Jul 2021 16:05:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZS9eSBzf7oMT7niMx+DkLzUKHx+ngK5Yq4k0GX/hQik=;
 b=koPKEiSdiRlAQbZ2faLxK3HWhvpvv36DkP+iba3gGnHL8I9hgdexpS9Is/0zvVtQca
 Ryr7XnnBJW/2ZoMrkHFamMjGyrP4Tv4F+t/eaZSjBPwwJiVjBGXA/M+wB3pKvtm4rc1W
 wBqo7ilBtG3qyIxqvYftjZhw+HIZwYx/Q96ukjOSvmlMeZgC2N8+NcT0+cgxukYGNOVs
 l4pJTi7B/BUddwfUCAa7yv+tQHEsFW5yZ60g1Gu8N11CdW0t0EXfOaS4XdNNgoHPdXpV
 MV2kbMzHEQdTd857EfjH/MQ7qVJUOqZJZcEVPaGqkvdN6AL4PLgR3MewlYT++3iSGr5J
 6TzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZS9eSBzf7oMT7niMx+DkLzUKHx+ngK5Yq4k0GX/hQik=;
 b=onVarVgZIN/aB+akOCM7MbUlzhU4RYSkMLvLy9dyTbKFeN8pp7bDmi0zduFZuWWJPu
 8KyrpBRqOhryx1GRQoFAcPsPBOPqbrRAUuuwc+BMCTXT/7dQUxKl/bC1kgdqYmY+B6ea
 aRmVXppCGB3VXhTah/gUguu3H5/z1vbpqnlnJjje2uZfvh9rOiQVNe6lJkbJpqFgGWVp
 rlLF32wdQWkvncR4bLFae9cUN1nhJNvQ/BI5J7Nx3KrJJd3vMBANkFPFlDwlH3YqR0R1
 fjQtHfPBXhjk1biq7NtOt8bdeKqmIx+bdxNCSLX0tBHQSeftp8kA6goBHyUbh5/t59ji
 bpog==
X-Gm-Message-State: AOAM533nODjQhMU4yMwm/VZyWXHTQayDjGV2lDfVnpl8TWPpQVPyfiON
 TvcRppzWUNZvrWgp10JW5kKFVA==
X-Google-Smtp-Source: ABdhPJwD7QjJ40WHE2rPUkBAA7dNmwSkssV2IMNCrPF6l8XoprKbp0mUXXzGCJAGhG3niOYAoQkREA==
X-Received: by 2002:a5d:6c69:: with SMTP id r9mr23670257wrz.8.1625612714199;
 Tue, 06 Jul 2021 16:05:14 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie.
 [188.141.3.169])
 by smtp.gmail.com with ESMTPSA id g15sm14241866wmh.16.2021.07.06.16.05.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 16:05:13 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: vkoul@kernel.org, kishon@ti.com, agross@kernel.org,
 bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: robh+dt@kernel.org, jonathan@marek.ca, bryan.odonoghue@linaro.org,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, devicetree@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: qcom: sm8250: fix usb2 qmp phy node
Date: Wed,  7 Jul 2021 00:07:01 +0100
Message-Id: <20210706230702.299047-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210706230702.299047-1-bryan.odonoghue@linaro.org>
References: <20210706230702.299047-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_160515_770188_F25A1B0B 
X-CRM114-Status: GOOD (  11.59  )
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

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Use 'lanes' as SuperSpeed lanes device node instead of just 'lane' to
fix issues with TypeC support.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Fixes: be0624b99042 ("arm64: dts: qcom: sm8250: Add USB and PHY device nodes")
Cc: robh+dt@kernel.org
Cc: devicetree@vger.kernel.org
Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 4c0de12aaba6..270d7ff59ec1 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2123,7 +2123,7 @@ usb_2_qmpphy: phy@88eb000 {
 				 <&gcc GCC_USB3_PHY_SEC_BCR>;
 			reset-names = "phy", "common";
 
-			usb_2_ssphy: lane@88eb200 {
+			usb_2_ssphy: lanes@88eb200 {
 				reg = <0 0x088eb200 0 0x200>,
 				      <0 0x088eb400 0 0x200>,
 				      <0 0x088eb800 0 0x800>;
-- 
2.30.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
