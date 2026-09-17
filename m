Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E22D8C982D3
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 11:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AVjTtQOOGPsMIPybVbeoYV3cT2FlLYCuvRBVoT6mwqk=; b=mnTtmvIGtZLt4f
	h7ZfRsbe+TEhm+TnZ8YNdMdgKaz89uXNix0TGg3dnzy76E6vl6AI2UUcx8V7ZzrO/LErdgg0g3stl
	PMU7i7G4Hu/P1ILhtnKDpSKc9KlmnA9VWHc/TWkifFXTxbHE3iUcJtLPD2UY5kI6s0vHorxe+aeKX
	QLBt4BWKdkLSgA1DqgJxArdXQ/GcGK00F+rT73rMLs4XoLRE8pyvw0WUYYhtxsdolj0Ua/bObvTTM
	jZWTbsv4goFHIIpYU64X94DY4da8e/26fOdKvk3oVcJFpfWTMnlHmCeWKa4SOzg/zJh1X4ZaTHgpc
	t8zrx4J3WoCkpj+c38Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x79yT-0000000B9vQ-2FhL;
	Thu, 17 Sep 2026 11:08:17 +0000
Received: from mail-ej2-x10.google.com ([2a00:1450:4864:34::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x79yP-0000000B9u0-3KC0
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 11:08:14 +0000
Received: by mail-ej2-x10.google.com with SMTP id a640c23a62f3a-c254fa663c2so92893366b.3
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 04:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789643292; x=1790248092; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=K9De4Bw8APMeoKIGZUf5pgiyvld0+No1J4AiF85NjjQ=;
        b=PTYM26O/L6aoOlj/OYlo1U/ekJYkVvq4LIT2gMME/ExWIR4EBWsAokFwiwgHx7SYdL
         GR4iL7QhuICeXr8Qp6WApy1CTTXIBdySzZU5H2lROdAnuu3PLgbpsc+uchdqWR29OzEk
         eLFZTG1DmX5JWyCvY1JYLJoaJiHS6XSwIW3GrKKROdUKwCz9AJLwhmKmJzfwY1SKByBy
         AosRvrea31MLnJq7eHKLD3FLxje1b6jWBo2yTJeGbOvdY7okpxDWwHgg9qsd1IemJgwC
         n1pfcjMXICGI+4bJZYUnnZ1BOHR89Vb84y5DObDaXCPeo1K65iYkaYM3h8JMRi9O8o3I
         QINw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789643292; x=1790248092;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=K9De4Bw8APMeoKIGZUf5pgiyvld0+No1J4AiF85NjjQ=;
        b=r7eopan/88AJUycDStw9CHNkbzE4RutpUIyO00jHlQeLJKcpwZaZA9n5E3miJtxa9L
         1Sp0AoTd+6qNbvwgPvUSMDPuy7+jUXGmmliUxwjYCaOqXwCm5wZ99GEg5tDkx4g05A3n
         VALPJ2CNgd/QP0vOoGkhnZNDpUosuaQ+hk/ULRPo8q6gKHVzvg2ZmhUrOb5Lp51DtYwt
         zmUd6udtTTDxYF+vAWZAqgiMap6BzQ0lgvTwtXQteF/SD2Rl7aSVq3wLuMG0k1GbQ4yv
         xaLK/pQQEfSrzM6L6QRsL4ZDAOqFtwOvKLMe2UyShyndDwwvxjJCbTajrUryCh3/bHZ6
         uwAg==
X-Forwarded-Encrypted: i=1; AKwUvBzR7htBKZj7EdNQNr9T9ROjkqDKv/BTXKocrey3v84962N+mlsdYkJAxCwFJ6U9o0LweGvlEdAj3NM=@lists.infradead.org
X-Gm-Message-State: AFuF++mjvQcx6swR804gaC8j963DCvW1nCQAU0DwoPAjezsRGo2WrR6y
	Put05Jrph1oR2Gkd+ginxbL+IgF4ynB867TOJAiEUcYojFtD5Pnr6CrF5C7eaFls1x0=
X-Gm-Gg: AYBFou12kmbv6hE0tVNbDY1jV5zoVx6H95e9IdowZRkEgBRyuuHMgU9WcjMJo74vxMM
	PLHrbzlj9IluNDGcpc6j5lEuGNq3kyDI+PSWBf0Fk2zctAvEp/B6gh3V3m38V3U+/R4jBTpC8qa
	FPP7U3pxO4hYlw46jN50JeQb1O/YvgdYcD2oh7oPEzwnwLbJU4wHjudBiG4SWdruWa7r4QfpYVc
	AR0Iu9nVm8zdAjKcxYvmMwuj3gsJLuNO+jUoRJCh+1dmu03la2NQgB/8PLds/5GjeWWppbcdHlk
	kdCm21k4KYLw1Z+nhTa0EqFd9sQdv8/N86w4cRd7hGpPGm3O6IpIEBDOzOhdX340/FsVzPF+Huv
	8AG0H6U9uV7r8Q9DIgc6ViHGPbBxxzpKbQRxbV2+s2Q+phWaGXkh4G3luudqRz3r4EmNPuxcbny
	C996SfsbHipOnAYh2aHtIyutS4xCFCaUWmnnENOGxy/l7frHGJ9TJKXyKdbBJKSnVn41IDqojdN
	wgzJgvy+gVD+KozDXGu
X-Received: by 2002:a17:907:9413:b0:c29:f5d5:5a91 with SMTP id a640c23a62f3a-c29f5d56155mr214243466b.27.1789643291860;
        Thu, 17 Sep 2026 04:08:11 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.29.130])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aa1d27ad36sm3175656a12.21.2026.09.17.04.08.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 04:08:11 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 17 Sep 2026 12:07:58 +0100
Subject: [PATCH v18 5/5] media: qcom: camss: Use data-lanes starting at 1
 for new CSIPHY mode
MIME-Version: 1.0
Message-Id: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-5-f85c9103177e@linaro.org>
References: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-0-f85c9103177e@linaro.org>
In-Reply-To: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-0-f85c9103177e@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3037;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=3K1Wns2lPwIAk0N4nkF5l6lG+fPy1HfHc9I4aSmbkCY=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqq8oOWuwN5GeQzkydan3FwspjkROv2M+IBYbix
 x82AYZOpFSJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaqvKDgAKCRAicTuzoY3I
 OhSQEACPjJCybxAhAztKMpAOOfiJT5w5srhu+b1CydFNTScLP0PcSyghjchf8j6M3WnQqISen5d
 8L+TVJyakKdcBoXRlGukGmo2YZaRaEv6oKdtDg+TMd5NGx+yfOSt3QTu9+tRlWFKVhqufJGFHON
 CbHLo/fZ4jDVj7Yt4+0EohAl3mnhUFlDPIz23mULdcyYkCv2DzFYsEsfL9BRlc719qdkwGkQGTJ
 xw/XyXpiuwHYinUCSA8ScznX1rI1t3lIBkxafPK/eu1vEl9QPaIntMqXjRV/EjEgRIIfBiQeqFJ
 WDgtBrB+n8UY6PTXacTjlYTWRAKeInVMy6EzJdJf2FqgYloNRGq6Xp7keBeGFdSz/6OFnFnfLHN
 5JmB942iroMSpCsWbKEJU0qcJs11z7/sdXmVeY+JJBGoF/f0GxIKIjsToscqwMJSChofMzFHvWD
 RqWyZkuzfoPUNneZRO7YvRZWVgUA5aAoRNJ37maW0pG51ZABE94xOscPlREwWaRDof90+s1E7pH
 SNfk06cjfSt0QExu7N1MJ2rsIb4VB3lQ3wjRbv0440Eqa7Tb86ImjDawqRm8Y5vWEsnvxTWEuA4
 eHPO23rtzrZWGl8b4NEEXI0jEj6ud9KkNs1d0BLSZrIVo/NWu4DD+VqFNk50oC2Y9wCm34miscM
 Frsa6qGwGfBM2FQ==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_040813_862787_42C03B8E 
X-CRM114-Status: GOOD (  16.82  )
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
