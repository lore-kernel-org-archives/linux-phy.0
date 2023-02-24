Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55150C64ED8
	for <linux-phy@archiver.kernel.org>; Fri, 24 Feb 2023 11:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y4e00MtGMGC4jfDB/5MJu583dHToYpX5iWz046Gq+ok=; b=svngqFRySuIjux
	RYQDV/CMEueM8NUj/oiWTHg+EtZ+YYVyyF91AOC+QaAQkGRr2lHICmR+dDK5r7EROQXFY8+UYU87h
	eMuT298sLfcN64fEioCGWqW1ZefKtnfYhEzm0Vq5x70+L63qXnCYSJEUE4rbE4EjHumVDuhFecNRF
	Mwc1y+4gYkjMUBJJ1OgyhYaxSwij1AsBFtA6TJVKSaC+buCe2rImckNa0ivYTvAHB8Tau2/5wLJT1
	tjxjTcXdXk1BB8g3TkmORG/o+ztScpW9F9jjvjWoKWGxRjpIoXymF9w/Z1azs1JSMv4yosbXzwgcz
	rl1bd2+15JqW/Rb1Fl8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVo1-0029YE-OQ; Fri, 24 Feb 2023 11:00:01 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVny-0029WY-Oc
	for linux-phy@lists.infradead.org; Fri, 24 Feb 2023 11:00:00 +0000
Received: by mail-pl1-x633.google.com with SMTP id ko13so16990894plb.13
        for <linux-phy@lists.infradead.org>; Fri, 24 Feb 2023 02:59:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iP9zGqgMaCSpCYlPZyiAEXYd/RguuzuuCZizAwTQ5gg=;
        b=J290LwTpIgWswetXj0xEmhbl8yf4qKAssmLQNkDWICvPbVim82qGquoaVCSAX4w99P
         yMij3+sbJdSID+dtp/Xcig6h52J05UtJDHhnQxXSGRRnrl5TNLC+AVjYiMrLD+jKHJe6
         vCE0LntanXhnMa2BBF3tzIykrPBVnk/e7DYyT3s3GDzoYP1YY1ceff5qV93YMpDPX8lT
         JqhXqsBpko7hwrWNoahh+zPKEN3F2QLQTFdvklHehV3SlZaO/kYQ0MisMKpEZ97JxseJ
         XKYP6vIxTc+emFFIIl3qZxd5Hvmn//9pKB0WWe1SA5WkQjpsxu02sUlTQ4BqdDkjWg1h
         jxvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iP9zGqgMaCSpCYlPZyiAEXYd/RguuzuuCZizAwTQ5gg=;
        b=GKlbYooXBD08mPhwNMo83ueQ5FghbOZFyE99Vocsr6wU4J68J2rTrwSRCIAwRpEk1X
         O4eWX3Fi28wXMyRrDc7Wn5XB50y/vC2oNOE347yu0aonv23xSfAtgRF3nRlnJegh9Si/
         lgFnItanMP6htgwDud1xadWd3AfEWgrZorDN7TrLJp9/jZJiOV9ihOVWGMggAsqeS9Jr
         F5TouoDFCZP4hFzkCwyZyZR8TehXOw3qG5zRbq2jYl35spfqGMROao7Kat5KGYneAWYl
         z04DgwZ3mR66mF7N0H00XPysrsz07q6w6bs/iA49mLZE9FxCv5f8QmJDe2ZeJ2A+9I/G
         vBSA==
X-Gm-Message-State: AO0yUKW8qZfEXyxyQVgByBJ5U50J9X9ljB2ZzNBa9dOwCpyAAxn7sVfj
	Sd37zOwGLgUUpagq5wY6sr+M/6gu/vDlRZg=
X-Google-Smtp-Source: AK7set/al4LL68/GfHadFZcZNnVLYVICQzL/FWVfgZtw28RaSGQNf8PxY3SlrDb97iTb6gmZ2AdN9w==
X-Received: by 2002:a17:90b:38ce:b0:232:d6d2:f847 with SMTP id nn14-20020a17090b38ce00b00232d6d2f847mr16452816pjb.17.1677236397300;
        Fri, 24 Feb 2023 02:59:57 -0800 (PST)
Received: from localhost.localdomain ([117.217.187.3])
        by smtp.gmail.com with ESMTPSA id gd5-20020a17090b0fc500b00233cde36909sm1263853pjb.21.2023.02.24.02.59.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 02:59:56 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	lpieralisi@kernel.org,
	robh@kernel.org,
	kw@linux.com,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org
Cc: konrad.dybcio@linaro.org,
	bhelgaas@google.com,
	kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 09/13] ARM: dts: qcom: sdx55-t55: Enable PCIe RC support
Date: Fri, 24 Feb 2023 16:29:02 +0530
Message-Id: <20230224105906.16540-10-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
References: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_025958_839510_8307701A 
X-CRM114-Status: UNSURE (   8.03  )
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

Enable PCIe RC support on Thundercomm T55 board.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm/boot/dts/qcom-sdx55-t55.dts | 42 ++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-sdx55-t55.dts b/arch/arm/boot/dts/qcom-sdx55-t55.dts
index 7ed8feb99afb..6339af791b0b 100644
--- a/arch/arm/boot/dts/qcom-sdx55-t55.dts
+++ b/arch/arm/boot/dts/qcom-sdx55-t55.dts
@@ -242,6 +242,23 @@ &ipa {
 	memory-region = <&ipa_fw_mem>;
 };
 
+&pcie_phy {
+	vdda-phy-supply = <&vreg_l1e_bb_1p2>;
+	vdda-pll-supply = <&vreg_l4e_bb_0p875>;
+
+	status = "okay";
+};
+
+&pcie_rc {
+	perst-gpios = <&tlmm 57 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 53 GPIO_ACTIVE_HIGH>;
+
+	pinctrl-0 = <&pcie_default>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
 &qpic_bam {
 	status = "ok";
 };
@@ -265,6 +282,31 @@ &remoteproc_mpss {
 	memory-region = <&mpss_adsp_mem>;
 };
 
+&tlmm {
+	pcie_default: pcie-default-state {
+		clkreq-pins {
+			pins = "gpio56";
+			function = "pcie_clkreq";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		perst-pins {
+			pins = "gpio57";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-down;
+		};
+
+		wake-pins {
+		       pins = "gpio53";
+		       function = "gpio";
+		       drive-strength = <2>;
+		       bias-pull-up;
+	       };
+	};
+};
+
 &usb_hsphy {
 	status = "okay";
 	vdda-pll-supply = <&vreg_l4e_bb_0p875>;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
