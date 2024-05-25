Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63BF1C25B7D
	for <linux-phy@archiver.kernel.org>; Sat, 25 May 2024 17:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XsGYeJJp+IB6WOdNIFScXbXuOLZcPuTdAHtonw8/dl4=; b=NijBMXqGapArl4
	q54C655sWxvQqXrzn/SsCcR+2Zy0xnngW9V90okJ4L6hjilQPjV2YqD008Q3UO4e0/MdzVSbO+5gM
	g2LVkeTHgzmCDX52xEJXdfwXTl/Fx1AImhbTBEQSehV6yRpG3zCz9Vf1tRl6WuMujkOyQMuUK6QzO
	QxRB+As4C/AjP78OfUWlHheHw67UJdglTsquZI3nvbFUA9i1a79vgpuVny6V3xBqTB+mruKwd1+Fc
	/NtU1vPWvOVtiDZ5EfATWlhYj/krm2g2LYR9QaTBVG1pvzB9vMjZdZgNAp6xB7CpBhb0eZKXqNg+H
	OgwyGH/wH2USDHZVcOww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAvfn-0000000BSnV-3hIA;
	Sat, 25 May 2024 17:59:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAvfk-0000000BSmF-1rnK
	for linux-phy@lists.infradead.org;
	Sat, 25 May 2024 17:59:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BD38B63571;
	Sat, 25 May 2024 17:59:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B38BC4AF13;
	Sat, 25 May 2024 17:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716659951;
	bh=KRrS6daAl9jmj0dMdUa1UyfQe0Kr3SCOM0K6I0FXIXY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=g4a+3J5QNQ0fyGISj1JpaVI1p2BzUSZL5dsgzNfGpb1msTSQRNmenw8SJoWh/69F2
	 o6Pt6tETJzs8v3X7szQ4QDmSNkb79PlBHlnHDP4fFAJj1y5rOcw0dc+ooNz9ZmIyru
	 11oq7m5KI50M4rcyUFImH1wuRTaSPPp/CkOs9w1WCnWz92djmxfRrowF017aMo/Qgr
	 fAhPK8miajIGdv2p3iunUffoNao5HHk5bl4HZM4WULUTyzGbirvJG6xisXA5Sei3E7
	 Nx/BaHVj6VrVnnSxH3ZiI0/MxVqWZdU8SFpHgw1ygAQ8D8m980XcErwhWTs4mHBYf5
	 txrg9V6/2lHzQ==
From: Bjorn Andersson <andersson@kernel.org>
Date: Sat, 25 May 2024 11:03:55 -0700
Subject: [PATCH 02/10] phy: qcom-qmp-usb: Add sc8180x USB UNIPHY
MIME-Version: 1.0
Message-Id: <20240525-sc8180x-usb-mp-v1-2-60a904392438@quicinc.com>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
In-Reply-To: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, linux-usb@vger.kernel.org, 
 Bjorn Andersson <quic_bjorande@quicinc.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=863;
 i=quic_bjorande@quicinc.com; h=from:subject:message-id;
 bh=AKIFUem0XLI2sN1r7OXd/5hs5LThK4k7U6q6yjGq0rg=;
 b=owEBgwJ8/ZANAwAIAQsfOT8Nma3FAcsmYgBmUigMqcNCPpRKu4OxbJsqr7QjBbMS81AaV0s7T
 HZkMiwtIwCJAkkEAAEIADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCZlIoDBUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcUb4w//cR4kym9ancbDsT4rv5sAt1uYW8Y1rfQoF+GO9AJ
 3QwRimqp2hQOiEa3RaXa4SwLKorFEIJHYrILO/zwxDvPlgQa51o2x1s7j5MQna1VVopvEUuvA3d
 Ml0KoJaJfJD5dZj9rQJHvU4lxkA5z3vdGh2UBFAxw8A1cdID0ul6K5NXTin2XaJZUseKRhCfE2R
 YeDXF8SF3epJSrjkiPakVs5ngtsHLEq5d3O3Mirb8N5EhOEmETCfMC8nL8YR9WFAaqgIjiNW5Nz
 5xnHv+p7/CtcXuGQ9xN3YlI4h9s+PGRMKunsOb6bFeB6SpW2aaXFippNW81yXyaqa6OEHgdS7H9
 m+6/sC/Zxh2OJnCvjccybsEfrcKCgi3H8O/WFndV7AJUsALlzGJBGCWusrn4D6Hg5TTqZD/7wlC
 Ny6mIrXOiJyR/asyl9J60r7Z+30psRDNwpYkzlx8wK8xqLzyi17t1/+RzazXo0X3XyZ/dy/LaL7
 WtS2cL64s2SU4IheoxirCiznmHzSx0/nbbb/OKQ33IEw8Ubhb8z6GdtwyO5KXbJgsIxiLLWpOQ2
 F26M/McOr7mxNJoUgHuw4Dj8HEYbtfKcv4swT2fO+qOX2vlg+kVg7KQ9g+zpTqo7uPt/QuASek8
 Z2z5E0PTPFn7w43QLTp4qCBZwoepgBme2232RSJkZBLA=
X-Developer-Key: i=quic_bjorande@quicinc.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240525_105912_719391_B3A9FDBA 
X-CRM114-Status: UNSURE (   9.21  )
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

From: Bjorn Andersson <quic_bjorande@quicinc.com>

The SC8180X platform has two UNIPHY blocks, add support for these in the
QMP driver.

Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index c174463c58a3..9b0eb87b1680 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2252,6 +2252,9 @@ static const struct of_device_id qmp_usb_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sa8775p-qmp-usb3-uni-phy",
 		.data = &sa8775p_usb3_uniphy_cfg,
+	}, {
+		.compatible = "qcom,sc8180x-qmp-usb3-uni-phy",
+		.data = &sm8150_usb3_uniphy_cfg,
 	}, {
 		.compatible = "qcom,sc8280xp-qmp-usb3-uni-phy",
 		.data = &sc8280xp_usb3_uniphy_cfg,

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
