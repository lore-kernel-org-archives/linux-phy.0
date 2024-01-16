Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D039C47422
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jan 2024 01:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6aE3Aq557LwHGruX2pobQChhRi2Xyd8JlBKiENeTdBs=; b=o0oUozMhYszWG3
	pLvEaaFPMq8fy+nV1pI6csPNDtvR/X5U5qNCDBCb+zON6qiEA0l3c6k2zwETy7aspN+ZrQb8iPzl6
	EKVikcL4LsvIFDgf4G1vvMgl3NFtptVMGCfY2kX7JRardmlqMwbgSfNPFNxPlbTnGKfhH0y5R3416
	u9CmJ/RAbIu9JN0fFvi+fsBcbsFJV0w7r11/pJHWNWIiwd+HVvc94jbnb9JZZBLwy5XymsuxJSQUX
	s3vQZTR2Rt3bz2HkRq7LDPPsDaM/Z0B18sFObFR9JnEWisn93aVChn85MHs42LsXZXbB4oW94O7YV
	2BNAvhPadXGEphJt5VvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXz8-00AeCk-0n;
	Tue, 16 Jan 2024 01:11:22 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXz5-00AeAp-0R
	for linux-phy@lists.infradead.org;
	Tue, 16 Jan 2024 01:11:20 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-50e7ddd999bso10230269e87.1
        for <linux-phy@lists.infradead.org>; Mon, 15 Jan 2024 17:11:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705367477; x=1705972277; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dn3ssfHj6Am73X2yQSvVvrWK/i23VzGIzNntnpF9EZY=;
        b=tDcbAA2jCDATtVRyIYt4kRJwLGXuwXrjDXxik2bYpIsqXCbeIeM44ljlGygHxUCVwb
         R0IpWVgJUlSqz9HOLWKLUj+lj6pzejuWXbPURV8d+nGZtEYqyHmW0Q04a2cjg5VHsw+4
         z2xNcOfdZAlw49SQnMPoE0F6QCtrNz+Jk0clCQsT4NNLsc8Vg+TvkiCcWVRvFf6GS8kW
         HJCKc/AdeOdf4dNalNEatlEsaLm9rKLaOGQ9UOEfjlly9KV21MXibecj5WarHuZz5FML
         611iMmZHV/W/3gaW6oAo3c3nCxihza79xceG5PjD/HIKKkfJNkQuux2EgMIhBLQw0bJP
         g+6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705367477; x=1705972277;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dn3ssfHj6Am73X2yQSvVvrWK/i23VzGIzNntnpF9EZY=;
        b=pldhsov8UtiPwhqWZBqkwfx3nrbThm/b7oiH3BqYpa8N2LXAKoNJZaQ6gK6w8KbU17
         q6VjWlP3h1Utmk6T/i0TfFaHetsSc0OeaUMND+UN6+vD7eW5p1ihh1qaovLYXoP4JDG+
         Lz50Xo9fjOPJWiWHMqJb3wui11SPx5Yud3GPPiGNotDbpZKPbAZX7PWtoCu8XqqSw81u
         3K5a2AzsYH6rNUNvr3/J9qCNAmh9vqMyUqXFL79kbY+jzjXiMZym0EnMD157WR9y8ltv
         QzDY2r84q1TkD/SDxp71dLquMbKzC6R2mt6xBu8th+OLOCWP1STEL1tZeC3C1oY1F4xr
         XG9Q==
X-Gm-Message-State: AOJu0Yyk9i/TsRKAKGKKHVd3xvO+8Aj2BbQLpUD6x/JAtBrkfFrva6Bd
	nUUvbkPwP1HO8wtMuBlD97SD/0VeQr0Tzg==
X-Google-Smtp-Source: AGHT+IFH7WgFoPCVlV0SK521OdMnDlNIpVmLRMpQSRhjATjhMK359lIBg5UXvE5dQyxaUCQIB3MD9Q==
X-Received: by 2002:a2e:8007:0:b0:2cd:63e4:75ff with SMTP id j7-20020a2e8007000000b002cd63e475ffmr2923703ljg.35.1705367477770;
        Mon, 15 Jan 2024 17:11:17 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id q15-20020a2e84cf000000b002cc7a2f7a9asm1513414ljh.98.2024.01.15.17.11.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 17:11:17 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Jan 2024 03:10:58 +0200
Subject: [PATCH 4/4] arm64: dts: qcom: sda660-ifc6560: enable USB 3.0 PHY
MIME-Version: 1.0
Message-Id: <20240116-sdm660-usb3-support-v1-4-2fbd683aea77@linaro.org>
References: <20240116-sdm660-usb3-support-v1-0-2fbd683aea77@linaro.org>
In-Reply-To: <20240116-sdm660-usb3-support-v1-0-2fbd683aea77@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=988;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=QwGWMzQp8Pf2pQC4KMxafaFpJfYGFQD+YP9PO5OleRQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlpdeyqOGeyzaNbEhO66EY0plD0VtAkdAjeQbce
 VdTxSbGCnSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaXXsgAKCRCLPIo+Aiko
 1bckB/4uYcH6UyIitNmvQh772NqkEnb3xAHfkpz8IQJ56vdLm3Lv4DnbSwvVygzQhDTj82EdhDD
 w1p/jGwRSkFT+4mdpZL3yUSYjCUwm3AhGGmd/msf0AfNk/W3Yz60Ce19KUd5Cjo8FFEdS1oUtDN
 Y8w0pUHwVP6SfZ51/7KandzHJhYlfzqSEnTuxK0qWQftxbiy7TcgjVe7NnYXmFfDRyGBMFTRLJB
 8XIR7BgZQZ6PCwkZlbrQll2VyNw5P3pFSNMXGzBdzc6FsxlxJjnMJkQUBDP2WssdxbezHwqA+lf
 9Db1c7w39EJhWx1w+hG0n/Z/sQuiFCZuOJzg9+C5oACnzbPg
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_171119_172286_74C9A434 
X-CRM114-Status: UNSURE (   8.68  )
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

The Inforce IFC6560 board actually has USB SS lines routed to the USB-C
connector. Enable USB 3.0 PHY and SS mode for the USB3 host.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
index 90118f133961..702ab49bbc59 100644
--- a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
+++ b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
@@ -454,16 +454,15 @@ &usb2_dwc3 {
 };
 
 &usb3 {
-	qcom,select-utmi-as-pipe-clk;
-	
 	status = "okay";
 };
 
 &usb3_dwc3 {
-	maximum-speed = "high-speed";
-	phys = <&qusb2phy0>;
-	phy-names = "usb2-phy";
-	
 	dr_mode = "peripheral";
 	extcon = <&extcon_usb>;
 };
+
+&usb3_qmpphy {
+	vdda-phy-supply = <&vreg_l1b_0p925>;
+	status = "okay";
+};

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
