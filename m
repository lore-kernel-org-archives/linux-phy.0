Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEA2CC6FA82
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 13:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+lrGyeDTJjZJk6GvzUD4vMFp4vlZjobxFvL7muE3tM=; b=QfGBIyQ++QBUaW
	FjtGPY38T6Sdwecp+Fp9Nw8Ydtk6eaDHH0O66uqhWXDjfrN5EEARY2oE0cX2xJVj47sBnQ6K8MUHZ
	dXDWV8VgLs+WQeEmSGLBS9FHK/3bEj2rctzOj8l6QJlI4ORGFdwh2n8JNFZSAU6NqMze7OfKJb0aI
	KZSRfna5vbG4pYjdUUYa9hslWJzbLzuH5vHXGVmdXTM7rqRxn8PbrJ8Xc+L7mP/73/3VE+OB3rFLA
	aKLpz3MGWnpYBT+8v1p81mBMwxni+ka35QWSJ782FbQsXOEHqdsympLzlt7EDAvz5qrUqXJovGoNc
	DkApSEQxuMhUoeSL2trg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWdvi-00GICI-B2; Fri, 09 Sep 2022 13:20:22 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWdve-00GI91-Td
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 13:20:20 +0000
Received: by mail-lf1-x136.google.com with SMTP id a8so2604590lff.13
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 06:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=7eIAPqI4VKtQ+SccbuIlWbbRD/2RqIpw8CuTR3vK6To=;
        b=DkafrE+hVIylqFypeq2N34GUMha4gRCZ4CoqpO7BiMR6ZvxNagiRFX46HvXyhEf7lw
         IvSTni9o3GjK59yKJUxcQ2Guhm6mFlHWJhDvDSbBe1zb4WRyqMa+dBJtPhzQ6hiDV82a
         H2YPcvg9c9ZswqAjLELPR9Jz8wXPbOtjPzO8ukWnSG1vq/JYdjtwsFUFqNO2Pu6U7Yed
         h3zb3PFiUrn1D+vMIBKu9a2UWSRJ2e+8q4/SVbB8U03Y0xu13mS66QKccCqSp9sMolje
         kjPqZucqnL3xhLOCpi+94Ql8MqHR0jhpDDO10QehYpIvP/UWlqVNEOoatxkrWJDDw9um
         raMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=7eIAPqI4VKtQ+SccbuIlWbbRD/2RqIpw8CuTR3vK6To=;
        b=BqwZNHsSwpIAZUqZWPKHgP0KgYbQIhTVs2VGPcFM8w5qmU3ptOI+Ozyf0jJPsoU9J2
         6Gr8qYsm2nN8cXT69jtAwaPyVfYskLdfjmdK9wSBywyqahH7ShKMjMpvPPTxfDWQJjnr
         xVvwYfRQdCmqIFQW8iADhSvLOcN+9bfWTWfxU6rYSZkdO9nZyShN23tNEIkoHj0hisf0
         QsfdtgbfiSMM2uv7PF87L9mAK3aHers/AULaiNEivRSr+SJSMW0ju25m3GxGDM+0keHF
         TPg7sGbstL/kI2JUL013JHdKihQwgyCNrmRAZ6c6+v1K4wptb7ONLE1q/rR0fIYNrQLj
         MSJw==
X-Gm-Message-State: ACgBeo0oxhKYM61EWrI7OklEC4OJQGCvZWQBTtH+e6KZXDBLsRRaUh01
	YTrTbevdORJr+N5hLKbdqCzkQQ==
X-Google-Smtp-Source: AA6agR7UPYJj5t4SVndDP80FGNT9+vOtzry4SSeHaFI9K61PnoqWOvZadl4SMBPIiX69d75+SIvmCA==
X-Received: by 2002:a05:6512:1087:b0:494:a011:2752 with SMTP id j7-20020a056512108700b00494a0112752mr4888907lfg.2.1662729616645;
        Fri, 09 Sep 2022 06:20:16 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v10-20020a056512348a00b00498ff4ae746sm71729lfr.294.2022.09.09.06.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 06:20:16 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH 6/6] ARM: dts: qcom: apq8064: use hdmi_phy for the MMCC's hdmipll clock
Date: Fri,  9 Sep 2022 16:20:10 +0300
Message-Id: <20220909132010.3814817-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
References: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_062018_990621_8B9F479D 
X-CRM114-Status: UNSURE (   9.56  )
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

Link hdmi_phy as a clock provider of "hdmipll" clock to the MMCC.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8064.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
index decd18217523..28a0e2a4a254 100644
--- a/arch/arm/boot/dts/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
@@ -868,7 +868,7 @@ mmcc: clock-controller@4000000 {
 				 <&dsi0_phy 0>,
 				 <0>,
 				 <0>,
-				 <0>;
+				 <&hdmi_phy>;
 			clock-names = "pxo",
 				      "pll3",
 				      "pll8_vote",
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
