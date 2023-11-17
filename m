Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6A70C5AE5C
	for <linux-phy@archiver.kernel.org>; Fri, 17 Nov 2023 20:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xy/3PeXrHgZnlqHlGn5mynuaXqcWoP1bbvNakXE/9IE=; b=dxNR4HyhIbL7vY
	v0uZRdSDHMIAg/XPvnUVi0nMK7fyFzUnDiwECK9xL4/S2oEa7QUdG+7f9hAZ7MgDTrL2ONXEGFtTJ
	SRnBGkKNyF+YoNJhd4kmo7H6xa0J9fQjq1gSFd1RQ7soTlEb+3IaDuNEJ5FwPpR7UQXurG5yLsTX9
	949ztDUNyJxVT7vTYGwim/OkVpGTzC897sIxXPqna60Uq7PpuOnR/J7iwvQuPR8MSLtfjbIXqx0Kf
	m10gEc3I26BB6XsDyy3tEd+XW9qJn3BGahKiZGGw6dIgDxZwt3WY8+PO4QPcOaXTBOUFyrTMV99kD
	CKC+KIgR3AtMZUYRJxdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r45Hk-007Doj-1U;
	Fri, 17 Nov 2023 20:17:52 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r45Hi-007Dlt-05
	for linux-phy@lists.infradead.org;
	Fri, 17 Nov 2023 20:17:51 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-507a29c7eefso3483706e87.1
        for <linux-phy@lists.infradead.org>; Fri, 17 Nov 2023 12:17:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700252268; x=1700857068; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rp1PJD3fbqcG3SyJh6PyVw4BgbN/nqe7WX5bZ+cRyaI=;
        b=goy5F1P3zOED8dDEiNXJHjmWmmlJNaSl5bVva2Jpn+bj3tqsnrzjSG+RhsZDrZEXAp
         YbxXPSIMb+ZTiv32sFusMCDom4ULVpeBbJaToE+Gi1kh691ezz9qwx0grvn4/KUK+qj3
         qcB3KMM5J0a3BS1UQ5P7L5nWCOh6ngT4B6uj1dKo9K2y0x0Hc8DJDC/QFlzy9j5AoDms
         1eEqKf2iSQ/rmqONKrTC6zH2XASwtoSkIwQiOx0djG+P2nVA6xYL/gAsq+nosaDmDl3B
         LYri4SeKnb8oiXkPEkminvvgDKSs4MpxwfXp8dQzraXw8Jd9oO/VP759N/CrK3yGa1Gz
         Atbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252268; x=1700857068;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rp1PJD3fbqcG3SyJh6PyVw4BgbN/nqe7WX5bZ+cRyaI=;
        b=j5eAq5jPC+AlHY7o8sjId9ZCyZIBTtJiXC87L+LN/hHDhVeBa5b5qpAAmWQANYu9/m
         M3h/4QasbqHJzVejeudDkI3fZEEbT9604xoMjL5WMZFLJEC2e1/nUML2/LBZvvtTSoNI
         25teygWV+AC+bx25PhfJMdHCANbvlqCXz4G/7T9UzIoyed0xBKaLLMDk7+Brr5latEhL
         P41xd2JSMZVtiK0P/qivJodpgatViGuYUBxjNvQGP2Q3LnQvGywoikJ4JEa2M7+KGnyr
         6bsEme9fnMo0L4wczawkYys3AF7V8rOXXyabZf2rt302gxeqm8oy4E1AkP6q+Qg7ErZ8
         PKiA==
X-Gm-Message-State: AOJu0YxEFINNj10xF7eQFgYCftBQhQtDkEcTp4A8KI66wgms0slzvf+Z
	ML2WOW5wV3ChIpcKnm9XhOg=
X-Google-Smtp-Source: AGHT+IEDzQxeOZM+dv5vcYduaxap4s88cpLIzNFvp1/HZZeJhpV/nKXrFTelwCaUsTnkXxb/Jtupmw==
X-Received: by 2002:ac2:5296:0:b0:509:4559:27a9 with SMTP id q22-20020ac25296000000b00509455927a9mr552199lfm.8.1700252267655;
        Fri, 17 Nov 2023 12:17:47 -0800 (PST)
Received: from david-ryuzu.fritz.box ([188.195.169.6])
        by smtp.googlemail.com with ESMTPSA id e7-20020a1709062c0700b0099d804da2e9sm1130630ejh.225.2023.11.17.12.17.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:17:47 -0800 (PST)
From: David Wronek <davidwronek@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S . Miller" <davem@davemloft.net>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Joe Mason <buddyjojo06@outlook.com>,
	hexdump0815@googlemail.com
Cc: cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	David Wronek <davidwronek@gmail.com>
Subject: [PATCH v2 7/8] arm64: dts: qcom: sm7125-xiaomi-common: Add UFS nodes
Date: Fri, 17 Nov 2023 21:08:39 +0100
Message-ID: <20231117201720.298422-8-davidwronek@gmail.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231117201720.298422-1-davidwronek@gmail.com>
References: <20231117201720.298422-1-davidwronek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_121750_066935_9CEC9FEF 
X-CRM114-Status: UNSURE (   9.46  )
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

Enable the UFS found on the SM7125 Xiaomi smartphones.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 .../boot/dts/qcom/sm7125-xiaomi-common.dtsi      | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi b/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi
index e55cd83c19b8..22ad8a25217e 100644
--- a/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi
@@ -398,6 +398,22 @@ sd-cd-pins {
 	};
 };
 
+&ufs_mem_hc {
+	vcc-supply = <&vreg_l19a_3p0>;
+	vcc-max-microamp = <600000>;
+	vccq2-supply = <&vreg_l12a_1p8>;
+	vccq2-max-microamp = <600000>;
+	status = "okay";
+};
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l4a_0p88>;
+	vdda-pll-supply = <&vreg_l3c_1p23>;
+	vdda-phy-max-microamp = <62900>;
+	vdda-pll-max-microamp = <18300>;
+	status = "okay";
+};
+
 &usb_1 {
 	qcom,select-utmi-as-pipe-clk;
 	status = "okay";
-- 
2.42.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
