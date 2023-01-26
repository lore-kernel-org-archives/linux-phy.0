Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E53FEC61DA7
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 12:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vDdHvdJG6JQacR0GKEnimpsxb9l6NcHqM0TwJbiPj04=; b=fwTaBBBABfjh/P
	5Sk1PbZh1L9QuwImSnH2nF8WB58qJ4QtWttV+JS5pT1iNtaBBsIeSFyvRdEI6IuCL81s+MJkMQDWL
	Gyn90y1+BJP3/eKwxuifaWuW8cNFMZ6a5yX6n8noZK/uFQpB+5zHnkJW/5zcMisW+iX/bsCDcWsvv
	EZ+IHby+bK8eWWNlUfNUsQSkN35nLwvUw07ClkM3sUfSE73QURaEnWmn+Kb/j1TTEkhWSLzg7Qk2L
	emMhzALNbKQwMxmmT/M8aL0iAZudLn8RZZ/2RW80IaIH6QhjIdZqkyonuMDG0V7v/idDMxGNfYTKT
	hoTQCczLwtCZSjUXQgGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL1eu-00AsGe-BO; Thu, 26 Jan 2023 12:47:16 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL1ep-00As8n-7f
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 12:47:14 +0000
Received: by mail-wr1-x42a.google.com with SMTP id q5so1698421wrv.0
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 04:47:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eJqq3liCIK6Sxes/Unc7rdXMkD7/jgVltCe0AtpGlFg=;
        b=xxWJsSIUitQpuor3AltYkApyMLSiy3P5Kt+csqdhf27TcEp1s3dtKjt8AQBNZ+GtsQ
         0IwC+92CpQDmSW8Sn54rFzJr64cjsTtrIMxDkYLM+piY9/9ag/SjsOyyXeWCuPeYUm++
         fdCdiv0eJEOOUqn28ZqDVN/pnMfFaEb0JKW7vRvTjkDo4+f5YIRGaiCNCVs8QsEVwwjR
         Q34ip0Ow0zkrAerEOJjdcZ3c+A7jltyBrPYKFGGzJNctvoiltymJMh/yWc6x1WRxGx4a
         PspfmqjYmh3vANaoM+V+0Ns0jPOd/9sPxVUgC7sEzlJ7WiSF7JMJkNYByD6G9noeq5mY
         gG+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eJqq3liCIK6Sxes/Unc7rdXMkD7/jgVltCe0AtpGlFg=;
        b=YSiIuCUi0dkuQtafzWG2A+lfpiVGm/jMyuLFY7p+CN6WTEg7d+FbhxhpBi8DNm5Qi4
         mYotucleD3ZeoWvnkGsnHlqnrIf8CI11uiNon3YsSqQ6Ma0XtrAxfY/Fgbb4OC//ji84
         ai9xkFYJdnvZxYdXGysDqERCkXxvFQfvUtsDPtINufSjpCEF/A6gvEtwKPD7yhO2kiW+
         MTWZpYrCSRq754Jwk10F675rsNFm7AAZqi9Jom4DsNv1reCWoxZfe2Z9qxw3IYwEL87A
         tnrsM+FalheBITj8CtW7l/zQhkUi04oEJytb8s1qAC3gWLdUB5Yx3CMUDQpVIgDyAflM
         bxUw==
X-Gm-Message-State: AFqh2koqUn/UlSevqcg4xCXUSGJyYGjwOQvCItraa4pX2Kq0uU9qEhJp
	geAAt4ljOA1wrWfaERbOahGKmw==
X-Google-Smtp-Source: AMrXdXs+okER9160RtErgLQWgo7dU46MJxhOr5qrUowXJiapXAFFIpZfoG2SKsA839a/e35KogTSEQ==
X-Received: by 2002:a5d:660a:0:b0:2be:5162:c8da with SMTP id n10-20020a5d660a000000b002be5162c8damr23369894wru.16.1674737227786;
        Thu, 26 Jan 2023 04:47:07 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id v11-20020adff68b000000b002bfb8f829eesm1198681wrp.71.2023.01.26.04.47.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 04:47:07 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 8/8] arm64: dts: qcom: sm8550-mtp: Add USB PHYs and HC nodes
Date: Thu, 26 Jan 2023 14:46:51 +0200
Message-Id: <20230126124651.1362533-9-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230126124651.1362533-1-abel.vesa@linaro.org>
References: <20230126124651.1362533-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_044711_390611_50E0DDE4 
X-CRM114-Status: UNSURE (   9.86  )
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

NOTE: This patch has been already merged. It is here only to provide
context for the rest of the patchset. There is a change with respect to the
clocks, but that will be sent as a separate/individual fix patch.

 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index 31e039f10a1b..cea1f12ce294 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -455,6 +455,28 @@ &ufs_mem_phy {
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
