Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F235BC36010
	for <linux-phy@archiver.kernel.org>; Sat,  5 Apr 2025 17:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cVFoVuut0+KlfI2LZDMpy8UjxKqNm7A1JG/nxn/N8FM=; b=sJNHlsp2RY71ig
	n5aFX6Cs047LOiE+dHxMXejBLAm2KzSx4JPj7xtsHP0FnHf6TRAMxI7VsQ2DTYq7qWLGNfjbl+lqI
	UtXXUpL1rvHMGI7sFl56lLrbwEw5BrM+OCXv4yD3w1SN1Rb0yriVM398Hj1llbTTmTQyzt546ZhJH
	ZTiNBH/FLadoQdm8CtXdgQqd4hgEyHKckty2J/Epxq7C2bYNFeA2HBc7dBHlNp7yLSsswfgPkrsFd
	jnNgLGQJAbawfqQM49RdGJTWq7QgqV7LQ0DBXutkE8tUqBT/gcCCGTDV3W15jKo9gQhXuibKjqiOI
	49y39qTky2uGqBiN09lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u17aG-0000000EIkn-1fgV;
	Sat, 05 Apr 2025 17:45:32 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u17aD-0000000EIkB-2bl1
	for linux-phy@lists.infradead.org;
	Sat, 05 Apr 2025 17:45:30 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-7399a2dc13fso4075735b3a.2
        for <linux-phy@lists.infradead.org>; Sat, 05 Apr 2025 10:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743875128; x=1744479928; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k8JylLaT6hrTHNf9AdJnwsccmzcqkaZsXAyvhlHxaK0=;
        b=aL6LMiHFFkvZxMz28qVFqzfwi8PmMYbhgR2Wyar3S/jDMQsxzQPCGMLBp2h76VEUY5
         YkNILocWGRvdeBrv3T82V35Xx5npHA7k8eVqnw3NR8dj5ECRHr7dku1GkGUP13Sw7l2v
         nL/EztEpw9XWNP14uswwFufOj3pZvXsb+qQnpGrE3oWNsxtI17Vp62b/b4tAMG4K/DOl
         bk9FqtniKf2E5n/bqc7hTg6iUHXy3fdznVjOIKs2Ygi6CJqT4tmA50FLvdw0wt4Nqb6j
         awcNulBC3uiE3ccEgYkEBqqr1iXFsj0Zr4OXnZNI3EDOJ1sgy7GZK9Rk6e7ev5wHdnAf
         IokA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743875128; x=1744479928;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k8JylLaT6hrTHNf9AdJnwsccmzcqkaZsXAyvhlHxaK0=;
        b=LgW4UaCNDZfe2rtuYuIszpz7o394ehA98aUbX/VDiy3bPCdFxEucHZRWpMYbjrn2QU
         DmWN5fr5bVoaw4Tfoy23Qn/sev8WkIQsKfjjtakNuUkJje6Q/90xP0iGREevx3D1Zb63
         ggvLRJpCZyJ4vouB+cBdK2pOcxrbIGlmW1Y2MgehZclpOlhV7kloXy0vp3JENoOue0HX
         FRUfXNvkg9LG4+vWJ8uRMbbDbYs0uaUpkb9M29M7NUW+q38gT/oJPIz5LMShYcRvzD5Z
         zWeS97AFy1HKEnKTlE7MugYmuezdDRocieLnuV9tCNw6CRJw/VT/SljnsEp32lGp3gE/
         nnUA==
X-Forwarded-Encrypted: i=1; AJvYcCVPYlFzufw4KE5aPTdUHI27+8cVQs8oPfctpiqV6R72Uue71OVCOMDhxEtGseUl4pz5/CQJOBoZJPg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyY0agFoPKg3TWiegWnV8PEu6iDb+qjrzWfKcLyelkyx9zWn45b
	Iul7bHZ9fiy+KYleKpZQ6/gluYtim0tGOFXoYvHnf5UsmEuEpoN/
X-Gm-Gg: ASbGncvhuCIeV+w2LnS2P4NP0Tv1c9XfPe5ULh7FxMbkYXWgyqJ7I1dWDNST8QlcQga
	oXEqQHrjH4Y3EfXZScAMQdTNUAJ5AxIIRpVNASQXUcLgb88LBlGfFJocsdfIjIu+thpkLzBipH1
	UmRy1uoz+KPWe8hp5loXPROoef+6dzNXWPkUNpJWDwzt+O1DCPq+vYjPhdI0k/ZCxliPFXjiCAr
	pQWWhKocVro7zc+se36fdLKussKTbuZKI0pOg+8J8gnlrL72LF97dZdhnfRxu9mPzFgN+H2poMM
	wLa+5orcgvBLl+mFpVapYJp/4tcKOmhm5Z1+W/sEv2I=
X-Google-Smtp-Source: AGHT+IE8/SKNOkh3OWD691lYQAnb2nSVSyMVuxAUKB46j38xJ+sPYkhr14o+4KJZ0ykyZ+9mo6MOwg==
X-Received: by 2002:a05:6a00:a89:b0:737:e73:f64b with SMTP id d2e1a72fcca58-739e48c6f91mr9436320b3a.1.1743875128199;
        Sat, 05 Apr 2025 10:45:28 -0700 (PDT)
Received: from nuvole.. ([144.202.86.13])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-739d97f2fd3sm5680631b3a.69.2025.04.05.10.45.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Apr 2025 10:45:27 -0700 (PDT)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Pengyu Luo <mitltlatltl@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH] phy: qualcomm: phy-qcom-eusb2-repeater: rework reg override handler
Date: Sun,  6 Apr 2025 01:43:18 +0800
Message-ID: <20250405174319.405975-1-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250405_104529_680508_D73F3C6B 
X-CRM114-Status: GOOD (  19.31  )
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

In downstream tree, many registers need to be overrided, it varies
from devices and platforms, not only HS trasmit amplitude(0x51),
HS disconnect threshold(0x53), Tx pre-emphasis tuning(0x57).

The device I plan to upstream also uses it, so I write the patch for
it (Oneplus Pad Pro / Oneplus Pad 2, sm8650-mtp based).

In upstream, only Sony Xperia 1 V is using this, so fixing it for sony,
in downstream, some crd, mtp, htk devices also use it, I have no
such device, don't set it for them.

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
 .../qcom/sm8550-sony-xperia-yodo-pdx234.dts   |  5 +-
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 86 +++++++++++++++----
 2 files changed, 72 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts b/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
index d90dc7b37..99f5fd32c 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
@@ -673,9 +673,8 @@ cam_pwr_a_cs: cam-pwr-a-cs-state {
 };
 
 &pm8550b_eusb2_repeater {
-	qcom,tune-usb2-disc-thres = /bits/ 8 <0x6>;
-	qcom,tune-usb2-amplitude = /bits/ 8 <0xf>;
-	qcom,tune-usb2-preem = /bits/ 8 <0x7>;
+	qcom,param-override-seq = <0x51 0x08 0x53 0x06 0x57 0x07>;
+	qcom,host-param-override-seq = <0x51 0x08 0x53 0x06 0x57 0x07>;
 	vdd18-supply = <&pm8550_l15>;
 	vdd3-supply = <&pm8550_l5>;
 };
diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 6bd1b3c75..151e93cd0 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -76,6 +76,11 @@ struct eusb2_repeater {
 	const struct eusb2_repeater_cfg *cfg;
 	u32 base;
 	enum phy_mode mode;
+
+	u32 *param_override_seq;
+	u32 *host_param_override_seq;
+	u8 param_override_seq_cnt;
+	u8 host_param_override_seq_cnt;
 };
 
 static const char * const pm8550b_vreg_l[] = {
@@ -108,6 +113,63 @@ static const struct eusb2_repeater_cfg smb2360_eusb2_cfg = {
 	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
 };
 
+static void eusb2_repeater_write_overrides(struct eusb2_repeater *rptr,
+					   u32 *seq, u8 cnt)
+{
+	int i;
+
+	for (i = 0; i < cnt; i += 2)
+		regmap_write(rptr->regmap, rptr->base + seq[i], seq[i + 1]);
+}
+
+static int eusb2_repeater_read_overrides(struct device *dev, const char *prop,
+					 u32 **seq, u8 *seq_cnt)
+{
+	int num_elem, ret;
+
+	num_elem = of_property_count_elems_of_size(dev->of_node, prop, sizeof(**seq));
+	if (num_elem > 0) {
+		if (num_elem % 2) {
+			dev_err(dev, "invalid len for %s\n", prop);
+			return -EINVAL;
+		}
+
+		*seq_cnt = num_elem;
+		*seq = devm_kcalloc(dev, num_elem, sizeof(**seq), GFP_KERNEL);
+		if (!*seq)
+			return -ENOMEM;
+
+		ret = of_property_read_u32_array(dev->of_node, prop, *seq, num_elem);
+		if (ret) {
+			dev_err(dev, "%s read failed %d\n", prop, ret);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+static int eusb2_repeater_parse_dt(struct eusb2_repeater *rptr)
+{
+	int ret;
+
+	ret = of_property_read_u32(rptr->dev->of_node, "reg", &rptr->base);
+	if (ret < 0)
+		return ret;
+
+	ret = eusb2_repeater_read_overrides(rptr->dev, "qcom,param-override-seq",
+					    &rptr->param_override_seq,
+					    &rptr->param_override_seq_cnt);
+	if (ret < 0)
+		return ret;
+
+	ret = eusb2_repeater_read_overrides(rptr->dev, "qcom,host-param-override-seq",
+					    &rptr->host_param_override_seq,
+					    &rptr->host_param_override_seq_cnt);
+
+	return ret;
+}
+
 static int eusb2_repeater_init_vregs(struct eusb2_repeater *rptr)
 {
 	int num = rptr->cfg->num_vregs;
@@ -127,20 +189,12 @@ static int eusb2_repeater_init_vregs(struct eusb2_repeater *rptr)
 static int eusb2_repeater_init(struct phy *phy)
 {
 	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
-	struct device_node *np = rptr->dev->of_node;
 	struct regmap *regmap = rptr->regmap;
 	const u32 *init_tbl = rptr->cfg->init_tbl;
-	u8 tune_usb2_preem = init_tbl[TUNE_USB2_PREEM];
-	u8 tune_hsdisc = init_tbl[TUNE_HSDISC];
-	u8 tune_iusb2 = init_tbl[TUNE_IUSB2];
 	u32 base = rptr->base;
 	u32 val;
 	int ret;
 
-	of_property_read_u8(np, "qcom,tune-usb2-amplitude", &tune_iusb2);
-	of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &tune_hsdisc);
-	of_property_read_u8(np, "qcom,tune-usb2-preem", &tune_usb2_preem);
-
 	ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
 	if (ret)
 		return ret;
@@ -156,10 +210,9 @@ static int eusb2_repeater_init(struct phy *phy)
 	regmap_write(regmap, base + EUSB2_TUNE_SQUELCH_U, init_tbl[TUNE_SQUELCH_U]);
 	regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, init_tbl[TUNE_RES_FSDIF]);
 	regmap_write(regmap, base + EUSB2_TUNE_USB2_CROSSOVER, init_tbl[TUNE_USB2_CROSSOVER]);
-
-	regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, tune_usb2_preem);
-	regmap_write(regmap, base + EUSB2_TUNE_HSDISC, tune_hsdisc);
-	regmap_write(regmap, base + EUSB2_TUNE_IUSB2, tune_iusb2);
+	regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, init_tbl[TUNE_USB2_PREEM]);
+	regmap_write(regmap, base + EUSB2_TUNE_HSDISC, init_tbl[TUNE_HSDISC]);
+	regmap_write(regmap, base + EUSB2_TUNE_IUSB2, init_tbl[TUNE_IUSB2]);
 
 	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, val, val & RPTR_OK, 10, 5);
 	if (ret)
@@ -177,6 +230,8 @@ static int eusb2_repeater_set_mode(struct phy *phy,
 
 	switch (mode) {
 	case PHY_MODE_USB_HOST:
+		eusb2_repeater_write_overrides(rptr, rptr->host_param_override_seq,
+					       rptr->host_param_override_seq_cnt);
 		/*
 		 * CM.Lx is prohibited when repeater is already into Lx state as
 		 * per eUSB 1.2 Spec. Below implement software workaround until
@@ -186,6 +241,8 @@ static int eusb2_repeater_set_mode(struct phy *phy,
 		regmap_write(regmap, base + EUSB2_FORCE_VAL_5, V_CLK_19P2M_EN);
 		break;
 	case PHY_MODE_USB_DEVICE:
+		eusb2_repeater_write_overrides(rptr, rptr->param_override_seq,
+					       rptr->param_override_seq_cnt);
 		/*
 		 * In device mode clear host mode related workaround as there
 		 * is no repeater reset available, and enable/disable of
@@ -222,7 +279,6 @@ static int eusb2_repeater_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct phy_provider *phy_provider;
 	struct device_node *np = dev->of_node;
-	u32 res;
 	int ret;
 
 	rptr = devm_kzalloc(dev, sizeof(*rptr), GFP_KERNEL);
@@ -240,12 +296,10 @@ static int eusb2_repeater_probe(struct platform_device *pdev)
 	if (!rptr->regmap)
 		return -ENODEV;
 
-	ret = of_property_read_u32(np, "reg", &res);
+	ret = eusb2_repeater_parse_dt(rptr);
 	if (ret < 0)
 		return ret;
 
-	rptr->base = res;
-
 	ret = eusb2_repeater_init_vregs(rptr);
 	if (ret < 0) {
 		dev_err(dev, "unable to get supplies\n");
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
