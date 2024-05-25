Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8C5DC25B79
	for <linux-phy@archiver.kernel.org>; Sat, 25 May 2024 17:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UO2MTjsPz+hZQheSsZNfIys+D1EgsldTg5QWPL9rWD0=; b=D2UkyUKfEPRwvF
	ZYaeU/rXMiKKwhJbpvZewpX7LRRc1+f+hBQfq/t9ptKuQZpbOj2vTRFNSzyGwCtS1rhBjPuVF1Xs4
	/IhniPzMkxYkCvjWjwfyBZbPIWPpwz+Ne7V2f0MhiylUW1fdnFJIeao6VRWZGM2F3KHduvnosh0XC
	XAYUZdCXYUqcnvG01hoDPV7GPgvy1bSvEooBKFLS3O1Yx/uf06PMDmWh2IHxAIj0SrkchaxdydHFs
	98ADrAu7Lf7iQo8UljrJa6TIQeVoRimOGzfCN8KOwfZ404hbdrwxfzEzz07og7z7315rN41bnYDdz
	pEO8/o/BQIKmSohT8sAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAvfo-0000000BSnu-0rQa;
	Sat, 25 May 2024 17:59:16 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAvfl-0000000BSma-3OKl
	for linux-phy@lists.infradead.org;
	Sat, 25 May 2024 17:59:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1C0406356C;
	Sat, 25 May 2024 17:59:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0717C4AF17;
	Sat, 25 May 2024 17:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716659952;
	bh=soqRPnZjjJB4ZlQU7QW4BOCssVYk6gZoz0PwLz9+tRg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=X5PM8IBYcGya57eIPT35+9rtnd4PQ/FHqSBXalbzUelH9Q6ybYvUFMTDPHInVurCM
	 xvTTlLR+TFMh/5Mb4gn/AwdyN+seZANm7RfcckXZI9KB6pNraB79XebY8OQVXoGIWt
	 wBdX20aX52FRruZRJ9vObqD/OGRkG4FMi6Uld8QNh3147cmlJLJ3caofvnDL7ied1+
	 pXw4xizaI8NdOS6qIMCnsVpXZ3IBaDLyYOreLR6R3vAAKcLRgOAxKJUW/PgJODMzMR
	 enRaEND6uqhFm6Y5BlRQwU9KaijLRPFdQUZuBwEQqmq7g1stvGOg3uU32h2tdoYvc/
	 EMrspGi5WplSA==
From: Bjorn Andersson <andersson@kernel.org>
Date: Sat, 25 May 2024 11:03:56 -0700
Subject: [PATCH 03/10] dt-bindings: clock: qcom: Add missing USB MP resets
MIME-Version: 1.0
Message-Id: <20240525-sc8180x-usb-mp-v1-3-60a904392438@quicinc.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=874;
 i=quic_bjorande@quicinc.com; h=from:subject:message-id;
 bh=0yG3M/DBR1IOgr30XcxtDO66mM+1kZE3mmBBrbr23/c=;
 b=owEBgwJ8/ZANAwAIAQsfOT8Nma3FAcsmYgBmUigMc5GnZG9v/qf1XcU0lQeQRxuHbzgH4I/l1
 xzitEJH+OeJAkkEAAEIADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCZlIoDBUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcWvAA//fse7KaKPFJIvC2QiCYkYkxud8hw6V/s6krcjLtn
 /u/+wrRmGKsSQMg5T1tQ/OsEnctkKIM3vzrA/XzSVtNh45pULKAneRuRfbn4ILHIV/ZX3G8mkt6
 PeBdUFmW/E7KQGfW9fvUcwhoOHufgtYGJ6CkHOgw1M2e7uurKXi9GrvzWIf/Pwj+yK0L0EgtxHm
 tCKWvjttXnoNnYW5wbOpNJLoLQPo7QcLqYgZdqozWSt7ITdV9xK3aJxeEe+3y9OPWknHtRzal5V
 /d5Hic5CF61oynL++nA7rxUPfXhZLtlsIgoK7Gap93Z4snzIHKHwq1IEPKFjYfJqjf0MtISCiaD
 JDzrmdKkIv0oFs5E0ahWukZfVB6HTXitd5oQ67f6uolfYhBsjX2StWtei2bcK7g4OpEOkUugbfJ
 eQ6Vji7W7OZbnMcWRCavH7UAiVZk/VcLoYfC7RpCqWSRIZ+V7B5wXudfZWY48KAj8F08afrrogJ
 kmgK8YEBDnUlhDxgwvUe0KfNO0UzaIT/YeBntl1UHgYDcB4b+gEPN6YIQESuKl2TfKI0Fkz5ikr
 siH+JuJpigTw4ghNX496Lx7zbAE/oyWyo9yk0cxxU8D0F9Xpk8Ofwy687YvSWxNx1N1wE32er8C
 g8PSDrHIe3CDNeyYAnVvmM9DlJqMgFlyqaAppTQD0OHo=
X-Developer-Key: i=quic_bjorande@quicinc.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240525_105913_980869_BD206D4A 
X-CRM114-Status: UNSURE (   7.74  )
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

The USB multiport controller needs a few missing resets, describe them
in the binding.

Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
---
 include/dt-bindings/clock/qcom,gcc-sc8180x.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/dt-bindings/clock/qcom,gcc-sc8180x.h b/include/dt-bindings/clock/qcom,gcc-sc8180x.h
index 90c6e021a035..487b12c19db5 100644
--- a/include/dt-bindings/clock/qcom,gcc-sc8180x.h
+++ b/include/dt-bindings/clock/qcom,gcc-sc8180x.h
@@ -294,6 +294,10 @@
 #define GCC_VIDEO_AXI0_CLK_BCR					42
 #define GCC_VIDEO_AXI1_CLK_BCR					43
 #define GCC_USB3_DP_PHY_SEC_BCR					44
+#define GCC_USB3_UNIPHY_MP0_BCR					45
+#define GCC_USB3_UNIPHY_MP1_BCR					46
+#define GCC_USB3UNIPHY_PHY_MP0_BCR				47
+#define GCC_USB3UNIPHY_PHY_MP1_BCR				48
 
 /* GCC GDSCRs */
 #define EMAC_GDSC						0

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
