Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DB65C982DF
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 13:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Jt1kdhRdAXgPtz6WLaENEkm3BqWGe3vbGluneX+h28=; b=FODk3J9rS6gz+h
	FtQejaAINHB1t3U0Xi7MQywrqUeq3nZd6IVtZ84n0XC8gmE8gnpuDDatYbFSkz5aofxxJSkuTJ2XP
	abm1xoJ+YdftZ55xOXqqO4ajHcZouqSl5/YpepfGaULwngZpHeY+62JeOIt06s5UInEkePTsT1c6e
	6fUDn1/yBe3rP5t0UDd75snPr5bFddjFFG+iZHVwke43XWffy+HDSimefzq0qmjqir7sjuo2LD9iH
	AXCdzLZmhN5EjUAwzIfWZZbgtnWjZtECrmckNULE2Itk4A6chxCnUSHPC5CKc/LDPRd7QrbXhsPmX
	uzfPVslGUckhTqRD0+kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Z5J-0000000Edvq-0iKr;
	Fri, 18 Sep 2026 13:57:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Z5F-0000000Edue-1nSI
	for linux-phy@bombadil.infradead.org;
	Fri, 18 Sep 2026 13:56:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=OrzoJsyfGQAwVoj4rnXSLGvbnlKoCkPzZFVe6L0WIsM=; b=TKQ+0y7J4byKYTu5XvWMilGqA+
	lvYVQHH2mZB+CfPnOM5D/0EKyaduOQGbEh+/QUoTn9KMLWOMUqOc1DFKZykUz9YjmG4QuKzmGdo6t
	t0I6VPfYJbHyvCn+iUx0zgbqMNo0wzy2U6G54+YUoQOJmnbsbspLBPoB1yAhwZW6WFk68eHiqyKgC
	P1y09yAqjZ128c3f/5DRghmcya3Xjb4/K5QnYKjoAkuWvp5tHBqJfg1x6ShDrPBu9TqTyZKDQEAgG
	aTGZu9cnwcw1pK82gxHEgFkf/oUmRoP2MJ0f5Gww3TGH89fqA/kRFyld5AcYbG6d9mT7FQr413csm
	cx18POzQ==;
Received: from mail-ed2-x10.google.com ([2a00:1450:4864:33::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x7Z5C-0000000AAaD-3OnE
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 13:56:56 +0000
Received: by mail-ed2-x10.google.com with SMTP id 4fb4d7f45d1cf-6a98505364aso1207929a12.3
        for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 06:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789739813; x=1790344613; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OrzoJsyfGQAwVoj4rnXSLGvbnlKoCkPzZFVe6L0WIsM=;
        b=SSHVIYr3stFMV8VahoNeF6JNvlXLkytghyCpqvfPu44e/VIAmstrVlvnjpImCgewR1
         qsYYW1nLOM0thCVYxz0Du6T7PbvYSTUhfi6UKQj8rfi1AjOCAlOb4Da5HHvDM3FOtUwz
         5FconNH5iLV6RV5nGJpS/AvtyDbT7TKGGxbUw1MgVCzhCGh0r2Nt0NO6EIvls4Zyf10V
         Tdcge6HpF5gtAvs8yP9CpONbI50TKTkGYxTVKyFVgj3KgPS1O4dmD8+uF5c7dEs8gnP9
         fNZjQ3bjazuFsOeSe5fNUhHfNZgVJSyDMAHA5nrqFQQoucLUydAwYHu3VFyHnM+nyzjO
         vTbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789739813; x=1790344613;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OrzoJsyfGQAwVoj4rnXSLGvbnlKoCkPzZFVe6L0WIsM=;
        b=yjr3Q+7xG7P/5xrrX1cZczXntK1Reuf1moWKx8uSSkzMr8/D6xs7xjPB8C0CT2NLdO
         9Ho/rup1UeksXJwSajD/hf8ALf3wBZpkr9PuXWQikTKMhYFRX+R9XYPDPs8ceyXt4Ft5
         6u2Vc8/Un+mb7xYPOaJIlywoIoM48azAXNyvErLSsjxIIH70DG2ma8x2NxDKhQD7+YjE
         0uU6zZpMTp8NETOXhpX0r8vKxufaHtapGccbB9aGaqSx6gAyB2PUQ+c8GJAfZrCFetP9
         VNzaXJoHBNY6a//3r6+6WHggOIVPZnQefHgPC8Kv2ERc2VzQUzUfQnZuYVaT28TAXCte
         1JyQ==
X-Forwarded-Encrypted: i=1; AKwUvBwfgARp/Y/GzWsB6Rkzwe0beWsXOCOaGI6ehpW47QAKH72i5BZIpU2sKwKRKSuAyWyUwAYIR43E+Y0=@lists.infradead.org
X-Gm-Message-State: AFuF++k2uQPcJxCEhrCl3uZH2h+0wsHkwAsreT3ttZUnRei0ydClBBeV
	tB1Etun10gtJAXdQNOZ90QX/4g1jky7atYwuArVxDJNlytPz8MJEe8tzWtCH2ETLwbc=
X-Gm-Gg: AYBFou2j8vtTx/ehk14O9Ty8PZFytjpiKVGwrf9pgH8Wult7vq5V76TIn8MKjtmsARh
	s1kxeILCq5clVDFtwfMF8SIXUd7rtoMmZB4FaRVLXSDvS9SIjKzEkPXDBQdu8pQtrtSLXENOw03
	JU5fVd2Z1i0MIEHkzWJe1oBj6fmk/NLy3Y6AlAjI7S4VLUHX+zoULQ85u4zAsxq3yijhQ6usnde
	+3cR4uZ97IHRtD6BAhuMvP0yGQ44Ug9v6lipJ6g1UcJ0LxZJDbpygUU+g22sWkEi9pAHyUWnOJN
	t1uXzHdUlXYKoAXPr1tYjjsIYUU5zUgstUTC14KdoFR0I3dYESyyW44PVQDxdqQazrLu6eLQDVn
	FHaSf0BZ4i/sSETxP3ohAUHkYTs4Sqp/VjE4Kdw9GyZFBzYueDhrFBYa6JpQ/pOQ1b+DLYQJTO5
	aQdMDXYlDbV/+w3x3sPmkHYym5d1s7Q5IL8GTtlzvhTOuZgTNUxiLVAxLmiFitD8/y0c9K/r9DC
	duAiOJq
X-Received: by 2002:a05:6402:4020:b0:6a9:f88d:b6e3 with SMTP id 4fb4d7f45d1cf-6aa52444ccdmr1676118a12.0.1789739813547;
        Fri, 18 Sep 2026 06:56:53 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.4.225])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aa59730866sm915455a12.18.2026.09.18.06.56.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2026 06:56:53 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Fri, 18 Sep 2026 14:56:39 +0100
Subject: [PATCH v20 4/6] phy: core: Add missing kerneldoc colon in two
 locations
MIME-Version: 1.0
Message-Id: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-4-dc244e124e71@linaro.org>
References: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org>
In-Reply-To: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Bryan O'Donoghue <bod@kernel.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1863;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=cyFgC+qXLx7TbLlb087AjFkU/0sOlZUcyZhxSpOGPTs=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqrUMcInVhLdyaudbJKlI64/7xCw8tGs/f8+uvK
 Tr4ZbtYz7WJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaq1DHAAKCRAicTuzoY3I
 OujtEACYXwO198w8CrWRRdGcXNTIysDMDcAUvp1WCuv3mvY6fVpCxXIGF4CSCrfzLcFQr60bX2t
 //L21gFXW3rClTVpHxDa2/I7cBBZ9g1+k3k3lVMayQxOHFcOHCuFFlIrm9ZmaGln631MVSTJ0ws
 c9MrCNLCHA2sxIeBiTh/SaCsCDWRe6nAYIwCUSS7HZgKn+eqMhzh96iVZIlznfWdg8DPmoC+gD8
 lMQEaw+I8SAnAgVtSVER8Q/iyhdRjEgTGH++Iqpo0M8aQXkDewl9gaSAOQz/p1G4sPKUl+c3beu
 VRWWObQfVqlJKSdbAz8IDjKHbtkKiF61eQ2LE5DZiI2DUmXHrbQ8DgaGmFLKMct8E1/0wU6zjKW
 eS2TOdAdvifqQfbtrsNxiNrTYd+aVaUaAHFlsYBBwX+gfDaQnyUIFPlsaeW/ON2EyFu9xwT+3P/
 ltyfZ4TGmNVuhIKSBWMpabAjMkcpHbKtljsofWQsNJF5NJzwOxBYJ7rrrYQlbBwaixoUsZN0RPr
 pxsDiBOBPN5smxSysqmFNF+xPBA7GfEZr9SUAtdH13binQpUeNhdhHHKLZjKkUu2QQRwXpOXepT
 B8Qx7cu2Gy4pdLGzyQCLcWSLeA5Pi/mUNiliWh7A8mwInyO3VqPrbACzMIPZSNqT6W2ee8/8XUt
 Eoa+OjmpJX6fM+Q==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_145654_937817_429F55DE 
X-CRM114-Status: GOOD (  14.34  )
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

Correct missing colon after Return in kernel doc.

Suggested-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/phy/phy-core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index f0d2b50d1c76b..597e6b234f5ef 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -643,7 +643,7 @@ static struct phy *_of_phy_get_with_args(struct of_phandle_args *args)
  * @np: device_node for which to get the phy
  * @index: the index of the phy
  *
- * Returns the phy associated with the given phandle value,
+ * Returns: the phy associated with the given phandle value,
  * after getting a refcount to it or -ENODEV if there is no such phy or
  * -EPROBE_DEFER if there is a phandle to the phy, but the device is
  * not yet loaded. This function uses of_xlate call back function provided
@@ -681,7 +681,7 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
  * @np: device_node for which to get the phy
  * @con_id: name of the phy from device's point of view
  *
- * Returns the phy driver, after getting a refcount to it; or
+ * Returns: the phy driver, after getting a refcount to it; or
  * -ENODEV if there is no such phy. The caller is responsible for
  * calling of_phy_put() to release that count.
  */
@@ -797,7 +797,7 @@ EXPORT_SYMBOL_GPL(of_phy_simple_xlate);
  * @string: the phy name as given in the dt data or the name of the controller
  * port for non-dt case
  *
- * Returns the phy driver, after getting a refcount to it; or
+ * Returns: the phy driver, after getting a refcount to it; or
  * -ENODEV if there is no such phy.  The caller is responsible for
  * calling phy_put() to release that count.
  */

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
