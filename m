Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 038EAC48BF6
	for <linux-phy@archiver.kernel.org>; Thu, 29 Feb 2024 13:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f4WXgkQr/XrSRwV9CT8Ad+BmnUNXlImtrvGEe8mtFI4=; b=DnUtUmFIWYxp36
	FsWPwvHw+bHyQR8faw94NTk/aptHpeVZChzaojDpcWpi7OMyecOER5/pjuo8XrOEhvgAuEw6JXJc2
	FWyym1MwKEPBM5/cNmbIKW5CKuyygrXkvMfReKJKH7aHXkx4C4mvMPpaHFCU4+eF6xe06dsbj3Fp1
	r9bJGlJxUsj0sMO6Z522bk/sUnPvdgnSMscTnPlTI15CQSfOSpdPB2HAaHIGKWxd0ZN+zjfUdAqod
	pXHgLIVkQ6fHYA0xxJL7RIJ2sV6xvkp0FnRoMI0hjD8Ytq9SL4KIcB2yuGJVekycF5TYPPdwar4uJ
	1yC5qv15AKv0vfMKcyWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfg8C-0000000DbLA-2GVY;
	Thu, 29 Feb 2024 13:07:24 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfg85-0000000DbHB-0KhJ
	for linux-phy@lists.infradead.org;
	Thu, 29 Feb 2024 13:07:19 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-412b99eb5cfso6018955e9.3
        for <linux-phy@lists.infradead.org>; Thu, 29 Feb 2024 05:07:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709212035; x=1709816835; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=djTK4QWx2RqxzGqF8Cq4ZaFcpyWxxa+r0xmgHQrJJjM=;
        b=dCkEBe3AQpFOWxHGH4NXX3a9kGHS2J/bArcJgzYmoP+odJ+9aO0HD1oqexSKQXYiYq
         vdWZKtiGBRPCIJhOhZaNqZ5/VFhZUV/P6b345sf6Z4PEhC5aK6nnAVL1MKa7/mSZoOG1
         Cke2teDFQnrxgqZLRlD48LSlMX4yxcMtunl+z9ATHU7X1lN60yoO4qdCFvczxh0fjMyF
         w06mWH8RMLhsAFZXH7LoIMADJmri3VtlHtatDejoZUAMTP+j1P2hKLPkLeq4/cLZn3AZ
         Ha2uY6Vxh7xgoOAsTkja9Y2mN1OEpk/GR3eGsau9lhPwqQQjJZGY57QilvZH9RtQtpxt
         DuSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709212035; x=1709816835;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=djTK4QWx2RqxzGqF8Cq4ZaFcpyWxxa+r0xmgHQrJJjM=;
        b=n2Yq4hy2dvA/HYOmN2GAzkXRfV6zsXwxC3lJD1joPGo4RJnC9C/YBOT/T8dwUkNGln
         DOYBv+BH+PI17QhhTO+s7GQuOTtTeHUeaJXDAel5s7iTCSI+/HxTnSfcSAkjaxGqHBeL
         /9QLQ7zaJgLsRbHkyJw4+JbjmnTjQ4PZmUVrn0T5CbaneKAFzV6vOZ7gZ501+SeBx1DU
         q0Yu63rW7iz/jWbRsTwLv2VzTZvKCqMzjxwbvnSF4NHz6gZ45FL9hQRFKmUZx0Oakb3x
         U+x2H60ioR+9EDllC8IiD7p1WQUqBr9Njkfsb/p8J7IQFTDSQ34rfgvAycNquxhLxtAU
         lWZA==
X-Forwarded-Encrypted: i=1; AJvYcCWU7m1ybAX1hwtA1oDpu+YlhnSAmg08WdlnVSQldHk9DWnUQE6tqXSU4WlKGAfEDnfSpNzeepMs5qppLI4RlUMbL/3JjtrRXOeNTorzAA==
X-Gm-Message-State: AOJu0YyHOC8BiqGAcM3r/A59pVu0kRZ/9rz7zMiMqmKFitV+lpDQmX5A
	PGx6uZcIBK5qeaHVqrB6lBBGdtQhMwAk8JrAGA9hpkkUnz7dq3nFJf+i54eDIMk=
X-Google-Smtp-Source: AGHT+IFsLBUQujeobwIe+PBXF8p9tO8MDxUnuJMHt7vo2bYz6hqUMOeD8rjeD66N7xF8fiNb7HaPxQ==
X-Received: by 2002:a05:600c:1c15:b0:412:b2fe:6e46 with SMTP id j21-20020a05600c1c1500b00412b2fe6e46mr1883397wms.27.1709212035213;
        Thu, 29 Feb 2024 05:07:15 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id t7-20020a05600c198700b00412a38e732csm2071473wmq.35.2024.02.29.05.07.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Feb 2024 05:07:14 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 29 Feb 2024 14:07:05 +0100
Subject: [PATCH RFT 5/7] arm64: dts: qcom-sm8550: allow 4 lanes for
 DisplayPort and enable QMP PHY mode-switch
MIME-Version: 1.0
Message-Id: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-5-07e24a231840@linaro.org>
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
In-Reply-To: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1519;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=58NUV9okk92amQIHcmrvyddywNRiyxMSOvtlK9kind0=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl4IF8UDzf8qs6mL+cMusxdeoc3fQAwLA0KUeC2ovw
 E+lkVHyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZeCBfAAKCRB33NvayMhJ0YrKD/
 4m2Kis3LNB77dZB8vYp62njN8b2m/hqcE4OG8BzKDNwroowc1vKqWlvzjhknEKJQOF5oZX3iRLJ556
 gB7oNGWgcrA1bHQqiOXEGIRXiHfrc9Potve9hyBNS1XaiftpnMbrQ5gdAhUQ8+2SocAssdXYjp76TZ
 vmU3lEQeo5nObYKlT7QAzxd7GdobWi1no2PmgJ9+SX9SbJBw7Tm+qsqXnSFJ+oZUOee2tEBMpVHYRH
 54EMJDa+5KxnG+1NkbbDgNGiFajVRxgszB8+R446IB8CO7Z+DPmUj/whiB/iKoP19tpnMzzOX+nWVl
 +H4o6r7ihQKPXlnREoWvpZ14SdBwPooMrbl0fLG5T2YPDF+d0V8ntAe8CENos4UwcT4qe7T1gKjsuc
 KicVy2iEj5Ico2k7p5PjJZBgwnss3EY3UeTaYhw29rzq+bV88S/x0OIDd1PnGu1+truO75zE9Se/fQ
 GpP3EW5x+2xpo0C8sgNdlQT3ApgAO3aOyYvuWBxnloZEWyjHl3Dbaf1JSGVzm6afRFNzm48FdmWaA3
 G/bZA95MZngsBvzmZlx2DArbQhXskVmiC+NZJWAmoX8bXtkCrTBt3qpC2HUcV0yZgGR92b6CUTeshF
 lZ5821eZyd7/ObrNZz3ZaniVEz0Q3pbGEIIjYiktwvlN3oCbGBXVwmpyzlqw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_050717_242700_E909D590 
X-CRM114-Status: UNSURE (   9.95  )
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

Allow up to 4 lanes for the DisplayPort link from the PHY to the Controller
and allow mode-switch events to the QMP Combo PHY.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts | 3 ++-
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
index 12d60a0ee095..86d6f993acd5 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
@@ -941,7 +941,7 @@ &mdss_dp0 {
 
 &mdss_dp0_out {
 	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 };
 
 &pcie0 {
@@ -1284,6 +1284,7 @@ &usb_dp_qmpphy {
 	vdda-phy-supply = <&vreg_l3e_1p2>;
 	vdda-pll-supply = <&vreg_l3f_0p88>;
 
+	mode-switch;
 	orientation-switch;
 
 	status = "okay";
diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index 92f015017418..2f6c76c9a135 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -806,7 +806,7 @@ &mdss_dp0 {
 };
 
 &mdss_dp0_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
 };
 
@@ -1161,6 +1161,7 @@ &usb_dp_qmpphy {
 	vdda-phy-supply = <&vreg_l3e_1p2>;
 	vdda-pll-supply = <&vreg_l3f_0p88>;
 
+	mode-switch;
 	orientation-switch;
 
 	status = "okay";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
