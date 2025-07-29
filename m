Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E98BEC83F26
	for <linux-phy@archiver.kernel.org>; Tue, 29 Jul 2025 09:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nJLzJQkXSWiGtvhYHhm4zURHu1WUUfSmC7JUg2A/Cc=; b=lFSaJOmEC6ZGSo
	axTZTC4XGAnJTZwfyZG9FIXDBeY/JhG8qbMGD+rqBtdWVexMYIkWMPyAfjHVjLDY4LD2rweU0vIbJ
	YoVXbPCBwfOKHG6UTxxWvYbx5FWUPjnRXXUYkbWnKk3f+t15dGegjvB1KNfDqiVh3GHEZvbkRmr7o
	BliNQ0VI2F9Sl0HxsDX2h3MYIPW94IueUiLRRjOk+/TXKfuXVf2Ejl7nHcqtBl2wLJ69vgxV/vAB+
	PVe+o77TcB5+w0dsyxZUVdkW161KiQxZ1hbMSYNV346Td8/xW5dUTbgUwkbM6p21g3m27NUr4Tnz7
	9t3e7H+TCMji+wF1vErw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uggSR-0000000GMt5-2q20;
	Tue, 29 Jul 2025 09:17:15 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uggDj-0000000GK7B-110w;
	Tue, 29 Jul 2025 09:02:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1753779652;
	bh=q6Q48lBZu83JxJ63QhH8HxOwFpopi36sswkLOu+jOhU=;
	h=From:To:Subject:Date:Message-Id;
	b=f3vxZF3sBb2F/tOX8chU38Wz+P8+cALBHdASqXt+vCvkAmbyzM+gfKqrqSSFA0UkI
	 eB4lFIhLMJJVdDwZB2JmPdN9451ZyQsUcpQ1Ju3D70+SVFO7O47gKctJqzfJaclMxU
	 kc6RdiaNzV9CrxtkYsUu54WWBiIFoSjrRzbCvTt4=
X-QQ-mid: zesmtpgz1t1753779643t83ca4cf2
X-QQ-Originating-IP: GNy0TVRpqK5gjjPPYnOaHZTZmyoTUAn1duABOXp26z8=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 29 Jul 2025 17:00:40 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 17940541300271697831
From: Chaoyi Chen <kernel@airkyi.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Yubing Zhang <yubing.zhang@rock-chips.com>,
	Frank Wang <frank.wang@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Amit Sunil Dhamne <amitsd@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Peter Robinson <pbrobinson@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v3 1/5] dt-bindings: phy: rockchip: rk3399-typec-phy: Support mode-switch
Date: Tue, 29 Jul 2025 17:00:28 +0800
Message-Id: <20250729090032.97-2-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250729090032.97-1-kernel@airkyi.com>
References: <20250729090032.97-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:airkyi.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: OalYlZRf2lKLUAeMCXjbGYP9HGcj2M+CKDdxhvxk+HFKFElrocLT7229
	NLtxF+eL1Yd573caTx2KKo6gYzFiG5NNdUkCn5c8a/nd1jhp3VP/DRTnI5PJ8Bg8GEyFoi4
	4c/vO7dDCwluAY4xnrgGB+fd3fBaJv6O7dimFgc0WPuFeEw/TiqaggTM10GBLv6ou/+INU7
	ThRXdM+btSp1L+2XtTzOoFXfQvD5nkbeH/4iVA/2+ysN71kvw3IV9NSiRLeV3ClEJlcKyNg
	6y+oJthG+YITV8qI8mZs7suZvjhxc3yolWA1nyygHB47iaJvSckv9i0k44s1MtaDj75oYGL
	9s3e75G5xxFE77820n00LBMPQvkwauajVidxj2Iry95YnQJHy4UoDjCS6msrbwjTbBtahTN
	KKShl3i1KwDA974X+LxecziikLqAh1AG2MD4nJnjVtvAsW6m/KBPPjTMWfGsAu4OGF5J+pN
	iA/eo+KD0F2jW+HZwGAQ3cOR3/w+l6mV7pmKYQcGLlvY3xFF9eA1/giFcT0vTK2FzYhNyxs
	kOZDaKcV20vPjVL8MibJbUridntmoR+EUGNUkQmae3IRWo4BLlZgN5QyDWBemNVlL5EnQMH
	WfJIcAvxUwDSYFLbAofAL6g0u1EVXYYjvSCvQyx0DK4CsKSJsVh8xW9CzPzs/T+lvzz61e5
	ngkawO2KUeIK4IFaVkFXqUNosTKpd9ZHzqjVv5ZH+FXcV9bbLz/JeicZW5z8lMSrbJ5LDKc
	511gyVLoxehnbGBUS3Hals3WxPrkL+CFm4AUaIJvBTzgsd3seh+sJNJP89mmM4CuW6ZL04V
	dyLm3SeaEvuf5fL1evtYt5VihY4ZmBI1pUeGqR41YsCoIsaoZHRknQkg+ldk+ZLQT0KLYvR
	lCexgwZcBa5mYh46Wp7MAIyeF5nFkEe6JypaUTJuL6xjz9/ShSxz/rlkA8DpcfYrceK6FBR
	fy1F0Ni2HLRjmuEPQfkQhdEjOOyPAnYW7ZV0=
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_020203_840103_ADE7FE91 
X-CRM114-Status: GOOD (  10.03  )
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

The RK3399 SoC integrates two USB/DP combo PHYs, each of which
supports software-configurable pin mapping and DisplayPort lane
assignment. These capabilities enable the PHY itself to handle both
mode switching and orientation switching, based on the Type-C plug
orientation and USB PD negotiation results.

While an external Type-C controller is still required to detect cable
attachment and report USB PD events, the actual mode and orientation
switching is performed internally by the PHY through software
configuration. This allows the PHY to act as a Type-C multiplexer for
both data role and DP altmode configuration.

To reflect this hardware design, this patch introduces a new
"mode-switch" property for the dp-port node in the device tree bindings.
This property indicates that the connected PHY is capable of handling
Type-C mode switching itself.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---

Changes in v3:
- Add more descriptions to clarify the role of the PHY in switching.

Changes in v2:
- Reuse dp-port/usb3-port in rk3399-typec-phy binding.

 .../devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml  | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
index 91c011f68cd0..ccbe1c9cb0bf 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
@@ -51,6 +51,12 @@ properties:
       '#phy-cells':
         const: 0
 
+      mode-switch:
+        description: |
+          Indicates the PHY can handle altmode switching. In this case,
+          requires an external USB Type-C controller to report USB PD message.
+        type: boolean
+
       port:
         $ref: /schemas/graph.yaml#/properties/port
         description: Connection to USB Type-C connector
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
