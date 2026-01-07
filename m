Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C533CF6BF7
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jan 2026 08:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=27MRnD18WDKXyAmCJJvuah2P1WulJNPJHdszn3SkZNo=; b=N0AoOK6WfID7vs
	MRrok+XqVks0AeCQVKOJVdkaw2yTN42af1iPJgkgOjSV0v0b1XpUQUSzMveTrTMN8nPfybb5xbrVl
	2jW8z9ZzLq+XSkkxfvF9WtSGmSb4sdBpWX5Bc3Q5OXG/Oo+n/FikV63kNceVjqr6quRRk9/YTekiJ
	x+Eo+Lf0VoJvWL2ZvRPeaPix5o+JjHMF/R1Gzr5N+1EbJwmdMKXstWF2tOzOw/TXdzbVCT5/Kg+J4
	yRHQJeMUCWpkHYyVL5CmACIazbWM70aAAEqRm5GcxjbYMAYaIh5mEplqGyGaqGuSQScI0waQn3kQ7
	xFOJ91O5qLILJOF56H3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOYv-0000000EMIx-1XVV;
	Wed, 07 Jan 2026 08:06:37 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOYt-0000000EMI2-0OGS
	for linux-phy@lists.infradead.org;
	Wed, 07 Jan 2026 08:06:36 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-64d4d8b3ad7so2753108a12.2
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 00:06:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1767773193; x=1768377993; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/i8ATthAaWuqmGUIVSIUdUu3CIf2MrTEFPyEW8I+YrY=;
        b=FX3n44/xWx/6axt9KRLSDzNwk8WwUGtS6xIkvyJqRefmAvJ8T6pD3uwbkzgve8Lkz2
         8sWW1jnrHLyeNdRlWZDtmiiHckaAMeajMjXsmMXIN4lhQxKi3EW8cch+u6B2u5XIUIRV
         pEeCncDeSvltkLxK47C7ZTcciAx2Pjl1yNJIvAQei2psY4f+goY6tfIBEIQ1ICCi5j2h
         gOrulUHqgZO0wMZI8c3gNMnDkzpQQI8RiECgIts10JLKiyqKZUI8XCt1VXNUWWPdxy75
         YW7cCoMywQhosDGKIBhRUmMPC/bcwNhMOLg0HB5H7GcnZZfjmNWeFNz/5rM7MKxl9Tz7
         vHsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767773193; x=1768377993;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/i8ATthAaWuqmGUIVSIUdUu3CIf2MrTEFPyEW8I+YrY=;
        b=m0/ExDZdzTQ0GCz+vZkYlYb3eSDE/BQJAUDRrsGbEGKZ3d1GG1JbtE9JUADqQKtrz5
         phIubGf9BB72rnu7EBCkL77U/uK8FzB+xkagivAGmr14hSjc6HwHUyu/NQAc2q3oAfoQ
         sPhYhyqcjRUJ3kCtkqIopGnzlzwHSf+8inH9cR1rHbH90MR8JvmT/hqZDtP4uf5zofcQ
         6ro+APwoVIBHExGxkt2ACiYOYTedXCenSNvONXqZeC172OPEhyMs9vmrET6l9WHuU82N
         bIyA65Au5G8sG/ESPotYctVbkoS8egSVVqGJDkqgY/WhHjkhkVgaUqJofu7Dqp2XZaOe
         votQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFX+4aGtbKxz0nEYlh+QzSYvTGEG5xiH4p9TtrlP12+wRFO+PvAa25+WGTRTt9U1aM/2M0AEBsCzw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyx/qefWdvjvN7D6a3CEFnreR6K5sZCLoqc4hCw0A54wN/8mSVF
	tvp2EnQf9Ar5U6pCF1CESQkFTTrVSiF7YJj7GdPJpzNLGqScQTxF4O4hy8Alo/6JNOg=
X-Gm-Gg: AY/fxX7RXIuSkZsUqLIVGpiZG8vrZDTWMILiGLp3h9LZM1s30SwdY8FULr54crAEzbq
	7PAFsIweAMYaK+MbYkzIQsy9MvQxwI9vZRZNrn/Bsk9i05L+f/fycMuwcgplkHUyOClk1mnLzn+
	7lg9uhu9xnhnUq6/puHvBrktpyia33z9ncQqmUq2DpCRpkbkOS/57FNOz7EIiJBwImgxP3NbB+m
	8/eAseWrWBEjCbtBlJP55prLgBy9vpzDgGH5HT0SD3wYMKu6+dnLDTH0y82mSJ+SMIX//Xl7SB8
	O3anQ14kkLpTOJL1T4O0jQ/KgYch+rlIdRtGL8xFsQsFLnB+T5VnwmGiGR8nREHw+jfTxuZUGG7
	JnsywkYwYl5Y4uU+F4jvP4yg0Sfdp8jTuzPKhI2lT+ZTHsuBsXJo36uY1MChoQ0e/kKu2FlvmXh
	gQEMI7j2A8SoozNIZcQwEVB9gUew==
X-Google-Smtp-Source: AGHT+IHJ+kf1Owv26cSF28vuEM1MMU6N6BChtOdWOK1Y0tMkxyy7by9CzZtm/qgGX2Td8KERFqr5yw==
X-Received: by 2002:a05:6402:2554:b0:64b:946a:4a3a with SMTP id 4fb4d7f45d1cf-65097e75079mr1338292a12.31.1767773193114;
        Wed, 07 Jan 2026 00:06:33 -0800 (PST)
Received: from [192.168.224.78] ([213.208.157.247])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d5absm3941299a12.33.2026.01.07.00.06.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 00:06:32 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 07 Jan 2026 09:05:56 +0100
Subject: [PATCH 6/6] arm64: dts: qcom: milos-fairphone-fp6: Enable UFS
MIME-Version: 1.0
Message-Id: <20260107-milos-ufs-v1-6-6982ab20d0ac@fairphone.com>
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
In-Reply-To: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767773155; l=971;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=0ExZVYfM/y4rcjDL5laO5mxUp+YApKspdR42MpTi6T0=;
 b=OuUeeB9WBtMh0NzBeD2CtxzVjBzIAGe/EJcU8G/bdiV/SxKNG4rjbhcWGJctZTKikNOCzM2jj
 leav4MG9O16CTfjnQYITZkPwM5W6n1oQkcroJQw5KKq7O3xx2gAleXB
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_000635_150714_8EF304B1 
X-CRM114-Status: UNSURE (   8.06  )
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

Configure and enable the nodes for UFS, so that we can access the
internal storage.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
index 3a7f2f2b3a59..7629ceddde2a 100644
--- a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
+++ b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
@@ -819,6 +819,24 @@ &uart5 {
 	status = "okay";
 };
 
+&ufs_mem_hc {
+	reset-gpios = <&tlmm 167 GPIO_ACTIVE_LOW>;
+
+	vcc-supply = <&vreg_l12b>;
+	vcc-max-microamp = <800000>;
+	vccq-supply = <&vreg_l5f>;
+	vccq-max-microamp = <750000>;
+
+	status = "okay";
+};
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l2b>;
+	vdda-pll-supply = <&vreg_l4b>;
+
+	status = "okay";
+};
+
 &usb_1 {
 	dr_mode = "otg";
 

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
