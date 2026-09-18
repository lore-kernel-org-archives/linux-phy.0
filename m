Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ED6BC982DF
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 13:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RRpE+/qUN9UJ8YosWXAxcBW00AQKI3IxEY/yHUHO4Xg=; b=Amyr7DIg7T8fgH
	XjZUazzh3ZA0N0ouBzyeeBlekwzlk/0xf/6zbH+oF+jWlSED3Ul4gFJGtTV32wgYlS4+IaqinWrFC
	YEXlWQ8CAqFQJA6Sg17+diKvGtFgsuUk+FszUEbVvMGakSco29XTmtJveb7mukisiqYuszIk987Ww
	65iQljf+9q+zMKbjJifl4ozBo9Kb7h2PXwM7+uk/g97g8ylmFJiEyI/bwjCkZfjRF+F5dbGVcXaoo
	UwPczs+Bb4+A4ZKe5YH5jq4yYNaFSj1U6mc9zEfES80yZBg9Z/k0+rdAAuImtyVj6Ur91TK1237Rf
	S2NcQoPEZAvkqxBBg0Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Z5N-0000000Edx5-3ArM;
	Fri, 18 Sep 2026 13:57:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Z5J-0000000Edvo-17WU
	for linux-phy@bombadil.infradead.org;
	Fri, 18 Sep 2026 13:57:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=sVVY0F/3SoAAMbyWD2/7RYl6WppDgQD/EUsXpw6hsho=; b=V3quH6aHosuUk5562O6lyHOMyn
	DCmOKVdXh1U2sIJt2sEg5nTYbT2XmfclMqcXNTinWefLaU4a5D7hZuwkML9yalBs54CnhNTkU8MQX
	6u1gje9a0mD1xIYmKZCAdph3z+GAL79KAynhjB3zLmNO9HS11dDkTWZ0F1a4ZF/W0F8RmJehYCjSy
	6cYj19HTzlu+HJLkA4h0Y9+2dJYy24lK57JVwItqV1ptYUreDt7lAWzvDXsl/UpyRCr3QGluPMzPc
	j63wen7cZ03TBiNZdn8NmUYwbyqHlIb25IXvwQ9OI3/7tQy376smnhHKN8VWsFyX1JW2g4/Wo8vga
	03nnqhuw==;
Received: from mail-ed2-x10.google.com ([2a00:1450:4864:33::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x7Z5G-0000000AAau-24Ci
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 13:57:00 +0000
Received: by mail-ed2-x10.google.com with SMTP id 4fb4d7f45d1cf-6a98dfb8002so1062047a12.2
        for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 06:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789739817; x=1790344617; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sVVY0F/3SoAAMbyWD2/7RYl6WppDgQD/EUsXpw6hsho=;
        b=gdaw/+hneBVdTqah9EByKOdCdFW/MhCu7IbLtfsjF5RLACXCUJSsBq9/mNzGcLPvWD
         ZkOGX0taIPg1ZgIZCYYLJT57vP8rqQxLMe68djzqNcpV/x07MEDZTBYvI0GdfIYY7o5l
         DrIQ1USXhm7COzsAQRhoqC/G+7QBUm+R1nrG026FTgP0lOIoJKWRtDr/0xkVkGzXtKdu
         KKUlgnqgcsPgQEy9LQjil9GkoZje4V8V34pPFxcZ/6SKr0yX5UkYRZjS3pV0/YQc4ehO
         8491MiSOU6WcyPqZwh6AijKPfnBCN0YATOiFv0oRyX62gWhRnofj39QFveAU6mGynMJ2
         ZVsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789739817; x=1790344617;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=sVVY0F/3SoAAMbyWD2/7RYl6WppDgQD/EUsXpw6hsho=;
        b=ImuCrQdgue7yT6GXV/wGzrRfjnDC2MrAjmKrjcMLwlp1IUsxQWDKlrZ2f+uetcIFhk
         nWajSyq794MJ0+4+/dCXVUFc9UwYa50JdWej1LPel4qY4OTo18ZeStQFaJ7sDCXQOsHB
         X4JY/PrbBwEAjtWEVFncf3Cp0wAHJcn8/hXqmOEChUakHffsUX+kqDct/ghqwVJbvFjm
         9TjLmzgtUYB/WMpzLomqW06hBqI3wC/wxbv9wD3KLCcDxBIfQuJESZNt8bG2PVUUbgHV
         Urb6+FTbq23B0uI5KNm7B8hW8o42Mn7rD/9dy+0DagEF9x7Tr6Env5r4NPJ6BofcjTj9
         ngrw==
X-Forwarded-Encrypted: i=1; AKwUvBz1dcmOUq0st2gaExhruWn+Atm22uPvvJOY73PzigeFamlV4Ui8k5tjBvRoVJg4TMVJHRinUtDugzw=@lists.infradead.org
X-Gm-Message-State: AFuF++lKwMexDHvI8xcIYEvVIYaFO+Ej00YRkDUaQqfu1PLQoeux6EAf
	5lU1HepnxxAbQ4Zq4OkDPn5MfNeysNXcA+jW9Dj2nCXdCa3OSeHDOmy/qXZULxbhv5w=
X-Gm-Gg: AYBFou38VWu2P7WmxO9Qctac299OWY9Yldf7zThRxxImbratPoACVoRDJGHSv+eUYtw
	eoNaEiczxKkEX+TKzx5J9Vg1kUwUBWLFDPe44MdLDBR3nGoAf2IxVfue1PiA6J592UaFQR/b3hu
	BUItBgk7/Fcy5UrSBCaOA1s77YZWaXXRlfkt8eOblOT4srAEgWfZLfcN+rOmFukBfUYEUYi5ae4
	mKg+ya4dKq5gxsMf5XxD4kpcGBAFClw5T3vEfVq2iyqYBhGgRWXVx8B6Z607BJjWHtzOEDpPBGQ
	675yIamb2OQ3SSsojAIXYYjF1IL2fGUcWyqbVDRRl7CXeezuJvsTkZY9Kd2Y1JAPYb/SjJJx2Ci
	LooPLvjJK5dHxDeDoPzmitusnoUIKh4tvCxvo9ZAe/0LzVtV9cuQrBvUI46Ad3rTBy8xl3YLbnU
	nM3df5XfFGgwmEx9aYO/+Yl70DBuuRaanigE41k5XwdunLr5BirlYH8W1TL9Gyalpk8JaDvJ9wx
	ZOOfPDo
X-Received: by 2002:a05:6402:2112:b0:6a9:ab47:e08 with SMTP id 4fb4d7f45d1cf-6aa545f1e10mr1610240a12.0.1789739817032;
        Fri, 18 Sep 2026 06:56:57 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.4.225])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aa59730866sm915455a12.18.2026.09.18.06.56.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2026 06:56:56 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Fri, 18 Sep 2026 14:56:41 +0100
Subject: [PATCH v20 6/6] media: qcom: camss: Use data-lanes starting at 1
 for new CSIPHY mode
MIME-Version: 1.0
Message-Id: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-6-dc244e124e71@linaro.org>
References: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org>
In-Reply-To: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org>
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
 Krzysztof Kozlowski <krzk@kernel.org>, Oleg Keri <okerixx@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3176;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=pqNWQgF8ClsJh5Yi5qQY7AdMdYAk6BCqiLyzGAJKIe0=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqrUMcaIz3wyLlou3OxIUAqDc7LpQ0TclV6L5O6
 W6PwUeeN9GJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaq1DHAAKCRAicTuzoY3I
 OlrwEACgFIoqFiEREgBHed5k/+FwouGdl1N94FNwHz3Ju/kS9+7Go7eYTmPxlyEo2g66mlFzO6G
 mQ+CvwA5v0D00bg4MX4PSdFW1b907+AINo/KZB+DwNwrCmRwkK7MirL6oJ8b/MD1zUhrzkDX0D1
 ICvThBsPaBjuYvsj3UmxIZbJoymwnHopj2s/KizRoxfraSr/RCn//zD4TJmFcdWWTox8JmJjOZP
 wWKHWl/x8YYb0x88Z2GALZkmPP/R92WPwO3lNJUjiOSv00lpumNW8NEjZRGd0XEbs66GMpAaimQ
 wBRj9mo5i4Q3c6OyuAJ93x4ay0UBLFK2P+SDn/7zn1X/SrRi5scbGLpKpppowv89oejqzKQtyuk
 7yeglCJ/TqrwPk9nkMoJzHj15vut8RrGsvmZDOSgZnVg0IaPkrxJSWK6eUY8xfM2tqHRt2gmd37
 r9Rq0U2c8kkp5Mk26c7g6/eNf8TUnAqBhiKjAzdx95HEx3psZWs3fENrTKKXKHFWAIeG5rCMh3q
 va4QLj2+Lhn5fxLr7DyUIX/AZfZxK90rzG2n8naIlvRfkesaF1vwJSljqM4RRmZeHKptaOs+UL6
 7ADh2UwBCYYqKk0uhgVsPnN+X+6Tud40SQDRB2K0oPzTQWAmelVEcigHCgrQ4e3bNoIIoD0OWSi
 H572stIBMMlWv5Q==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_145658_695249_F661E3C2 
X-CRM114-Status: GOOD (  17.05  )
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
Tested-by: Oleg Keri <okerixx@gmail.com> # Lenovo Yoga Slim 7x Gen 11 (Glymur)
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
