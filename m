Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B93AEC4708E
	for <linux-phy@archiver.kernel.org>; Mon, 26 Dec 2022 03:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5r0UkQecwNJtTZ4snfR81LjtmbP7nWKv9/sLrLgNpso=; b=1H3QCLYHqEsq5E
	igiBmDfQQsKAPxASMHSzePe/OMFZ6nDcC87qkQZ29ZcC8QikgJ9wvfazmpu+efOOWTbbx2JxpLwwK
	mMXQYdmmp6stfIZ727n/JHtuE1AUQusUxx9eDDuoIObZucrP27VkcC6ke7OGZmvZYexVIjA6A+9Yp
	xn0qs+BHWNRl0bn5xqOgLeEj0/OrSCt8lv392W9808/1/qstSjQzt/F3NymZvXd95v7ung5/Ibju+
	SksOHOao744XoAsezhm//0ASrEfKaNMgel43MHieeegrS6kqCKqF+vTebCbUjaiFi/9aKx0YN9Jmy
	VMXTOZ1Vn29XH/jL1oTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9duC-001Eqa-RY; Mon, 26 Dec 2022 03:12:01 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9dtI-001EMi-IF
	for linux-phy@lists.infradead.org; Mon, 26 Dec 2022 03:11:10 +0000
Received: by mail-lf1-x131.google.com with SMTP id z26so14562043lfu.8
        for <linux-phy@lists.infradead.org>; Sun, 25 Dec 2022 19:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VOPpZXvnhHa1qoac0B6bfJrnDF8l/HQwHQJha2WAMcA=;
        b=y7lqmFF3DN7ZzcnjrZcCIKEy5NIzn3LtLpYfgOLj5NCFH7NPqM06Sr9ue+RsXUUfww
         WKddBkBrRKhOCA5jVj7GHpMKjNFG4mesBWtyIGd+cIN743WPB6tnqjFiWw+vI/MnV89i
         ba4MbTeur7yWp9Wh5IRa3UUjF2T+SHdwRiYHy8BT1UD4PEWN/hk3nQqudTn8wrQUT3zY
         jo0zpyv6y3KbbmZsr3Z+sjh2N5Ni5LV7SV5VJeWQgp7mqFCitHI7lbiy5Ny/AmhF02YN
         OkTJlKb6hmR1ZOX3MCGbfruKrm1Y1JJD297bI76EUA5HFSew+356g82t/Rs6I34BiNzq
         86Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VOPpZXvnhHa1qoac0B6bfJrnDF8l/HQwHQJha2WAMcA=;
        b=nRzVdW4TDjAH6bJnXx75VR4HeHEVt39c35M/XwzelHUBg/4M2yfGNZPgCpcJBgNXbJ
         wPeJZgdyylV9+kN6lQct0vEK6g+4UuVbRJbQq+GZpJAchBWp0YKWxAUXJVOC7W7miQcH
         8FESrNB3ogCxaxgB4q3pyQW5o4WbrXtvzsaOz9aqxpQjo6cBH64qlXO0ep6hdSBoKEAO
         ebhy1OU5CvFcPyK0A/wxlIAxvWd41qs5TEDKzZ1vLDC1TNT3XmO9Lcatxkmu2Aa7MQfe
         r9o8Lnutahz4soWlNsgy8EhnmRWrIq8iC9Vzm3FOMqco3oSd9HYp6sZNxWfB7+J+7TbW
         8Acg==
X-Gm-Message-State: AFqh2kou7HoagM4ideTrlLLN94h8Dc/AM/R1awoFPgNR5j5ComN47sKD
	BLgfBaCF3hC6xIG7jAktHNV74w==
X-Google-Smtp-Source: AMrXdXtLlyh5s3oI5dEvX7d8RshePPPEHXE+yeeNY0V3rN/FmbaNibWHOrZql6Nag1Q2lYJ/KZamNg==
X-Received: by 2002:a05:6512:31d1:b0:4b5:7925:8707 with SMTP id j17-20020a05651231d100b004b579258707mr5763777lfe.26.1672024262594;
        Sun, 25 Dec 2022 19:11:02 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id a12-20020a2e860c000000b0027f770526ebsm1165388lji.75.2022.12.25.19.11.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Dec 2022 19:11:02 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 3/3] arm64: dts: qcom: qcs404: register PCIe PHY as a clock provider
Date: Mon, 26 Dec 2022 05:10:59 +0200
Message-Id: <20221226031059.2563165-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221226031059.2563165-1-dmitry.baryshkov@linaro.org>
References: <20221226031059.2563165-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221225_191104_738532_D2A5E0BA 
X-CRM114-Status: UNSURE (   7.23  )
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

Add #clock-cells to the pcie_phy node. It provides a PCIe PIPE clock.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index a5324eecb50a..ffffaa7507cf 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -810,6 +810,7 @@ pcie_phy: phy@7786000 {
 			reset-names = "phy", "pipe";
 
 			clock-output-names = "pcie_0_pipe_clk";
+			#clock-cells = <0>;
 			#phy-cells = <0>;
 
 			status = "disabled";
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
