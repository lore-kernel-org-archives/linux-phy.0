Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C42CFD3B7CC
	for <linux-phy@archiver.kernel.org>; Tue, 26 Nov 2024 09:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lGkbs3XXEBJqqt2OPNyeKq7jHemJCX00tgiLAejO3CY=; b=2T3hG27WsvsNzQ
	w6B7IqeWV+vdrcImPwwZHf7hFUA20/jO9MMLIrWqP8dpOL+ta8MntE0OXnQYQKtf4MA4ick2A+FQT
	VBtW7GwJ0XZ+Ek7iEexP2ZBa8WK5saCDU9vXa3xWlmUSuaqM/BF32ocWXHETr60rBZybyLge/apzl
	PUD8a9Zj0Q3/9WevsgJ/33Jou5/BcNVue4w+H3lPbkMjC6qck6oiP46o49/sxPDj2e7H46Z6BWcie
	Vrar4GM0VipQ+Whup0KSCptFgO4TqiWJfpqO3LtjCFFytIkaS4MnWHLTpE0dAqv/ov1mh3706Oo6c
	1TasB02CD5m4LgztnhOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrlJ-0000000A7PG-1TKe;
	Tue, 26 Nov 2024 09:21:37 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrlB-0000000A7Dl-1Gf6
	for linux-phy@lists.infradead.org;
	Tue, 26 Nov 2024 09:21:30 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2fc968b3545so56938501fa.2
        for <linux-phy@lists.infradead.org>; Tue, 26 Nov 2024 01:21:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612887; x=1733217687; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YL9Ut0Si+rVh2q7F4JB/asIqIrf6jT+s8Jqs0j7Utvw=;
        b=LBJ1ngz5fOM1f1EnsAFsQrAyYoWtevbVti9VhPYNy/POq9krKFtnSPZK0I7unHLu4G
         X0vIMmbj43cuqhG32i6CGPF7xRnssEsEwe4b3jLthXd2y1fXpdJL4dBKEqBbHEWkCzFC
         mfu9ETtLds4tzV3jCGcWscCFGgAEIazghh8KxfqPOVsBuGYJVxqkqVWFrHm3yd3uAbq7
         iYmrJrnWZKusHcGG/Ul4SbNyz1cJrmvyCofkJVPU9pB92TMMARxf2YB8Qjvi/B945lpS
         ncFkvMIGjGVStR0YidHu3uCAMveUV6YZ0cZ/sKNQLici3BRp1dc2Btc+twTyWelrQ75q
         cZIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612887; x=1733217687;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YL9Ut0Si+rVh2q7F4JB/asIqIrf6jT+s8Jqs0j7Utvw=;
        b=OLuKtPsSm5tM8s3HT3qEJRFzDbhKdPlua9TpAwK6OceZp1KBqLUZd0U9hfWL4yws9n
         HMcKEd5DVmXQl+8RtWm7YwYkey+s1FHCjTA3ZenzRCqojc95E0oncoWcfzdn2ZqW18vT
         5gPZ9pMweeaD9Kah49N4IDUcdvhvT2tshu6dejSU1S7ozz3eWFLVB7YLbjjriT65IGvl
         PD0kIQjjjYt09njxE50+2TPvwyU8HOnTr/8G89DMme5+OD6AT+3+SV5S+fmnOx1bRLWT
         XvSClE4zNsQ06OJdbpcoYACiYu7tmVH2LWMLr0E0J9g2nUHq5u7Kh8Qa0BN2B2/71r3I
         4A6g==
X-Gm-Message-State: AOJu0YyfdZyWNzJ9PvGRMAFMziFWoossvDJjky5Csdnmhw4l1HWldz7/
	Hf9kbcUo7KcQusG40f0/o509P3KLYZ54j4ESmqm4lFc6IkEyYxoiWI1ze323OXo=
X-Gm-Gg: ASbGncvf82bEqg01Yn14G3oIDaQWJVIwbT/lKYSO5ellaebYlaxgd2i7NYJ2CrLFV8d
	Eng+Yb0GQh/YkYkVZ0HEPuBFRrSSO6LGdWgo2aeimSu6/+ST7DUnFOI/DqMUcczfLmj3KCEeoi/
	l9autPvBUi+Hb4qoqePS5xbN3+8eVZASxKGj9MjR2iYQmFu6/ugBYfAxzfN/LbmyE6wGvdS7DHb
	iEzrV1VM2v2DnKZylVKiurgFvnu4uxHHMh50t3OV1RVtxE34rMHoyofvophOKVuPa3unGaBhzev
	3I8=
X-Google-Smtp-Source: AGHT+IEqjpoyWsGOaOphc9gwJtzIyZu0gka779JBN5g8gKK1cf1hZ2MPQM9ajRauQ6fRNW3ZJEX2Wg==
X-Received: by 2002:a05:6512:e86:b0:53d:de36:7069 with SMTP id 2adb3069b0e04-53dde36707cmr4605894e87.6.1732612887547;
        Tue, 26 Nov 2024 01:21:27 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:27 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	yoshihiro.shimoda.uh@renesas.com,
	christophe.jaillet@wanadoo.fr
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 13/15] arm64: dts: renesas: r9a08g045: Enable the system controller
Date: Tue, 26 Nov 2024 11:20:48 +0200
Message-Id: <20241126092050.1825607-14-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_012129_348959_41D61D48 
X-CRM114-Status: UNSURE (   9.62  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable the system controller. It is needed for USB and SoC
identification.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none; this patch is new

 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 169561386f35..89cf57eb8389 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -207,7 +207,6 @@ sysc: system-controller@11020000 {
 			interrupt-names = "lpm_int", "ca55stbydone_int",
 					  "cm33stbyr_int", "ca55_deny";
 			#renesas,sysc-signal-cells = <2>;
-			status = "disabled";
 		};
 
 		pinctrl: pinctrl@11030000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
