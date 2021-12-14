Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A078C43217
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 22:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3f0HJbPJv7csiv39VLmOxPecu50LdnrbCKtdkvBxd/o=; b=VNHduM2U36TS0Y
	6vMVcWl++Pp2iZni4I92dxpKw3cyrPbhR0QXPjtrG8XnJbqZ9rO42ZN446pRqZ8rY0wtr1Acq1R2w
	sbEHkIHE4dShu2UGl+EsaE2Tt5Bj4saRRNPvjslcIabrgbMle2a26zpVXLTJixW4w9rHK0dGTdHta
	q6Tz/jAPOFmKJ4o8o222F3IUVRvHlzzungVF5Fe1lLCJcHYMFEFcKWaxvIubWrYvjDfvGTDDBS9pr
	in2Lntpa09qKKKeVOzGDY/NzkSZoI9OVDKGrD7Eg380qn5O2PHR2mRs3f2qCrtEJpewxkLcAjeY7l
	jfNs3MF17yrGjHvJonCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxGlM-00G0W8-Nq; Tue, 14 Dec 2021 22:59:12 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxGlJ-00G0UQ-Si
 for linux-phy@lists.infradead.org; Tue, 14 Dec 2021 22:59:11 +0000
Received: by mail-lj1-x230.google.com with SMTP id bn20so30608328ljb.8
 for <linux-phy@lists.infradead.org>; Tue, 14 Dec 2021 14:59:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uIA3ifLQZgBvpxUOMDtRJH8f89HJ9IrhQ5upk51MF9Q=;
 b=Hbk81jbBWzzZySvKhC2/9pPEMJi0e0d5HTobngzvbXKIhB6NXmauh4Wgij1d+aLaeL
 k9qn/bxmtzqbSz6+tngDb1kexxJ6bXiNmJ4ao6ZxGih3nHjrENR98B6DDx1GOJuzvPcq
 76yP+xijpmyLSP68BC4VZ38vDVriAd9/58rPlSP0ZXYHvJbw6UnZ3sIZE6cnlr13dRfF
 AbHoBLETCChx8NbRdOltD7QPXsNraFJxFCGGJgeKW1ZY50xQI41sYlZKLbmq5k327+59
 Yhgj8a9pQ6LB8WwONBvDLec2jJQy9+CEmJaM/ZicTnQ/YrnogAnaqlhSeBgaoAwjGt9O
 uBmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uIA3ifLQZgBvpxUOMDtRJH8f89HJ9IrhQ5upk51MF9Q=;
 b=5/Ip7MAgGtL9Ay7eD3vLJb3fonoMgvGWsF7dPhLT6DfiaOmIJbVmxNkGx7B2MpQa98
 18n21YF8ktYvPSf2BicXA/Acpw/UUd59sD+VsF6hKi/tA/YCID5sEG9I9VqpAswCzlDB
 TxfwhxRhogEed3s9d0+vj9EUKPR0f6I8fk4iBrhwI09g1d7qDqYSuP6oR/ozswLeha3M
 iERa44sASz+pUHdgFIc6kWVVi20F5SpAz91H1Rs/KHAsI3qls+2U66Luz05JAgV1qszA
 WzOUsGzfsDTR11RFhPkBl1awqxrB/KRPJwbAMwk81NYy/Gq5YQUPviKHNz1I7e49DZs3
 fwxA==
X-Gm-Message-State: AOAM532vs6BGFnBic3OFOb6KvM85Zj500N4d4X4xycowbEO9bHvOQon7
 i2b4nptPKZ1ecFA9ZlW8YD64Kw==
X-Google-Smtp-Source: ABdhPJyccFBgO1amcfDH5C00rIP1MKZeIJ1ovoQM577J+Iu6wGkMn8SG3pvsIUlqNJHgJ2nor2iYjw==
X-Received: by 2002:a2e:94e:: with SMTP id 75mr7375813ljj.494.1639522748100;
 Tue, 14 Dec 2021 14:59:08 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
 by smtp.gmail.com with ESMTPSA id t10sm45115lja.105.2021.12.14.14.59.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 14:59:07 -0800 (PST)
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
Subject: [PATCH v4 09/10] arm64: dts: qcom: sm8450-qrd: enable PCIe0 PHY device
Date: Wed, 15 Dec 2021 01:58:45 +0300
Message-Id: <20211214225846.2043361-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
References: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_145909_945191_28F6E4FD 
X-CRM114-Status: UNSURE (   7.54  )
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
index cd74b97b9018..e02d3c86e365 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
@@ -346,10 +346,20 @@ vreg_l6e_1p2: ldo6 {
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
