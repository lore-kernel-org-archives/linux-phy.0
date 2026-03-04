Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C238EB7EB5
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 09:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Daueahi/0NtWqV2uzJ3pduxfQ3X4I/4OvbAkRhm8FJE=; b=aFzo+sv/TaKSPb
	4PojLyI+QVVDievykGDH0Ko7ASQU72fo7f2rzpBLrj4UaZmJRyKVszDefUA2e1X4NZ6x6iKiDqUb0
	uwSGx06SQhpjKaP5rkQpRNU6sTrhu4/7zxIgsxjX13ilnhlimHZxsOCY/RTQiHhWr2Za4uEUOVfob
	CibAsG1Ur+0tzAOBZRo25eSyy7spN5TyBEgMTGfuzPB0BF/uDD6L3lIFGhK4kAZBghst8rp6Tvpz1
	KI+MHzrx1bpZxq7gnIecoJLwcMiz2Gi47hda4B/V0W1rkOuozs+4+UD1M1aEO0TUo4/LisWhaMFyX
	neGORzjAiXqOQ27zPE0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxilp-0000000GudO-1Rwn;
	Wed, 04 Mar 2026 09:43:57 +0000
Received: from bg1.exmail.qq.com ([114.132.73.137])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxill-0000000GuYe-3SRb;
	Wed, 04 Mar 2026 09:43:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1772617397;
	bh=6RKYrl9uKKYeoPLwxT7m43ODsBqPn7Ulx0XyJQsA0lM=;
	h=From:To:Subject:Date:Message-Id;
	b=kU6LYglZIXTGI+0Pf+gb3mkQdKf0XtrobTJ95v3nFUcQz/x7trt0z0Vh6G4dP7J87
	 DsfZ5opvkjCOyo6aZMzIoDi5Cd1ix9Pg0yhyBYDS+9OG18P55S6znuc99Ng7yCSIxk
	 rLkb7vhd8ldYKIsZ9sWUKM19dx5WJyl4kTcFZeiw=
X-QQ-mid: esmtpsz11t1772617388tfeb4e152
X-QQ-Originating-IP: +aJbc9WVF6tbHYn3OXz/sefWHKyzghaWilNXBu+Q7Yo=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 04 Mar 2026 17:43:03 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 1682592045439921271
From: Chaoyi Chen <kernel@airkyi.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Peter Chen <hzpeterchen@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Yubing Zhang <yubing.zhang@rock-chips.com>,
	Frank Wang <frank.wang@rock-chips.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Amit Sunil Dhamne <amitsd@google.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Peter Robinson <pbrobinson@gmail.com>,
	Hugh Cole-Baker <sigmaris@gmail.com>
Cc: linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: [PATCH v15 8/9] arm64: dts: rockchip: Add missing dp_out port for RK3399 CDN-DP
Date: Wed,  4 Mar 2026 17:41:51 +0800
Message-Id: <20260304094152.92-9-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260304094152.92-1-kernel@airkyi.com>
References: <20260304094152.92-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: OOWntbL6xj165D4CYAGZbOXCNVBnWuYBXGEwhQv5eJB0O4TvyI7iFFNO
	Fb+4sxvZT6TqZF9Y33kUksdDjUN3qs7LjqUzgKBD1hbmxNMYsnwfK/S+gEnHyeQfbXTKTwn
	eEgWYPGCTA07j65KUnoA0RxS7OAUqrimCdr65HXiK/LpOwCNyc7+RBqkfl23pvQnBZcPZPJ
	9qRa9q1VipPWM+xeGlgFjGGh/KqJv1dtSdgmD7WBs37kOOv4qiQt06i/PGJyGCQmZ0/PPs+
	20FAvsHhSNTVCZNOESNqJLA24Aj+t4lAcg5Cy3swQ4AnFrlrPiPSnelX84HUHZwnsCfWxFv
	i5rdLb94psZTUWzYuiBiLUDlZhUpUnyin5Ps3Uo5YlnqEdrQQEG9183c336fQzvhrz3EiC4
	N58pGN1Y1hLnwzwqQJZuAjKbuPHwMxxMdPsyhJ017+vgO2qteTkfdkcyOb5anam6Rrma8vr
	sfNCji8tFGftpX5UhfxJUHz31tEMNS8rAAMyvXLm+27sDT2+f8f9M5elheWrsxWxOMgDQ5w
	Ksj/RtWDM+0MtiLE+VSgkoTufmRrNbJvOfxy18NKPueVOPHYhpkKE3LheT0XW0Dtkag2zG/
	EDPNckF8X3WbRUz9/RlF4WSjBRvU0dtS9Z3PAzsbabP3iaVKGSFQhvbqEJtkTjQfCheNgIc
	XFSPr2RXWT5knXT3ZAq5+gAvuzZzFnn/4H3Z8UvhAnItA8IR8QSupP+4fmAPGUAODOQRzI3
	8Qgxg8SuMh4n/mQRH6QnNy5OGCgQILZzivH2SSXXF18ZWcJGpC8KWuB20n0aySS/YvBaRu/
	H8nsCko7nh0gdSqWX6uv2j6zj2v3tjEDfETiA4bJT+zmVHHyMdHSN3ycP++Vu3KFGiogEku
	1Amaf2bIbwPV3QzxeD6HyfTC1wexOKLoVG2wbtCd3FtmcCkXxpGRxCUz7KwuyVQUjeohxd3
	T7sGgz4HgTTfHUxQQTCihn9BYD/g5xIV9GsTeR1k0mqDe8Q/RAxnGcskCdHlmw+VfNbzy0q
	G19F9wY72SXywP96Rfg67kXSk3p7NnsAXb85JeJA==
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_014354_226371_D530DD73 
X-CRM114-Status: GOOD (  10.98  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Let's make the ports nodes of cdn_dp in the same style as the other
display interface, and match the style of ports's yaml.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---

(no changes since v5)

Changes in v4:
- Remove unnecessary #address/#size-cells

(no changes since v1)
---

 arch/arm64/boot/dts/rockchip/rk3399-base.dtsi | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi
index 4dcceb9136b7..93b42820998f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi
@@ -618,7 +618,11 @@ cdn_dp: dp@fec00000 {
 		status = "disabled";
 
 		ports {
-			dp_in: port {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			dp_in: port@0 {
+				reg = <0>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 
@@ -632,6 +636,10 @@ dp_in_vopl: endpoint@1 {
 					remote-endpoint = <&vopl_out_dp>;
 				};
 			};
+
+			dp_out: port@1 {
+				reg = <1>;
+			};
 		};
 	};
 
-- 
2.51.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
