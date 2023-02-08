Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5969C636D6
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 19:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WSVmdQik3RliNVyiMHxFI1sdzJ66woZwYsJc9UxckTw=; b=4fYqMasKKBhjxz
	UU4kosZsujbb3YlLyuzdk7rvIrya+/4vrwnPp3gHup3ioOkS9i71lQ85Sr9SJLAn7ZxrSY24vcF1R
	WidXTPwfRVi6WyYLB2RXoZEyrbNiZA2zDohFKOqEGFQLxfiZ1josow5D63E1ihFHaXqIXq0Q+jQvE
	Q/3bRywp+vsyuijjz8dc3WskQ4XUGd2CpTC/VO64sI8FItTEkQLtQKHdzkc1vi5MI2CcVITN1T1lc
	VTRsJiX2+a0J0MhDW7VUdtOVmvXp/G+aMoh4kfZDmS59LIk62uEP0Ah0y8U+u+HGW4ei3CvWSL3US
	Iwvagv8qyDdMJfDfRxJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPpi1-00GhRq-4O; Wed, 08 Feb 2023 19:02:21 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPphy-00GhOB-C6
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 19:02:19 +0000
Received: by mail-wr1-x431.google.com with SMTP id r2so17797817wrv.7
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 11:02:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MhSD2EYMzeYmp4lc7JlIcu+kMhKbNZUjdV/v58pmN/I=;
        b=LMc4BxAQ7oZVRUuNxPjR5pWqTFbCCwaFhO5KTA1zkMPBzmtlm55CRbxr9bIFtwBe0g
         AVN1/LfqbG4JeWn/7ROoyQ4GBvJIXVffmWosMBZxFm3FvrcNIApzBlGpv0KqSqeRA1Zc
         T+Agpkmlfwa5Xx2ifhi4bVx/D+QsWBHTgYR7kQa75kQwmc1NoHDLuPRNzFY+GESJcgZH
         5nJ79Uv3NLy7NWhJq8+vMg3yItAXxejZoLzXGct0etsyVJcTS0SM2Fn+D1kNcET/nfMf
         4mDgdDyBugnux9n4VG9nrK3yDKLWwn3nb7+nT/+bHXTBLm0FQ9DVs41juW8Kiv9cZSSm
         Ifag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MhSD2EYMzeYmp4lc7JlIcu+kMhKbNZUjdV/v58pmN/I=;
        b=gXM2HHnIOFlH2C8sJMrGsCt5lvGT1qGSmm9rRpwx3SsuWksk0vfZSHNHVJv6f6K0gV
         RNBFJ1tdzd8WA8L8pd6MyWtQeINBLUvtsbSdN3N9P9z8Gr+Dy7/GQImZDEFBtdTD93m/
         7LmEp28cEuutFf0ZCnlY2BeCjwCrljrIkicHvx+5pm+tEX7rBCY1yr09RgisT9h16Jhf
         +9Di3mnN/Ru/v6G2z65WSpb0rL5mURWe3QYGa7OlGnVAUNVv359FsJusUsx4ghwCSnqF
         kNthCYgO2Uw9d/cce2pb80nUlw9d85rHhctf/319QkFkBvd85lUgAY26M2ZBCG9uNZt4
         9fhQ==
X-Gm-Message-State: AO0yUKU7C1ZqEG35otyvPbQV4JlTGssUJDevPeFYjS9bnJzOOzrZYfT7
	o05KsaCTv5isEu3ZQP/aD35VTw==
X-Google-Smtp-Source: AK7set+q01pJi05o5iDlEX6osfNZc0O0qfck2gCOu6I3wlt9jssBIk9OXQNFKR95bJ9+q3PIQi2utw==
X-Received: by 2002:a5d:60d0:0:b0:2bd:ee0c:26a3 with SMTP id x16-20020a5d60d0000000b002bdee0c26a3mr7632764wrt.8.1675882934685;
        Wed, 08 Feb 2023 11:02:14 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id n16-20020a1c7210000000b003dc1d668866sm2650327wmc.10.2023.02.08.11.02.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 11:02:14 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v5 7/7] arm64: dts: qcom: sm8550-mtp: Add eUSB2 repeater node
Date: Wed,  8 Feb 2023 21:02:00 +0200
Message-Id: <20230208190200.2966723-8-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230208190200.2966723-1-abel.vesa@linaro.org>
References: <20230208190200.2966723-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_110218_430471_08488452 
X-CRM114-Status: UNSURE (   8.87  )
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

The v4 is here:
https://lore.kernel.org/all/20230207135551.1418637-8-abel.vesa@linaro.org/

Changes since v4:
 * none

Changes since v3:
 * Dropped the phy-names property from usb_1_hsphy, like Dmitry suggested

 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index 56aab7cafcbc..6b6ec0fe5e5e 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -457,6 +457,11 @@ sdc2_card_det_n: sdc2-card-det-state {
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
@@ -563,6 +568,8 @@ &usb_1_hsphy {
 	vdd-supply = <&vreg_l1e_0p88>;
 	vdda12-supply = <&vreg_l3e_1p2>;
 
+	phys = <&pm8550b_eusb2_repeater>;
+
 	status = "okay";
 };
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
