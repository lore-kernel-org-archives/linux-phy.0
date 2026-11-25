Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD69D606A323
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 04:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VS9Pcu23;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=casper.20170209 header.b=HKHDKG8t;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ozNUaYeL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=K5ATusutSPo23cHA+xcwkNplgpH0/osXk/6P8VyzviQ=; b=VS9Pcu23VS9EE/NV8HNMKDFtwk
	4uyT7+I6qq9k3KMq6+tb5paFQ1o9jIKaphKvjabEEVb608OrWpxgDI8Oi+CrKOjVpx/sx+IBwQAN0
	lhZhJACP85fprbJ7A9/pwPfLIR2TIs8O3aguGzXlFUz+Kdia4KmvCIOlO0m/iVokTAi1sknRLEa9e
	7E4yjYNWBPI+k3bytvvl8MMlVVigom9I1SRNg/WRrRUMQS+FJRSHsHM37tK2JU9WesQKu7m5agS7c
	haF8sYHNVvl5XI8W4lzhWQ4rQyEx0KjVSHgaW5XYWLUn2HnvV+1hvpbCfJa+yOOGjSA3eMoKHAfpZ
	CobmSgGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW4lX-00000008P2j-0scI;
	Wed, 25 Nov 2026 04:37:55 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW4lM-00000008Otl-31Hg
	for linux-phy@bombadil.infradead.org;
	Wed, 25 Nov 2026 04:37:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=p0LC0sUIzj6iLFfqcqtwKGB2+VgW9jHKFGlHAfP+Aeo=; b=HKHDKG8tBwy8hPW/zrCkRYZaoo
	Pkw9syESg8D09D0M/G1FyV4iwOUua18V4EZvTxGqyuSUpQeIwwd+8RkxMaCt+T+6rFQitKaGAtz6q
	d/fr4qBljj9B7j+OWvXlIs3JjJzOw5isXFqKS/ZDi6RbrchJQfiVrpw7yd4A17woDQOsAE1kEK9dx
	Iq/7cl7kPnPo60N7NGJW97HVoFmEhUum18W7m5qtcdBKlBC1p3b+zToDe9WKbxS9YPoJ4IQOCcD29
	fOxJgOOFHw6et3SYF+D88EeQ6qJM3QN2lPCXcKJJLCaDiSV8+LTBlrSz0WOcdBEEqwW6Y14wZIlNW
	lq38csmQ==;
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by casper.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW4lJ-00000003hC6-0muI
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 04:37:43 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-8a05b210703so2490683b3a.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:37:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795581459; x=1796186259; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=p0LC0sUIzj6iLFfqcqtwKGB2+VgW9jHKFGlHAfP+Aeo=;
        b=ozNUaYeLMQlrr8jy++A62lK+d4Vocugn7/ogYrbTFbWFB8+PvOeq9VFWUiFUPHnvpO
         w0QMYr7oWT1g7O8YBwNXFaGrkL8M19kLnYZ6aknOeJ72AwwHFsfVNZGOC3s35rhkP93M
         YDlniNwLPCS2kU+Il4CNRF/BXjwgAAerHtkjzhBBmFGSjQuTOnRRChPKyDZWuX7ITuRZ
         ZxceVpdJuj9UB8Lf49yqj3PRDENYF+5F3yuLA6Ro41bW6A0An2cxl0RXey7okDGdwiwY
         +p347FHd9R2xRieJlmCaSplrpAfPW+0yzS0o2/7DhEKJYHZJiLGiJonBWBhQ4l4fwAY3
         L9uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795581459; x=1796186259;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=p0LC0sUIzj6iLFfqcqtwKGB2+VgW9jHKFGlHAfP+Aeo=;
        b=wXb2YrZ3hxnNmwDdJKPqoOemaZvO0yH4k7xX83KeJf09U2vbPPC/8RqfZch6IxrlfW
         E8VxpgmDjD5hZDZ55bVQONQysb5fiTgcDdytc6i8XpUyrAOI4bTTcGWFnUTcJJqtCyKy
         1ERHKvt0UgaLUBvER6xnxrFwyi0KnnpcTm7RRS3f1ik5HF+HtBbG+DMvfMfV/pVqGWKo
         jkSO01lJ0W55bUzR4KhsoB1y+TWPLsoYsAln2aGkmvc+btqRf493qI9AqvefxvNQluVM
         R5HcZR/FM1naHW2j5ecFNf4OX/xG2ZwU0qHZ1CasirF3jovBOEo0+m3/y787mWvG/rPL
         W0mQ==
X-Forwarded-Encrypted: i=1; AL+hErEVLnKYys+I9N5QCGgNpAOnCIJpUlim8KqiO9D4NUayqm+Hnbhx1JZ5LRNgqbP6A0WIxHlH94su+Jg=@lists.infradead.org
X-Gm-Message-State: APuU4Z+0zacL911Qe81o0ts8Hq/4e/AvrwrTfTM0ZaHD1MUyk0vVmBDz
	BZ1iAPMfjySm2M/dnAP1imYk+dPdHIQCdYRXsJ1wQkhssBqEjG7wQv63
X-Gm-Gg: AZFdTZfHjSl8emt9qN8UfhmhK6erLhpVEw6S5qphQA9ljx6Bl8hddQdn4CuACvCv3EV
	cXHwEYs0ati9pQvMIQ+NIHA/8H5kd4UIKcffRaxFqjbkgdXHqI0o8uOA77A8AtrLKmf8Dya4NlD
	yIIhaa9Rw7I3N5Q3DqaOsYHqoRlfRNPvk9JdakQNRXop6zmTlW1JaRBW6QumrzpRKyQQEjyS4rx
	dHgw2rIfT7sSL00yn39UMzvWMhnhdxsOJRQQmUpyixVKq91xTXvQm+dDe2QgXQbu+g2Tc7B9STY
	NbcXI5gOn2m7NII2Wo5XFbtFLpRboZ7ms3ewdBvz9qvRxepKWrrvqM3WeMvYAErwIoHqM4RkL+S
	G0dKps7yJcUiWI2GTcdWgW8FMTdTvmojlN2f4NhOwaLtUxbaO/aTWVg6HMIWv4t8d3CgAG88du/
	7Y96AaEyNquNSjvgaFxsWohSbt9L9B7926C/+6alqf3UFo6BevTqb6qf4mR6r4STQUj5jXB6v5c
	z6p2GmZZPemecdzrH/1BezP0YHUjlcwOSa773ZGFLCYMG0/DGu6E9S6TDrdG5Qv4RPGR2QyAFkJ
	vk744iPttMW7p19rK1svW9e//iE=
X-Received: by 2002:a05:6a00:c311:20b0:8c8:e7ae:5ab2 with SMTP id d2e1a72fcca58-8c8e7ae5b89mr11374449b3a.53.1795581458605;
        Tue, 24 Nov 2026 20:37:38 -0800 (PST)
Received: from localhost ([2001:19f0:8000:4ce8:5400:7ff:fe0e:e6b2])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c86d821637sm8324761b3a.0.2026.11.24.20.37.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 20:37:38 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Aksh Garg <a-garg7@ti.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Inochi Amaoto <inochiama@gmail.com>,
	Rhys Tumelty <rhys@tumelty.co.uk>,
	Manikandan K Pillai <mpillai@cadence.com>,
	"vladimir.oltean@nxp.com" <vladimir.oltean@nxp.com>,
	Qiang Yu <qiang.yu@oss.qualcomm.com>,
	Hans Zhang <18255117159@163.com>,
	Yao Zi <me@ziyao.cc>
Cc: linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-ide@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH v5 7/8] PCI: cadence: Use phy bulk data api to simplifiy the logic
Date: Wed, 25 Nov 2026 12:36:38 +0800
Message-ID: <20261125043639.249525-8-inochiama@gmail.com>
X-Mailer: git-send-email 2.56.1
In-Reply-To: <20261125043639.249525-1-inochiama@gmail.com>
References: <20261125043639.249525-1-inochiama@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_043741_324794_AB3B1FA1 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

According the document of cadence PCI controller, it use multiple
phys for multi-lane setup, so replace the loop of phy operation
with phy bulk apis.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 drivers/pci/controller/cadence/pcie-cadence.c | 62 +++++--------------
 drivers/pci/controller/cadence/pcie-cadence.h |  2 +-
 2 files changed, 16 insertions(+), 48 deletions(-)

diff --git a/drivers/pci/controller/cadence/pcie-cadence.c b/drivers/pci/controller/cadence/pcie-cadence.c
index 0ac980249941..8ed2a679625d 100644
--- a/drivers/pci/controller/cadence/pcie-cadence.c
+++ b/drivers/pci/controller/cadence/pcie-cadence.c
@@ -179,39 +179,22 @@ EXPORT_SYMBOL_GPL(cdns_pcie_reset_outbound_region);
 
 void cdns_pcie_disable_phy(struct cdns_pcie *pcie)
 {
-	int i = pcie->phy_count;
-
-	while (i--) {
-		phy_power_off(pcie->phy[i]);
-		phy_exit(pcie->phy[i]);
-	}
+	phy_bulk_power_off(pcie->phy_count, pcie->phy);
+	phy_bulk_exit(pcie->phy_count, pcie->phy);
 }
 EXPORT_SYMBOL_GPL(cdns_pcie_disable_phy);
 
 int cdns_pcie_enable_phy(struct cdns_pcie *pcie)
 {
 	int ret;
-	int i;
 
-	for (i = 0; i < pcie->phy_count; i++) {
-		ret = phy_init(pcie->phy[i]);
-		if (ret < 0)
-			goto err_phy;
+	ret = phy_bulk_init(pcie->phy_count, pcie->phy);
+	if (ret)
+		return ret;
 
-		ret = phy_power_on(pcie->phy[i]);
-		if (ret < 0) {
-			phy_exit(pcie->phy[i]);
-			goto err_phy;
-		}
-	}
-
-	return 0;
-
-err_phy:
-	while (--i >= 0) {
-		phy_power_off(pcie->phy[i]);
-		phy_exit(pcie->phy[i]);
-	}
+	ret = phy_bulk_power_on(pcie->phy_count, pcie->phy);
+	if (ret)
+		phy_bulk_exit(pcie->phy_count, pcie->phy);
 
 	return ret;
 }
@@ -221,10 +204,8 @@ int cdns_pcie_init_phy(struct device *dev, struct cdns_pcie *pcie)
 {
 	struct device_node *np = dev->of_node;
 	int phy_count;
-	struct phy **phy;
-	int i;
+	struct phy_bulk_data *phy;
 	int ret;
-	const char *name;
 
 	phy_count = of_property_count_strings(np, "phy-names");
 	if (phy_count < 1) {
@@ -233,31 +214,18 @@ int cdns_pcie_init_phy(struct device *dev, struct cdns_pcie *pcie)
 		return 0;
 	}
 
-	phy = devm_kcalloc(dev, phy_count, sizeof(*phy), GFP_KERNEL);
-	if (!phy)
-		return -ENOMEM;
-
-	for (i = 0; i < phy_count; i++) {
-		of_property_read_string_index(np, "phy-names", i, &name);
-		phy[i] = devm_phy_get(dev, name);
-		if (IS_ERR(phy[i])) {
-			ret = PTR_ERR(phy[i]);
-			goto err_phy;
-		}
-	}
+	phy_count = devm_phy_bulk_get_all(dev, &phy);
+	if (phy_count < 0)
+		return phy_count;
+	else if (phy_count == 0)
+		return -ENODEV;
 
 	pcie->phy_count = phy_count;
 	pcie->phy = phy;
 
 	ret =  cdns_pcie_enable_phy(pcie);
 	if (ret)
-		goto err_phy;
-
-	return 0;
-
-err_phy:
-	while (--i >= 0)
-		devm_phy_put(dev, phy[i]);
+		devm_phy_bulk_put_all(dev, phy);
 
 	return ret;
 }
diff --git a/drivers/pci/controller/cadence/pcie-cadence.h b/drivers/pci/controller/cadence/pcie-cadence.h
index 4a96e1869e53..3cde29592331 100644
--- a/drivers/pci/controller/cadence/pcie-cadence.h
+++ b/drivers/pci/controller/cadence/pcie-cadence.h
@@ -274,7 +274,7 @@ struct cdns_pcie {
 	bool			             is_rc;
 	bool				     is_hpa;
 	int			             phy_count;
-	struct phy		             **phy;
+	struct phy_bulk_data		     *phy;
 	const  struct cdns_pcie_ops          *ops;
 	const  struct cdns_plat_pcie_of_data *cdns_pcie_reg_offsets;
 	int				     max_link_speed;
-- 
2.56.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
