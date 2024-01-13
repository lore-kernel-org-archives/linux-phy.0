Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD764C47DA2
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 20:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwCNdSWs9KgHI3UOQ5JzsS6Upb4ghU8Bd08e3AqGSr8=; b=f5jiyjtlW+C2E+
	yY7ay7cMtGj2omub653vfL65oqr3U7/Iicjuk9oTVA+P3v8q5H4WDBEQIJzRFeTkZZLt62dK5A3F+
	RtWs6XCf6dRE64yc+fU9g9WX8bCI1YHOP4EFVQkF9/PUQt2/29fa7bf2I0li+Yq/PwHNTHlvLQ1f7
	dDzgcTEC09Xvcvi2QqehL2p/NJDhq03r6tRd9hEMkl1WOgxdGdnHTGsCyfKc4zH/O4JjiPi5qO2JO
	Aa5UBYRZn2MggsLkly2Qby61YoEQttIu6XCjYVnDn3gfIzpdEVKtQ0jyG8RgyogH8XamkovC10XGy
	4Xi7T+n2VAtX4U0M3uqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOl2z-005gkJ-16;
	Sat, 13 Jan 2024 20:56:05 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOl2u-005gg0-0u
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 20:56:01 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-50e835800adso8131332e87.0
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 12:55:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705179358; x=1705784158; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DrYO45if9MkhdPnM9emuw8D1/bu4r/uB+Rm9iLY1LZw=;
        b=RK5TYsox6FPo+sVRQ2VV+Zy107OcXh1cnFWFLhvnmbFnHfE4oNDTd357lmkVI+EUCH
         qnS9+mJ8aIETt8BYcwEJSlFxA5ItieCGhn7VgG3pk+KNVmvLUebJbn7KoEg8z3GPsY+t
         H2O/qs/OsaCN0nS9kZsG63yhOMVeeMTwauC71Vx3r0y8K/bP+iWDG3drKNfDzVzwrcAs
         rr9XIAiQx/6M4Qg8Ewqe2DioJF5J649VheaU3j5AK4H29zEGnK3LBNh39elYm98MxtSX
         HCGkzXKzBx3qfu1Y42dyGnYyFzRuZ6fBtIKQESvxk1McTOgc5/0kkqBwU846LlwLHQcu
         9g3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705179358; x=1705784158;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DrYO45if9MkhdPnM9emuw8D1/bu4r/uB+Rm9iLY1LZw=;
        b=T42aK4SoFkBrh3bElgdvZbUZiA/L2hRCJVN15SkeMlufkppTCleJQZsnh8fhtDXUqm
         uNb7ABaDyraGl+Fr/sz0zlMIBzfg6c+Pb1mcFTklNVPjE0TsG9nSaKX1dptYrmzSrvqx
         v2qQ6lYGewjuSBmRanh6u/m+52EWuyPjz/NYwiD7q7tKUSwH+KMCnClXQIAH2N4ntgXv
         LxTRK1p/zXPBQ+5tMki83lq1BSpC5ccZvvrzogZQ9L5VZEnqFV++vR0apwwzFBlZjmJG
         Eb9Si7WvSych3RPxIaUhL2Aj28gOrtOIxrRDt7rxxLiDX4rt+Sf8XDI96TXwHfWeYK1E
         Zg5Q==
X-Gm-Message-State: AOJu0YxFoH+XXgMN/o4S+7gavNM5D91YBSoNA07Ha6c1muC64lJv+FMZ
	pxWoMh0Q4O66HL3zeM2ZKVpGyVbQIz7+Eg==
X-Google-Smtp-Source: AGHT+IHtkXOrSL9TAfk6/XUXQqm6LNGb8oabYf+fv5lMnRIIjxU+y2JF/ccNyKHDysvmhF7AF7ykdA==
X-Received: by 2002:a05:6512:3e16:b0:50e:7be3:b410 with SMTP id i22-20020a0565123e1600b0050e7be3b410mr1080009lfv.105.1705179358402;
        Sat, 13 Jan 2024 12:55:58 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p14-20020a056512328e00b0050e9355d7eesm919802lfe.103.2024.01.13.12.55.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jan 2024 12:55:58 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 22:55:49 +0200
Subject: [PATCH v2 06/15] usb: typec: qcom-pmic-typec: fix arguments of
 qcom_pmic_typec_pdphy_set_roles
MIME-Version: 1.0
Message-Id: <20240113-pmi632-typec-v2-6-182d9aa0a5b3@linaro.org>
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3329;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=z5+t2zMtCUTK2jAH3Na6Dy0WZ3qbhWesIMT9Xe4mLP0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlovjWutHD8dgmfbirhS+ilRzPSltZh4mmoLSRw
 7qlo8M1gr+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaL41gAKCRCLPIo+Aiko
 1Ul2CACZOa4wBBNnNriCeL6gs9SGIyTin6NraWodtejNTjEut+tW+Kyau1DYOqb3qSDeSrtEIuv
 gzWQygA23AfEa/91MziX9+4/F4MPiIrHvrXefEgMJmE47SfDP+wvtde2SdpEJupQ0KoJuc99WY1
 EHHPHvR/R+8SGhz2yQvD/XI6ExtpqKOH1PSq5JNLWZ04/3rdytEqVIXijszSTeJTmH7PDlNCe7N
 braqXqgTx8MK9iMCBlN4scbuQr9Zf1maCVRw5H6j7af4livmCeSeYyOPw+69GFXKnur6zO7PSdU
 iqcZi+H9BhfTL8n3umcXHL/kDZRu4wcx/jTpXYgULmFcrt4Z
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_125600_317353_D24D18B7 
X-CRM114-Status: GOOD (  11.10  )
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

The function qcom_pmic_typec_set_roles() passes enum values as boolean
values to qcom_pmic_typec_pdphy_set_roles(), which then interprets them
as bit values. Be more explicit about it, pass enum values directly and
compute corresponding bit masks in qcom_pmic_typec_pdphy_set_roles().

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c       | 2 +-
 drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c | 8 +++++---
 drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h | 3 ++-
 3 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
index 1a2b4bddaa97..a243648abb4a 100644
--- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
+++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
@@ -123,7 +123,7 @@ static int qcom_pmic_typec_set_roles(struct tcpc_dev *tcpc, bool attached,
 	struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
 
 	return qcom_pmic_typec_pdphy_set_roles(tcpm->pmic_typec_pdphy,
-					       data_role, power_role);
+					       power_role, data_role);
 }
 
 static int qcom_pmic_typec_set_pd_rx(struct tcpc_dev *tcpc, bool on)
diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c
index 52c81378e36e..44d8342ed0ad 100644
--- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c
+++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c
@@ -354,7 +354,8 @@ int qcom_pmic_typec_pdphy_set_pd_rx(struct pmic_typec_pdphy *pmic_typec_pdphy, b
 }
 
 int qcom_pmic_typec_pdphy_set_roles(struct pmic_typec_pdphy *pmic_typec_pdphy,
-				    bool data_role_host, bool power_role_src)
+				    enum typec_role power_role,
+				    enum typec_data_role data_role)
 {
 	struct device *dev = pmic_typec_pdphy->dev;
 	unsigned long flags;
@@ -366,12 +367,13 @@ int qcom_pmic_typec_pdphy_set_roles(struct pmic_typec_pdphy *pmic_typec_pdphy,
 				 pmic_typec_pdphy->base + USB_PDPHY_MSG_CONFIG_REG,
 				 MSG_CONFIG_PORT_DATA_ROLE |
 				 MSG_CONFIG_PORT_POWER_ROLE,
-				 data_role_host << 3 | power_role_src << 2);
+				 (data_role == TYPEC_HOST ? MSG_CONFIG_PORT_DATA_ROLE : 0) |
+				 (power_role == TYPEC_SOURCE ? MSG_CONFIG_PORT_POWER_ROLE : 0));
 
 	spin_unlock_irqrestore(&pmic_typec_pdphy->lock, flags);
 
 	dev_dbg(dev, "pdphy_set_roles: data_role_host=%d power_role_src=%d\n",
-		data_role_host, power_role_src);
+		data_role, power_role);
 
 	return ret;
 }
diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h
index e67954e31b14..070822dc6f17 100644
--- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h
+++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h
@@ -107,7 +107,8 @@ int qcom_pmic_typec_pdphy_start(struct pmic_typec_pdphy *pmic_typec_pdphy,
 void qcom_pmic_typec_pdphy_stop(struct pmic_typec_pdphy *pmic_typec_pdphy);
 
 int qcom_pmic_typec_pdphy_set_roles(struct pmic_typec_pdphy *pmic_typec_pdphy,
-				    bool power_role_src, bool data_role_host);
+				    enum typec_role power_role,
+				    enum typec_data_role data_role);
 
 int qcom_pmic_typec_pdphy_set_pd_rx(struct pmic_typec_pdphy *pmic_typec_pdphy, bool on);
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
