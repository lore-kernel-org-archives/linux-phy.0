Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB9DBFA3752
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 21:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wdrZEaWNmK88gDGJvks7CTX8C/4wiDKJhaEkeT+5egk=; b=zXlJcfUvHyHxio
	xGqJpd+8db0smcbqk+5SPIXV60Wu2DQtpbQerDX9SrcvJtkS2onZ2/53aVSUQulIvkl7Vunr5vqi8
	6cYtG/QKom+IRjUAOcVM2uIc5hJlRKaf4x+mwmkkac+P+7kEszCLmlGfymrBV1UQnbZrGbal9rdNg
	2+Jx090HNB9iLt7amoBW0zjGhVhZn85BN9hWISA35651fnE/p+t0OHnria9VfyQV22q4ztETfy/3Z
	sfrDV0rzHXUeYhDRskm24MGbBSxTkzIZZHfasbzfiQLsqL2Evol/B/HtkQH5HtKcVmUUGu25C8Spt
	uUFKNA/CGwpP0LqK0rQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oot8w-009MQ4-2O; Sat, 29 Oct 2022 21:13:26 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oot8s-009MFi-0L
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 21:13:24 +0000
Received: by mail-lf1-x129.google.com with SMTP id t4so467664lfp.2
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 14:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yGzWY9dQslOTaDVeaaodx13Gr+GUtkH/icX/AdfHUtw=;
        b=nfMfulGdopVScBdkEjHnHJmLbe/uHlh92wWxPjlO0HFAKQR/DeQ52qgsjVj+u4FSTg
         lYNruJt/uYXneEGKuBeMprrYM2WTEVGw85isBBTumIQSgO6RQRlORpFNd6KDuh1JZlET
         dUlKrf36YIEbuWxForsF5plvaQhOnKaNPl7PkDy7WFqsDBt/P9ErOkYEyp0r6tUVaUNX
         64Y/s4HNKzTWmePzmUJgozSH8q/kDdhY6tDYFCkj/SUas24XGJ6h+Edqxe2K4KR9oeqi
         t4YKZQfgTl637phISAxoahThELmjSH2FjZ0MmzH5BoTUhv3V/LSrfr8MUKZhh1nFIs6i
         da3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yGzWY9dQslOTaDVeaaodx13Gr+GUtkH/icX/AdfHUtw=;
        b=mQ1FniPT2afelVoURUrbVig2uedtGkwZEIwIsw8DruUHU1ee7TtRo8tgAQLB65WS20
         9qjlQuQwGvwYfGcZyaDc3EjYgkqXD+4+5R2Avfk9h+2l78WEOFVtriXTnP36JYRyTcPa
         q7bBhnew/sD0Q1DLrBnVKCVFE2EKcRBIZlQGoSSqdYfKyvYZC9nUKac1s9Gc8ZYXN4ca
         9LdkMH7THZZBMRO+XklNJDgXJe+ASep9MRMuA87mShVpIwcv1OjXO0cwtfSk83zo+WRq
         i/yxN2of1qNTtKuQ6kcWwtOFNMVnIJxSdD5+MYjinX4xw9s55ojVhloRCb/9+LTZJMD8
         x4ag==
X-Gm-Message-State: ACrzQf2hno546RJnQy+ettFC1LucKN4BgVxmRyu5fGdJ8iwQvoy63NJP
	JdEAEO7nrsDMxS3s2eDGlVeYZw==
X-Google-Smtp-Source: AMsMyM4NQkhSWL6l/d/+2ulVs5Jcg+djF+hk7SG4JbzYOLfjNQmX32rzYNGth7Dxl+SBJNYtQENcBg==
X-Received: by 2002:a19:7518:0:b0:4a2:4593:6e14 with SMTP id y24-20020a197518000000b004a245936e14mr2177808lfe.82.1667078001573;
        Sat, 29 Oct 2022 14:13:21 -0700 (PDT)
Received: from localhost.localdomain ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id j14-20020a05651231ce00b004a480c8f770sm433508lfe.210.2022.10.29.14.13.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Oct 2022 14:13:21 -0700 (PDT)
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
Subject: [PATCH v1 7/7] arm64: dts: qcom: sm8350-hdk: enable PCIe devices
Date: Sun, 30 Oct 2022 00:13:12 +0300
Message-Id: <20221029211312.929862-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221029211312.929862-1-dmitry.baryshkov@linaro.org>
References: <20221029211312.929862-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_141322_075975_5A3DEC6E 
X-CRM114-Status: UNSURE (   8.10  )
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
