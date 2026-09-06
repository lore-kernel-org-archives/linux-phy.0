Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05177C79FA0
	for <linux-phy@archiver.kernel.org>; Sun,  6 Sep 2026 11:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23jdCpO257m+x6Zw2BUvYqTGzodfq+KQih+hkvD8nrY=; b=mrXP44UMPdU4w2
	Nkc9NLIRi+f4WPUNuc5iwnwdRUHkIkFpSBwOCsRcP9Me1KhVjSkfcWnrkd1RUzNhzqBOIUJUN9xv6
	NpQ0bFtlqAVBfDW7Wrsv+/5wI9bvdwIuAyREgft/wpdOuaXCZVCAzyuXEp7z6OUsMcTVIR1R1Bhew
	FMTdiA6JNoqhl6YDqYwrcO1l93N7rIEHWIembli55IF7NZYDgEngmvAE0rQKWzbMCFU1FiceZdfc9
	ixOJBxRK0h8jCf6Z3hW+/3Md0MQ3hh5SWou5gfTWvSYzo3cdx8a9HX6TAcQTGlqnAsT02Q5Ck8fT+
	6JLEzVdf30kmlNF/M7eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3BQ5-000000050QZ-2u6l;
	Sun, 06 Sep 2026 11:52:21 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3BQ1-000000050Oj-17mK
	for linux-phy@lists.infradead.org;
	Sun, 06 Sep 2026 11:52:18 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-4843efcbdb2so1248019f8f.2
        for <linux-phy@lists.infradead.org>; Sun, 06 Sep 2026 04:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788695536; x=1789300336; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xfe6v37XEfqVF54o6+6rBHCGP0kTxzOn5cAUGy6eP4k=;
        b=nB7jk8uvLL6A8T3j9nF94ITOqYGYGejAf7nbWzaLGJ3wDgZQmzQbRlors/HydwtuLB
         zOxhr0TbfN0iZ8cVofdhNvdY3mUZ9muPLU57Kgk2KuXx45X4I4hsbRmNNR7X4mZCJC+U
         XK5DsaeXtrE/00l2acelVDQREdl54FXBEujTQaYrZqbYCzIcf3Dj4j5Dl+nm8blMv3zb
         h7LHhycl9AbAAKUICziDLog42Fq8vvruiSSB6zDyvwLrlque7YmNaPDLuTrt65h11QuH
         K5ik2jaRn8nw4iI1dEslf/HsZkZFl4XHEObTMsHnsOw1gOzFSYT5rAcChM3R4Ws59V3m
         POAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788695536; x=1789300336;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xfe6v37XEfqVF54o6+6rBHCGP0kTxzOn5cAUGy6eP4k=;
        b=GF/RCSjZn4cqWflpZpTDPWJ4ALORBHRNqxxmBee2tdvziyFplmFK+uhUwmWch6NGOr
         ajiagGqxSOVlO6mv6A89z0NhTasbbw9s4dVHZkWPlCjoBRW+FeHRlFXSm0SDg8wCMZqx
         8IL5T8B9aIu8m1XkI4Zl/21AdrBsFtkh5iS+QMb8TZuFWojlDZaTFPGpU8UAkC+++gBb
         y7S410LkjJ3XgnN8ZQSArNAywckZWBlbIc4/wULv4AIcbXZbuXmVRo/CB5M1Kk5IYxsu
         OhK2K9KzhlCW+jtpUSEkeraueOEb/ASmYiuSoMK22c5e8GWMezu3JKAm2BMP56kXASz8
         SFNA==
X-Forwarded-Encrypted: i=1; AKwUvByYLVc7dcvDnhnwDEMUehrHI6fsBPMSnRco9owK71X/GmJEsNGSoaVI7roReEbMlyTl5WeVQY6ZNUI=@lists.infradead.org
X-Gm-Message-State: AFuF++kAEPBBT+oT706gi3d2i87osa7OU55BK9ZrflpXW14tcGuvEd+r
	VNTfe25qd2IMWsD4/Dv4dLDc48hP7tfIMW9BSSjo8E86X2wreTIW8nJSKdRdmj+n0jY=
X-Gm-Gg: AYBFou1Vy1JWBJtTq4ixAVRhju9OQgASBOKC6sIDzv5GhZAP+iF/TjMBcu2WeHN2zjA
	TK0XtOgpfKd8I9WDL1rcK4QM96dO2p/Rf+d7idjhhLLfMgHXsCpECkzYK8esyZxf0Qj/2aoip0t
	p2EOWOpSL76YMiJvEJyMoZASYqlWzA3V9eHssFwDudZ3j3hmqrMb5cmpHa84ux+saRk0kSj6hoW
	TLLX1VUyzXbaD1leJkIjHacVA+IkL1PDf7YbXwHNXc2INprX6rnYfeTvGLE9iAauSs6NRJkgfIW
	Q+hbIPAeTEvepduPDBLtdQ86GT8NRSqG0wGr1WCqcmrnFkcZWY9wPAuw8rKD27gQNNBxeHP79tk
	Z/MUoNaxu3dDi0xzmduT9S3jqs5J3xqvZqBzFKzdEAiyCK5WlggNDlabNgi3FBJaVQs2vlfaJ0b
	DCbKIIm3DKBOPZyxUw2I+pwlz9Vr2jBcwBNeg9k6oD2C7l14lXaMy9oAw64pNq3uyLgptC3xXyR
	/RKIzaW1Lc=
X-Received: by 2002:a05:6000:2c09:b0:484:3621:6341 with SMTP id ffacd0b85a97d-4858729b772mr18779546f8f.15.1788695535665;
        Sun, 06 Sep 2026 04:52:15 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.250.151])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4858d2693e8sm19337821f8f.3.2026.09.06.04.52.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Sep 2026 04:52:15 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Sun, 06 Sep 2026 12:52:06 +0100
Subject: [PATCH v16 5/5] media: qcom: camss: Use data-lanes starting at 1
 for new CSIPHY mode
MIME-Version: 1.0
Message-Id: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v16-5-f7bd68b5369f@linaro.org>
References: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v16-0-f7bd68b5369f@linaro.org>
In-Reply-To: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v16-0-f7bd68b5369f@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2514;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=vw3X+c53CUkT8miKrkdFIh6bJI27fiNryef+k/oCD1M=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqnVPlTxwbVbuAhh1qf9XNxhb5EZKW1nacY10O/
 CUPOuQqRd2JAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCap1T5QAKCRAicTuzoY3I
 OpDSD/414qRMqOhoAHiZjQ6lw3TJsUKLlE9mo0ZHC+WePHuCBqEPLbkr9OAWWXuhFnuttqil2uz
 DDA/pFBCS1uyY+lwA20HSegLL9nVZVCf2zUB+UT0p93RB3/NW5/3Z0wsaWUoczZ+1ek2oB+3C0I
 0/mubBecrUgfaSxWQQP3No6r0HaSO5tTj9mhPNbFY2qvDLj0txVmSMs88wy95pJ6pMmN9bOAZ2A
 cv3sdMe80S5eh/+lDY2aw7MNmoOfztpskg55zeRGqeVUfluXPPJGlCZ/glaWCg98ZfSGgPyXtrU
 JgK0taM4gvoC7X3Xamn9kYvfHXCQZFzih4mC/aDnhflzYIx08GQSA3+Jv8qFnxLSDLWtMk73j7n
 CeGp5Ght75xVbZW0C8UxNZFe9ghjVZkqk6Q13rQNGNA2puGB+pQB7d1mokm8fGHBZbB2JY+nzSb
 5nYQpWWfQVnzmY/Rxbtzd6VGRKRMlzF4uZQoQA6BvXobGvianomi4OZLG4vx8BdPY6wdCQjYdKg
 y/js5oFmtuiMXk2IX4+Z/6xEtje/TSXtt+NMZDv1Qd6zG7HTubjfyvh4Vbj6OKk6FSt3lUJaKY2
 V82ZoymVn7rbILKEuf7xoXBYzEzy97vhWDCe0AaJhvv6y/O0GovVBiAaAvc6VY5kjp2Q3GGduVr
 mOr933r4FoY4heA==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260906_045217_365928_0C338E98 
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
index 84097d82d99c9..8a4d8a206cf0d 100644
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
+		if (lane < lane_base || lane - lane_base >= CSI2_MAX_DATA_LANES) {
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
