Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF123C77B7C
	for <linux-phy@archiver.kernel.org>; Mon,  1 May 2023 19:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pnF6ha8INOf1OnutdLAW8JBcymIqeQx2B2CNr5zBHkk=; b=kfjKm1y7HiqDNk
	fHLDHPLFHK1UKFLfydvOJ2Bmyo8OOf70E64bwiqoNjjL49RNjW1NQVOe/2JhsvaV+hUPwXwIU8EXc
	8N62kbJ1BZh/FFee5LirrBUI/MiYarwVCBkO3AS+lwkaM0DGMTn6TJWpeLOpfCsurTqS+1SiI+DWC
	h8aymAbVOpZs5fIZAXdvtZk4uIQkWPf92lJWdpUV4kCeqRwa/Jps4wwcxd6SgHmvgZYKnB0WW6iou
	FInWCkqFjTw1ni9vIyRn/jdmFXXe7guR89kKPIPBHwReQDcB2YobMENJRdmXRLjX0RH3HiUOoVGc6
	BC7cbY5a/TJBD9tVQyCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZ8r-00GgGV-18;
	Mon, 01 May 2023 19:24:57 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZ8p-00GgG2-0L
	for linux-phy@lists.infradead.org;
	Mon, 01 May 2023 19:24:56 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-63b52ad6311so3338924b3a.2
        for <linux-phy@lists.infradead.org>; Mon, 01 May 2023 12:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682969093; x=1685561093;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TlCXSDngFh1SUws/NWCdUPB1ODSh3zOJ15r+LU+w194=;
        b=kJy/w/9szQMPPeJb7Nxpt4Sr/d8sLB88BocgsO82DII0hFd6BlyhxUgMvHWCanx7gN
         dmI6A2VoBSZHu8vCp4xdyj7Pe5tk9uVC+AUjhrqNNdatMP6YhkC77BLZ1bDGXkkcbR1T
         emSIe1huExaLDtbthYlR7cKTmAXbi4ctLLo+vv4487YcIedVXF7hOM/o+7//3GorqG7w
         hxpgN5OTnv9PbNlZlFaxqbKw4aa2rfV0jr55gnhU5GzLEXkOxdPVXc93grf9F6b0Afru
         628hAtd+j/k0dWoPJS8oGebSBoSnPqQmWHr88SXhiHsuDYxWP3E01ErAT9EWATNRQ0AZ
         LOEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682969093; x=1685561093;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TlCXSDngFh1SUws/NWCdUPB1ODSh3zOJ15r+LU+w194=;
        b=mFD5ylj6DwgOeRb4cnrf7Vfxs9VpKZsT4rsA5gFUWEtHBOlX5r+OSFX2CGCHuFwQ5x
         amg/qldbv+vZiSQuuD/yn9F86uWDK5v68wrMdPME7juPdb8PDvLxDDaOpbJZe+IrbN/m
         4MLC612Vo7m71Z80AKUfPgIP2IDjKXG+e4C/nR/VCGkfg6YqVKnsay62z45CaL4Kn0eh
         ZedyvVMY82zYVTei7wCU///wFLFqtir6WysfaJyAqSvfI639gfH6HW6EHdgEXEbasYCd
         5EDVdOeqh1otnoHhwZvs1IyKBUlgz8FKEt993u+GU4BXKhyBg5URiZ53MwvDrFLKzRYb
         jOow==
X-Gm-Message-State: AC+VfDw/K9K6sE+LN7xQJX1PPqLYACrlaz3My916PulGFphPMJHyM038
	jIbi/0Vp27a3+z19jyUSB5XIBw==
X-Google-Smtp-Source: ACHHUZ66d44NdKMo0zcHRLfXIFVK1q5DUtWUQLjhdZrE+NP+hjzT/GDKeAK71DgMKEFMrqmAiqDNRw==
X-Received: by 2002:a05:6a00:c8c:b0:641:1f51:bae2 with SMTP id a12-20020a056a000c8c00b006411f51bae2mr19765157pfv.6.1682969092986;
        Mon, 01 May 2023 12:24:52 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1f3b:58fa:39f6:37e1:bb9a:a094])
        by smtp.gmail.com with ESMTPSA id 189-20020a6304c6000000b00513cc8c9597sm17459144pge.10.2023.05.01.12.24.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 12:24:52 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: agross@kernel.org,
	linux-kernel@vger.kernel.org,
	andersson@kernel.org,
	bhupesh.sharma@linaro.org,
	bhupesh.linux@gmail.com,
	krzysztof.kozlowski@linaro.org,
	robh+dt@kernel.org,
	konrad.dybcio@linaro.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Subject: [PATCH v9 2/4] phy: qcom-qmp-usb: add support for updated qcm2290 / sm6115 binding
Date: Tue,  2 May 2023 00:54:30 +0530
Message-Id: <20230501192432.1220727-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230501192432.1220727-1-bhupesh.sharma@linaro.org>
References: <20230501192432.1220727-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_122455_145647_F0784EB8 
X-CRM114-Status: GOOD (  13.67  )
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

Add support for the new qcm2290 / sm6115 binding.

The USB QMP phy on these devices supports 2 lanes. Also note that the
binding now does not describe every register subregion and instead
the driver holds the corresponding offsets. This also includes
the PCS_MISC region.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index a49711c5a63d..aa143c081805 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1414,6 +1414,10 @@ struct qmp_usb_offsets {
 	u16 pcs_usb;
 	u16 tx;
 	u16 rx;
+	/* for PHYs with >= 2 lanes */
+	u16 tx2;
+	u16 rx2;
+	u16 pcs_misc;
 };
 
 /* struct qmp_phy_cfg - per-PHY initialization config */
@@ -1558,6 +1562,16 @@ static const char * const qmp_phy_vreg_l[] = {
 	"vdda-phy", "vdda-pll",
 };
 
+static const struct qmp_usb_offsets qmp_usb_offsets_v3 = {
+	.serdes		= 0,
+	.pcs		= 0xc00,
+	.tx		= 0x200,
+	.rx		= 0x400,
+	.tx2		= 0x600,
+	.rx2		= 0x800,
+	.pcs_misc	= 0xa00,
+};
+
 static const struct qmp_usb_offsets qmp_usb_offsets_v5 = {
 	.serdes		= 0,
 	.pcs		= 0x0200,
@@ -1922,6 +1936,8 @@ static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
 static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_usb_offsets_v3,
+
 	.serdes_tbl		= qcm2290_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qcm2290_usb3_serdes_tbl),
 	.tx_tbl			= qcm2290_usb3_tx_tbl,
@@ -2497,6 +2513,12 @@ static int qmp_usb_parse_dt(struct qmp_usb *qmp)
 	qmp->tx = base + offs->tx;
 	qmp->rx = base + offs->rx;
 
+	if (cfg->lanes >= 2) {
+		qmp->tx2 = base + offs->tx2;
+		qmp->rx2 = base + offs->rx2;
+		qmp->pcs_misc = base + offs->pcs_misc;
+	}
+
 	qmp->pipe_clk = devm_clk_get(dev, "pipe");
 	if (IS_ERR(qmp->pipe_clk)) {
 		return dev_err_probe(dev, PTR_ERR(qmp->pipe_clk),
-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
