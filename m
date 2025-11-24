Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42D87CFD317
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 10:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UCuLI+lEhFeoI+mNKKwWyheEcWqRK12YnYB9dIQMRFg=; b=qnYhiWbDeZUex+
	OWmwmyaS1FZcYbY+ZPduwzr5zYgMD21GIzCOrjLur1EQHnxfeyfhfyimkkJSE/9UfuaXT1OEHJifv
	j6/hhNDFlAS1hQIWti9nob0CizST2gCYV65IqQI4R8tTTEPK1EoyJx3816l4QX9wb/P7WjMacbiGJ
	qx7KHY0bZaXdfPd5xYaT6Pp0Dzi23Qc00lQggyToQ6ivfYJMV4qmdmHfxKKfVQXnaNkYMFiKALtuy
	A12GybI/TnsCjOW7phAtKE5INeQpeooxYuhR23nAoJj3hoxUszBkX0ObumBVpjjxM2J4Jwpj0jQY8
	modmdLbZ4j738gBgqS9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNUHF-0000000BUBl-06Vq;
	Mon, 24 Nov 2025 10:58:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNUHD-0000000BUBG-3khA
	for linux-phy@bombadil.infradead.org;
	Mon, 24 Nov 2025 10:58:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=+O+0IAXfIQF6lEzzLKPFZRggYonlJPkJxzrMuGBWq7w=; b=aUpA2SUwftjGO8HM8IYCu8roVQ
	wCR94g7gu5/ddQlhNBEM8a8v4cDVhThKyDmtlAi8DjR7+bXPQU1t3lrRZ+0hzbA/gxyHT+2B2pRHa
	CE8OJK0zRk/CSIYUdnjQRHcGEtQPuW/2fRKQG+QbvSNzxnG9CxkGuHWxDUhhPmU0CznYx619l3IlG
	/DECwmZV5Z3+BJZaYByFs40bZN0NEtkva66VnSgnI3mapAek85yHOcSVw5RcHWgPGon+Jox7/3y/w
	C7J6H1VpXkR35sMelT8Yb1rYfB6gQukLXN+srX3ynk1H+Ui7LzoopYtDhIFzVlT3TwWqMn3qZriHc
	nk7O88Aw==;
Received: from smtp21.cstnet.cn ([159.226.251.21] helo=cstnet.cn)
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTPW-00000003Squ-29Vu
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 10:03:11 +0000
Received: from DESKTOP-L0HPE2S (unknown [124.16.141.245])
	by APP-01 (Coremail) with SMTP id qwCowAAXrs1LOiRpFD_cAQ--.612S2;
	Mon, 24 Nov 2025 18:58:19 +0800 (CST)
From: Haotian Zhang <vulab@iscas.ac.cn>
To: vkoul@kernel.org,
	kishon@kernel.org,
	neil.armstrong@linaro.org
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Haotian Zhang <vulab@iscas.ac.cn>
Subject: [PATCH v2] phy: ti: da8xx-usb: Handle devm_pm_runtime_enable() errors
Date: Mon, 24 Nov 2025 18:57:34 +0800
Message-ID: <20251124105734.1027-1-vulab@iscas.ac.cn>
X-Mailer: git-send-email 2.50.1.windows.1
MIME-Version: 1.0
X-CM-TRANSID: qwCowAAXrs1LOiRpFD_cAQ--.612S2
X-Coremail-Antispam: 1UD129KBjvJXoW7KryUWr45Zw13Ww4UZryxXwb_yoW8Cw17pF
	WrWas29rWrK348Gw4UJrsruFW3Cw15tryxKF97C3WF9a45G3y8Xa45AFyjvFsYvrykCF15
	J3WrXF47Aa12yF7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvq14x267AKxVWUJVW8JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26r4j6ryUM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j
	6F4UM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s
	0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xII
	jxv20xvE14v26r1Y6r17McIj6I8E87Iv67AKxVW8JVWxJwAm72CE4IkC6x0Yz7v_Jr0_Gr
	1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7MxkF7I0En4kS14v26r12
	6r1DMxkIecxEwVAFwVW8twCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8Jw
	C20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAF
	wI0_JF0_Jw1lIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjx
	v20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2
	jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0x
	ZFpf9x0JUIoGdUUUUU=
X-Originating-IP: [124.16.141.245]
X-CM-SenderInfo: pyxotu46lvutnvoduhdfq/1tbiDAYQA2kkAizTxQAAss
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_100307_085915_4BBEC014 
X-CRM114-Status: GOOD (  11.36  )
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

devm_pm_runtime_enable() can fail due to memory allocation. The current
code ignores its return value after calling pm_runtime_set_active(),
leaving the device in an inconsistent state if runtime PM initialization
fails.

Check the return value of devm_pm_runtime_enable() and return on
failure. Also move the declaration of 'ret' to the function scope
to support this check.

Fixes: ee8e41b5044f ("phy: ti: phy-da8xx-usb: Add runtime PM support")
Suggested-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Haotian Zhang <vulab@iscas.ac.cn>
---
Changes in v2:
  -Just return ret and drop the dev_err() as suggested by Neil
  Armstrong.
---
 drivers/phy/ti/phy-da8xx-usb.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/ti/phy-da8xx-usb.c b/drivers/phy/ti/phy-da8xx-usb.c
index 1d81a1e6ec6b..62fa6f89c0e6 100644
--- a/drivers/phy/ti/phy-da8xx-usb.c
+++ b/drivers/phy/ti/phy-da8xx-usb.c
@@ -180,6 +180,7 @@ static int da8xx_usb_phy_probe(struct platform_device *pdev)
 	struct da8xx_usb_phy_platform_data *pdata = dev->platform_data;
 	struct device_node	*node = dev->of_node;
 	struct da8xx_usb_phy	*d_phy;
+	int ret;
 
 	d_phy = devm_kzalloc(dev, sizeof(*d_phy), GFP_KERNEL);
 	if (!d_phy)
@@ -233,8 +234,6 @@ static int da8xx_usb_phy_probe(struct platform_device *pdev)
 			return PTR_ERR(d_phy->phy_provider);
 		}
 	} else {
-		int ret;
-
 		ret = phy_create_lookup(d_phy->usb11_phy, "usb-phy",
 					"ohci-da8xx");
 		if (ret)
@@ -249,7 +248,9 @@ static int da8xx_usb_phy_probe(struct platform_device *pdev)
 			  PHY_INIT_BITS, PHY_INIT_BITS);
 
 	pm_runtime_set_active(dev);
-	devm_pm_runtime_enable(dev);
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return ret;
 	/*
 	 * Prevent runtime pm from being ON by default. Users can enable
 	 * it using power/control in sysfs.
-- 
2.50.1.windows.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
