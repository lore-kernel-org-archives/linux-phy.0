Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13455C79F85
	for <linux-phy@archiver.kernel.org>; Sun,  6 Sep 2026 14:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p/Ip9J4alflbjdcOqr/vs1+sSooPFiKrVjxuDJj0Knw=; b=HRNBEmj9CzZ6F6
	qnrfFg1yLosRX6CZfG3an+IiSTX/Y35aM039BLkWypZWNZu9oK3+3c4xsbi2JXcluGickBrhZukfI
	mNnwDLdTUh4STomfGunsnIua0D4wX7BDj+6jXVBBy3Jtg12Y+i9YC/vmwMRkarkI/0kK51ir603Hb
	+ixA4TfjUd+3E15Is2lvHENlJuOx9/4gHMWrHBOz130XCfNuFZ4BdWkf8Yq2Og22BCIqox1lX80h0
	F8dzOmaA1HnSgJOMCrO0ab4ZeqoRPgIEVsNbLflUHo4xUAi8U+bCdIXcZ0TzT5YYYmthxNDMHOm0b
	VprzqRbQ6AYmPvEh7xiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3DgV-000000054wQ-3Dqk;
	Sun, 06 Sep 2026 14:17:27 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3DgS-000000054u9-2Fm6
	for linux-phy@lists.infradead.org;
	Sun, 06 Sep 2026 14:17:25 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-484374f54d0so1452925f8f.3
        for <linux-phy@lists.infradead.org>; Sun, 06 Sep 2026 07:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788704243; x=1789309043; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3oY2AlOIEvJzDvrLKGXM3wmsBcdbDubrfZ+V9KSGxD4=;
        b=tpGTB4sZnPvGuKbGl/J+JanUSZxIqLEevrsMJACgopgdscRxIqHEdzh3RNRaPFCp1p
         8YrPkUssFZy8HB+U+VgXx8dMnXdGVD2Xi+S4sTqHugdzfxBaKZr+ks5MzhsGTvHBkJjN
         zGSoDFH3YbOi2pvw8Zay+lhBV/mJ0djfR6HXRH7RjAR16ZtY4+grziSsXvPrh7wMHVOs
         poEw5cBQWig8yHndwjF1R9EXzgWWFkofwxNeIFM8S2fjEykIZr9lt9hGc1CE02GIF+55
         5CmjUhj/EwdKBZ+uLN2fGqStJARJ00IRMsSK41Q6BtUL/L1Xjp9yCUi2Nm9isOpvbmjh
         NcjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788704243; x=1789309043;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3oY2AlOIEvJzDvrLKGXM3wmsBcdbDubrfZ+V9KSGxD4=;
        b=K8pMpndcPDfvcIb1PXsEPHGz26YjhplKHh9UzAnfPKzgKSb7Z8miTbjRv/LhYzynTB
         BxUoNQH1X/WMEMVS/Dgaf9UhbnxduHJHh+Vu5fHRilxnQmk5GoA6+W4hd4RQmQNtJx6C
         iH2Fey60mzHOhLX8zTGM+2e8dqSO81wtNaZzf1aqE5gVuCxK30KJ6MRy0lOHcOIbDmwL
         EnLqs2scTT6rbwKsC+fMvC2FOSueNvxKQxV0J6HVlL5j0sYjsPMZO273FEiYyw1tWWFW
         3HkLiy90o8wxcC2ZaJJoUNyfWLtrDEDksp02AwOLVz4UDZknJ2EFrsvqccfqUM1FG23e
         UepQ==
X-Forwarded-Encrypted: i=1; AKwUvBy86Hd8r9AzhZSZIzJ7+c9voexaQWUNwgmtDeyASipxj4tVrYeHfjvT/RSXRLiId5oPAKzmf79icTA=@lists.infradead.org
X-Gm-Message-State: AFuF++nqa1jvl8m7A5F+u34yj1GH5jUkBohxQ/75kCN1WchMTXydOFhD
	vLcEo25G5zyQTpaG92XccoYmflPEwhSegh3Tbj2gvL1ECgat0PRXnKS4C2RZ7uXS1bM=
X-Gm-Gg: AYBFou3U5iA/Pw745NT4rAvBGGyR/MXLuaupk9Z3q2BOaza6VXjUxIjzYxmE3aIeUDG
	PbzJLO/qAnKdOrI7GBfCtRgX9L+0BA4rouxWMbYSR2H4R+FWXy69+LmVm5A8vqAEv3HQaJPqXRU
	TmLxKO7Dg6krVB5kDwzkmJ1lPbiL2tCXnCsZciRblfIqYtKItG2/pT2aQCbtPoBhZDxdnmSDdCh
	MxVtqODj5pP1453bGU9Em3JLCUgfNihLIA9L49ful0qY5pU6XwSXbobTeim2w/UFMmQUjAEoj5/
	yrDzBTJVYDB0pHyTcYJIlKXl24uXqz1ZYcbPeei0Vi6lD3Ml/+84xH98GSxdlw+2XRnTes0jyZy
	1+lEZ0blupf+g7hrraw3HUtTGScmk3cTQqFWdkSTR9GcXolvr59LJ1LANu+0NIG70o5yJH1Rfgs
	xlprTzkcx0TvuelhCxW5f5w6dSqrdX9Jrzq5nL2NvY5JToVvk2S/IZKu2SzHLPMgbbD52F4Jam
X-Received: by 2002:a5d:5f89:0:b0:485:892b:bdad with SMTP id ffacd0b85a97d-485892bbf0bmr30611491f8f.12.1788704242631;
        Sun, 06 Sep 2026 07:17:22 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.250.151])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48588390e30sm21669763f8f.7.2026.09.06.07.17.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Sep 2026 07:17:22 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Sun, 06 Sep 2026 15:17:09 +0100
Subject: [PATCH v17 5/5] media: qcom: camss: Use data-lanes starting at 1
 for new CSIPHY mode
MIME-Version: 1.0
Message-Id: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-5-e2197a3e2551@linaro.org>
References: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-0-e2197a3e2551@linaro.org>
In-Reply-To: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-0-e2197a3e2551@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Bryan O'Donoghue <bod@kernel.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2510;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=4JOk2Hi8g7gu1SpQ/dGzbw1/zf+MVi4St5Xw4UG5IUU=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqnXXoH9VPldgdu7R1ntY6a2BIdl8cjC5uvSJAI
 TLXjIFNoaiJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCap116AAKCRAicTuzoY3I
 Otm0EAChJV802lFTATmtLqqDUMwtkzn6JIwJNVtgDDOK6aREDhOVcmip3ZYh8bAF5d1WuSfSHbe
 Dsrg4ph3lA4WWiMTOAaoo/MImXhCT6Uyd993lwMpk8nyupZexMkgACQgmoc1iNebBfnahDQp5zf
 AGhQpMY4ogelQd4ixACVio6KgYDPCiJdClpzJrMnEpN84s5+30REkkctniPbn4M9aNV4MLq3gNF
 hFVgL93xKjNLo3x6yt+D8/ipcjfVDq0SkNkmLoapn7qSb1pLABmaIh/vcTVyEqOIY1/+evNIYpe
 uXeZjoJ1n1UWRHLC1CchbcSkAMZV4donLKx99QudDtM6StHoKruvQWr9cD7VbJiIvhSIKwAzQXD
 OhTEAIR36NZG2baw1cFdu5GoxNek+gxs/qI24KtrUfOxw3JL93WDXoUtThv8orngxZnIL7Stpbg
 YrLqt+FE56bj7rhj/PaXY+h0uSDq0XzJEben2E6imV1xwlUsyAMXEpiq+aTCDlXkg8KKURrRANA
 aHm/p8AoSU73O+yeDgVrlOHTwzwSjr4Y5JRE7aJobvo/sv7inVbqdhuECuIlTCx8XA2zjVXtJS/
 k+4SRthkoflOkR6zobNdiKLhIGC1de4brCoLaSPKYrQtkkQ9iK4MBTOsYHOI2kfDS7TD0CmyalK
 DVgZujw13DcEUlQ==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260906_071724_613109_AA29AC88 
X-CRM114-Status: GOOD (  15.50  )
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

Introducing a dedicated CSIPHY driver community feedback was both to move
to data-lanes starting at index 1 on the PHY side and also to match that
indexing scheme in the CSI decoder - CSID.

CSID consumes the data-lanes property to determine which CSID lanes to
switch on. For indexes starting at 1 we need to amend the logic somewhere.
The PHY side code normalises the input data to register level meanings so,
replicate that logic on the CSID side.

Introduce a simple flag to differentiate between legacy indexing @ 0 and
new indexing @ 1.

Existing bindings are not affected.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/platform/qcom/camss/camss.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 84097d82d99c9..07b3cddca5840 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -4742,7 +4742,8 @@ static const struct parent_dev_ops vfe_parent_dev_ops = {
  */
 static int camss_parse_endpoint_node(struct device *dev,
 				     struct fwnode_handle *ep,
-				     struct camss_async_subdev *csd)
+				     struct camss_async_subdev *csd,
+				     u8 lane_base)
 {
 	struct csiphy_lanes_cfg *lncfg = &csd->interface.csi2.lane_cfg;
 	struct v4l2_mbus_config_mipi_csi2 *mipi_csi2;
@@ -4777,7 +4778,14 @@ static int camss_parse_endpoint_node(struct device *dev,
 		return -ENOMEM;
 
 	for (i = 0; i < lncfg->num_data; i++) {
-		lncfg->data[i].pos = mipi_csi2->data_lanes[i];
+		u8 lane = mipi_csi2->data_lanes[i];
+
+		if (lane < lane_base || lane - lane_base >= lncfg->num_data) {
+			dev_err(dev, "invalid data-lane %u\n", lane);
+			return -EINVAL;
+		}
+
+		lncfg->data[i].pos = mipi_csi2->data_lanes[i] - lane_base;
 		lncfg->data[i].pol = mipi_csi2->lane_polarities[i + 1];
 	}
 
@@ -4794,6 +4802,7 @@ static int camss_parse_ports(struct camss *camss)
 {
 	struct device *dev = camss->dev;
 	struct fwnode_handle *fwnode = dev_fwnode(dev), *ep;
+	u8 lane_base = camss->legacy_phy ? 0 : 1;
 	int ret;
 
 	fwnode_graph_for_each_endpoint(fwnode, ep) {
@@ -4841,7 +4850,7 @@ static int camss_parse_ports(struct camss *camss)
 			goto err_cleanup;
 		}
 
-		ret = camss_parse_endpoint_node(dev, ep, csd);
+		ret = camss_parse_endpoint_node(dev, ep, csd, lane_base);
 		if (ret < 0)
 			goto err_cleanup;
 	}

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
