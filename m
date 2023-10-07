Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EF24E95A6A
	for <linux-phy@archiver.kernel.org>; Sat,  7 Oct 2023 14:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zU5JXLHepA6PGiY+Vz+wT1OwUIbtRCH+VHJFCV0W+qk=; b=HRiA/eQzSXZdg8
	XuoaFMnc4uxFb42djLYn6YDz2x3XFHY6VaHO9w/rMKLygtFS8FfH2QgtlTW+RCdM+WMv+Phg1rqoE
	1P1vgAmcCtSg9i/A7P6Z7hs3+98sqXxtkVJPfFrzJ4Wl9ze/2qng2e6lvuku+oxAFpiY2Z/3dbv6g
	ksy6XjyuLJaRGrj2NQKB0hLgEt619xaZ9z0ZL15D4AxWHcqtUhcXLamMBhvIuSX2tGUiR9B4+1U4h
	2qw+grptYT9WxS6rhp0DENVWInQKaMBtoML7MNoBTElPPxPAwwFxnOFZHwzPlwzT/9XXd3N1w2uRY
	UfStph1PkfoeSBl2xoVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qp7rk-007cn4-2N;
	Sat, 07 Oct 2023 14:01:12 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qp7rg-007cjh-1V
	for linux-phy@lists.infradead.org;
	Sat, 07 Oct 2023 14:01:10 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-406618d0991so27705525e9.2
        for <linux-phy@lists.infradead.org>; Sat, 07 Oct 2023 07:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696687266; x=1697292066; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zT+UyLNrtTIL3bbAzaCCFygmUaFXv4MJR29ziVQ6mVY=;
        b=mY/jWXP592Gt73H7krWWNEXWS+v+oesOoB0/6vIwFXJSaVzSbYMDAhDuUlIBkF1OAH
         NI44dSJHqCYOhkunDEPleHuJnmmQYPkmk3jHPTBxY85VavNACUD9MSOcTo8b18smT75w
         HoXvT4p6YwSVj1HVP8J3Vm4zD7fCDq2iDBh3itpjX3ON10h7xTULFRDIhPeyOENEfEWl
         MG0X/jogm7K9KbyvWYHgZbzlfj/D1xzYKl6mGf+QsIk9AsBHs1PuAfS+aWOOfWPFzCoX
         lRwmkRLHac1Dy0YVeR6I9mJp9HPFC65r983VvVMajg2gCGjvCo/nvj7FSn6eOZGsi9xd
         UUbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696687266; x=1697292066;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zT+UyLNrtTIL3bbAzaCCFygmUaFXv4MJR29ziVQ6mVY=;
        b=Sv8ZpT95AjND/p9KIYcUwpgumOhmM9UTbWwCNVC5HgzVZ0HKCfu94q+XrZuV4cb7X+
         w8wCr66k67LI9UGuXI9ww4etY7CqjKb+LoXWfF0XWQxD+qpWtXVAWN57qiAXF4JjvcOX
         6cbWhni+5tJYASMLeLlk7fvRQbdu5gf27ii9JeNoAzLIo9RiQo0ZZp2dmuHtnkb2yWDm
         GMxxzcPXXufvzZIXjSzPo98ViKC4HTv+grWh3TSjbQ/ff/2eKNuQFN/TWC8cJl9+yKZ5
         m50Z5ko08RqaQ8CI22K+ob2PQgxdfLmHpMPC0yR6CxC6xQKUW17qfoSfFAiVlwnICPUP
         /xqw==
X-Gm-Message-State: AOJu0YxwIT5JMQtgweTdFdLeAElRhqgYq0jmnGxtEt1rd7kajm0Bjp5m
	AkDO9dLlY4Us48zWwX+3EuY=
X-Google-Smtp-Source: AGHT+IFTgNG+SUnfvuJjpfF+KF0NxkqiuO3cNvZJSlX7bz+MSzTjE1SvIxxxorryKRkkwFDP+e8pOw==
X-Received: by 2002:a05:600c:22c6:b0:404:7659:ba39 with SMTP id 6-20020a05600c22c600b004047659ba39mr10352242wmg.16.1696687266411;
        Sat, 07 Oct 2023 07:01:06 -0700 (PDT)
Received: from david-ryuzu.fritz.box ([77.22.112.104])
        by smtp.googlemail.com with ESMTPSA id q8-20020a05600000c800b0032415213a6fsm4332043wrx.87.2023.10.07.07.01.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Oct 2023 07:01:04 -0700 (PDT)
From: David Wronek <davidwronek@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Joe Mason <buddyjojo06@outlook.com>
Cc: cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	hexdump0815@googlemail.com,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	David Wronek <davidwronek@gmail.com>
Subject: [PATCH 6/7] arm64: dts: qcom: sm7125-xiaomi-common: Add UFS nodes
Date: Sat,  7 Oct 2023 15:58:30 +0200
Message-ID: <20231007140053.1731245-7-davidwronek@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231007140053.1731245-1-davidwronek@gmail.com>
References: <20231007140053.1731245-1-davidwronek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231007_070108_511110_261D6057 
X-CRM114-Status: UNSURE (   9.33  )
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
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
