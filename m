Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FBDFCCD1BC
	for <linux-phy@archiver.kernel.org>; Thu, 23 Oct 2025 13:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BEY6LxqEl3fcV1Io5A+mx02EDDWObw6tDoJNsVelUd8=; b=pmMwQuAbfDGxD8
	++P+0jGAcyjW2hd2laV9qhYh4jrFCMHUMwsxVv7wuYPL8amj1ih/lGkrgK6ccFoQTkxW3Y1PTorF0
	1TdHtYCBfFqdltSsu6qq8DaPmys56drA46LmHXhK5HKbXM6AAde5YBQgi2o8ywBsM6M2574fiEvEI
	cjyOSavYCyORQH1PH30ToR8S+Y8jEyfMuc7iNuF037OEH7cBj0X0jllMERhzDKGkAtdb9TJHK+TcZ
	eoV6HcckIZY20Z05Dqz4l5i+5+fp78OB7NUtxqBP9yGDxkv1l71dCZl+mYczG9ti8I82mdssr04uJ
	JQMYTWi+yrTfkVvilr4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBvpm-00000006UyV-0ssc;
	Thu, 23 Oct 2025 13:58:30 +0000
Received: from mail-ej1-f47.google.com ([209.85.218.47])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBvpj-00000006UxF-495k
	for linux-phy@lists.infradead.org;
	Thu, 23 Oct 2025 13:58:29 +0000
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b6d345d7ff7so88439866b.1
        for <linux-phy@lists.infradead.org>; Thu, 23 Oct 2025 06:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1761227906; x=1761832706; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mcs7Y+EttDztrEgb0m4AiPh1csnrxylUuqHzrjAxJgY=;
        b=o4Coz6sv34QyUt9EsoYpseSdCj1xMqjNdE+MiAs89ofGNgby0A0B7FdJxhx1tCZPz+
         6FSlodUE/3Ny22WtMNCQGVGmLLe8bIpS/IfgTKAuvDstvfyR74JZO9CdOgFlpzA3g0WY
         y535Bl8e7RCWgvVdWQc/eF4AqzlINbbJQyshmI7huBnG5z3Kfo9E1TYY863itLI87NEn
         Jw8iyxo9rK04zloAaqJys6OOrkEll0Ec4Sn39VFjLVrjGgD7IN0R6hCN1dM9LpmHY7Fa
         8gbB6vKG+iqdPfdgG299VI7Atv6aONxoMiEp2sZ/gqeNi7Q40vT2irhWzUl4rQiIjeE3
         S3Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761227906; x=1761832706;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mcs7Y+EttDztrEgb0m4AiPh1csnrxylUuqHzrjAxJgY=;
        b=TWUObQ9HZMf7E8lX4/x5dudr2VTqBrR6pX2CgAPGQORrhq1BTCnOgMRr7T16d5tIOp
         VDO5e3Ygh5ZMk8BBLO16IUYv0U/wRjwvC7qMPeJXVJRFr1jZf5k1WkkuUeUqM2ZJiKr/
         kpB+lp1LtvZELuvtoTNDiOJ5L6bDI6X5P5vdmMx1Dw45Tt7Jqk6dvq/JwuXvrK1Ao8EQ
         tCD+nqAapvxqYz46OnpJdCoHUW0QYbldMWQt7w07yQPY/sxQu9XggLsoZYsj0wvYGtH8
         eQujlJqOS7LoMGnpW9noec8zUsA8dnBX0CrHrInvSlOdhiDvVdCi0fhoFnLCR4Nj/uqr
         YYrw==
X-Forwarded-Encrypted: i=1; AJvYcCVAeX390V4Ycrdw7YjBPpy6LmB25YB728xbGcCe4lmdO5Mt7ly488F07OYOWpkcKvcxvcNKmqlPNRQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6PtZzbu/hYOk0sLnJJz6bA6fRIiTDa9tv1EZYdfTikELI/H8V
	EiyGZGia7T+pgQ9HNg7PsN5BfXZWjorwTc7AIYeHTO15BG5w+Hgnqi7xGWtefSP9NkA=
X-Gm-Gg: ASbGncvk22+rLVRYX1GQFpU249zdQU4FscBfyk9rL6nwMXSfG1iekuGUp8mtulHDRAu
	EzO51AZIJ/dg80flEjJ6TfWotbz59Urkgjo57C8t6wz61Kix5Le/4R9cThUUa25shQdfN1RPJqN
	/XJtCac4vTXrlADNmtJarZOuSXx/sohjQU98+bAYmm63uDuPd50nAxcPBnwMGNoXQFWuP0l/51l
	tqcWjVaIH64t3qj8FkCZB0rs/zxmAJOe8rt76trGJIdjHmM0tkiWQoGoASirkG/ST3vkOzGwgY6
	Op6/NeCBG6qqfZk/eszzy0as19wSB2N47wTd/VSS1G7LSRhzhFe+L9VuSzJFliR7tK5HLi3SfF6
	q6dA8lFEByae/YoDXhNR/rvpb2PQ5xdP9Qz/nR08QAVz0cx0SOOaOd9oK7G7Fj3c0JX6WV+67if
	zc9fBLVRQbhqMWTAvHGBLm3yTObLN027QQ1sILMmfO
X-Google-Smtp-Source: AGHT+IErl4KxFsPoyMcgmYdHQ18H8eQgx+LzGITPImiQSgQDh6xe3/IOiWXni9Y5LKEyJSLxqP3qGQ==
X-Received: by 2002:a17:907:72c4:b0:b29:57b0:617f with SMTP id a640c23a62f3a-b6d2c6df653mr921330166b.1.1761227905751;
        Thu, 23 Oct 2025 06:58:25 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.151])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d511f8634sm226114066b.29.2025.10.23.06.58.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 06:58:24 -0700 (PDT)
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
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v8 1/7] dt-bindings: phy: renesas,usb2-phy: Mark resets as required for RZ/G3S
Date: Thu, 23 Oct 2025 16:58:04 +0300
Message-ID: <20251023135810.1688415-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_065828_044416_160794E8 
X-CRM114-Status: UNSURE (   9.73  )
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

The reset lines are mandatory for the Renesas RZ/G3S platform and must be
explicitly defined in device tree.

Fixes: f3c849855114 ("dt-bindings: phy: renesas,usb2-phy: Document RZ/G3S phy bindings")
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v8:
- none

Changes in v7:
- dropped Tb tag as it was reported that it is not valid on bindings

Changes in v6:
- collected tags

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- collected tags
- rebased on top of latest version of renesas,usb2-phy.yaml;
  Conor, Geert: I kept your tags; please let me know if you consider it
  otherwise

Changes in v2:
- none; this patch is new

 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index 179cb4bfc424..2bbec8702a1e 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -118,6 +118,7 @@ allOf:
           contains:
             enum:
               - renesas,usb2-phy-r9a09g057
+              - renesas,usb2-phy-r9a08g045
               - renesas,rzg2l-usb2-phy
     then:
       properties:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
