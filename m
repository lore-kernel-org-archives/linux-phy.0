Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8207606A8B4
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 21:28:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=sbHLYcWr;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=byyN2E68
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=PFCOw8aRO1v72duQyjLVU9SD5W/gBJSRIaZNaRPSs2c=; b=sbHLYcWrcNc6Y7WkLIytjCRR3r
	gHu0zpQRzo2wTkRky/rys4fPrv52BotVnAjCfk8X9Mj7y8vUv0CSZM2UPVFp04tVWWWQuRgiqCIAU
	Cjy4OTs2PEzg9nhOh1/jMXj48dnlHk7FUICRh5SiO/sodOJd2c1bhGGPwaVdyA8x5mia27gwWXajt
	MBP/F0WQjuoiuXWuO0njMdlS/SbxqZXklw3qNHxRrOo3IDoWsqHcn2Sbvjn/ZiO2JIDnTGRJSSqWx
	I6dNQpAC89IwBrTK7ug307SUj3mBthleOfq0VfZsYxZOy3vycHKkgpfxGTAdyR72bd161hF+eRj9M
	4mkTGwyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4FA-00000003yPI-2UUJ;
	Mon, 16 Nov 2026 21:28:04 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4F3-00000003yEP-39mS
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 21:28:03 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-490f38e9688so231012f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:27:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794864476; x=1795469276; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mvVvlwCzdjoOARGkeb2HfQeJVG94oQ2ENGfT6+oUCwc=;
        b=byyN2E68RB31NScfZPX4AkyM1szgJ7JJcd70TGcqSQDJslM5qoK3gWCHlScWKFTVJ7
         AUUet8o4fb0zC2JDjx07kCXd4BcrJqamgQ1aRx3X0k2Kt0X9skoLwKnfvpC0jte7k2k0
         W0CgGkfnBb542176kyNKrwnRA1abPVV8KQ/eAPO06djoTNNNoVI5EB6sZQub3CFGfnUD
         Vly41+ySptJ1J/zp9y+27/IoVm5ZXKRKgdJE0v2LjCIuKUKtRuDBata5lwKGZqQxET/b
         Zg7k58XMyp7YXcAlt3KNRngO5D5sz+kbKzsgVZwTOOfAyadeCxYu+Qce7I8sUjWgmaPN
         1hqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794864476; x=1795469276;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mvVvlwCzdjoOARGkeb2HfQeJVG94oQ2ENGfT6+oUCwc=;
        b=sTNx3BxZ2Jbb1iUvnRkk9vv3RNNubVCIfKPcVFdeARGWSzWBwWi8NrDkUO9gJ++vnr
         eWDCla88Tu9qh4dKUUFbgK5g2zpojKOwRjRws3vLrFkY45yO86K33W/7QodrRYj/u3QF
         jSOkWLWVm1IYFdY4jCWeMhw01pbML45VE3MPl98cFfpL8+cmLEDp71h3YYMTr3/QAATs
         MwSAiigAI910MrcIoUAr1f8EfGOavzm92sCPRfTZE77yJbVLgauGvatbJxU2ZwMbwlR9
         1GMpHZgCiuoNm8bQSkG3dBkOE782aDwb0EzXs46BVxMMAbNjSq89OdN41HmOILXv7CwH
         2rVw==
X-Forwarded-Encrypted: i=1; AL+hErFS0XN7njrTvUEmu/NHPkvoxEiOpW82SdleZlMXW7oVdvZdQ2J5ZE0zk2H3z6Y5XMHH5L3ycqM0rD8=@lists.infradead.org
X-Gm-Message-State: APuU4Z9rAO7hoaDZlv7z+JfHSz+2rbqaTNZfq2bPp8esE4BofBRkOHef
	CAJIOph4OEpoQ2lRj782XcO8+w+0Ie29Wp/c76WaBj1AQLYcEu0vFPlZ
X-Gm-Gg: AZFdTZdKpRIP+fZ5WFZ6lZdmPf/U4rm0TV3QzyxTPTWS4CBFhg3G0gm1A1ya0E4Vsej
	g7QApJaXpFMuMIiK0irRBI1wcdVGAzm34q+LsDNp48dqk9CRIHCuEvmr1GvMp0mmqnl4PEeFhfn
	RZ9JXZy5UQ2Qn/IlYcYU47ZTlZe9YhQhyvfczYGnp8hoQ7WbwZAa+O3qmz5edhi5CdR0Tc6tkzj
	xRVwCi/Lgdu+J7CZnEEB/97DSmZFj4jfsw+y7/RbprlHP7KW8g5oO/s7o6SiYjggAXHJTK2isXL
	Irbxty/433q2CggnUCozPIgQ0/mV3LqPexlnCkX0WRV08F1qiBGinjtrJqlkv9IiwPnl0qDMx7+
	UG8FExfmLNMQQcZ6LmVimqavq18mWwKNYNcHG+NP/6UUCgcQ9A4G/nejHV4BdtvbBy3Ur0vmF5r
	LYO2AGHqAWpvcRRWDVc/5+E6XckiIRLjv6FZOwJFrbIxoZXNgVqfiYOMJ4eqLCQ7PyS8FAeWbgb
	riC/IlnPTXzpzN11XdWYdcrPO5FY0W1pb4rG5cZXbQs2YsmmZ5VbXjzEQCnLuKWaVOxgZIKzYR4
	DnSc/f9mLNFxrGMVkzIMrjHmCh9/nDJX4beeCis9mPj9Nn1A2LmLRNTZDq/Aaw==
X-Received: by 2002:a05:6000:4706:b0:49d:8ce1:2652 with SMTP id ffacd0b85a97d-4a36bd51c5dmr1648244f8f.1.1794864475624;
        Mon, 16 Nov 2026 13:27:55 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4a378138cfdsm1260150f8f.58.2026.11.16.13.27.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 13:27:54 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 16 Nov 2026 21:26:29 +0000
Subject: [PATCH v2 13/16] dt-bindings: arm: qcom,ids: Add SoC ID for
 SXR2250P
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261116-halliday-dts-v2-13-2c92438c6c46@gmail.com>
References: <20261116-halliday-dts-v2-0-2c92438c6c46@gmail.com>
In-Reply-To: <20261116-halliday-dts-v2-0-2c92438c6c46@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>, 
 Guru Das Srinagesh <linux@gurudas.dev>, Thomas Gleixner <tglx@kernel.org>, 
 Radu Rendec <radu@rendec.net>, Lee Jones <lee@kernel.org>, 
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 "Joerg Roedel (AMD)" <joro@8bytes.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <wesley.cheng@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Bart Van Assche <bvanassche@acm.org>, 
 Bean Huo <beanhuo@micron.com>, Stanley Jhu <stanleyjhu@google.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, Amit Kucheria <amitk@kernel.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Georgi Djakov <djakov@kernel.org>, 
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, mfd@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org, 
 linux-pm@vger.kernel.org, Stanislav Aleksandrov <lightofmysoul@gmail.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794864382; l=746;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=wp4yEFlEeRirWebvDUNwJG87yvgwIo0fuTVgUjPIFVg=;
 b=c3M0oozAyWICul1zqZyYV4A722e/xl51QI136kZKSBBz/N4l9sptO65yuOtgNCZsSpOrbqAMq
 sRMLJj/ahy6AipZ7ofcwU1aakgIIwxaL8YroDdkKta3ZC/C45UuYvvM
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_132757_825375_41ADEA26 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add the ID for the Qualcomm SXR2250P (Snapdragon XR2+ Gen 2) SoC.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 include/dt-bindings/arm/qcom,ids.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/arm/qcom,ids.h b/include/dt-bindings/arm/qcom,ids.h
index 135297027580..cbcab632e01c 100644
--- a/include/dt-bindings/arm/qcom,ids.h
+++ b/include/dt-bindings/arm/qcom,ids.h
@@ -288,6 +288,7 @@
 #define QCOM_ID_SM7635			636
 #define QCOM_ID_SM6650			640
 #define QCOM_ID_SM6650P			641
+#define QCOM_ID_SXR2250P		649
 #define QCOM_ID_IPQ5321			650
 #define QCOM_ID_IPQ5424			651
 #define QCOM_ID_QCM6690			657

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
