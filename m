Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB50AECAAD3
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 22:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Hfvgrl13SQ1QkM4OHFMqIaUfFBmPgkiTevjoKXxAt8=; b=o/ZpQ2ph3A5KAH
	OSRxfErDm+oXoeGSP28iyHay1q/dxb+QSSTbuEhfYHZt8sV80mCZVyEMAm13OUuNtJYgcB5tcBT1+
	g2+4bVu6j9YCI0E2PvUCSi7l8agkGdqTrIgU6ZPz25Irf2Pq+6dM31b+WsG/WZTdHC/vK0X3v1Gyd
	FR2Uqbkdz0fWn344Y81wagkEMRQL/HX17wg098z4h5ZLGCStOKQqBdhO8MoCbZqfZv3JeinKWgxso
	enTeYymOO+4QYOzw/XUaphnsicIos1AgOzBb0cs+3wrlA4JmnYYnvL7z9K8GUAhHjcPnjWgUvvLnG
	J5LMdRU1z427WY/ck1aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWmCL-003Oh5-Fe; Fri, 09 Sep 2022 22:10:05 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWm52-003HuI-Sz; Fri, 09 Sep 2022 22:02:34 +0000
Received: by mail-ej1-x636.google.com with SMTP id l14so7124317eja.7;
        Fri, 09 Sep 2022 15:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date;
        bh=5wDSQei0VH/0N0cIYpX+WvxREvgCAsAfy7LHoQVjBlQ=;
        b=pzeyCMXPWtw5W3TzsjGLnySXo8soVYUYeJ9xFygN5yMcAFfkmo68Mn5NVSDaAqvEef
         eMfcgrKdofMIrb0NkC9c/9Vds5bjV3ktzlLzWstteZoyzJiblmObGx9yNFJOzwAvY7lO
         1KY9hKyA68Qr0+/E5uvCFdh+SbIOxQgl4kCdLO3bEGLkkfQGP9D/Q9zv03tqjXBbFmW/
         wQA877zU19eUftI9o02PkytlYbM/sujtsOJ3kUS0dJ/fdCEs1YH93ga6tw2Zt32RLYLH
         dvfsrtjWpLuPSgMAfQYmTNPST7qelX0TgYFbw5w+81Sytx+Gi4mwLwH/2plVR4zEjN9H
         7bkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=5wDSQei0VH/0N0cIYpX+WvxREvgCAsAfy7LHoQVjBlQ=;
        b=rk+1/hsMdoeIxmH+tATqYhqdrZHrL/Onu2/vQTUlvgwfLABZcAYNh8L6xx5+tvsooD
         mpsd+VK8iqncIzQENiyfdPbkvkSXz5jAKW3gGdCVfrLiitbfIVgp8y3VBeK2wAyyDx/b
         CePEOUN8eVuDGFvrUQVEYwQNqskRstvdOOwTSxlSJMokC+67F8/cGj912X9tdf6PmLFv
         1tcH41oxnRUDVUq1gGShuv6do8eugxvgXY/xjMvm55fHlJUFlonb/oJvge1bXM9/43BZ
         lg1H55U8d3E/JHCFl8BMKzLwqM2/Uv3bRt1aGFw9wrwoCs/i/mNQbgjeYvh/9+xXSZ/+
         kVbA==
X-Gm-Message-State: ACgBeo1jNEtXInUBj5cOpKu6hbZOpx4JtVup+o/cO0mXvv0fHgha/wBg
	1E4BV8TIMFRXexVf3Ht2gfw=
X-Google-Smtp-Source: AA6agR5i2KdDv0Rikxka5ZmZqz4fP9NU9rl0imXOMXzTXa+EpchEAZGLS2pB1pzRZUktqmDJgOVSoQ==
X-Received: by 2002:a17:907:3d8e:b0:741:8ebe:3464 with SMTP id he14-20020a1709073d8e00b007418ebe3464mr11326966ejc.747.1662760952366;
        Fri, 09 Sep 2022 15:02:32 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id x17-20020a1709065ad100b0073d87068042sm804845ejs.110.2022.09.09.15.02.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 15:02:32 -0700 (PDT)
Message-ID: <405db21d-154e-fed0-7524-ace1cef0203c@gmail.com>
Date: Sat, 10 Sep 2022 00:02:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 02/11] dt-bindings: i2c: rockchip: add rockchip,rk3128-i2c
To: kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, ulf.hansson@linaro.org,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com, kishon@ti.com,
 vkoul@kernel.org, thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 gregkh@linuxfoundation.org, broonie@kernel.org, wim@linux-watchdog.org,
 linux@roeck-us.net, zhangqing@rock-chips.com, jamie@jamieiles.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-pwm@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-watchdog@vger.kernel.org
References: <20220909212543.17428-1-jbx6244@gmail.com>
Content-Language: en-US
In-Reply-To: <20220909212543.17428-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_150233_025212_41A38D6C 
X-CRM114-Status: UNSURE (   7.02  )
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

Add rockchip,rk3128-i2c compatible string.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
index ee9f8b91d..82b9d6682 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
@@ -29,6 +29,7 @@ properties:
       - items:
           - enum:
               - rockchip,rk3036-i2c
+              - rockchip,rk3128-i2c
               - rockchip,rk3368-i2c
           - const: rockchip,rk3288-i2c
       - items:
-- 
2.20.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
