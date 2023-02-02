Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96BA5C05027
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 13:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oz1OLdfDUqo//Ruphrie42l1YKFB3jrnQJaN3uUF0zA=; b=juquMcQq1//cFB
	Youy5tMehz4PMo3knleoLLzJ+UTpaLxQjRw+X5kVap2GNgIAAoL2TlN+wZxoza8FdaIe5Qsugi7Bt
	8GYqFUClqRAxwYFTOp31GmQjGKZdidqsdpIg0OOwz9NxVu9WDN+Bcz/yX2CQq+ra2oL85vEe+k6G8
	Zt4F3uBsKstD2KrPtjtQpDl5QPik1p+wfJxA4w9lc63wVJkTFkShQbkkvamPKkzEYj7vXADoAbaCB
	+t/UABNruWfUnADam3BiC1PuNYs8CYNFMLIuKJKBeXiTkzdRqpQJihb65wfudWEvT55q6VuCliAbG
	r3JU4yhzBDvpq3X3en2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZar-00G0Gd-2B; Thu, 02 Feb 2023 13:25:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZaq-00G0Fs-0q
	for linux-phy@bombadil.infradead.org; Thu, 02 Feb 2023 13:25:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=9jGFMCiguKGryaoAn0SNvBKZYZzpMv/Cxo3gmJXUAvU=; b=SQu19hSQnqSCK1JPy47oqympJ5
	gmZCsvZU9XxfMgfwab2UWxte2vCM6fo23UUgUF3PnVDJ4UYjjC6W3Arah2bD8Y0qXARUJH+B3Fjle
	JWd1VaA3NR9PllZt8/gJ+zb5mEaD45PRh/c8K+nRV2kbFoQF5NzOM4aavrZ7iUAQCSRaprUSxwSHY
	8C0YGyRuCSVbysmp3P/hyrD183m60+tB8+MrW1dLO79MxVtTGctRLQwXX9s7Sa756M6uu54d7a05t
	JSMjX/VdIwFraiNeeUCLrGkkZWYLEYUo9gXjFAIVoe1rX89nytxPZ3GdyJFPljgfZpOkq4ROz5nbM
	nL/WEJVA==;
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pNZaC-005AL4-0N
	for linux-phy@lists.infradead.org;
	Thu, 02 Feb 2023 13:24:58 +0000
Received: by mail-wm1-x332.google.com with SMTP id m5-20020a05600c4f4500b003db03b2559eso1374038wmq.5
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 05:25:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9jGFMCiguKGryaoAn0SNvBKZYZzpMv/Cxo3gmJXUAvU=;
        b=Q0nGlU4S0bSD/UX4rTKb0p3wqKbKyOL4iLlxMVELuyssyKPJHxIbINv7y0uqF87lEi
         ZyQASXlWFZuZ2n84IxePO1euYw1wLVE/lXlwdVTsqG21EHOgqEwmIX2E6GXgQ6wveN93
         NjLcaDBGVVe7HqYhnvMi1DH1taEOx4BfOWfVkPNldkNZSe3qGtKiaP+KeDzYLOTCZrRL
         k5O3W/iLXtsMYpow+OLbnzOxQwtpklkuiNE9iJEsnn9o03eIAbIlcaJa3tpMDFN03KTL
         s7ds8Zl3KBQwvFp/XtN7wGvwCVsG2dmoaTDq9V3fAReRa65QCE+qZDZ02qsvVJU19IuN
         8PCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9jGFMCiguKGryaoAn0SNvBKZYZzpMv/Cxo3gmJXUAvU=;
        b=oLMIh99gryH6YVmW18h88fF3j8mkdh7+1FF6d7EFez2Ha2VpfByYXuEY89IkTYqqz5
         VETg7Cqjv6X38HiOuarDQ7wgTUAMcDZ3WJdkdwDGxhSsM8CJ1sleRt4KdXWCb6cMN8Lc
         Y8zRV+khsOI/kaln/5k3aC6RLXWUkP9U4YPEE07E34nVX0t554u00175jv9OjQ7JT6QJ
         gtAo6QQJ5GDm4obC3wQ0aPk9YramCCiou86tyXPPRwYEQK2o16Pp3tTjWB2fGLAdvxeT
         RhmIGKkp8LJuNJMsGI/Rio9ieiqWYJ+8k7Cm46ud84LsilE7uaYv1dAcbgDDNmi4cUgV
         oL9A==
X-Gm-Message-State: AO0yUKXjEsTK1bT1LYPi7zwWG+PIAbYG3eu1c6vTYusvPxcEV3tXU5RM
	4udPEN499+ZkvPvlb5Pj4RyP5g==
X-Google-Smtp-Source: AK7set+UvAdQxq6+cg3WB7Mq/FbFIglThwiAUTflItZHlhvvfJIZFKQpUXyUhtVmRy7ECmM65o0qCw==
X-Received: by 2002:a05:600c:5113:b0:3d0:761b:f86 with SMTP id o19-20020a05600c511300b003d0761b0f86mr6077028wms.28.1675344324570;
        Thu, 02 Feb 2023 05:25:24 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id e22-20020a05600c449600b003db06224953sm4690943wmo.41.2023.02.02.05.25.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 05:25:24 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 8/8] arm64: dts: qcom: sm8550-mtp: Add USB PHYs and HC nodes
Date: Thu,  2 Feb 2023 15:25:11 +0200
Message-Id: <20230202132511.3983095-9-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202132511.3983095-1-abel.vesa@linaro.org>
References: <20230202132511.3983095-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_132456_440755_41D045A1 
X-CRM114-Status: UNSURE (   9.88  )
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

Enable USB HC and PHYs nodes on SM8550 MTP board.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

Changes since v3:
 * none

Changes since v2:
 * none

NOTE: This patch has been already merged. It is here only to provide
context for the rest of the patchset. There is a change with respect to
the clocks, but that will be sent as a separate/individual fix patch.

 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index 265862d0e44f..03862132fe41 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -550,6 +550,28 @@ &ufs_mem_phy {
 	status = "okay";
 };
 
+&usb_1 {
+	status = "okay";
+};
+
+&usb_1_dwc3 {
+	dr_mode = "peripheral";
+};
+
+&usb_1_hsphy {
+	vdd-supply = <&vreg_l1e_0p88>;
+	vdda12-supply = <&vreg_l3e_1p2>;
+
+	status = "okay";
+};
+
+&usb_dp_qmpphy {
+	vdda-phy-supply = <&vreg_l3e_1p2>;
+	vdda-pll-supply = <&vreg_l3f_0p91>;
+
+	status = "okay";
+};
+
 &xo_board {
 	clock-frequency = <76800000>;
 };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
