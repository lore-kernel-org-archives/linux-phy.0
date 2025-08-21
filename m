Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73F4FCA0EFA
	for <linux-phy@archiver.kernel.org>; Thu, 21 Aug 2025 19:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yhUGuU1br75BTyS7wISPlf+/rh9/w5hRK/3oEEQBlwc=; b=zZG06TrBaLmVkP
	Y6vZhOluB5nKtZR0+glM36m1J0PbZ5cyQIZ7LPpH5huDig6yPcJwxQzVaYFlSzGU+Fdrx1Sa2cFvB
	7cN8SqFSyjfJ1VHnAH3tGXqFONPlrcZ0aPDoVUbq4/lBepWJ49FPtYmbF5TkgzNyZy7cutKyDXqzP
	CrvMPMs3mSdOWBqrlSAZPw73F9qy54JJP9v4cnvYC/4ZRjVpRw7Qj6scLc7beb4gYP06gqmMfgyXl
	HB89TisfFZngQZBfT6gkMkOMNsQ2z+p4GPcyl4LUSiXCV6g6+9/PmeHdJHnC0qGM2HWZ6oK1wXuJY
	lO7POHbicpSnUDMN/LCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upAi0-00000000EnA-3Q6D;
	Thu, 21 Aug 2025 19:12:24 +0000
Received: from mail-wm1-f42.google.com ([209.85.128.42])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5jQ-0000000H7yQ-2gRr
	for linux-phy@lists.infradead.org;
	Thu, 21 Aug 2025 13:53:33 +0000
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45a1b0c52f3so6255125e9.3
        for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 06:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755784411; x=1756389211; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e1ILbTWVVpwSmSFNMNdMYlh6Zb0YmwB9OaOmacH3ozk=;
        b=NVYnYHiTGFebdEfy23Wo8vbJctX2RzbrurENdGeVHAbhNXWRLeKYGaX+ElTYRCtZHQ
         YvpoCCMq3CzCnTTyfgHyiSDtHtJN8JudCO1hx7NlYgzzVlv333vWlYP6UVwb7EFCTbH7
         Fm1mBOjeJom5zIfR5ecNN+jrIKOBUKaz571GvPl/Zo9Zp6iSHnvwanouaxZ5xwWve4ha
         FFr/0x1P6iA5rX33TxJ2ogkrjTzfL5bokiGI9OO7vHUPCpUS3hdv3Ce/jih9g1JhS/mH
         DAs4VHgicXPb5QJ5QIzyyxK6S/OaFaMXrWkjClX/OrqTWw+wUfGE1agKiuFiX5A89rS7
         dWxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755784411; x=1756389211;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e1ILbTWVVpwSmSFNMNdMYlh6Zb0YmwB9OaOmacH3ozk=;
        b=hJcVu0a0+FFsN/P2D239ZEVSGQLJgF4m6t0+zntHHqlJL/ARiysLt/nGCbcF9D5Rkz
         zdKRxh4GTTtdk3GLq7ai0TNJFULtq3mg2z9Ot/Rw6IZlE8Ln9JnaqZ8X4Er/oMBWcikR
         idCoBTxamn92RUhcLc4llO1K5o9oB5XGJgpVK1yxdGMjmwT3RbYkSbHmQau8mkfeUwXi
         Bz9tVIrDVtf1KRsBwbeHbSEKzqO51QgteylwjMP5tmNTi55bxc/zEUXbub67CNauzXGc
         UjqElHNIW6gEt1tjpadc83q63UK0M5fUYSWJCyagtrV6hbG4aUyK/+GQpnEpyXsN04Jr
         FhSw==
X-Forwarded-Encrypted: i=1; AJvYcCVR0tYJB5Q//UZfHj5eEtvCP8u5uHkyhJR3pzbAf/LTPoRvHU+UEQPZV+kuqyfe7TxAvmTQWJs981A=@lists.infradead.org
X-Gm-Message-State: AOJu0YxsYdAx8pZp5gbPFSSbMNxa5G0g/sa1GfPtzxztgfpBFvVJ+gdp
	c3qFyfA+uFLt2uFLB6RwVVMuI82ig+HqcY9/ukJXA4VVcktdLAtZDMHRBXvUn9MB4nI=
X-Gm-Gg: ASbGncsHZ2BNvTYM8MoDUe2LBoYq+2WG/Wic3Opp/3jxDOm6AdPnzL/CPdk5yjclu7M
	e1r3QP3RntT2spl1ORcT847Dfs3j19kvHlhWkFI6sxbofxDXCDxkK6n8PWcpxvPO415LXpCCiZi
	JI/XwLXIfj4qBfuzG85G8m1VslZSsgG4yvRcZFqfi8qcJlFTb0DBVTzoyAGKmrfFT9zr5wye2o8
	sbiYIQS7yDGhbXNQuTkxzZfG+AYed3frTpgelruU4W1cLuSvWYZ2llPTWlKpOWUcPcrxdB9XDbb
	CAg9nxM6LZt1qH3EaaW3I0WVhxoshf9ntRJkXoWT+siqy3SMP2iPvLs2IbGh+vx2/my7lCTWH0V
	Ifi2CdNxC5OhaU2s1dXShDJQsnbfPQ0nUDyknhPsUeSg=
X-Google-Smtp-Source: AGHT+IHzxFhZ5bX07Dc56gfIt9C/HteSV73uQJi38+JQ7zvs/0J0ficW3iAyseTimoWe+tg8LI3jWw==
X-Received: by 2002:a05:600c:1f0e:b0:456:19b2:6aa8 with SMTP id 5b1f17b1804b1-45b4d84c455mr22092775e9.19.1755784410744;
        Thu, 21 Aug 2025 06:53:30 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4e269d20sm14825015e9.2.2025.08.21.06.53.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 06:53:30 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 21 Aug 2025 15:53:27 +0200
Subject: [PATCH RFC 2/3] phy: qcom: qmp-combo: get default qmpphy_mode from
 DT
MIME-Version: 1.0
Message-Id: <20250821-topic-x1e80100-hdmi-v1-2-f14ad9430e88@linaro.org>
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
In-Reply-To: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2458;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=pyH/63l8u2jxoznNAi489bH4KgxW+yncyv7Dzzy0ooQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBopyTXxH8cN7bUQsx2ZIWRdTEbt3s4adIu96+85UQQ
 fLvZ5muJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKck1wAKCRB33NvayMhJ0TLhD/
 93xZ6P1uVT6kCXpqkhY/UQNa/NPxUJX9u7kDYnffn2/GBILFXp+woumwdl+2flJztSwB0+KfdQzyKu
 KJPGQaruufOfFYr05BehiOOe2kbjgvNnmn9yyWw4zTo5VrXkFOoHQ4iuTzKHYk32F8uMqG10/RO5qQ
 /nNbVvOKEvs8amuanTT0MbET2lkXyydwwLgXB3gti3aB7c9QmyEBOtwetV0NOdJimpZdnmO2mWtWTe
 I9TX6bZo9RAvOLyE6oB/hn7EXwdrFDuNuoidurmQABLnYeRJOdNZshmKuyFBBxDGz+d7MP2TACSBbs
 UyH1NEHvvHpI3CgO/vr7toDmSb/eJYK+B0M9b+UIBcPo1cKaUPWLXmRMC6arMI4HaznMZIPo3sAt3t
 wUTLPwaJVTff7rE4/Up2VO2xHUfc3kROJUG5hTA8+4Uz8VgDYCl1TwWOWhRS2yqYz+EW7KpqSXboiZ
 R4kC/2X5BpVou+Gq7CiK5JtNLT1LZuQ0v4MNRoE4nFRGwre+lRi1ItlCjx1gv6fPWYHmdrnMhHYyel
 woXs3YXppSdI5a/ui3pEv2bPe6ccbqZOOOlTqKizqJV1fOGBymr1drs04raN77W2x3RD7PSvjy9uSO
 wiJtNpDh1FpTLwa6id8vxMoB0E/UHnyxqUbaDJvw4tnxLs9s9yRxu82YpRXg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_065332_687236_97C3F666 
X-CRM114-Status: GOOD (  15.80  )
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

The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
of a combo glue to route either lanes to the 4 shared physical lanes.

The routing of the lanes can be:
- 2 DP + 2 USB3
- 4 DP
- 2 USB3

And the layout of the lanes can be swpped depending of an
eventual USB-C connector orientation.

Nevertheless those QMP Comby PHY can be statically used to
drive a DisplayPort connector, DP->HDMI bridge, USB3 A Connector...

But if a 4lanes DP->HDMI bridge is directly connected to the
QMP Comby PHY lanes, in the default routing 2 or the 4 lanes would
probbaly be USB3, making the DP->HDMI bridge non functional.

Support the property to set in which layout mode the QMP Comby PHY
should be as startup.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 7b5af30f1d028c592500e723ecd27b54ed554709..622db8a204d3c7c95f110e59cab96b07eadabade 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -4117,13 +4117,19 @@ static struct phy *qmp_combo_phy_xlate(struct device *dev, const struct of_phand
 	return ERR_PTR(-EINVAL);
 }
 
+static const char * const qmpphy_mode_str[] = {
+	[QMPPHY_MODE_USB3DP] = "usb3+dp",
+	[QMPPHY_MODE_DP_ONLY] = "dp",
+	[QMPPHY_MODE_USB3_ONLY] = "usb3",
+};
+
 static int qmp_combo_probe(struct platform_device *pdev)
 {
 	struct qmp_combo *qmp;
 	struct device *dev = &pdev->dev;
 	struct device_node *dp_np, *usb_np;
 	struct phy_provider *phy_provider;
-	int ret;
+	int ret, i;
 
 	qmp = devm_kzalloc(dev, sizeof(*qmp), GFP_KERNEL);
 	if (!qmp)
@@ -4195,6 +4201,18 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	 */
 	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
 
+	/* Replace with DT provided mode */
+	if (of_find_property(dev->of_node, "qcom,combo-initial-mode", NULL)) {
+		for (i = 0; i < ARRAY_SIZE(qmpphy_mode_str); ++i) {
+			ret = of_property_match_string(dev->of_node, "qcom,combo-initial-mode",
+						       qmpphy_mode_str[i]);
+			if (!ret) {
+				qmp->qmpphy_mode = i;
+				break;
+			}
+		}
+	}
+
 	qmp->usb_phy = devm_phy_create(dev, usb_np, &qmp_combo_usb_phy_ops);
 	if (IS_ERR(qmp->usb_phy)) {
 		ret = PTR_ERR(qmp->usb_phy);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
