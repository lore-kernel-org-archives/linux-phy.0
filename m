Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 623B3C05027
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 13:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JYbXK1U+qQuEcnWCl79Y9H4C1adHRSFl58xVytjPL9o=; b=TsNAYpmmZgmWe+
	2dss5O06bzyijnYNPJi0wsjU0hv71261b7IvASATVgA2lbkS6Oa8xUAra3OgojckyAVPNaNKboo7K
	Rlk5xq8l8Zb6MilLSpaTIgjtklee+gTiMUl2LaLVE/fJhNhDrb7XMIpZx3UKKHj6g/cYgPw1RVYyi
	N9iu0MNBtNIE3Sjuv3J5FNMAxpVgkaeGGW0BgHhJfQCSz/Md4rXnXz4t/PIBHVb+EiYXhG++hmqWe
	Yya54mhjwIrlIXVDQUDT8oKijbiZG5eXt+sAgNCAZb5oGGlSTsKWBHCPnb44GGgs3lVZF8DSFo3RP
	JPnf9eQFOuhjiaeGI+1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2mp-00B5Xx-Lo; Thu, 26 Jan 2023 13:59:31 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2mi-00B5Su-7U
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 13:59:26 +0000
Received: by mail-wr1-x42b.google.com with SMTP id q5so1902061wrv.0
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 05:59:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D8JLqJWePTj56J9GBoMOuJUgVePsSS0WQ6fKq9gZxJI=;
        b=lZ8+rnpTI72eKgw6zYPfDaSYABGPdLtaeuiACZJhEvkcXqEBw0RxPatS0qNecApU43
         ErVhdHs9IeTzrSWCSeKzBDGfWORos/TfXeJMk9V1OWVz6wXuCIT8pAExtVxA1kVXzWuo
         cHt7Vnc6OnM/O5cZcHS2n39ZXskZt4ypVMeGG58cm5p+3B7ZV1SpgV/NS4PIw5AUO3Zq
         autFe1BmYGm7/QCJu0y2JxdwymmfxLiO7I9pH87S6V93ZboDVOhO6oSmzpzFXghBVIoF
         MG3w+AK6B3WrduZ5vWSDNAwzBhYw1QqurayDmcq9PqXp+Jp3RIXUOyJTU6pd2GUFUqCG
         FJKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D8JLqJWePTj56J9GBoMOuJUgVePsSS0WQ6fKq9gZxJI=;
        b=wjqSh8PnavkLC097U+MHT6b33eHxuvwgCUtfT/9OTOERjPdR61KWlD0V1hT2Xu6Es1
         b/NQIKbd6dkjjvs6OGthERMchy6vUtTVDJEhrl4bDOMGTu2ZEZzv2oHqNoPe0Yu2KBoT
         Ytn3sT1O9QqV1XkGdqq0JnY9VC9pjMOV3wlS7XFSWSpVhkvXXb9ZNgrjHoX+NhdfNhtq
         KABNyYYeZ2kUpxWoxJEJZlI+uJXUtpvwbPXCIFrgsKAr4x/cR6Vp0rqHVOpql92KKwzG
         N6hQGDXqROMSGaxUVL+zaNQ/JgOElU59T4XMq8RQWFw9Qu/R3O2fwY2EHKbhNmkd9Gjo
         2gEw==
X-Gm-Message-State: AO0yUKUaB1okVl+8jXpfkwiMW6VLXSqWYX5RB+bssIsB6csIe+i33Wkq
	BEKz2jvnLf1akLS9s/YcReS8kw==
X-Google-Smtp-Source: AK7set9/aHfckFT1Ne+Cj5GmP32NIq0qTwHLwG93Q/NV9Y8G5nr1Vnt5wc4s17z/va+hpQXg4voujA==
X-Received: by 2002:adf:ee47:0:b0:2bf:bd69:234a with SMTP id w7-20020adfee47000000b002bfbd69234amr4896896wro.1.1674741562996;
        Thu, 26 Jan 2023 05:59:22 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id l15-20020a5d6d8f000000b002bfb37497a8sm1594067wrs.31.2023.01.26.05.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:59:22 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [RFC v2 7/7] arm64: dts: qcom: sm8550-mtp: Add eUSB2 repeater node
Date: Thu, 26 Jan 2023 15:59:09 +0200
Message-Id: <20230126135909.1624890-8-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230126135909.1624890-1-abel.vesa@linaro.org>
References: <20230126135909.1624890-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_055924_340415_D0D028FB 
X-CRM114-Status: UNSURE (   9.60  )
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

Add the PMIC eUSB2 repeater node and add the usb-repeater
property to the eUSB2 PHY to allow it to be controlled by the
PHY driver.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index cea1f12ce294..bdfed6da1b00 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -407,6 +407,11 @@ sdc2_card_det_n: sdc2-card-det-state {
 	};
 };
 
+&pm8550b_eusb2_repeater {
+	vdd18-supply = <&vreg_l15b_1p8>;
+	vdd3-supply = <&vreg_l5b_3p1>;
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
@@ -467,6 +472,9 @@ &usb_1_hsphy {
 	vdd-supply = <&vreg_l1e_0p88>;
 	vdda12-supply = <&vreg_l3e_1p2>;
 
+	phys = <&pm8550b_eusb2_repeater>;
+	phy-names = "eusb2-repeater";
+
 	status = "okay";
 };
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
