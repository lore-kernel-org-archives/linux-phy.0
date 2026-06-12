Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E9BACD98D6
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 14:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4XjnOKf6Ll7LAMAvX2PlxulZHKazIbwVHPPfFouxfzk=; b=WGv8v+hM+APr5/
	c5WGRyaPZeRtHlibibo6JFU5zkANvgFgHXI2xowgd+B4WixOhunx2Qa3yhxCks8ICIj4LKvAVkuWq
	JEJ0KuWMiOYvY/6nEjErq7xtFttn7YxT8Dtb6LUix+lp6ywEp1ZBMgsz8wh67t79aLGBlzGJX6jsT
	embUpa1K9yDXGkKLBW73Mk90DZR7mmsyJ0tKH290fhy+Cec46O9JqFI7xY4ej+VgHi8RiiAz8kgQV
	WH7SOTm2udHgzxmWxYdFxwvfwJAnAsDY/4GISfQj9ilzl8GL7SZDQbFCz0pW8Rj4UWa8V0PDqBqeu
	xSpszoiWuNwlZdIpnIFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY2uR-0000000B4gk-0278;
	Fri, 12 Jun 2026 14:30:59 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY2uN-0000000B4ek-3eWU
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 14:30:57 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-490b1bbcf3aso8590455e9.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 07:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781274654; x=1781879454; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cZzbdchxZEz6YjPim6DoD1zHzuSoHlBEf2xfHYElE2U=;
        b=HWud6b2xK0rhLKqopCwDGfk65XnNe2doI5qE5weHj/S7jiBxsRmuu2+Qfs6w7N94Ih
         t+gjIBBGkZk5nTp3v7VkZkz3XHXZllcX0YM2P5FIwp12BO7GoK/o1lzlaqFLQou869sk
         672DygR+JN687kjphdVEn2YqgKXE9Qp1A32ihu3yPhmdrWNrn44xm7mETV8veJhWeq+3
         qZ9prIi8cZiPVY2dSqrYkVl2xZz/9U9yGtZm7V/A1xHYslck2M8v0tLO8fmyj9h3Kivc
         hp/f5yvkPWfqb3dTG9+wKfNyTTpNquAu4Nmo2XwXBZwklA9Qx9b6DSyERcZbvfbvKNU1
         1ndQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781274654; x=1781879454;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cZzbdchxZEz6YjPim6DoD1zHzuSoHlBEf2xfHYElE2U=;
        b=i96+sNhfOCjgpWaKFtCL70aGy4GenG7so9ZWVfTD527nWKqYGyOm/WIXb394jjz1Ab
         14Zvr41BKFYny8aUDE7jAs58WmO+Fy6IJ8FhhdKB1yGfAPc+cdJ5F37NL32tsxZbs1gr
         zJgIzUHc1d+ZvuhCeak91uhQlaFODyhdOIX6ztuBiKtFhUzdRGpSI/NbcXaloC8vxK1b
         5eFCAUn+2Unc7PtpsHEqu193oWMqPTBx0E3DT4B0NgDTe/8NBrpS/Wf+jnZCS0lmeE+Y
         xcfATsYNrJKxysMWakCwW/zg4V31T0N+4pKonF9EGRi6ugIp8G2w/6+bk30KOPF52Gv8
         +i6w==
X-Forwarded-Encrypted: i=1; AFNElJ8cwLZcwYasXBrAjtC1aWIzuFR291WWHg367Ugis2oQLxxJTlpiyjPz3ZQHQ1mi1tqjepIp/Ej6Zvg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzCGXsUAGuJWrvxfM1qZArTSOpdXUCUIMOdO4+pxe1DBznWv+fH
	NomGEJCjIUsIyRpBlwS8d0SLdP26TYR/X+6Hz24NOWroo7EZXAqMCcUA
X-Gm-Gg: Acq92OFJ1nfHvW1FzSd4vXanbzeHmd8ysNDLoIBdPvm3/Xr6iUM89Dw83sGjDNlzYlS
	ypAKXTshBarucUTVi3radJvpY2+7UpciT6LDWjdtwQmOY+k4bNJegGo5IyOqZU6tEoy3yybqM5h
	SfhfMEOVI1xHPeLhX6FwYj0xZFgI3T6xsLtcCoeGVqFOoQBuVRtvP7LCp2cO8O+1sDoLvI9MdyS
	1x55dxkzn3yyxrbfwBhCykF2Ez+Jp0Gxg8w3k4Wj3i0qVuvKQyUfpiXNFQXGiidWJNIk+fTLJOZ
	3BdmKWeIBY3EwSX7V8zSxHdmeXapbeWHVGyD1isL93AfjmLhURVL2KRA1qUktAdujCrN34qVTKk
	owvaeS/iOtaR0/Kke772Jd5bTMO32nWiiSha7VzsUliW+3BxZz5C6eArVczjAucF6o9uJpUYX0e
	0UuP11n7cIXJOqVhUOmGD8oBvKWIPbe/qBhp2WTu2TehbkNDVw
X-Received: by 2002:a05:600c:5942:b0:490:47e3:929a with SMTP id 5b1f17b1804b1-490ec4cd289mr30178815e9.6.1781274653838;
        Fri, 12 Jun 2026 07:30:53 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a700:7301:c72c:50c4:8b28:9a3a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f2c3782sm5850016f8f.25.2026.06.12.07.30.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 07:30:53 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 02/11] dt-bindings: phy: renesas,usb2-phy: Document RZ/G3L PHY bindings
Date: Fri, 12 Jun 2026 15:30:30 +0100
Message-ID: <20260612143048.317907-3-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260612143048.317907-1-biju.das.jz@bp.renesas.com>
References: <20260612143048.317907-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_073055_934134_AE0ADFA5 
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

From: Biju Das <biju.das.jz@bp.renesas.com>

Add device tree binding support for the RZ/G3L (r9a08g046) USB2 PHY.
The RZ/G3L USB PHY is almost identical to the RZ/G3S USB PHY, the
difference being 2 OTG blocks on RZ/G3L compared to 1 on RZ/G3S.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index 9740e5b335f9..d6b9d08ceec6 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -16,6 +16,7 @@ properties:
           - enum:
               - renesas,usb2-phy-r8a77470  # RZ/G1C
               - renesas,usb2-phy-r9a08g045 # RZ/G3S
+              - renesas,usb2-phy-r9a08g046 # RZ/G3L
               - renesas,usb2-phy-r9a09g057 # RZ/V2H(P)
 
       - items:
@@ -132,6 +133,7 @@ allOf:
             enum:
               - renesas,usb2-phy-r9a09g057
               - renesas,usb2-phy-r9a08g045
+              - renesas,usb2-phy-r9a08g046
               - renesas,rzg2l-usb2-phy
     then:
       properties:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
