Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C808EC35269
	for <linux-phy@archiver.kernel.org>; Sat, 11 Dec 2021 02:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3f0HJbPJv7csiv39VLmOxPecu50LdnrbCKtdkvBxd/o=; b=2Ax82foPhQDJk3
	QC8M91DZTB63o4Sc2oi9Ofwi9z4qybiXEXPFiAUNoQSSHl+deIPoulbrG8HkZtc7WlhCWs3E+70I9
	A3foEoy8yNjtPdSmKvI/ZRpHspdVDicEhHxW/WEbqs4HXe5wCDgOuXvfhXN6O8DzspbMv37ra9tyI
	qiYStu0W65P7a5JFiY1UKBoauCFEfWgyujArjiDIpsmJ2HlhprvxXrUaVwT0nrN36xCnlGzDFthaD
	ES1P7C7cIKlaqUWufUht7638ICTkjbUZrtGfFb1h4NrfLqokf6kle7M2pzthATakRxcQ7QA2WY2s6
	dIyhSnybAFkTiELcjM3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvrxn-004RBf-7e; Sat, 11 Dec 2021 02:18:15 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvrxk-004R8e-83
 for linux-phy@lists.infradead.org; Sat, 11 Dec 2021 02:18:13 +0000
Received: by mail-lf1-x12e.google.com with SMTP id b40so21154569lfv.10
 for <linux-phy@lists.infradead.org>; Fri, 10 Dec 2021 18:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uIA3ifLQZgBvpxUOMDtRJH8f89HJ9IrhQ5upk51MF9Q=;
 b=k2qpxdE2OMMOv6ocUNsnnFKDOqrMJlOKX5S6n0Qw7NiCewLJyFBmyS5Mr7ChuOPGmC
 Ylo444iRwOhMfTtimPr/kMsb4ZjxDvsavoiD73BQi72Lf1J452hxe8CG9TD+JNqlJuzy
 aboGC+ryaXDvwj4VFi48iU/KyDVWRM5XEoMMbdiGsibQ71q9eK69R7f2oSmR5O5kqbGG
 ydQHg11abk5t+uBwIcQRY38fdel7SXRqda7IOXGd4nhvln3M8FnaGwqndLfY6kI7xYJB
 gguY0IgjkbzzhhNO0ns3wdK+DL+t29+PY+BuE1SAoG1/PyTRJ02840jwusgfRc6PgFp1
 0GVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uIA3ifLQZgBvpxUOMDtRJH8f89HJ9IrhQ5upk51MF9Q=;
 b=5ICaQDfkEK4VkZBbzEfsAIF98xHL8XUG/dJ94uG2DSLc/RwclRBgZIZlfE2npuQD6j
 hlEZJSq7rvP4LKR3y2PCmrPCfIQ7oDPDzwogcK4BK4N2ZUSQB4ZneppoXlgejYC958dI
 Vbbn9iCBKVzG4CcTmR8OTE17QafK/czHetP0hFbVlLgR70f2GK2MTjEeNfiO6HBmUJJe
 hBywl5gt1Ol015KhJqyuXrawWWR1BV3YofUw5nNJx/lrRybxFCLMpQa1w5pGryTshW7U
 lN3POe1qhqHRT6Gv2Hiu/SDixsC83bmpKfekMFpjEPypDG0bASA47F0B/tPTybrCy9ww
 VZxA==
X-Gm-Message-State: AOAM533i5Y+W4F4SrnIrKmu5RxVsI0WELWMDZJYS0haNDaCbAkUtLI5z
 nAWZiz6kqiF3rdhQzrU7WalRUA==
X-Google-Smtp-Source: ABdhPJyl6riVetPDvIzw6COhpZVX6yX0MUh2ufbEMZiGVLCmPODcTZn5tWjgT61b4v+IAhsxAZ2Lzw==
X-Received: by 2002:ac2:5932:: with SMTP id v18mr15876461lfi.611.1639189090536; 
 Fri, 10 Dec 2021 18:18:10 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id y7sm504663lfj.90.2021.12.10.18.18.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Dec 2021 18:18:10 -0800 (PST)
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
Subject: [PATCH v3 09/10] arm64: dts: qcom: sm8450-qrd: enable PCIe0 PHY device
Date: Sat, 11 Dec 2021 05:17:57 +0300
Message-Id: <20211211021758.1712299-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211211021758.1712299-1-dmitry.baryshkov@linaro.org>
References: <20211211021758.1712299-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_181812_305129_0D13CE9E 
X-CRM114-Status: UNSURE (   7.33  )
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
