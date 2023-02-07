Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 300F5C636CC
	for <linux-phy@archiver.kernel.org>; Tue,  7 Feb 2023 13:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWOeKzowPPbyV1Ym6Jjxae3SEByGtodl3ioqUJcp6fQ=; b=AkWgx8krZ3JSlD
	QvC/c7Lxl2jQhmLl/b5YeowMlwGiOhx87ULkicblz3R+PkqKStmMFG5hUfw2IePXy1VaHKWoklHnH
	ULk0bgf0M04h0vJZ2F2qYIcLH3/3qZhfi66jLARcsrtvGiVldlosFBZiBz1xDasEgxT2oI+jlk8bw
	TlT1cGVKGQmjkDEuMTLaacvTb5+d3IfJbcVyN/oIM1iohU+Q+2LVVHuAx//S6g6R4eUSgNbkht2Xg
	K0wj0/xgkJShQz9KRtPQS1/vwpq8vP5rHJ5q2LMlbJc+ZuR4iY2dcGF4JDimq1dkd9Muqku2O6daZ
	Yn6FnMetwSodwMLRJt0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPOSA-00CMsV-KU; Tue, 07 Feb 2023 13:56:10 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPOS8-00CMqE-3S
	for linux-phy@lists.infradead.org; Tue, 07 Feb 2023 13:56:09 +0000
Received: by mail-wr1-x435.google.com with SMTP id g6so5648299wrv.1
        for <linux-phy@lists.infradead.org>; Tue, 07 Feb 2023 05:56:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V1aUOJzlnvog/gfPWV5JW0Qf9tdncCWCmWydTboOvKw=;
        b=bO5sg5C5vYk9TdSOnLjR4vlhtn9sPiCyuwTtqnTTgWRlpu6ZIHi2AuSfyxwDUhH1E3
         7iIfij9Fjz7f1MYJpQy2hjG1h8vjsYElgJEhcWCYbarfC1ZcxdyLCyd/IPGwYUz+3Mde
         oqQp5TY/prn2vOHVAiD4YbRNxJmoIEX9aMEGWawsmNYceIIZqF3dZuYM8TqTJFLpiItC
         gUZj8ZewAg+J/0uxy84V7Sd9T7B9STa6We5Gn5QUkuDdBa0eSe6ZESufOyJ8RqKi93Fd
         zZeqp4/kmqKAY2c8yu6aJKqcT81K8WZv25+Y4RCXZ0TR+A81ExbJ+Ite5QCLES6P4aWw
         A8eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V1aUOJzlnvog/gfPWV5JW0Qf9tdncCWCmWydTboOvKw=;
        b=U2m9AyI5JxMdSiIPF4eqydkwBxBjDVmsvbUlgRNjFyqoJkyqLqW89T79pOjBwRyE0l
         KY8hh0ooeFHv5WpKKISVqqvnoHIpIAeIZG5R9H45Wxp4ukJQqLwwaBKDlzM73UtboBmy
         olTCd9mNr/PXgDNM1WOjtH1VzrTnR+3766thW/2OczYePjikIXdcd7+hTzyZKxg45NHn
         bWWGbncVrhqwWQCHMmmh4md4nHsv2VnfuA8vXmGrQ/pMHd201Ls4AW6aGm7YYnLJK262
         rUxfE+KdThuM1oUaOZcz0LTOENf5qvtKkeLghCwK2i4nFb+NsQYL3woaIk2h0Dx81xat
         IyIw==
X-Gm-Message-State: AO0yUKVImOuLo7Fu/CaajvRe2mkeHU/JI0EuNAeLWWhZJVjZIoz72VNn
	tO7O6dGQ7YoskQbboU4q03Y4XQ==
X-Google-Smtp-Source: AK7set8/7pguR2nkrh5sfxWhRMJoc0cANOCX7qiQNTzv4aIYl17VUb020gXBfptdCuTi7LOG4aoGAA==
X-Received: by 2002:a5d:6d82:0:b0:2c3:c138:e52d with SMTP id l2-20020a5d6d82000000b002c3c138e52dmr14202450wrs.4.1675778164473;
        Tue, 07 Feb 2023 05:56:04 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id p10-20020a5d59aa000000b002be5401ef5fsm11611312wrr.39.2023.02.07.05.56.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 05:56:03 -0800 (PST)
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
Subject: [PATCH v4 7/7] arm64: dts: qcom: sm8550-mtp: Add eUSB2 repeater node
Date: Tue,  7 Feb 2023 15:55:51 +0200
Message-Id: <20230207135551.1418637-8-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207135551.1418637-1-abel.vesa@linaro.org>
References: <20230207135551.1418637-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_055608_158519_BE12CAF1 
X-CRM114-Status: UNSURE (   8.95  )
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

The v3 (rfc) is here:
https://lore.kernel.org/all/20230202133816.4026990-8-abel.vesa@linaro.org/

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
