Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D768C3525C
	for <linux-phy@archiver.kernel.org>; Thu,  2 Dec 2021 14:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NEhTzL+Ii6cLBe+PjsbOJ4V0QUFLoncUGJZu55qybMY=; b=kjkXEhcrGjyiUT
	ZzJbXPJ1II1IhWmbJan/5SmdSfDEZkdlMocVN8I2noK7lKc24JLpOCnfD2OEzDCrlN2a+sDSa3fTs
	S+5l3gIDt995RWTolvy9YXmYA7EUwzPihmC39uhTktfJ/AO8ICXIVpB/Tmn126WsxVcJb4IgToeqh
	CJyVwUqpcvukw+wGGv9AmX2H1Dau6NloV9R8yZirHBhohaxQNEWjBiUyrJuFb2PPooCo1KoILMNcW
	3OgPyUaIt9LU6v1x8yUv+76MTOOFGtoHJbh64WxyiiM6OFPj2lDk0QZx2yf1lf2LmoENznpt4jP/p
	uZ4YkuWPEEs/s3Zi0iNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msmuV-00CWxg-OO; Thu, 02 Dec 2021 14:18:07 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msmu6-00CWja-P5
 for linux-phy@lists.infradead.org; Thu, 02 Dec 2021 14:17:45 +0000
Received: by mail-lf1-x12a.google.com with SMTP id l22so71850630lfg.7
 for <linux-phy@lists.infradead.org>; Thu, 02 Dec 2021 06:17:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IjAiB/BeYwBoMDPwZ/mxvZy1FpiqnDkRYGMsFqXo2Hg=;
 b=B7LL2lMMIaUD5ngA8vRhlo46sl61A+aJfstg3XxHb+MOHdvnS2txAVqZflgPEcZ6GR
 CkHTfsghV3LJ3/HrfbB6xd91UU7JpcKQKGLuFl+AyIAl925MM7hX0N6CJVyZfW3hvsTZ
 2v6NM6WGIadfya3zmAVhR1xXMvFDBRtwxX4cdhVasecKzvTyetd01NvLqEo/lsF0KzSF
 kxw974R6+Uik9k4kGxw8Om0LCqcHR21M780765DdzTQm9CXOB/QN0RSstjSkT0Gdv5Ed
 Oo6pXxu7G6XogwTJjB8JJ7FzUH76xOe7zQ2ZgdFOhOCRV1PGkSBhG+Xf/2VU3XE2JcQf
 b3wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IjAiB/BeYwBoMDPwZ/mxvZy1FpiqnDkRYGMsFqXo2Hg=;
 b=1M2yc0WcbqF0PyVHn5SKB6DfiUzNeCESZFjPXNuj1HNWEQYOvCun+eDdc9c7jNH2TK
 G1r+4e/xmVGSJyq8cm3Zm11z+wV6au5Wi49hnqbEDnrokvqw4w22qDW/1ESfUz0s/3mB
 cQe0zP+oN7g3ax7B2D7LYmIuW3oaru9q/z/jMZ3Q1Gmhihbaq2DK3J0uopY/NvwsuMnA
 cM8jon3nogfSFToNy75KZPlbMsfGLX1NFWJHxKu1mJ1oRQvF5cQW1jbwFG4/21X3L789
 Or27/uN1QAJBouo8D+zjYKbzn04VTsotnVk9uU4Vrac3Ept4C7eYeLuuR+0mL0s2DZ3u
 T7tw==
X-Gm-Message-State: AOAM532y0RptICC5f9WHC8Jh/pbXp0IdNbmFjwhG6ghoInLMuSCW30Q1
 eJOMN0FTVu4DhKflzntFMCAUfw==
X-Google-Smtp-Source: ABdhPJyfp0uYJ9etbMtMlklrnjy47rzZdkltbr7E4QEfi0/4P9AaFnjikSNJydRlflIuqAINtg1IZg==
X-Received: by 2002:ac2:4c0b:: with SMTP id t11mr12753180lfq.520.1638454660607; 
 Thu, 02 Dec 2021 06:17:40 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id m15sm362487lfg.165.2021.12.02.06.17.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Dec 2021 06:17:40 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v1 09/10] arm64: dts: qcom: sm8450-qrd: enable PCIe0 PHY device
Date: Thu,  2 Dec 2021 17:17:25 +0300
Message-Id: <20211202141726.1796793-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
References: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_061742_851646_C321BFC1 
X-CRM114-Status: UNSURE (   7.72  )
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

Enable PCIe0 PHY on the SM8450 QRD device.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
index 8520911d6b7d..30ebafe9c6d2 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
@@ -346,10 +346,20 @@ vreg_l3h_0p91: ldo3 {
 	};
 };
 
+&pcie0_phy {
+	status = "okay";
+	vdda-phy-supply = <&vreg_l5b_0p88>;
+	vdda-pll-supply = <&vreg_l6b_1p2>;
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
 
+&qupv3_id_1 {
+	status = "okay";
+};
+
 &tlmm {
 	gpio-reserved-ranges = <28 4>, <36 4>;
 };
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
