Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B7A8CCA47C
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7lEUtNVycUK8QNKqE+CyD6OrMs6C5aaCWodORI/ZUXw=; b=BHNNhpCzv78NVS
	J5q01EVlSdpzpVERlKf5k+tarXz1yQneXMOvm6xBBXFU5BFh1WdXHbYLshtQgBzdBAo9bsICGdTCd
	TK2gX1gFByWqP8HlkCy5hOSx78pgiJphvUasTPaJ3uuFJkwEGNtotwYp5UiKSsUguCwTXjjXPSAc9
	zKNmR8tbxPZcuBDNeEwYRzyu452oWVlalHq69eQ9FWgyzVsK3TdsGRfED29hlRas8lZAo7tTTJK74
	WwRx8yc3P95bqwrN+cvmtYrEUv1gsSeOa1l9Fa4mknfNrY8G1ImvppbIIrcF6s+hzjHhntcedCeoB
	1ydKpGteL6K8VQ9d4drQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDZ-00GwRj-M9; Tue, 05 Jul 2022 09:51:41 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fB4-00GuSZ-Am
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A2B49B8170C;
	Tue,  5 Jul 2022 09:49:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21808C341D0;
	Tue,  5 Jul 2022 09:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014542;
	bh=hOZdnrgEGFBVc2ds9Xi9MI9BeEk4FYW9RhPpXX4KXlg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XqNkofo+AaX1/AKivDAxrHFCS6fce32JK3UTXsYi9SsCjl28VMSfI6sxzEXEunkQV
	 FVvw7qViIOT9WAWqwMTEuWust6QJiR0bN3eEKVP/SmcT8sqEsxCOpDEJulI6cVUrFU
	 sGgx9ZLIHf8v+GqrNSXqCOK4asnqE6q7c74rk5NNVomVRD8kivj3n+I4AfS0GChRik
	 ZgIjXdWEFqNtmjTATN43B6dJgRbu/L2vordtfORhHjS1CLePWGM7IWnoeS1nrl0jk6
	 zcASf9H8AZ2v7ZN14tqoHtRNHwDpVkb1L8/qrNeie4SejF6d9YI91/dpNsY3OYtnZo
	 PngVpUdQl8wQA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB0-0004Wz-S4; Tue, 05 Jul 2022 11:49:02 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 04/43] dt-bindings: phy: qcom,qmp: clean up example
Date: Tue,  5 Jul 2022 11:42:00 +0200
Message-Id: <20220705094239.17174-5-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024906_564115_C2C748A5 
X-CRM114-Status: GOOD (  10.83  )
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

Clean up the example node somewhat by grouping consumer and provider
properties in the child node.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 83f777b4636f..e678d7d5f675 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -486,10 +486,13 @@ examples:
                       <0x400 0x1fc>,
                       <0x800 0x218>,
                       <0x600 0x70>;
-                #clock-cells = <0>;
-                #phy-cells = <0>;
+
                 clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
                 clock-names = "pipe0";
+
+                #clock-cells = <0>;
                 clock-output-names = "usb3_uni_phy_pipe_clk_src";
+
+                #phy-cells = <0>;
             };
         };
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
