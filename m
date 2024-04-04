Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6E5CCD1284
	for <linux-phy@archiver.kernel.org>; Thu,  4 Apr 2024 12:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6zBKrmQJ6UN8MDb5hZnxXE+HaHAJ4MWEwXTvZil4Re8=; b=esnPM2TgboN123
	Xg6F4prDNKB8y/9K6i6JjDSUMK8uuCziivMnDmbRaenWpDlzyG7pno6Wh41ZNQKcprP00OyAmJ1Hf
	LCCeBy6CPK5v6Mry0aJH43HNLL8rSVp/0CUuyQ4WWyHK6lFNEucCqoa1CZG4st3S35NCCkQH0ZKgq
	kLsm0cnNh3+w/ucW18MX5DvJNmiTxq9S++++jQqfE5uM7ij0yY1shXS1Fc1HVMJjTdv61IuYgt1g8
	2tkCb0hvceNTHJ65NvdTGjOFRmfqEOfmsgmMBFFMFiuaV/Pucoc/4SThdoxNXAgRewOMBBdu6V28Q
	njJ/4EVLQR7m36mfE7jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMBH-00000002axR-1bgI;
	Thu, 04 Apr 2024 12:26:59 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMB9-00000002ars-1wmR
	for linux-phy@lists.infradead.org;
	Thu, 04 Apr 2024 12:26:53 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2d6fd3cfaa6so12871671fa.2
        for <linux-phy@lists.infradead.org>; Thu, 04 Apr 2024 05:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712233609; x=1712838409; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aKvvN74xOJwt4hMDICXFAAtS9sJu4IkWmxjimbRwKsc=;
        b=l5HiQRHdTz7k4bT482UxOSWWmZsSYtE8DV4lwZKWhbRxIO5Bv6GDUrY4+01cWj8Kcs
         kbwgBXiA0/pwyiHsM4Iy6ICQSdmfdleBk3ggLRMQIZVX1dEUL8YB5+oFcd2CWWmy1B5A
         U+EKMd2ITcLsL/DVS8Zq12MgFMsRHcMOEEc/C689Tkdm0ZBKf8oeg+k6L+4UDOKCoD+E
         0fmv/zFK+c1YLER3UYztSE2vtJuvMLEy7NTGBMaoa+DaNBwNsvvzPvEtKMvFqOQAxN3k
         L7XlvzD2esrTCqA5KeZHOYovCpJUkuxxuzsyMtI9wiNiDqA23514fiahA2wOEqTgoY28
         kDbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233609; x=1712838409;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aKvvN74xOJwt4hMDICXFAAtS9sJu4IkWmxjimbRwKsc=;
        b=CT2sMG3/8+X/fgAS8cMeMR9PdzjBTGYNlfBQGtQ2WSfGfu0sHYa6eXLRLTOnvAPKo0
         J1DkxoZSpQqeZOWH2gt2ug+J3fX4Whb2T+81tiTssyN31JZ/EO+37FScM3wG2o1lBBJp
         fW/dhbvnVLmmyXsl/FoUuY7VW8uo6wXQ/WrQVeFzEMh63msjQs6E4bGY6e8ra2HFO1/o
         S+OZgMG0CCB9cAPkQoIYwgBR9ElX1v1tKJGvM2dtI0unO7tlMri+ENDAcTEp8+vAkcLd
         aCvccSc2Ea0+IFERB0Z2LKkXG9u1wjk2fzt91qotuAn2iLS3mtAvVPVJadGTTCVlMfVh
         hlng==
X-Forwarded-Encrypted: i=1; AJvYcCVJn+yjrOs/zpB2zNXijT4TLal48ZHru9OB7LnhXMiGOWYGIF0o9jFaPeV4P4/d7KeKozrCg6YQ23qA60R1X0Lkb0Gutxi2GBWuWwsP2Q==
X-Gm-Message-State: AOJu0YySOnjsnEabdMy/PYGAJzh/1L/Y+Wpd19QKpfBZppg6hl8yGCDd
	xUO9w4re/abQPs+4wzCbFbHzHSTCwcvazgJBt1rBaeGuQYQmt7wB8tOaM8hZ2Zk=
X-Google-Smtp-Source: AGHT+IGXhK8kMBWmKF1bq1+yuzbm7UyP2S0ScsyuzRrvPgM0bVlL1iwbvXwfSAAP4OVpq6OKWPN1Ew==
X-Received: by 2002:a05:651c:1a2c:b0:2d8:5726:4173 with SMTP id by44-20020a05651c1a2c00b002d857264173mr1548167ljb.43.1712233609033;
        Thu, 04 Apr 2024 05:26:49 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([148.252.128.204])
        by smtp.gmail.com with ESMTPSA id bu14-20020a056000078e00b003434b41c83fsm12106303wrb.81.2024.04.04.05.26.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:26:48 -0700 (PDT)
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
Subject: [PATCH 06/17] arm64: dts: exynos: gs101: Add the hsi2 sysreg node
Date: Thu,  4 Apr 2024 13:25:48 +0100
Message-ID: <20240404122559.898930-7-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
In-Reply-To: <20240404122559.898930-1-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_052651_669957_9C2FA89A 
X-CRM114-Status: UNSURE (   7.54  )
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

This has some configuration bits such as sharability that
are required by UFS.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 38ac4fb1397e..608369cec47b 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1265,6 +1265,12 @@ cmu_hsi2: clock-controller@14400000 {
 			clock-names = "oscclk", "bus", "pcie", "ufs_embd", "mmc_card";
 		};
 
+		sysreg_hsi2: syscon@14420000 {
+			compatible = "google,gs101-hsi2-sysreg", "syscon";
+			reg = <0x14420000 0x1000>;
+			clocks = <&cmu_hsi2 CLK_GOUT_HSI2_SYSREG_HSI2_PCLK>;
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
