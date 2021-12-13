Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8977C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 13 Dec 2021 13:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZSowcL22oKvYpOOa7XIu20ocFm9cdWmW4H14069jeuo=; b=14I1LWWb8ZbqHU
	dp4rs6t8BEyN1TORdA5GKJMDM6mAgOijTpGyHDg/A/IYtXiZU7HnjXAlYxndAtMOodhCxPsukWR9b
	B+HNNGA99dwcnf8fclZMlvmkqORT+IumPjPdJM47v/ciPg7afouigeemOTO0Tv2TnRwNci5s1E/+7
	kHlMOArNwlABE+cGdGYsb+51qUdxggFXxToTIMebMcF3QzKxMUhEEbg6P9oD5XjkVEYqrUumOEZFm
	TxCdEkK5KST7HSqnlKED+EGDJqrN/4ke3ZlR5VnnkNyZkg6aYVzCVab11zJot2/hbJ4EE4ZjWN0pa
	BV6vJ28MHiwscmL01H6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwlAc-009dgm-Cf; Mon, 13 Dec 2021 13:15:10 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwlAZ-009dfj-K4
 for linux-phy@lists.infradead.org; Mon, 13 Dec 2021 13:15:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 55CC5B80EDF;
 Mon, 13 Dec 2021 13:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E36D1C34609;
 Mon, 13 Dec 2021 13:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639401306;
 bh=ZSkrJr5jeIX9QM42d2p88YBZcxwTdx2H/m0sT26M48g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QAJ+o+Oq+h3S+HVI6cs3fMIs3R8JPPbhNzXgdn3uBaUZwjWg6of4ZmBR5zdyVPpyp
 K62C43kK7aQq+K3FkWzsEY5sNB2zvPAK0WucA+VjYapqk57gwXbYCr0JCcDZ1nRC0W
 3FUALxGhZnmnqGGbiGEzP4Lblpm06raxb0FjDdQYax0sfUkyOKclZ45NuW+gSYGBuc
 cYjHYtNIUW8VMKsqShTxH3STSNB7WningNJmuNSre67+fEAowNwoVKbYWAMoj9RDgT
 xWL5jnZ1ZQe1zW42EovzBLKNMXXRQ+NnZtt+98NooFFYfd0UYerY5YjhKW2QmKpBre
 AulJEVNqI+Jew==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Wesley Cheng <wcheng@codeaurora.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: phy: qcom,qmp: Add SM8450 USB3 PHY
Date: Mon, 13 Dec 2021 18:44:49 +0530
Message-Id: <20211213131450.535775-2-vkoul@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211213131450.535775-1-vkoul@kernel.org>
References: <20211213131450.535775-1-vkoul@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_051507_818064_5481F7B9 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
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

Add compatible string for USB QMP phy in Qualcomm SM8450 SoC

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index c59bbca9a900..d625a6fe0205 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -51,6 +51,7 @@ properties:
       - qcom,sm8350-qmp-usb3-phy
       - qcom,sm8350-qmp-usb3-uni-phy
       - qcom,sm8450-qmp-ufs-phy
+      - qcom,sm8450-qmp-usb3-phy
       - qcom,sdx55-qmp-pcie-phy
       - qcom,sdx55-qmp-usb3-uni-phy
 
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
