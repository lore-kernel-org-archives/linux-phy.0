Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F02FC4828D
	for <linux-phy@archiver.kernel.org>; Sat,  3 Feb 2024 16:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7MxPg6C4fv+k8WVWSOKrvNmMT27mqdHGk0nZLNHZXEY=; b=YSoHS6+RbIpo/c
	qphPcNWjiswBi4gXK/NvEfcaAW3I249QzUF+tYDC/eXoIW2D+xeRQLI95VYd8BlHJ8bmRxTVQs5aS
	UcMRwQsBEhly1dEyhIzwbywMOCv4z0nMI+zWDIWFi1dTRnUcXjDiOj0oYHRropCfn173aZZmW2iIs
	lkdZwzujzpIk131eiiAmAVffAPRnOvsJ0LudOce+lBZ5UUuHc2NdaNmIGF9A42dX4zmxQ/Ln8Du/2
	ery+SZysgMYR/1t7WZPLnyHca14hieOhKKGWw3fHO+C10KR2OKSPpFIFwVismMYCjBHaJ9F0BLYsF
	fA/mZxDxbAO5v8eH75iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJHV-0000000GqY6-2yUZ;
	Sat, 03 Feb 2024 16:54:17 +0000
Received: from mail-il1-x12a.google.com ([2607:f8b0:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJHJ-0000000GqM4-2H06;
	Sat, 03 Feb 2024 16:54:07 +0000
Received: by mail-il1-x12a.google.com with SMTP id e9e14a558f8ab-363a7ba0b8aso10111785ab.0;
        Sat, 03 Feb 2024 08:54:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706979243; x=1707584043; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JtGhKs15Hj8i5RJ5ho6JwLU0TmKEm52r/T9AweQyD3U=;
        b=YWQ8XmPCrFytmBYawJrTGMj/tPFzmsH8e30nlR27666M8fhm+MQNeOhKtDiyEe9jE5
         t+rDEAIsumX7LH6ZAayNMt3pzoulQ1B+7dy/8U1MLpfp5w4Lf/QscvfOs5IKYYWx03cV
         joUwNJQzRKcIvoKOXxam4Kpyeg/OkL/7yIPHc5dx3XAArM/JRiCMT5p6bQ0ZiWFuUAhF
         +G21IedY+/5fI6YKZfFYS28CxOPenx7PA2M/qz9oepVIeR728AiMIUd4UvOYlux+/2ZY
         7dF5xSp6rapCwgfXtL/lQzqoqz3U8RaZugoETlbIzCiXiRorAUkKWzYFhov4nEHSZyWS
         p3sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706979243; x=1707584043;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JtGhKs15Hj8i5RJ5ho6JwLU0TmKEm52r/T9AweQyD3U=;
        b=Qh4WpmjdKTkAogt+Xp/fi6W/KITMHuLnRAUcdvGPoLruBxiFP4/8IKRYNYVbok91lw
         H/zn7dh5iM6goViz9bqBVjtTFepPYrj55sQGjkEEt5r5xbzlNc1SzexJbOH78EIEaLOB
         w/bY1EhgNPxPm617TlxMKYYxPzeO0qsGI8XijaZAs0HgwMLOgr+mxdPic30PDwaLfhSR
         AHGWfuMavpx2Bccwf84fnSaj9sNJhtWfCej7+eTIKcKIwJod6iffcLW+26/Mj+sOvrZv
         0ZyhpzOFbONPsQpJ3690LDOmOnsbQP+oWNC4oqhHj55Q+ZKTCTc4eMTMOY0cy1gMTxbV
         E1ww==
X-Gm-Message-State: AOJu0Yy4uHmHWzROpniyzk3u4aviX51yRbcnnv61fRdeB5r8b+Cc+TuV
	QaLzs1kxOwJv5JqkmH/0lREFbHrZxuE25w+Id5mfm/jj6TF8i1MQiEctJyLM1ek=
X-Google-Smtp-Source: AGHT+IEtUlUuWsf9Gbr9GJbRlc1FEcGkrsmzLVx90UiAKNG3C5GbacaJqKTLB3V+VnaauWFjXUN5Nw==
X-Received: by 2002:a92:d3cf:0:b0:363:81df:3d3 with SMTP id c15-20020a92d3cf000000b0036381df03d3mr5301076ilh.4.1706979243145;
        Sat, 03 Feb 2024 08:54:03 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCU/UwDB46wLoYIFz3O6l5HXVdZUTuSGDGGNGDOBmA1nI1v32qlpxeuKPfkKPapsxAKPEyV6GPHaDnimTNr3DbJrYuloAkEnRbdSF2fb4CuRVyDXSHYK2eHAj/DTf82WRn6QOBFR5iwj2elDQNofClJ97c127Khba7hPCHaIlPasYNq2qlgRpAe3cwfen4EiVjlNaH4EfMYkZWjk/HYMl0zDZBa/UgXs6nqfuXwFARAOWRxFGSFfyowwZVJF3kfGTotEIkCx2VRUu5lOCSshBDa2s1TZVeZklv0lOBCQgeq2YYhVWTR0bj49etVariQ5188+WbNbo6s3wS0WDD27C7xTyep7AKf1ozf5xpunMCecoMQIZdeooVqkuvOeAarWQ6LbtFZldbUz1p4tfaiY/RL+R3e0HKdB0SEQfup7eprMSVdd2qtIMqi64bzq74UM3/P4HgBRcZlf16SZeUZ8oGeBnGKvp3E1GToJqiOk8A8K9SyHSsQXKJX/rVYQ/tfwLPDt3RTCtGUJZ7rmlNxDJXZu5etd7fWDAcCIJgiT3rXAlT4YRnFwWtdICYcfItQokTzmrNE5QZXYdSP6oc2uAkMUfqd2rYHvSzQpoi53MwL+SYArEuvYM5+ePpPj0XleBmwr6Q2aWPhEQiNFbT0UJFo9vkFus0VAOYDq4KJSKXXDvtp03Q8q6nfhzdIbf/ty5SeTXaiDo7vGDKgOARera2E+oLcjiw2QSr+7HzADqONxj94o8TWoUIjFN/+o6mvZbmaT5dwL95LBBD48M0cEGfDvHAF9Q6eaPC1CthonwR93ceLtw5fmr1u4ReEB9ENscdoRdfFjzMp26HdZhHmF7Kwb2AVHcafwsOLyjSdRUgGR2Ystz8uLQGuHxLwwS/pViR3hkiRxruq+4cKnGxmOnLyOgIUOL1Z93q2KFjHW9hJ9d0ntICMUPEbe4O/xrJzko/4NAo
 zKTMm/HRtldmfyvTUtcKEXGp1JpMp5rUj4zBHe5CyHWYwb8SeNSFH+sXwQPOBCSupIPgOw3CnTspR5lOggwYfaNWyhC7GD4aoUU0Irb4Dj7KPDYSGx7gRih9Mw4rrejlDGk57IACnM1O8zQE8s/o48ubKXEXq0CzXFZbAioDyJSkJ4R4u613NpycCar9bMYqVgC10=
Received: from aford-System-Version.lan ([2601:447:d002:5be:d9b2:bb4f:5531:6aa9])
        by smtp.gmail.com with ESMTPSA id t30-20020a05663836de00b00470b29b82b1sm1086256jau.154.2024.02.03.08.53.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Feb 2024 08:54:01 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: marex@denx.de,
	alexander.stein@ew.tq-group.com,
	frieder.schrempf@kontron.de,
	Lucas Stach <l.stach@pengutronix.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Liu Ying <victor.liu@nxp.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH V8 06/12] arm64: dts: imx8mp: add HDMI irqsteer
Date: Sat,  3 Feb 2024 10:52:46 -0600
Message-ID: <20240203165307.7806-7-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240203165307.7806-1-aford173@gmail.com>
References: <20240203165307.7806-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240203_085405_807738_BF8AD344 
X-CRM114-Status: UNSURE (   9.66  )
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
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 5c54073de615..5e51a766f3d9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1399,6 +1399,19 @@ hdmi_blk_ctrl: blk-ctrl@32fc0000 {
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
 
 		aips5: bus@30c00000 {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
