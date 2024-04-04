Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75DC5CD1284
	for <linux-phy@archiver.kernel.org>; Thu,  4 Apr 2024 12:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lvcJho6iBv5U4ptDcdyZh58rhbMrY82Rk3cDLr7CS5A=; b=Mb0S0Gi5Oc9Q2y
	c9MMPAkGh52CDTyWXNHZAqNeklmEcjKQRaUhv+/Trek/DYJY3RlSwSV9YTmtxaPyUlnw5ihnZvl8f
	67Zi2LLffcJeGjZzs2Ulx4d+A/D6zepmpctkhooo883EW8l5nW6wLx0NaI2VGj0T+0U10MJmlc6Qf
	4WvORSIL0ISlTdYKANXCI4z3GVHF4tzvmZlsZxJdEEhnHIBlwe8RKNoi1VxcXhwT9AYlGg5Fpr5Ex
	/QlVjPpj5As2Ne0NraaRSg269ux+7F/Hk9rQ3mdQP6M4tG9NaUcp+hxp1XHR/xpyryzpw2nD1t6vs
	bjsyMIHnXH0aZ34acTRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMB8-00000002as4-1Xlt;
	Thu, 04 Apr 2024 12:26:50 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMB5-00000002aoA-0Q5q
	for linux-phy@lists.infradead.org;
	Thu, 04 Apr 2024 12:26:48 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3437efea211so834597f8f.2
        for <linux-phy@lists.infradead.org>; Thu, 04 Apr 2024 05:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712233603; x=1712838403; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ds/JjfQ2TlKCtemWTNTPAMOOadxWRRjHRCXTNztqFqc=;
        b=I2eAlByvJBDS2/fHRJ9GN9T1tWNSp6YI/u+ry+I6S44nhWzJ9lYGGbxx6EZRe0JER6
         uKQhS51R/EmQhdJLvJ5vUVi3ydtMjtRAwNVgz8MBvVmzPBtvsn5bY+6KRLCINjmWs/nQ
         e/t40iigt/5D2BVUp1yory9uSeQv7WxkWLtOIW4ypJa2ZT26QazBsH/pdCFPw2dqtb4H
         +S3oLLBH31BhImTCI8yqe5S0ydiecwbbKpkiLWvryja9AB2lOv1V5Gwgb4uXeu67aUEv
         3klyMfCGIMINeqzRP0u7N3HrWY2fmlAbYWIVZgSqOwmdeeLZAiK56eGS8qTKvVI45mlc
         SQcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233603; x=1712838403;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ds/JjfQ2TlKCtemWTNTPAMOOadxWRRjHRCXTNztqFqc=;
        b=K1kc4NpBz224cbMAeVCOSucBMaSFdN3z4xYD17dzLSuQB1CFTOllRMI8MUHL+wM6uf
         wigZlsTpGCJou/ySEaqGV/YhqmlEZY4XZ47db3XVeHq43mww3CwhwDgiBFeU5QGdKVO3
         2KYgIq5pM18+aUUV89r3B9PmaZxbvee8mbZDONU/gKb55qSyzI//LwvQK7ToLleHjzC7
         2YffNBpIXV3dG61+ijvCbDXgkLp6NJTFPCUvqFuTvYSR4PY5zJHFWt4gV14qUlTfqKV1
         iOA7mA5V6ZysF9xBGJNNH3SiiFtOHjSxx76+pmK4Hl/9LgxbAWcfpfZJmzJTkUzL6mFy
         84qQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhjOCAWoD+k2jdnz+iOib2yEKPIYmhujGzW9DoqNscunyLart7VX7vvI6Dlfvb+GDBQw5EwC/AeFOZAjTMFUKpmpZyubfk25oG3DNSpg==
X-Gm-Message-State: AOJu0YwHGPwk4TjfTSOebqiEUTs6MzJRzQfAoJ/ZmRi2oNlW0wDpp6jF
	0k7Zsws3ebT0YMnalRhBqSkWyVa96bKJT3/AqeqiEIvpPw4VZ+qgkFtHhvzwYy0=
X-Google-Smtp-Source: AGHT+IE1KcSWtq0AtIR6tJqtMgKw1sNq7p9OsCBJVxmziFYXd9baY73voLcHuEo5/99B79vRXGQPWg==
X-Received: by 2002:a5d:4589:0:b0:33e:c528:c900 with SMTP id p9-20020a5d4589000000b0033ec528c900mr2144866wrq.55.1712233603079;
        Thu, 04 Apr 2024 05:26:43 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([148.252.128.204])
        by smtp.gmail.com with ESMTPSA id bu14-20020a056000078e00b003434b41c83fsm12106303wrb.81.2024.04.04.05.26.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:26:41 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	chanho61.park@samsung.com,
	ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 05/17] arm64: dts: exynos: gs101: enable cmu-hsi2 clock controller
Date: Thu,  4 Apr 2024 13:25:47 +0100
Message-ID: <20240404122559.898930-6-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
In-Reply-To: <20240404122559.898930-1-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_052647_284489_0FE2DD14 
X-CRM114-Status: UNSURE (   8.11  )
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

Enable the cmu_hsi2 clock management unit. It feeds some of
the high speed interfaces such as PCIe and UFS.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index eddb6b326fde..38ac4fb1397e 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1253,6 +1253,18 @@ pinctrl_hsi1: pinctrl@11840000 {
 			interrupts = <GIC_SPI 471 IRQ_TYPE_LEVEL_HIGH 0>;
 		};
 
+		cmu_hsi2: clock-controller@14400000 {
+			compatible = "google,gs101-cmu-hsi2";
+			reg = <0x14400000 0x4000>;
+			#clock-cells = <1>;
+			clocks = <&ext_24_5m>,
+				 <&cmu_top CLK_DOUT_CMU_HSI2_BUS>,
+				 <&cmu_top CLK_DOUT_CMU_HSI2_PCIE>,
+				 <&cmu_top CLK_DOUT_CMU_HSI2_UFS_EMBD>,
+				 <&cmu_top CLK_DOUT_CMU_HSI2_MMC_CARD>;
+			clock-names = "oscclk", "bus", "pcie", "ufs_embd", "mmc_card";
+		};
+
 		pinctrl_hsi2: pinctrl@14440000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x14440000 0x00001000>;
-- 
2.44.0.478.gd926399ef9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
