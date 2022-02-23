Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F61AC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 23 Feb 2022 10:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X9KJxd0BS4LTaR/G6vtW+RaaOqk68w5XauQQIp1ZHj8=; b=wtjj1luzib2qF5
	PloxnndSijmMtcm7RTC+K5zsHJEnWO316LwK/4loOmD/xDRXwv5n0xAwW5cFXS1XxZRT0PgxdVMg0
	KdSFs5uAShk5pL4VMt9I92wanVTT/uxPS471/yF/z/lvANhhpCvvFjum5pXrVNjEbv0veXRepLCRn
	ZiIo6UPhfyhyvnmEiljJSfP//eaA5/xxaFHDmndHj4Sv3sUFqvgm102gtOf8YcJQaAXEj2QmY2PoU
	KIZYfcLXqJiqoh1WSBfxGW+SormZx21rHUw5MUVFA3cd1WU3YDoVTf6CyiVBdZiHre5QdD8xmsJ3u
	CGfzhXNn6N4HavWBZ7ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMofX-00DdnZ-R5; Wed, 23 Feb 2022 10:14:47 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMofV-00DdlS-1D
 for linux-phy@lists.infradead.org; Wed, 23 Feb 2022 10:14:46 +0000
Received: by mail-lf1-x132.google.com with SMTP id b9so30125459lfv.7
 for <linux-phy@lists.infradead.org>; Wed, 23 Feb 2022 02:14:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lkxtCcsfAVoExf0UCN2vdORLQFrRJOexPGzdfVQ8PeI=;
 b=gWNRI2EUSNVeFwUMJU8u6PWtIPKU/p2/bjiLSGrlSdzecEmWPHhCrzeOSBqE0XBPnO
 a1Kl4I3fmbegVY0ooEd6/5aSKlDZpWSSaaTYOLfmjaOrX/rtba97QkwyYIjdTOwldOgS
 LmfpZOfrr9odIzRxOvKaMBUWyYV4xkI6Y9AANzzudOWqjZiEIUuE7uDucnrc660yW+37
 h6C9qJkPKVrqLlbDQQ+GAnJl60zFtyACxhxGJGjKR8b5gHP9MckL2pXIE4HP/PGaZaC9
 azs5sV4xvhW2f7K640q6SasuoEYpHwfXgTzEhWynF0p88vFDjSOBlVCWKv/PPuoU+RmD
 OEbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lkxtCcsfAVoExf0UCN2vdORLQFrRJOexPGzdfVQ8PeI=;
 b=5J4z7gzIiHWGaqKKWXvVGspTy0MKsFXVryjpfvog+uAFGarl/+gLhxkWOvT2K91Eu3
 Q/ckx1K1Qn/Uhh1bbRCjm/6qDHr86CEvn2s7wYW8fWtlEbwyU6krKF6DatAFeTMrNC4z
 MJNknouUDbwp+CwqK5ksf1jKxACAolX/95HhNepo9Y+JBBahYhxq1njXJBo4HiGvcyiU
 jLqp5lf2ZOJJ4Nxw/5PQWKjtcsQneDKm+Zsmw7InepEeAbKPp5u9P3jrjjPDmy5JEM/i
 dh7yyNAyuUMnmQlbYMPsN9na+/KJPw9lZidDYTYUzQnwU2QO4cI0ioTuQ5knWxrDonH5
 c0Xw==
X-Gm-Message-State: AOAM531bHVXxioISs0wB8kpf1KfDKW5p1oNePhOTu9DwwJ9jgPks8/1r
 xj+WWi60vLwzJk0R5KpTnToELQ==
X-Google-Smtp-Source: ABdhPJyUdZY1PYHVpDV0E9X6d0/1dum9wvltJuig/BGM/jBtyVGLtopVJ0c4MVlSI4ixtnJtHbgWeQ==
X-Received: by 2002:a05:6512:4021:b0:443:150e:6984 with SMTP id
 br33-20020a056512402100b00443150e6984mr19253713lfb.423.1645611283097; 
 Wed, 23 Feb 2022 02:14:43 -0800 (PST)
Received: from eriador.lumag.spb.ru ([94.25.228.217])
 by smtp.gmail.com with ESMTPSA id s9sm2060256ljd.79.2022.02.23.02.14.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Feb 2022 02:14:42 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v6 3/4] PCI: qcom: Add ddrss_sf_tbu flag
Date: Wed, 23 Feb 2022 13:14:34 +0300
Message-Id: <20220223101435.447839-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220223101435.447839-1-dmitry.baryshkov@linaro.org>
References: <20220223101435.447839-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_021445_097361_A71D4FBA 
X-CRM114-Status: GOOD (  13.32  )
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

Qualcomm PCIe driver uses compatible string to check if the ddrss_sf_tbu
clock should be used. Since sc7280 support has added flags, switch to
the new mechanism to check if this clock should be used.

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index b2db2180e1bc..7e97820eb575 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -195,6 +195,7 @@ struct qcom_pcie_ops {
 struct qcom_pcie_cfg {
 	const struct qcom_pcie_ops *ops;
 	unsigned int pipe_clk_need_muxing:1;
+	unsigned int has_ddrss_sf_tbu_clk:1;
 };
 
 struct qcom_pcie {
@@ -1164,7 +1165,7 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
 	res->clks[3].id = "bus_slave";
 	res->clks[4].id = "slave_q2a";
 	res->clks[5].id = "tbu";
-	if (of_device_is_compatible(dev->of_node, "qcom,pcie-sm8250")) {
+	if (pcie->cfg->has_ddrss_sf_tbu_clk) {
 		res->clks[6].id = "ddrss_sf_tbu";
 		res->num_clks = 7;
 	} else {
@@ -1512,6 +1513,7 @@ static const struct qcom_pcie_cfg sdm845_cfg = {
 
 static const struct qcom_pcie_cfg sm8250_cfg = {
 	.ops = &ops_1_9_0,
+	.has_ddrss_sf_tbu_clk = true,
 };
 
 static const struct qcom_pcie_cfg sc7280_cfg = {
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
