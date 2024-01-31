Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D222C48285
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jan 2024 07:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARz4Ce3FvyODEdESficsdOOb1tpsMOJ2xFyMwFuPjHg=; b=SpUUJokuYMr6d2
	QbiRKHux2nlvgSZy6HxUZ57ytrNa+zdP+R23Dc7TnbXLsdsxhZP4LCXJR6LyIxqTACsugam7XdfEW
	Aj57mdMcU9mlQWPkSmCa0O8ySP3IY8vS9/PKlJvaBrunJ+KXEAXY90LzPKZYzXl1kZFGcbjAnSpYa
	j8dQEkLvv+U/PqVH65wJXSAzJVkpbEC0D4f7ZDOgeNoyfQoeArBv46iOQFxH4p0vWCA299wJNErwE
	es5dVHW/Ugt2UGkJ4FgUYYv8waytySv51AIEetUsdPleIuJktHOpqwW+x0yk+0UtIWqHvchHFuuxQ
	rHsBFyuhwyBkEMBUtcbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4i1-00000001jDv-3qqI;
	Wed, 31 Jan 2024 07:08:33 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4hz-00000001jDE-0ANi
	for linux-phy@lists.infradead.org;
	Wed, 31 Jan 2024 07:08:32 +0000
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-3be62ccda4bso1632361b6e.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Jan 2024 23:08:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684910; x=1707289710; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nwWXxX8bA04iBCBG5C5m4XA22SN5zaTxttTpsff3W6s=;
        b=FRYBDV6tVeoj3m2vTe1/Mqv7+X1gRVCMWWVtweRhoTprVhvqLxd4k/LgH3fHYcEe+X
         c1e9LdtRxJEI1PCGnslFfvYmafG79HDV3UWUHwTPuPbS18hnj4sIQWoZQM+C6tghAwPU
         90uitwTMJCSU8uK5LolTEo0G58bUjMMTR5zZoBtwoljZoKnrhGtUDySrMZ+ns5gCoArk
         982S9A4C9WvHv9jwuVCpB1U0LKL8o8wISeXzzj6mp5s5k+oYyYD3BM3QbfxtFFLjVLyh
         CdUiPGiFwUwgRA242H9A4W7p85VqyhnVqNC4NATtYmFp8viOctyBxdm1XMxOjTWFMMGM
         VGnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684910; x=1707289710;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nwWXxX8bA04iBCBG5C5m4XA22SN5zaTxttTpsff3W6s=;
        b=R3AwN3ZJ/S7nqgzVaW4nE5GBgseRCgPDJuKy6T/L5+M0wOQ3H6rH1zHbnXqnEp7eBA
         G7P0t+HnvPgZEK2UbBp+hO4DPssyiCzWnpBDtriJjpMkV77Q1BQSiSwBRb6XYawzdNFD
         +wtYcRWUjdELNOoKjCnk2KSr1MhvDcV58jDcBmzJQQB7aRN7qegueifL7z3r1TS8ERuo
         erRIO9bT+U4JBPADppvHKoiPCKNuudmt1Zu6BZ8hUlkx6URjPghuCaJVUdW/bbCsomea
         pwmpL4oNfS0hEIndJD/X6A3sKEL62ceS37EVV7ZwdcxaNDo9Rq0gkqFpkg4qs7Uez2ec
         9w8w==
X-Gm-Message-State: AOJu0YyF7yMabs4gpjFBs6/GVrnhdsszvzcgbYH/quEDhJ82b1x0PSBO
	Kbqu/eqJuBu0ZyZXiYZCA9ZZmV2mVEK9sr0zaiVegtGpkg6eeP/ITYrOMvIdRQ==
X-Google-Smtp-Source: AGHT+IFX3J0/GQ3aj+6X5/0qamhWKtXJIRcGHITNOdgjjxvwokAqlyynIe7k9LQEReXWhsccINPaUQ==
X-Received: by 2002:a05:6808:1596:b0:3be:bbdd:ea85 with SMTP id t22-20020a056808159600b003bebbddea85mr946862oiw.27.1706684909883;
        Tue, 30 Jan 2024 23:08:29 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.08.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:08:29 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:28 +0530
Subject: [PATCH v3 05/17] arm64: dts: qcom: msm8996: Fix UFS PHY clocks
MIME-Version: 1.0
Message-Id: <20240131-ufs-phy-clock-v3-5-58a49d2f4605@linaro.org>
References: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
In-Reply-To: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, quic_cang@quicinc.com, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1028;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=6gFdtbR7kUCe62mAXevdADnV4rqouNX7oyE3b+Q5pV8=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG8vJFABRz1FHK0xn1RjAK3AuoAgTnI5cRQs
 7Zoa0NbAaiJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxvAAKCRBVnxHm/pHO
 9XK0CACANThkimoq3YF2AFIuFUn9WSXWyiTZ0i9Gpgzq+V/u8XlW38VpaxToMJA/wXC5uIYualx
 l5168bi4i8EGniCq3ZuxepF9kHhN5C2mW7ZZt0puujh8lkp2fzDzd2RAR86iT9x332mL1Ypz2p5
 QJpZxm1eOuT7TaFxqovq1uiqZdKh7x1gXTHJu1fTJ1tWuWolyVPscNj4MkhVjh7pu/cYmatdOgi
 WyzeYzLZcNjrsCmWBgoz3x3kJYrbHiQSet/RgCG47OlWGVUbmn3IY9HfVE5S3ZZVUS8vBmQXmwb
 cVxE7C3knU9+RUqvo3tOqn0BLqW/kkjcwWglFN4YZGFu/+ZQ
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_230831_113502_9F9D58F3 
X-CRM114-Status: GOOD (  10.05  )
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

QMP PHY used in MSM8996 requires 2 clocks:

* ref - 19.2MHz reference clock from RPM
* qref - QREF clock from GCC

Fixes: 27520210e881 ("arm64: dts: qcom: msm8996: Use generic QMP driver for UFS")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 600720d3a8f5..a691913b78a0 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -2123,8 +2123,8 @@ ufsphy: phy@627000 {
 			compatible = "qcom,msm8996-qmp-ufs-phy";
 			reg = <0x00627000 0x1000>;
 
-			clocks = <&gcc GCC_UFS_CLKREF_CLK>;
-			clock-names = "ref";
+			clocks = <&rpmcc RPM_SMD_LN_BB_CLK>, <&gcc GCC_UFS_CLKREF_CLK>;
+			clock-names = "ref", "qref";
 
 			resets = <&ufshc 0>;
 			reset-names = "ufsphy";

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
