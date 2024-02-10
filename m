Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74A85C4829A
	for <linux-phy@archiver.kernel.org>; Sat, 10 Feb 2024 20:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9+zJkRDKbcj9pxoiC26dFmgY8gB2zDO0mb76JRxXtGA=; b=Qf04Ct3mcfDhSP
	PX1X3PvfOESm+ql0L2TT2AGGMYR1gg83TMPQhkpXrkdFkoWbuHVmqAOQzeKU1X24l0N1HBssK5Q6H
	/wIXN4lk7AYkKCTbEJIppFIb/ZGV9SM7W1fjTP7/DPoBHeVclvVudUsN/uYbrGlKH9vWDjs6JhYRy
	MLdErS0hMqy2q4rQFtqF96TnbIphs0hGAHOnerYJap98cVReQNf5iT5F0leJdq6BwZSjUjAUFZz5z
	tAuH/6FJXKMQ4LYyEAE3YLlelkNuUCvdGuBwg2DlriIf7NiwYyV1h/Qc5gscUoiphTN0Sh8Safnez
	Gbn1ekxMeibaAYOjo/1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYuF9-0000000208F-3xly;
	Sat, 10 Feb 2024 20:46:35 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYuF2-0000000203q-0TVH;
	Sat, 10 Feb 2024 20:46:29 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-68cc87d4aabso11764186d6.1;
        Sat, 10 Feb 2024 12:46:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707597986; x=1708202786; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rMB30/edT3Hx3KxbOqd/+Af8cP2PAzP5WuJfM5yzKlc=;
        b=ez/u25Wk10T5+EqqwDN1GKSJdfa0yI+1nDodxafRD+A3MHTg0CGF8rwQ2U+LYrX59Z
         LCYJq/PYVXuC4dQqwG4/Y+/KJGYCja0ivz+zBhj94ccFFrUj3Q48dz4fC/FiLOzqWacm
         EuOIH1Z+zKI/ry4TB6e/W/2kz1lig8niKLIio8RKf6iMnmMo+6tawYugCAxi8Dx63gRg
         cy0lckogR0uLPoFlEUKiiQfDtj/puUGpQ0kbXghv0IPhq6qE+qR2BcvEwn4mE3mvl67H
         4/RmL4eAj2AVlT/qjBIWynHbFSy+eGCfqcw1mYSxjNlDM3Q6Z4UBrR4EkMPxwZ8Y8wcQ
         ikRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707597986; x=1708202786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rMB30/edT3Hx3KxbOqd/+Af8cP2PAzP5WuJfM5yzKlc=;
        b=JRfPB5B5DwxQMHUm2xhwbhTkaB+GAh6SvRzYJY2IUyqCoo9RO627EVjstemhMta8kj
         kCNISVPZbwotLkOZ6Rqraap1Hhs6YjlkJrAVRGvdcqW7kL5CJPktkQ0Yh0KhpYzixdK8
         7hLThlQXprZ7NqRdhgffWz70atQbQzU2wfpRNdvCvQuPzg14VPB7FWmb5ZrkYmw3kHIw
         1SaZDXCYebJvJzC0KvBdB/7xnayNeMzN1Ztzi/VhG6KqLpgjd2jD/OE8QFXaDWECKIW4
         mgNXiYwgCq7alJe1UA/82G7da6ylAOCcAajx07daiQM7Fhi/IDtMmIoYVKaJcWALXxyz
         fO8w==
X-Forwarded-Encrypted: i=1; AJvYcCVNpMkBeIoCF6a66ugSpGzO6sL/jRb+a4aUN79HgdaEcjrqL6VcCcxSIKXZtb2gMeniKBOMqHlNCNC4Nab1Tp38dkTcHqOG1+24BjGPWw==
X-Gm-Message-State: AOJu0YxQbGd565+OQ/wLI38yt/uUW+jK4/GWFO9objTjAAGrBQsTygHQ
	sKvwX27zI4UxqsvvGGa8Ut1CBNNRg+K/Sy5/XyyiSwvbHe2PRlvqAmt8DsMk
X-Google-Smtp-Source: AGHT+IHjWG+LOJylc03v3MtAQG3d2LHUxPk6oYRnsBvvHyMXOgvEM0QXrtAjkmdVQ3pkSzzt95ttLQ==
X-Received: by 2002:a05:6214:1c05:b0:68c:74a7:9e21 with SMTP id u5-20020a0562141c0500b0068c74a79e21mr5329427qvc.3.1707597986373;
        Sat, 10 Feb 2024 12:46:26 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUXN808d0aRSjf5Bqe9DdeRZfOtW9W4eMEJH40oYyA4zjEbOARPlzT0KP9a+s/pLSAVsPaJKqHLxnvXiz4NixVZHlAzJfXMlz5twjePJSsPp2R7zb+6mQUw2HBcZCi6zFxqWlFgeK8Q2G+m5GppmxP4SsOQXiNzWhF8Ans9O/Xdr2xL4ZjqJslLjH3pkmg/5s8vjPeN/9MSpysmtmRfxYLdGASQ8BHwsm3kBcWr+y1ZTLcjt3mmsSmU8/0bdFghx2CM4HPcbnrxbk0ZsjYcBpfHe99BMcO+BslMOSsHmdvh2bXd8+JxWId2ZzaTfTW7VFpX88ckWlWiMnjBB4sN1hPCbPdfuuUeY3sMYEDmrUm9s3e9UQHwi8GU9DKdJnrVDoz62ZEgL0GTq9V1xp3dliHeDpdND5rr7hxr3+1KmcZeodj00EbfowlmMPL80zapmgW30jjYXvvE8bu2vKeg3T0BwX49yxDt+EvSh0oVla1EFzxJlvxUiP+Yl6vLdaRJXk9pQD0CEfBLg8crAMFtmQSQInW/rB+G3+ZhVY7D41DPcJ5gqyFXx7KASGMKk/cXCcHgxpDNgwXeaRAWNG2719aAFem6dUxzveffZNXcU0yezg==
Received: from aford-System-Version.lan ([2601:447:d002:5be:27d7:3989:2897:88a7])
        by smtp.gmail.com with ESMTPSA id m20-20020a0cdb94000000b0068c9db26ae1sm2079526qvk.41.2024.02.10.12.46.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Feb 2024 12:46:25 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: marex@denx.de,
	aford@beaconembedded.com,
	Lucas Stach <l.stach@pengutronix.de>,
	Adam Ford <aford173@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V4 4/6] arm64: dts: imx8mp: add HDMI irqsteer
Date: Sat, 10 Feb 2024 14:46:00 -0600
Message-ID: <20240210204606.11944-5-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240210204606.11944-1-aford173@gmail.com>
References: <20240210204606.11944-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240210_124628_196229_8E632448 
X-CRM114-Status: UNSURE (   9.37  )
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

From: Lucas Stach <l.stach@pengutronix.de>

The HDMI irqsteer is a secondary interrupt controller within the HDMI
subsystem that maps all HDMI peripheral IRQs into a single upstream
IRQ line.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Adam Ford <aford173@gmail.com>
---
V2:  Add my (Adam) s-o-b and re-order position under AIPS4
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 0730d4cf9bc4..9b8ab367d774 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1927,6 +1927,19 @@ hdmi_blk_ctrl: blk-ctrl@32fc0000 {
 						     "hdcp", "hrv";
 				#power-domain-cells = <1>;
 			};
+
+			irqsteer_hdmi: interrupt-controller@32fc2000 {
+				compatible = "fsl,imx-irqsteer";
+				reg = <0x32fc2000 0x44>;
+				interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				fsl,channel = <1>;
+				fsl,num-irqs = <64>;
+				clocks = <&clk IMX8MP_CLK_HDMI_APB>;
+				clock-names = "ipg";
+				power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_IRQSTEER>;
+			};
 		};
 
 		pcie: pcie@33800000 {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
