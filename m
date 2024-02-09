Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3D2BC4828F
	for <linux-phy@archiver.kernel.org>; Fri,  9 Feb 2024 15:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HLd0PoT/vqC/6hQw+4/E1y/t/r8tDIJQC4DrBW99srg=; b=h3vCihwf8ptq10
	fuHMps9SL9kBoUt+fvqy060/S9CSWQqrmPNf1VZpPY+f2tjwePGLYVQKoU9MwTFdi0itAAiEwwUEz
	Xd5qwLW18hBP9A2bvXBataWdW62TyjkcMwJ+apiWmP1ygty9tj5Meg4K3cLgqEimF+XAkq1kxhtx0
	zhif4oUo8KqN6fx/eYJpugFR6e+EU6TG93uEeAhhDZ1rK5XTRbl32ohMjVhzjBUzv4g9LwvIO7Mf1
	Qmen4Ayj2O6TZbEa+/Phu7lsIxXdcMoRA2W1Dk7XzC2nq65vrbW3oe2IIIFMYOnkkiu8yNhldyfYl
	lbDDuOcWfeUMnHRy5WhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYSaB-0000000HKvE-2054;
	Fri, 09 Feb 2024 15:14:27 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYSa8-0000000HKu4-27sN
	for linux-phy@lists.infradead.org;
	Fri, 09 Feb 2024 15:14:25 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-55790581457so1732798a12.3
        for <linux-phy@lists.infradead.org>; Fri, 09 Feb 2024 07:14:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707491663; x=1708096463; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YL2IJfHkdntdjIp9PYI1/IffOpvqAPpkYMNUKb07Z4U=;
        b=jWyzBBhK5Slisz3pVG8hrfaOxRDHvLMuGQDqDr+8j2DP73XUIRK4oE4LBQTPtRdXxu
         NB5RvWGQFQUfhtGYkNa2HlorvXHbvz/T1qRIujP+4vEnM9DlF0JK81eS73JMuapvUpJO
         OwRBmLyg0fHb05Prmznf0SZqe0cJhy3HJh80KzWCVKHDgIQWOaBc5onZHfOvA1JYQ2rf
         WeAMQOAEO+h0E7GQkPV+wXFISirNlZzlRwpugKW1GJbRC4Fs3N/TTAWznPRAZS6GscdP
         I3WF6gq7tI4QwlMBO1gsXGssE/wPtg7rLQ3OLWZs2kmPful+0AbAU48b0R1IJ2ue2zKg
         lJ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707491663; x=1708096463;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YL2IJfHkdntdjIp9PYI1/IffOpvqAPpkYMNUKb07Z4U=;
        b=hh6RB9sErNFowHTQGgCtoQOdhlrnfHyCGlekivj81VpaTMxOD36rrbeClHo8HXL3qN
         wDfwSjDErjQ+puNhNgEMCEQaYydKaJGWyIqWHA+hzgkQ47ElSNGyVQLF+DbCoLUihb7e
         vgHuo60oRSh8lgjrfazgsnnY/4qOyMNAYGQDCNkTKX1J8Ebo9ZSnNiLRIiSdVcXo+/wr
         QT5qeMSfVBpN4pZv6fuKjJhUUpT42DclezKnPtCaDYJ58nuuQoWp+wUrCqcSACB4kUSx
         u5aiBBrT85uo8QeRaQ8m5Hv8TzmOOn6bmBZtwEYddDTWSkDc+UOPhxMO/vEZ7B5EpzR5
         yZ+A==
X-Forwarded-Encrypted: i=1; AJvYcCV1CE8GoN6r5oZNui94w9W4NstR70t7Mp9LPhyDZh+ScBclWMEP7pVlNirQCMXBtdTOt5uEB16CQeRXrUfNIFUcRMi8N9+40xfST53qwQ==
X-Gm-Message-State: AOJu0YweGVyyiTfXz0/ydW5AG70cHCDMCOT/YzxGB1r9bBhYygLFgA64
	Gs+vWsMikn9AogdR1S98e8T3ezQRtVVStOK5v2JkY4G4Jwe7v2AsEWu1lO4f3ZXO4ECYdvqEU4F
	9
X-Google-Smtp-Source: AGHT+IFRnx3V8Lzh5GMxDQ/foYrd+zTVGfXFf11WO/GMjuFCE6jG49bIpV5DOcpyzhWSeA4HDREdEw==
X-Received: by 2002:a05:6402:3083:b0:561:55d1:370d with SMTP id de3-20020a056402308300b0056155d1370dmr212344edb.36.1707491662805;
        Fri, 09 Feb 2024 07:14:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWdWmparoLbnMsHzLIEVr6Tg1bWuhKB0XjpXYQ21w93vf1+nynSS63ESpSPCxvFjDdVh28CVql3iOTnq0ih4AaOAR+VT7Lo1KbY4XKHZIrxFn3VzPJ3o+3fK1M47vxURvTtKezS6GGd2Wr3je8m1pKooeqt/Ltp1gFBVPKlkPjWvsciyPOm+zVcfvQF/USozA0SE/FUZrHKd5WDjSgibR3SW//XLppRO6YUTWPZn9L0dVTHILmrmPNBCr5TYeTwqxMfQWs0CBCxf1w3HwAN7E5hC0aMZxpUmmsJHZmc96Yjos4i/G75Lmp9AO82Qu0sbLzKVQDI5nqmAcx7jKL/PiAB3RJq0D/bak+2Rz+cfi82p2X4dBLSQzS7n44vINLijJLaYsmH9w==
Received: from [127.0.1.1] ([62.231.97.49])
        by smtp.gmail.com with ESMTPSA id k6-20020a05640212c600b0055ef56f4575sm860240edx.39.2024.02.09.07.14.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Feb 2024 07:14:22 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 09 Feb 2024 17:14:10 +0200
Subject: [PATCH 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: Add support
 for SMB2360
MIME-Version: 1.0
Message-Id: <20240209-phy-qualcomm-eusb2-repeater-smb2360-v1-2-af2ca4d95a67@linaro.org>
References: <20240209-phy-qualcomm-eusb2-repeater-smb2360-v1-0-af2ca4d95a67@linaro.org>
In-Reply-To: <20240209-phy-qualcomm-eusb2-repeater-smb2360-v1-0-af2ca4d95a67@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1759; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=RYhCME+7iVjYelcpTNzvPbov152f+rjOM+U60A6Yk8o=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlxkFKvd37nKXPlXZ+BGqyJesFi49ujExMfhLIo
 Ej3PV1DZz2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZcZBSgAKCRAbX0TJAJUV
 ViLOEACaWnWsPpm3ynGsiy0HJIrunVq1hVKVG0Eq/OMOGBxMZkoAbll56aLUGkBdxmq2xG8V5Vm
 gF1gwEPDAb8zLJVFUtNXWkDrB/Xuulg4POxIF2Oayv5O7F9F2rO+xgF1+bktr4v4b+4Mk1SP9ZQ
 uyVs5r0dpXD+bgj9bcE/NPp4KmHu8J69QLjcytVIpEN7e5FAJnL8f+FREgayTfdOiwY/JsZN5Y2
 j1KRe1gpcbu3B2SOrB7Nma+zWJ4DBlxX7LTUuMkm1SHLNBVZ4ECAdH9nFc2Irb38DSaV8t7Mrlg
 cIxv3EpT+31aK8bMg6nAWi+NZtSqhjbeupE4MV2PIWlA7R6PGSdZjhAVp3zjNO1QaCaVir4q06K
 kJUp6qWersCfFzyoj+y+anUDJCryll4ebqb4gQh4C+n5WihvG2lE7e0RmdEiw4a5zU9YeNYnxJi
 IIkqB+4H+Bqk4dgJzYAPD3eai0Rmk0hp2YloptNC4K8FpHMXQe1QVFMDetCGVBtILrmC86oWGkH
 UAvuQsSTsT/4PpTPMY9VPY1mwzxS8fUBzsv6dR8uE1ONRSRp2R5FWhDJevv83LPuPLWNyP0Yf5c
 8u5pZjfZBDk/oPOu5fK/5vGrc3Sdc6NDQx95QtWQB5EzZRmVY6kEqKbyz7C0mkqQX0L8Q77/ulz
 sY1t+vi9R5sS+Hw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_071424_583546_88C1F3BE 
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

The SMB2360 PMICs contain the same eUSB2 repeater as the PM8550B,
so add dedicated compatible for SMB82360.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index a43e20abb10d..68cc8e24f383 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -88,6 +88,12 @@ static const u32 pm8550b_init_tbl[NUM_TUNE_FIELDS] = {
 	[TUNE_USB2_PREEM] = 0x5,
 };
 
+static const u32 smb2360_init_tbl[NUM_TUNE_FIELDS] = {
+	[TUNE_IUSB2] = 0x5,
+	[TUNE_SQUELCH_U] = 0x3,
+	[TUNE_USB2_PREEM] = 0x2,
+};
+
 static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
 	.init_tbl	= pm8550b_init_tbl,
 	.init_tbl_num	= ARRAY_SIZE(pm8550b_init_tbl),
@@ -95,6 +101,13 @@ static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
 	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
 };
 
+static const struct eusb2_repeater_cfg smb2360_eusb2_cfg = {
+	.init_tbl	= smb2360_init_tbl,
+	.init_tbl_num	= ARRAY_SIZE(smb2360_init_tbl),
+	.vreg_list	= pm8550b_vreg_l,
+	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
+};
+
 static int eusb2_repeater_init_vregs(struct eusb2_repeater *rptr)
 {
 	int num = rptr->cfg->num_vregs;
@@ -271,6 +284,10 @@ static const struct of_device_id eusb2_repeater_of_match_table[] = {
 		.compatible = "qcom,pm8550b-eusb2-repeater",
 		.data = &pm8550b_eusb2_cfg,
 	},
+	{
+		.compatible = "qcom,smb2360-eusb2-repeater",
+		.data = &smb2360_eusb2_cfg,
+	},
 	{ },
 };
 MODULE_DEVICE_TABLE(of, eusb2_repeater_of_match_table);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
