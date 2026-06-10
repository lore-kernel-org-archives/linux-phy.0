Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57E39CD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 11:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iMiUT1Wjl4p1uGl6rVZtXVcJ4KLT9GqjV/WO7W4K/XY=; b=rCSKok6ALyYJTi
	IG+s+Qw17z2jV7Tey8VNWGwbsIceJMAAowgXhqlhWuURdUQIz5MqhvozSBTNtpxZ7f5KYfHSDwHIQ
	vW8bQIaF8kiTfxp+nUBIM8IUZjeMU8wj7hxd2g7jvz0i6/aRH5103hAfxpVTt73oW77sVgFmw6PDn
	d4AJaOkoq1kdlY8cOJines7bbhFJ7M61/qnJS+3npxnOKfZ9dGhir8krXamJLqA4lxAPYwoSAUOKe
	GR4qxCURGjNDiRgt5egdjTgGPFXCHcDzslgr3LzQpx67fGjnJ5lVXE9cGfap00NAX7krpfK5M0Uyw
	uZuCRsLx9BMtvDgid4JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGqJ-00000007Uzr-0SuZ;
	Wed, 10 Jun 2026 11:11:31 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGqG-00000007UzX-2eWU
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 11:11:29 +0000
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-c858cc9870aso3308166a12.0
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 04:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781089888; x=1781694688; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YCyEbIJgycflS2cdn+qVWDZinKExvA9S1JRweNqMeoE=;
        b=KjEnbwsJmgk530h85q8mGstV+i6lYyzdD6KMI7G/PyLgqHJb4Ln1OCgTwKRCdJPAQq
         TIpUvETrFuKy0Oyst5ijJBawY6My+Pwi1F2RJ3ILifptj+2KP1Le0gKmBV9zK2rfaiVl
         Klwk5v9xoCTSumYx5hetOviqk8Eis2KY42MfU2UXrqvHDdYeLgOG0m+X2zEL2GOS9ZaP
         vCvhHj24HGs6EkptKrVKAwQkHCksyPQdHdiPR+/CgWZ7ozcN8a+vU5PRKTN4FUNjev/C
         ougxt1NJ57oFS0O0QhvxdkRB9IlQHUBvPZYv7DXMdSFdsOoueZf8H2E4cRoOPxuYlpzM
         jBJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781089888; x=1781694688;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YCyEbIJgycflS2cdn+qVWDZinKExvA9S1JRweNqMeoE=;
        b=CrLsJC4iJd50/ckw0VZP5/p4xy6IwZLe0NCXLw3BxltEOrLim9k4ZAxTdWFNRlwvP0
         Q0gV/y4jIZUEtsWt4/ZFNMulSQ05KYiKtxfq+pqIx4qg4ZSp4yme6+1aA+NrCyZn0Rtr
         QOs8b1XhWW2j3ghVKBZt8mtQbBlTBUfDKNN4+REJX5+hdQwQaAD0KcMdgedgKU6xR3Z9
         QyWo4pXRXtlH5Hr7nr/6NWWuZz8x5lYzCqQ5x9+ItjUkyhm96NJFH4SxNbeqUdvjxASy
         3vlgiMr7+ZS7WtfJQRDC5nf29fo+I8aYPP5WpT5BVjiNRqqQ7ZNZUrl605Y6E48VWgiK
         o4bw==
X-Forwarded-Encrypted: i=1; AFNElJ8BWoi6d8XZPhhzQB0CRkycZR4I94k827QiW/X2yhZtX4qHPyJiYvCp5CFkSU2SeipL3wdfcskS/P4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzVxoqq6hbqywBhjSWptWYC9OSPK73viiFjwq8ktDoWtc6NggHt
	EAVcY+FzuVP6oG25UXFcQHMvhgeRBN2lcpvGaJ2Nmmh4o/KjGKbMgmGV
X-Gm-Gg: Acq92OH3g79F63OT6N9NyHJzKkWkwOpqgIL2BQd7lShOD1J7VST/0iAjEOmrTRg4Ecy
	ZwaPlHhIvDDPT2oMKRegoHHscrfqffzuFd4/7sNZoqcUuZd/QHJa2IZJSr0Tc0x6b9YPZ5WAcAu
	eGgIpFrr0RxFfUMhBe51w/zxzw9CeZPn+mTbA4gjCDkPQPK3/0dbsX1JZ/xG4Kru4dm+NWaIc0/
	CwWd0mCOpiEQ5WLTZl4MALza2wbJdFtf8RMkk04nlnOcFnqWhZtDnw2aPTi4XKCLALzYNtNCnuV
	Ef1nB3eT97DAUOQYZ/7UMu2zEdFjTVCuC6k59d+nER9iLxbdqQs9rYLB5ztoYf781oWAYF/oYtF
	Y2eF1KHC28A9s0I5fhtJUY9Ef9xCWIMx1/wF+4akK0Xvt5zzS2xr9NosKXGaK0+ZusS7l/l3VGk
	XqwcOumktmaXwJ5gNxzH0Fgj2Vj7F8qI2Vk7W+sA==
X-Received: by 2002:a17:902:d583:b0:2c0:aa5d:756f with SMTP id d9443c01a7336-2c1ec7c71cdmr207858455ad.8.1781089887644;
        Wed, 10 Jun 2026 04:11:27 -0700 (PDT)
Received: from [127.0.1.1] ([2409:40f4:4111:52c8:138e:8096:a8df:e68b])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f6d37esm317175205ad.9.2026.06.10.04.11.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 04:11:27 -0700 (PDT)
From: Ramshouriesh <rshouriesh@gmail.com>
Date: Wed, 10 Jun 2026 16:39:32 +0530
Subject: [PATCH 7/9] arm64: dts: qcom: hamoa: reorder csiphy power-domains
 for v8 CSI2-PHY
MIME-Version: 1.0
Message-Id: <20260610-a14-himax-hm1092-v1-7-0c9907da47ed@gmail.com>
References: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com>
In-Reply-To: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Aleksandrs Vinarskis <alex@vinarskis.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-phy@lists.infradead.org, Ramshouriesh <rshouriesh@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2717; i=rshouriesh@gmail.com;
 h=from:subject:message-id; bh=+Hh67PVOILHaAgCMefcB+6yFoZHKO1AbWUQEUScrJW4=;
 b=owEBbQKS/ZANAwAKARWVil4RHAXeAcsmYgBqKUYQGh6WahDBnQigIxX0k8AxRA7N2XoG0m/Em
 2BxmG4WFrCJAjMEAAEKAB0WIQS/0QuzNKVfvUNlNAkVlYpeERwF3gUCailGEAAKCRAVlYpeERwF
 3vLrD/474hk7I5RNcjWVILYpm4xc+LvkBOvjbeW+a2qZC9ZZl7ghSEA3SmvwCPvpAe1GAywpnBd
 zEFL/rIEbAMStB547j0/wQ55MHeR9eFnJPOY2xbbDvpVbBZ6hA/RWrgHcDSD9MqZD0Db/e4qItG
 fBm+6nPeMHl7TiJbh9wexsUFJJjJtCCPxJ/UBzdyVjKLGs1YETWgFkLRPJYm0fpcPL0ErbBan87
 nfox1FhaDgD2eL4/ZkUfb83Lr61GivS/Imdwtsiurd3YVYH9ws8+4bPAmj4KO3LhbRk9i4WqZ1l
 w8LwsK8OPHFmW+BpHBfGHx01A/d5AQMhuylrwZIrbRB3VbCcjwa04eoPAzNh/8GkBn3TPS1YbBb
 59TVbAPVExVaWxJpmkJ2bkATSa2IRUZ2v5btWN3iEMtzH1QguDwlH9yhtS/SOaLMZp5/3Oo6Uob
 4rkLXb21qBYFd1lyN7glVYmECdXOe3Gl+gA2zei5KSeYPz0Jfk7QpMZ1b6V+ectvXjfGGMTFSmD
 nXgn1ot8vTaDAObv3wAu5oCUwqYdyfs/47ViIM7WMUk1+amN2xspyk65jhorUutVGU/oMUF10IH
 uzvDEn75FlA3+/+1UBUY53ePnFcYrN7DarI5aUEdP6pJ2SLe9yKS5CVNZgATmEZdhqZ5YslB4fP
 yH2wC5HAtJ6Qg6Q==
X-Developer-Key: i=rshouriesh@gmail.com; a=openpgp;
 fpr=BFD10BB334A55FBD4365340915958A5E111C05DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_041128_683208_74D54F7B 
X-CRM114-Status: UNSURE (   8.65  )
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

The v8 phy-qcom-mipi-csi2 binding mandates power-domain-names ordered
"mmcx", "mx" (MMCX first), and its driver reads each domain's required
performance state by index via dev_pm_opp_get_required_pstate(opp, i).
The v3-era camss DTSI listed them "mx", "mmcx" (MXC/MX first), which is
rejected by the v8 binding and, with the v8 driver's
devm_pm_domain_attach_list() + per-index OPP lookup, maps the wrong
pstate to the wrong rail.

Reorder all four csiphy nodes to <MMCX>, <MXC|MX> / "mmcx", "mx". The
second rail stays MXC for csiphy0/1/2 and MX for csiphy4 (the binding
explicitly allows "MXC or MXA" for the second domain); the opp-table
required-opps values are symmetric so they need no change.

Signed-off-by: Ramshouriesh <rshouriesh@gmail.com>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index 4226db30e244..1200101d7bb7 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -5853,10 +5853,10 @@ csiphy0: phy@ace4000 {
 
 				interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
 
-				power-domains = <&rpmhpd RPMHPD_MXC>,
-						<&rpmhpd RPMHPD_MMCX>;
-				power-domain-names = "mx",
-						     "mmcx";
+				power-domains = <&rpmhpd RPMHPD_MMCX>,
+						<&rpmhpd RPMHPD_MXC>;
+				power-domain-names = "mmcx",
+						     "mx";
 
 				#phy-cells = <1>;
 
@@ -5876,10 +5876,10 @@ csiphy1: phy@ace6000 {
 
 				interrupts = <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>;
 
-				power-domains = <&rpmhpd RPMHPD_MXC>,
-						<&rpmhpd RPMHPD_MMCX>;
-				power-domain-names = "mx",
-						     "mmcx";
+				power-domains = <&rpmhpd RPMHPD_MMCX>,
+						<&rpmhpd RPMHPD_MXC>;
+				power-domain-names = "mmcx",
+						     "mx";
 
 				#phy-cells = <1>;
 
@@ -5899,10 +5899,10 @@ csiphy2: phy@ace8000 {
 
 				interrupts = <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>;
 
-				power-domains = <&rpmhpd RPMHPD_MXC>,
-						<&rpmhpd RPMHPD_MMCX>;
-				power-domain-names = "mx",
-						     "mmcx";
+				power-domains = <&rpmhpd RPMHPD_MMCX>,
+						<&rpmhpd RPMHPD_MXC>;
+				power-domain-names = "mmcx",
+						     "mx";
 
 				#phy-cells = <1>;
 
@@ -5922,10 +5922,10 @@ csiphy4: phy@acec000 {
 
 				interrupts = <GIC_SPI 122 IRQ_TYPE_EDGE_RISING>;
 
-				power-domains = <&rpmhpd RPMHPD_MX>,
-						<&rpmhpd RPMHPD_MMCX>;
-				power-domain-names = "mx",
-						     "mmcx";
+				power-domains = <&rpmhpd RPMHPD_MMCX>,
+						<&rpmhpd RPMHPD_MX>;
+				power-domain-names = "mmcx",
+						     "mx";
 
 				#phy-cells = <1>;
 

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
