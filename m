Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA1DBCFD65B
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jan 2026 16:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BuAPAqBYPSgKlX4iQSVJwLBFjajDp/VUww2VBpxSAaU=; b=4px1/HVkQMUn7N
	wfDM/u14ZMJ9u3jUso74MfsDpqU2CixuzR9N4WgsFm0OVXUSrTHB1aZLI7FGSDrwTwiq/3BHzzdL/
	a+hTcTzwpenVWFoIUj/bPgXRQ8PyzZwEf8JNLB+C/UHgx6G9y9N2NGiElkh9Hqj2bTwX9Dczfksxl
	fJnKP3dLQFqITiDNC47OzFgWFXwKOLMsSupT4dSPfi+CeM/ae0DQ0hKgLO6EMu3VnNbxSKeF8sIM8
	Umg8DkSQskewWL1XMrnsDSkWG+NRklsIjPmyDLBva8ua720ZbkVHxC1kdnCm7uwMCDg2RNb1ULgW8
	M6y5gSMITn3CN+Kf2R+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdW8F-0000000FEl9-1k1e;
	Wed, 07 Jan 2026 16:11:35 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdW8C-0000000FEkG-3yxR
	for linux-phy@lists.infradead.org;
	Wed, 07 Jan 2026 16:11:34 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-7f121c00dedso2132203b3a.0
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 08:11:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767802291; x=1768407091; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WcdUfhv9PmkySnePknemKHn6SsLx3bTbcdvg5pHIo6A=;
        b=db4y+GMXD74Bm08X91g7WSG/Yh7RfiS6dFAX0WFpqrkrZPftR0Wf+zGYc25rdY8RUg
         KKcJAlOVPNztltShp0u0M2QMUw4ShRWOchPrHcmNW9b03u9edU/Z9SsKZiUP4kT/jW4+
         guujGkbyoqhRpjwpJ0KMf4b7VGoXLtDIxVkfufaNo3pFtB+qTICa6hxgrY8V+GOpQHQ2
         jXeQVkKXZsBEA6fBSRPZXNKuu+ys1VQwdHLOHNslzLmN8mQite2h4mjXwEU66s0RlC+m
         TEnguw0rxGIwUqLgiGJTIGyYc/LJ03VU1XfUdfncESillB+oJve3xwhB4tCvEQTJL1gh
         AD/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767802291; x=1768407091;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WcdUfhv9PmkySnePknemKHn6SsLx3bTbcdvg5pHIo6A=;
        b=C6/IGMuOrkSTIvfnS+kdLrbUDOQu1vtCvFskhzc7ZYhVG58uV9gYHoIpmnzAWTDufA
         ODwR0Bdmgww9qUZBQpQs05IhDLGF9550Y4R089rA2hFfuBz0awQnPKV7+MkRxEZFUjw4
         CjyIuGEYQD2QB05F+N3tA07oAxa35bFJbiTc1lW/E0KZZKwGXAJylwUy0l9KjcjrlWan
         9ZOiPgb35zYrSei9QqFroSSyR/5/72zZgKtfQ0oPE455Enin7OkQP4rCPr5H9j+tltFd
         v2Ci5x7szI+LgYgMmC2HgLBu/oIFO5YArg1M5Li0IbOF91f0SGvCXXUeSHzmRskkKiQV
         fl9w==
X-Gm-Message-State: AOJu0Yz1NgMzuxfGlq3L/9tLt3LPmRLpNDp35stb0H6IMLwImu2S/WbF
	eUl8aj+hHERzR9oU+PZHwaF6tkD7L1SQU9/Yb137R7Y9Gby2cWDM5eIy
X-Gm-Gg: AY/fxX7iAm5Ih2dj8PTe6yvMxEAScdxE1cDTHw0Uu/zbXpK0YQ8LFDzjn6POcF4Akq1
	gpE1bjJXlgy3r7tiKpObmb76cHU33Gy2fcKcaVpeST+gokGNIphOF1/G7UUjQNEuvbI4ChQOtsM
	OEnz6nF931Lk1C6kr9m/yuf4Y3hrxUCDFeIz+DeamQOVf2KtdZ9jZ2I0RG60Vb+mqqvBRDwFt+C
	69AXrDNVc82U5Z3P4XIZskR5MyHFLql9pBgvRsCB6XudD8UTZa0n9PHlfUieRRzLUwmxH6afj9Q
	wxFlVsGa3y18kprM4oIE4GxWiZE8sO0/bqCqA5v8x+L3KsSzroKD1V3l93RoAxwFl4CIXnW1YlA
	NfH03qmvRphrs/+MRpeCX4IlYwadj+mNHJ4b3sPzmTyA4DH72+G7Tr8XtUV6wa2nVlnal8nyVBb
	GOk//SA/GewlWF/C1W/Ozo8dLAcBNOurL1Bz4b+g==
X-Google-Smtp-Source: AGHT+IHo4QEFd2Cz2lPkEiku1PqfKCJ172v98MX9v11PuwfeWjgii0vt6ch3UHrFQ4lDPqqQkbvHHg==
X-Received: by 2002:a05:6a00:e15:b0:7f7:5783:fc6d with SMTP id d2e1a72fcca58-81b7f7e1900mr2615654b3a.41.1767802291567;
        Wed, 07 Jan 2026 08:11:31 -0800 (PST)
Received: from Black-Pearl.localdomain ([157.50.178.147])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-819bafe98d5sm5373079b3a.21.2026.01.07.08.11.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 08:11:31 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Subject: [PATCH v2 0/2] dt-bindings: phy: Convert TI OMAP control and PIPE3
 PHY to DT schema
Date: Wed, 07 Jan 2026 16:11:14 +0000
Message-Id: <20260107-ti-phy-v2-0-a1ec27401fff@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKKFXmkC/zXMSwqDMBSF4a3IHTclDyKxo+5DHGi80QvVSCKhI
 tl7o9Dhfzh8J0QMhBFe1QkBE0Xyawn5qMDO/Toho7E0SC61kEqwndg2H0ybYWhQGetsA+W8BXT
 0vaG2Kz1T3H04bjeJa72Imguu/kQSTDBjldMo7TDW6j0tPX2e1i/Q5Zx/A26vZZwAAAA=
X-Change-ID: 20251231-ti-phy-58bb9e38cfc9
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_081132_994594_F8022259 
X-CRM114-Status: UNSURE (   7.37  )
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

This series converts the old text-based DeviceTree bindings for TI OMAP
Control PHY and TI PIPE3 PHY to modern JSON-schema (YAML) format.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
Changes in v2:
- ti,control-phy-otghs: Update commit message to reflect the latest
  binding changes.
- ti,phy-usb3: Drop the obsolete "id" property from the schema.
- Both bindings: Update maintainers list, modify node pattern and improve
  node descriptions for clarity.
- ti,phy-usb3: Introduce new YAML schema with properly defined optional
  properties for the PIPE3 PHY.
- Link to v1: https://lore.kernel.org/r/20260103-ti-phy-v1-1-8c3f5e2cbd63@gmail.com

---
Charan Pedumuru (2):
      dt-bindings: phy: ti,phy-usb3: convert to DT schema
      dt-bindings: phy: ti,control-phy-otghs: convert to DT schema

 .../bindings/phy/ti,control-phy-otghs.yaml         |  94 +++++++++++++++
 .../devicetree/bindings/phy/ti,phy-usb3.yaml       | 127 +++++++++++++++++++++
 Documentation/devicetree/bindings/phy/ti-phy.txt   |  98 ----------------
 3 files changed, 221 insertions(+), 98 deletions(-)
---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251231-ti-phy-58bb9e38cfc9

Best regards,
-- 
Charan Pedumuru <charan.pedumuru@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
