Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87C8BC43219
	for <linux-phy@archiver.kernel.org>; Mon, 28 Feb 2022 12:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9zyPlUzKCRSTzpVLtTyBwGttZ6/F/mRfWrXAZ5WP08=; b=qyYd6heumHeQ34
	IK41rF+OBGJY4ue3zoav/eVDC5ys1G2FhnyRsrpIG9v1OBYgKNIZB41kE/+jnU1LIzXEWhdVJdiv2
	aq0D1xoaYdfxLa0wYKdl7t5HJ0mzq4utL9R4MOYMbkh2LbOPIHWvkAXusAuAtsrx+5GVTolblzjMP
	Bn7ZNKcnRRQ18LUJSrY2ylbywkfqFGWYxnJAbeCuTkVP7mZlEn/flQnrDvjb2IwhEj6vw0P2+X9Jx
	RtXMYCn2c5KK6nRbvjYzZfhtmldEj0kyfGCjXXRrOFI9S6bgGiOHyeBkfi+eVobXAz1xTxd5Dbv3Z
	LRkUmQ5vEgkECXxxbc7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOfSU-00CKV8-Kt; Mon, 28 Feb 2022 12:48:58 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOfAx-00CDck-5D
 for linux-phy@lists.infradead.org; Mon, 28 Feb 2022 12:30:57 +0000
Received: by mail-pf1-x430.google.com with SMTP id k1so508718pfu.2
 for <linux-phy@lists.infradead.org>; Mon, 28 Feb 2022 04:30:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bdFGPaHLF7q33XjdHVVzEQl+cyICplAt+e9SLu2DgQs=;
 b=gUhPwRnq9XhVBQx3qfYtwLHnwuC1oGeZOyn1dJzPmvpgvDSoAU0UOOH9HRRf5UYaZl
 GGc1+3ndA+22UVupxmLiU4RcERkwzikYpcUvlTB+PE9juyCIVf9FbaxHFdl3Cig3dhwR
 8QjLr0XpRYthcfjgDH7TposIL/q6LJGvSlvYqLo8KvmZf+ZNjXc9Bly1xBSv9qd31wMW
 Ial6oxWTd8tvNChIYtc67Ou855rKIqqMyqIteumY5PM/8hA+ELlAY5QH7kTsci06tXLy
 r8GaFA/UpH+b8XBQuob07RtiWzti5FybcmlnNHyrArEJe3tg3TkDGdUh6kiir91IT8EF
 t/Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bdFGPaHLF7q33XjdHVVzEQl+cyICplAt+e9SLu2DgQs=;
 b=3hZKiol/dnmksW3ztIl8igDBhcAHDwo1/NJAtLPdPS5Fwc50WWb7F7AP5z2ciURKkI
 yAF6sAkoWFJKFmFRF1fZ8CakC95bK/CT3nAEbDTXusKJ164YOTYBu23vVMVdTlRy/bwH
 lW46vu68xhm2pIdnV5s0TtDHAS3wTK+MIB++1cUHuXEy05EJaFlW7Jhz19hZjMVP6A6a
 ep7rHiFjMeH0Td3hv1IYcn+ukefYtfvAhjUX0/cyuyauFNSKfgE6VWwiHGjJQq0Oxk6+
 tvl2xnr4DXtJsabja8AXG42DNN8jU2dehoxbjUn8R0ToiV4ArvvmncubUACVcRoX3XOE
 Fblg==
X-Gm-Message-State: AOAM533o4C+GoYgbFBhoL/B6elhyiLChdndLxqyJn3k2aqu1hH2kslCk
 N5+pqiXeb7D7gtu1BV96w1cZhg==
X-Google-Smtp-Source: ABdhPJyVtSk4jTW5oYYXrdUlcKwpX55KSnC6bOeagoJLOg6Nd4/T2dIu/uH6Umd/slf4L2TkDJ8cyg==
X-Received: by 2002:a05:6a00:1152:b0:4be:ab79:fcfa with SMTP id
 b18-20020a056a00115200b004beab79fcfamr21150362pfm.3.1646051449819; 
 Mon, 28 Feb 2022 04:30:49 -0800 (PST)
Received: from localhost.localdomain ([223.179.136.225])
 by smtp.gmail.com with ESMTPSA id
 f7-20020a056a0022c700b004f0e9d686dcsm13790001pfj.137.2022.02.28.04.30.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 04:30:49 -0800 (PST)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com, agross@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 shawn.guo@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v2 4/8] arm64: dts: qcom: sc7280: Fix qmp phy node (use phy@
 instead of lanes@)
Date: Mon, 28 Feb 2022 18:00:15 +0530
Message-Id: <20220228123019.382037-5-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_043051_237173_36F64D10 
X-CRM114-Status: GOOD (  10.47  )
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

arch/arm64/boot/dts/qcom/sc7280-idp.dt.yaml: phy@1c0e000:
  'lanes@1c0e200' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 937c2e0e93eb..575f1f00f602 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -1669,7 +1669,7 @@ pcie1_phy: phy@1c0e000 {
 
 			status = "disabled";
 
-			pcie1_lane: lanes@1c0e200 {
+			pcie1_lane: phy@1c0e200 {
 				reg = <0 0x01c0e200 0 0x170>,
 				      <0 0x01c0e400 0 0x200>,
 				      <0 0x01c0ea00 0 0x1f0>,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
