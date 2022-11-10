Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABD53C3A5A3
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 10:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wdrZEaWNmK88gDGJvks7CTX8C/4wiDKJhaEkeT+5egk=; b=DIAckVS6ZlDA84
	4qpGrCLh+905hRhu9FrnpXenk9QqkRC30HKTv64FP7dKsEyGDBnx8Ma9Ll4XawzPdECXiPnR2vmmz
	RtbW+VZQHNfWbtnAybLlkwVL8tESVnjeslGCP3bidub2A1JDI7jFGUFL6/R0974qD0kQUkrmhktGI
	96pXgcOgkKHHYhP21SBOw+LcAVCQPRcpue2r6XW4JEe+IcdenuoiJuPhBEPTrVdgjFHtXQVQwP8Jb
	5zcgZIuA8kX9CRXOCYYIcpqkE7RI2JaR4bizTLJhRW+XTdCTW2wYLcclJw/njFtIY08bmrPDc2q4i
	muyLCjQX6lkdtjXw32pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot4sj-0053ho-2l; Thu, 10 Nov 2022 10:34:01 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot4sf-0053dC-No
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 10:33:59 +0000
Received: by mail-lj1-x22b.google.com with SMTP id h12so844025ljg.9
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 02:33:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yGzWY9dQslOTaDVeaaodx13Gr+GUtkH/icX/AdfHUtw=;
        b=Ve/NPFkAE0bxmtVdm1r31VXlYS078dzAs39JLxBbiQwvV7jPMbBs29chxcR7ZpNyjK
         75WuHLCdZLdJix/nVfPSCMg6bG2HJRvi345t8et8S3BCyfI/CgMDo9zeQMxQVuuHNIRw
         9PC3/U3Eou0v9sWzSVMur865WIZJrW9nLQwxiQ53Df1AcHNTD+ATUU6EoqaO0AjVTtHC
         8JyJKv/z9Vqf/etXMbybdoC5qZMO3Tfkh4R7OyyrYM30bFafVzGtlkZ0d03/4ShcdKWn
         SKEFKlpKqFkXI/369AxMnESD8EIOgsl704X1n0+vvtLwsKuw+mTt1znbDMfVR6zJ2NU1
         fWbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yGzWY9dQslOTaDVeaaodx13Gr+GUtkH/icX/AdfHUtw=;
        b=LZ0TgrBpUO582MELHsaZXajoZ7EeMLCcT3APFkcq9dYNNgPtkszbEUoiegj6OzjIIc
         19ENcC3hlpbnWdADB7YtqsZwdw9c7CyeBc2/0o/nC+UgEEuzk3s3kLT8E96k7fbtpxYZ
         wJzHoeknuRaxcwU9FTBIGoIljMhlgeLSsMp45JgSNtyXOudmlavZfBnPquw87VgXXZ1t
         eSppoen9rB/kW163evu3BrfV8fOAii/Rxe1pxGDyQOk7pnXoWSQgls2uwjXcfSz5LPcf
         FumuCw+QYiDI2zHYA6h4GPJWQ2/rOCz+o+dMyBXgWQn10xutqJKNmjhRBsczGonfkFv3
         T0bg==
X-Gm-Message-State: ACrzQf1NlMyQ+cMBu+dqJ2mV5b2sixs1lsz4E51PqV8iS+50xYmYOx6c
	vROuEkhYzVYE3zm3BvAru69u5g==
X-Google-Smtp-Source: AMsMyM5VEx26zEE+KwEPWvpa35rlqAY/RhhTn/bdX9GOfGlWiG3oXxlF5FNTqocy0OWAQgRGVNViBw==
X-Received: by 2002:a2e:9a8a:0:b0:26f:bf09:2f57 with SMTP id p10-20020a2e9a8a000000b0026fbf092f57mr8119128lji.180.1668076435429;
        Thu, 10 Nov 2022 02:33:55 -0800 (PST)
Received: from localhost.localdomain ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id p22-20020ac246d6000000b00498f32ae907sm2687837lfo.95.2022.11.10.02.33.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 02:33:55 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 8/8] arm64: dts: qcom: sm8350-hdk: enable PCIe devices
Date: Thu, 10 Nov 2022 13:33:45 +0300
Message-Id: <20221110103345.729018-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221110103345.729018-1-dmitry.baryshkov@linaro.org>
References: <20221110103345.729018-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_023357_817066_D551D132 
X-CRM114-Status: UNSURE (   8.17  )
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

Enable PCIe0 and PCIe1 hosts found on SM8350 HDK board.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
index 0fcf5bd88fc7..58a9dc7705a5 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
@@ -222,6 +222,22 @@ &mpss {
 	firmware-name = "qcom/sm8350/modem.mbn";
 };
 
+&pcie0 {
+	status = "okay";
+};
+
+&pcie0_phy {
+	status = "okay";
+};
+
+&pcie1 {
+	status = "okay";
+};
+
+&pcie1_phy {
+	status = "okay";
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
