Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46938D59D8E
	for <linux-phy@archiver.kernel.org>; Tue, 26 Nov 2024 09:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ri3SNZOOK8e6G5xyTCBpU3j2kzZIBXGFr/ltJSCBhwI=; b=FnFgLZegl5CZs3
	1RKlEs99I0WxinO8azt2PiCmvzEAsIs3N6UQo2F7WB7ZV5qdFqOT6XvZTuhXjypB5M7t1kKZHJp1+
	5d9WyG+UPp+WJqNFBYICRZ537EXk8ITxxCG0VjdgC1ayou0WZ16N54cc/W3cVk/YIwdxrWjX4AShM
	AccK7OML6vaTt6eP48DLGtTGB3u+TPR5Ea2s7VpQtKTaHumXPmnYx1ebW0stBnwCN/dsMsVUlKAvD
	SNEAvSiZb+A6gpxMcPsabcIveTsJcCt0Z7tv573KJEWdppRadXB9uJ5VvdPFFNhtAOeRZEoPXySdK
	C7ezkVz5TgeYbJxMgvbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrlE-0000000A7JJ-3keC;
	Tue, 26 Nov 2024 09:21:32 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrkz-0000000A76v-1aQk
	for linux-phy@lists.infradead.org;
	Tue, 26 Nov 2024 09:21:18 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-38231f84dccso3715887f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 26 Nov 2024 01:21:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612876; x=1733217676; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sn4qpT/iGLCOuVRl/HhbV74eVKZi/FzZDWa4nL4zSFw=;
        b=F93Z3m68uorzh6ZGUtWGd8m47YfFfJiasghSOR1M9hJ4SCUdwrARkbURStxBgy8tat
         WJTdt1zdeF2qWI54eR6WstYl5Xc/g8C5g1cyHzMHHPt2zSk6jG4X8neLx66Lt9hUm8es
         871TMjbpapS9Ii1eOP2Ddzq/AlkJhHRcJ94LaKksHivCN0LB7/IrtDSiu1cuEg8kuew/
         H7uOKL4lTdAJ+EfbKlXJY0mehJ+62PgMbv3mBQWDKf+oeKadbibmDl9PRvPR1Dn/Rko1
         Gs4uaGD9YjauEB3KD4oTBfuLBWWwLVjvrYeJjObSY7th+2oqihoe+dYaI/4pBYusaOk7
         rfMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612876; x=1733217676;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sn4qpT/iGLCOuVRl/HhbV74eVKZi/FzZDWa4nL4zSFw=;
        b=cr2YZqrl8UrQofqDGCbOxO4Uf8OiZp6oas/5arzKYC8ekkUYCMmBVEm7oommK3ylfC
         cZpuNG8WNM8mIYrJJQKehh9zNO8qsOstuXk0rpJhzw7oGhYQZkfcRpuD8RN6oDzVE+9+
         /get9NfXFn80SfKLgmgXNAh3nkcW4oIF7sKwHPv0IVG9xsYaFfbW1dUa7YfBHkxlKU6j
         XDipO0g5/dK/Q5tOIeh1ayNxQz3jyBIVXwlINdjN2hdrQs6K7155/T244vVXZV8jE9C+
         bRD0e10gKBtWwwIhh1yMqQ5pjdIA3FPCW7hAV38VJE0zX1g86p6UNCd3o9Sv7dkO0X0M
         55Pw==
X-Gm-Message-State: AOJu0YyuiyuR7qnlq8dGHFJntEQIMOSZEBRDwa7LJqTiBDioy5JASROd
	gvYvax30o5Ism8Lww2wSGUX0c8sVmPZXdfOZVRuEPrVnFTuOKEbkvYD/zqKrhY4=
X-Gm-Gg: ASbGncuAIRFxw065kZWLAsaH3zftSOQNyQ1TO4zVrCCWCbHv2ErO6BbQ/EYSm4f+FYg
	w0oEK/afL0EPGs1JOIy+wBWoS/4stlN4krkx/UHWb9MJKsubMp/DduW4IFDkMfpeDq46jiG3Oyz
	se/p81ZascM+0amTV/Kg4QupVKZSJMxgmOmHIGaZUG8esJ1e5KxnZsPK5Dfo8HmBY7LJ8/I9c3y
	i3xowgLLYR+AlcIRKxN5VSHDjojOrTYNELvaFhzOpv7Wf7+kynxlMQQqtLVotLCbKbT0Nq1pE4k
	A5o=
X-Google-Smtp-Source: AGHT+IEownUh3zO6s9pCDV0Clvw+JlHntDQwx/j8qHfP92J8/y9dWvLESVOAtn+7QOc0lvgJXmcboQ==
X-Received: by 2002:a5d:5f4b:0:b0:382:1831:f7db with SMTP id ffacd0b85a97d-38260b59bc9mr13021685f8f.19.1732612875617;
        Tue, 26 Nov 2024 01:21:15 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:15 -0800 (PST)
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
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 06/15] dt-bindings: usb: renesas,usbhs: Document RZ/G3S SoC
Date: Tue, 26 Nov 2024 11:20:41 +0200
Message-Id: <20241126092050.1825607-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_012117_515476_E72A9E40 
X-CRM114-Status: UNSURE (   9.14  )
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

The USBHS IP block on RZ/G3S SoC is identitcal to the one found on the
RZ/G2L device. Document the RZ/G3S USBHS IP block.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- this was patch 09/16 in v1
- collected tags

 Documentation/devicetree/bindings/usb/renesas,usbhs.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/renesas,usbhs.yaml b/Documentation/devicetree/bindings/usb/renesas,usbhs.yaml
index b23ef29bf794..980f325341d4 100644
--- a/Documentation/devicetree/bindings/usb/renesas,usbhs.yaml
+++ b/Documentation/devicetree/bindings/usb/renesas,usbhs.yaml
@@ -26,6 +26,7 @@ properties:
               - renesas,usbhs-r9a07g043 # RZ/G2UL and RZ/Five
               - renesas,usbhs-r9a07g044 # RZ/G2{L,LC}
               - renesas,usbhs-r9a07g054 # RZ/V2L
+              - renesas,usbhs-r9a08g045 # RZ/G3S
           - const: renesas,rzg2l-usbhs
 
       - items:
@@ -130,6 +131,7 @@ allOf:
               - renesas,usbhs-r9a07g043
               - renesas,usbhs-r9a07g044
               - renesas,usbhs-r9a07g054
+              - renesas,usbhs-r9a08g045
     then:
       properties:
         interrupts:
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
