Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53525C88E72
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 15:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cfg9FEihbz+ZzxMgXXd1HyulqA+fRFPYNUw5L/xZMcg=; b=L6hYbaNOGSxSMH
	k6DXcafHEvJm4WDeX9izh8Sw14BKOUIC9NgIqWo7QW2/cPyoACoZ3Acq+c1LKe1m//9C4vCENzJcH
	jziB75BIryvmN4FCT7+Rp/nxOpPc5cOg9Md5STwQ4nBvO9HHcrFJ11j24JpVT1VCFjMByXyTDiiPz
	M5TzZqP+P1pCEY2xrDZQqCV36XhmWIQPvtN2PyhGorDFNTwsfYHpXMuS9klxqCn7j+afLFmE9RWfB
	oX43LV7VWueLNZFDT4nWLUaTwK700UpPRmVGQ587eczaSS7O1PQv2a03FILO4IgOjELm55M0TP8It
	ueWbvrqQoAcVOmXgRzbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7DzI-0000000Bfbz-44cT;
	Thu, 17 Sep 2026 15:25:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7DzH-0000000BfbI-2O9o
	for linux-phy@bombadil.infradead.org;
	Thu, 17 Sep 2026 15:25:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=XaaG9kQMPrqSpcZJreTasVAHAtAhXdOZx6qidBNV3Yk=; b=qFjmyKA1cMGOnYnDBq3Q8W8l0e
	qMuXcUiAz18CxHEjgDrDGam4oNWXaibE1O89Eps2W14/bTXi147bQrhhK5JguhX7h2xXjawDnGPfc
	k6qY8B7kiy8pSefH2rAPkFCyKYZ5wvtx6qMauacOQp1ryJZ9WXb/DBnESOTGUWcNWnyF7/Bjx3pwG
	G61mT/F1gnhSEfnoN6xM7tMrKITLH7nlmuLbBMMAa7fnNgBzZLznILL28Vc0xYgoXqIdYKSvkady1
	/cLyPjv99YSzE8YvTZ6qrJAiZ/tyA7NGVDiQbGJXR041K9ninGSofPw8aZwCPCx+DO9T2Lgp2SMas
	LLo8Bjqw==;
Received: from mail-ed2-x10.google.com ([2a00:1450:4864:33::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x7DzE-00000008zQL-3M5W
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 15:25:22 +0000
Received: by mail-ed2-x10.google.com with SMTP id 4fb4d7f45d1cf-6a6056ac81fso1705651a12.2
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 08:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789658719; x=1790263519; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=XaaG9kQMPrqSpcZJreTasVAHAtAhXdOZx6qidBNV3Yk=;
        b=aRjUfX8SL7ol4Fb4mSxwYfKCT0bFObtKbgEiO94YxsH92fuJCFk3DOeViYpZjvIcUF
         U/jPxr04K3hs7LVhBatA7r15WtmqH15Rrcdmk5+tajKTuhvPYBeCxBT1wqVZ4Btd+ubS
         rY0ywr7Za9+ATzF5UvloTvMYsCOQVKxWk6F8WEWWiMecYpIngRot+pmOGo67IjMGd5f2
         9eC02OhqK1oR3ZfxxVRM33c7qldM0nPBIBHvejBLEIizdHQUqv0VFr0+7eMKjzbJ6xqq
         5BWbHgOzeSuSn1S7gR03jOA+vd18jWVUxCnMb7CRE64y7WThOXGvOSszVFmoVS286Owo
         RELQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789658719; x=1790263519;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XaaG9kQMPrqSpcZJreTasVAHAtAhXdOZx6qidBNV3Yk=;
        b=DuStcGgUcrlBBHOdEnDRPlzME+2/g58lhBt5xrUoe+11gv8sUOXPRNtm0FLFj87+q/
         /2JOT/0giolf9AFcI8fVu+pM2/HDdEH/JFUwyucMtUHOwGqEOeGyR9pKcko2q1dSOPyU
         Y4RtjyTgRi7xFpG/igG4e9HOnZ5rkwML+W1LjmCQDaHv9io/U5WVUuxLIBC4OFOG7oJ9
         3tIx4mUxIiZoQMd3Ni9vv1+xu2h7NqKUEAM40aMcWTIVHdON/p3PvXlqt+AKS70zeiRT
         /m2wTIxps73AMo4zFyp0L+Hi1jUuVvd7VXXq2C2EJTiKBR6skLZ/r1NC7Jaba88QQCaE
         U3vg==
X-Forwarded-Encrypted: i=1; AKwUvByvhxK4CpSlb0a8GB742beef/DyUcR0Y/8HgzW017pFuYR9jF7PF4x392h398TGyzY0Xnr2CcbVRKg=@lists.infradead.org
X-Gm-Message-State: AFuF++mscq9+7Jo0Yw+2sfcU/mc4coqOrtAVf5pboSWEsUiyejRRw/Ei
	dEd2srVUyvFtEc9a39sgnebZ2qb5uf3GQwAZhDCHeoHNJbLC0dLC/lb1u09fFx7hBRg=
X-Gm-Gg: AYBFou3r4lh3IOTAoH9EJcUsPB6Xn1GoP5XPPjDtqk6xVX/3QJZiIjqI91tQbRFO09t
	Odm3C9NbEA2Rew9EgzMcrv2NYKt5bD4O6+0cT82FYY6qAuce2g4lecgZtMldbnqGp1+e/1/rV5I
	bz5sHWWmtdG5UdoHGjXKDzr87pVrM+p1PyfLfxmNmu0c24XSgCTGsjF7/tJQm3UPtM+G37Kg8ee
	tiXIinQQatqLAzt5mJA9augdM0NLSZZ1Ok57kb9G80xGHu9jHYtb0Q4/i+zPXT81H5SOjRcP7Cz
	0thJhm99tVuqjzxb0cxx27yeJd30T+Ck5eQViLXoxa+zjZ2ODASaomFnQkobnLFqHCxv+DwgHTs
	khs1nDWKuPhaOFJxKDAt8BWnm915ROJH1ZjFlRZQbnGU6Evi0hZHK+KveyjtAYV2Ocji/Dfbn14
	iyxUIVq0AQ5fwRB3x+Uf8c8JfII7oJ2y6wYiwy9Y8hk9qZo/zEt7swDKDI/XlMfltdfDHiGDw/m
	KFNHZjtn3g=
X-Received: by 2002:a17:907:d642:b0:c25:8c74:71e6 with SMTP id a640c23a62f3a-c29e529041dmr506795166b.10.1789658719047;
        Thu, 17 Sep 2026 08:25:19 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.29.130])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c29de48755asm310587366b.24.2026.09.17.08.25.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 08:25:18 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 17 Sep 2026 16:25:10 +0100
Subject: [PATCH v19 5/5] media: qcom: camss: Use data-lanes starting at 1
 for new CSIPHY mode
MIME-Version: 1.0
Message-Id: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-5-21ad8a76e941@linaro.org>
References: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-0-21ad8a76e941@linaro.org>
In-Reply-To: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-0-21ad8a76e941@linaro.org>
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
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3096;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=nAvKHTAAv3bLPDa8RtV69vy9lxOAzsfXW/WIHWa05a0=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqrAZVFsIMW2/vGXd4QQ7KAOZgAqwx0MFGvBcs0
 hrm5SKiqNyJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaqwGVQAKCRAicTuzoY3I
 OuPSD/0TKFuTYyRebGjbH7JeKR3zECbg6HM7ernZRFsj1tVkcH4V/eU3Lv4JMGpoj0aLtJpudEM
 nCbrlMuFKo5mhKevNWiGNTh1GUS4fsz6niVb0xPL5gtjDG/SFD+HYzQ88LIhNWkYd6GCDX05lj9
 XqEPteTHrJeNN0wTa+Ohh9ZKB/ts7OfpbCViNa2/K1R0dVcSeBja9Fc3uw8FSW+UaTFeMKpLSW4
 mQ+c6DvRZYiwzJX4fqenF1o2ccpAgULopn1zlp8iJEvJrtoK7h+4IOCumq3Z6+RV1UIOtcN5LBR
 Ov3vj8BbN4hkfcLYXSbE8d7yznJ4CYH2YxWfz4Zi0Jj35Vkkco8fCypyAmo9upvprKrrCAjoT79
 SEpis1Bl6+0H1vnfBrmA1tssIga62V8L17p5in8BnDyycxGqFU/Bf2Nr60dGjZYFRlbouTffSGw
 l4l3XfiP0tWfOE52jXClgAGguPNPlmczmDKGyfly/D6giSYv0wPgFN64Ek7WAcu8/1Dez1Vyz+l
 Qnmm0O6+GCV+4sxywa4bIUdlRpCy7iBAQisalkJataEzrWhKeiJunIihGNvd6vJJnY3EoRU7EeD
 02xc2kjaUjigbJNUvYvR80UIes2IfgXg8nLsjLJ54rdk47jUcEApzhHcRCvTZ1WoT4vwdF0M0tH
 T8OmLmEVh8mEI6g==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_162521_009332_AE03EC4A 
X-CRM114-Status: GOOD (  16.66  )
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

Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/platform/qcom/camss/camss-csiphy.h |  1 +
 drivers/media/platform/qcom/camss/camss.c        | 15 ++++++++++++---
 2 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.h b/drivers/media/platform/qcom/camss/camss-csiphy.h
index 7a357044b9fdb..8c3319f2ca1cf 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy.h
+++ b/drivers/media/platform/qcom/camss/camss-csiphy.h
@@ -21,6 +21,7 @@
 #define MSM_CSIPHY_PAD_SINK 0
 #define MSM_CSIPHY_PAD_SRC 1
 #define MSM_CSIPHY_PADS_NUM 2
+#define MSM_CSIPHY_MAX_DATA_LANE 4
 
 #define CSIPHY_GRP_ID 1
 
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 84097d82d99c9..6f58e729eaceb 100644
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
+		if (lane < lane_base || lane - lane_base >= MSM_CSIPHY_MAX_DATA_LANE) {
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
