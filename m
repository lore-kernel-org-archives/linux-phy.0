Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A933606A326
	for <linux-phy@archiver.kernel.org>; Fri, 23 Oct 2026 16:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NmYDgoLe;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=eos8OYYU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=NDwuVB6YgvwUEiceAhd6dblxfN6IBS3ttDphuOIDme4=; b=NmYDgoLeMlhxZlEu8nLb30Ck+i
	0wFHlRySh5MbgmgdRNBVAS4TVPo/ecgSqks1ufyfvVay4pUtUcZhOSqDVg4bfdBlb+5ZmNgV3auwd
	bFioD268LMmKJeVIRkyn7dy4dOBstey3br/qyk/kbTuLIu57LJplv7h9yp6JWC0CVt4LhLMCgxEzz
	qxPQjpmENvy5gZRYLlhf2jOD58c83qdP6RH7S84Vd68xDcQ4p7Inm22UmT196VcKnZEGlmtnqpj6x
	fM8GVx+XA7XuhFmtohvdY9CzxuZ/bCI23ZZ3U6M/5vCqKz7qcNr1n9Vj2IvFMP7YfVLpfAp60NeSe
	dW7lkk1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKIBR-0000000GfFq-31vg;
	Fri, 23 Oct 2026 16:31:57 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKIBH-0000000GfEK-2pYq
	for linux-phy@lists.infradead.org;
	Fri, 23 Oct 2026 16:31:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2019560A96;
	Fri, 23 Oct 2026 16:31:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 358531F01828;
	Fri, 23 Oct 2026 16:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792773106;
	bh=x9Ej0I3HKJbOHvwgi0DwH1uFOp+8+h0bcaC7FbBnEvs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=eos8OYYUglGq9ULoNeFaMunbICe6yaHFuuJOzML+myaBv6Uug1QLoXsAgt1+ergDd
	 qsYlaCDWDFHXZPXozTyc2UFDE/0eMcmCG5EkbdaSuTLed8yGh9HnbjxUrGlOyUaBnF
	 E51lHxH7U9Y1QFnnmz/1dTuQaaeJAcfvXMERXUH/KFq60D4PTdAigsjl5x2ySYN1Qw
	 /Zymn5zT6m70Aw3Dj4rS3+mm+OeqMNFQsFvQrpooPcpIkPgKCHkqa6R3zM4dXhNDHZ
	 DtjhqKMX9PrFn99Buwp6l7S9cHnF+/dd0wZsKcuvizi7JkJJ2JQ/QTh+fnyCj/OIXQ
	 +FTLqbjcGLdjg==
From: Vladimir Zapolskiy <vz@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>,
	Bryan O'Donoghue <bod@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 6/7] media: qcom: camss: Allow CSI2 PHY devices without CSIPHY resources
Date: Fri, 23 Oct 2026 19:30:56 +0300
Message-ID: <20261023163057.775917-7-vz@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20261023163057.775917-1-vz@kernel.org>
References: <20261023163057.775917-1-vz@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
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
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

If CAMSS CSIPHYs are supported by the stand-alone CSI2 PHY driver only,
there is no need to provide description of legacy CSIPHY resources in
the CAMSS driver, therefore if CSIPHY resources are not given for some
supported platform, use CAMSS CSIPHY port numbers as CSIPHY identifiers.

Signed-off-by: Vladimir Zapolskiy <vz@kernel.org>
---
 drivers/media/platform/qcom/camss/camss-csiphy.c | 16 +++++++++++++---
 drivers/media/platform/qcom/camss/camss.c        |  8 ++++++--
 2 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.c b/drivers/media/platform/qcom/camss/camss-csiphy.c
index f99eea2ef228..8ecd514451d2 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy.c
+++ b/drivers/media/platform/qcom/camss/camss-csiphy.c
@@ -799,6 +799,11 @@ int msm_csiphy_subdev_init_legacy(struct camss *camss,
 	return ret;
 }
 
+/* Fallback to generic SDM845 compatible formats for non-legacy CSIPHYs */
+static const struct csiphy_subdev_resources csiphy_res_phy = {
+	.formats = &csiphy_formats_sdm845,
+};
+
 /*
  * msm_csiphy_subdev_init - Initialize CSIPHY device structure and resources
  * @camss: CAMSS structure
@@ -808,7 +813,7 @@ int msm_csiphy_subdev_init_legacy(struct camss *camss,
  */
 int msm_csiphy_subdev_init(struct camss *camss, u8 port)
 {
-	const struct camss_subdev_resources *res = &camss->res->csiphy_res[port];
+	const struct camss_subdev_resources *res = camss->res->csiphy_res;
 	struct csiphy_device *csiphy = &camss->csiphy[port];
 	struct device *dev = camss->dev;
 	struct device_node *ep, *remote;
@@ -836,8 +841,13 @@ int msm_csiphy_subdev_init(struct camss *camss, u8 port)
 	}
 
 	csiphy->camss = camss;
-	csiphy->id = res->csiphy.id;
-	csiphy->res = &res->csiphy;
+	if (res) {
+		csiphy->id = res[port].csiphy.id;
+		csiphy->res = &res[port].csiphy;
+	} else {
+		csiphy->id = port;
+		csiphy->res = &csiphy_res_phy;
+	}
 
 	snprintf(csiphy->name, ARRAY_SIZE(csiphy->name), "csi%d", csiphy->id);
 
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index c54185c93a8a..b0d60e70e4bb 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -4796,7 +4796,10 @@ static void camss_detect_legacy_phy(struct camss *camss)
 	struct device_node *remote;
 	struct device_node *ep;
 
-	camss->legacy_phy = true;
+	/* Legacy CSIPHY description implies the provided CSIPHY resources */
+	camss->legacy_phy = !!camss->res->csiphy_res;
+	if (!camss->legacy_phy)
+		goto done;
 
 	/* Find first remote-endpoint and determine if its a PHY */
 	for_each_endpoint_of_node(camss->dev->of_node, ep) {
@@ -4810,6 +4813,7 @@ static void camss_detect_legacy_phy(struct camss *camss)
 		break;
 	}
 
+done:
 	dev_dbg(camss->dev, "legacy phy mode %s\n",
 		camss->legacy_phy ? "true" : "false");
 }
@@ -4841,7 +4845,7 @@ static int camss_init_subdevices(struct camss *camss)
 
 		if (ret < 0) {
 			dev_err(camss->dev, "csiphy %d init fail\n",
-				res->csiphy_res[i].csiphy.id);
+				res->csiphy_res ? res->csiphy_res[i].csiphy.id : i);
 			return ret;
 		}
 	}
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
