Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0449C4167B
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 09:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OeoRYS1E53TgD+rg2giuX5TdTnQN9w4HUk06mU6EGaw=; b=gVz/bPyFrgJnNV
	WvtQN8FAkq9SuZGPjrW0k/CZJDpEeZCai5yNU6tRumgwMXafGogYbzazYxr2c12h5PTkkEAEatLjG
	21ceJe7azjLCFttbBJuDqZVd/WvhZ2kwWLOPHdx4aN6eTWHVh227nt1NdZKkvOEQPBBdXFNUoIKu6
	hbltdvY15JBkN9wPpTO4Fn6Xpyn6s1ijSoOBmjFY2HPTI7ia1/JDuifBOBtUvEFfk2HRE3v1lziW/
	U7aPkgNWUS1qs59210uYezKaqG6eL6B+uQ58mdNIHBXCLcjTxMZ5tJAzlm3xnt0lU77wYb1t28RhF
	8Ow4wqLoX1lBhy8PdEFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhlw-00HJoy-1S;
	Thu, 14 Dec 2023 09:12:48 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhlu-00HJoR-2I
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 09:12:47 +0000
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-77f58040770so405376085a.2
        for <linux-phy@lists.infradead.org>; Thu, 14 Dec 2023 01:12:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545166; x=1703149966; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dnV4bcTFVg58y8kcgwcwL2c2t/omr5+/badatgzAJ70=;
        b=gsj2tSgVS9q4dhCYXTJhXDetZEwC/bxCOkyHFcrm6TyJUfAgs2JoEPP3GKSHRQXaZb
         uIkh4vx+SRWUwVOBciN4cpKUddSAlz9Z6C0xS+BiYTLoTPQ2kDNuIwMbUYiAUedNxHYE
         d1CtttLVGy6/YsP1vCFV9vXHavguTIQeSbhgTseKlXhVqmPq3kfO3DygiSxM+ot5uJPO
         IRgQs3W0rz7yfHKaYIPKtRQmB1co/auYiU/ZfyTkY5JMhlSv6TMN0tXY9YocJ/eUPDzq
         Ng0xZjPBYaG0fXmrpll9ppSUWAkfBZnpOP5N+RSnfFgoG2P6ovMvfGTyHBFhVo3m1laa
         tOgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545166; x=1703149966;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dnV4bcTFVg58y8kcgwcwL2c2t/omr5+/badatgzAJ70=;
        b=L2+H2BxpnUPXAOexhIb8Z+8ZMaSEdocH0MeG631YqkFH2OmKX0FmrrCE1zFaGmVfOZ
         C4gskdfn6LdigQuyLWBqn3CqyRVsr9nGNMR+lZ0Yyq2b9DwHnYpu+ZOwHkZVDy4Eeu9x
         XedTKJzvXEwaNYKr0LHjO2Erqm1g+LwFPfMTedrT/lV1+5A583umnPLvjp7zFn2mINV8
         i+WH9mE0QHWQFtCcnwjyLbhOhFaGd8YwvT3XT/O32TfIyHbTKlCnOkI6nIx/cyhTkX+V
         gzNOxjxnqB7VagHokM302MBJGdKKraix7feU/QQZuIOPC9v0bf/nqT6KwsnOHapRWjNn
         A6hA==
X-Gm-Message-State: AOJu0Yzq8uE0MAbp5RU1y2NIMn/F2aTTU+kyLYURTYOZvtr0oiw6A0bQ
	jiJLJLVcx1d1HPxeVjzTowJx
X-Google-Smtp-Source: AGHT+IHhZr6wQfQIpC5Du8Ua96GS+QkCSnpo7BicRmN+1IcfH8Ki2ucla4gKq+YP7Ucu3fIwuMU7Pw==
X-Received: by 2002:ae9:e00d:0:b0:77d:7446:d4df with SMTP id m13-20020ae9e00d000000b0077d7446d4dfmr11263131qkk.76.1702545166023;
        Thu, 14 Dec 2023 01:12:46 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.12.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:12:45 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 15/16] arm64: dts: qcom: sm8350: Fix UFS PHY clocks
Date: Thu, 14 Dec 2023 14:41:00 +0530
Message-Id: <20231214091101.45713-16-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_011246_747759_0ADEA15B 
X-CRM114-Status: UNSURE (   8.84  )
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

QMP PHY used in SM8350 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

While at it, let's move 'clocks' property before 'clock-names' to match
the style used commonly.

Fixes: 59c7cf814783 ("arm64: dts: qcom: sm8350: Add UFS nodes")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index f4b8439200f5..38a09d71b3e9 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -1727,10 +1727,12 @@ ufs_mem_phy: phy@1d87000 {
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;
-			clock-names = "ref",
-				      "ref_aux";
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_1_CLKREF_EN>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
