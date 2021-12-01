Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30F6CC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  1 Dec 2021 07:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UZVaEZjbfIaniaq0DuWUUniSuRFNJ9DQ7r2v1CkGg6s=; b=EVOliMrqkCsDle
	K7RiOn9riUAa8cYNX920MarKECYkkjfOQJW4w7i8UMIRevUxjzZjcwRMutUccV3X8b0TFO1/c3+Sp
	U0W3ZlGqmKPx1fEVmKMiolGApdJBRPYdLrdrPHSzMtmcxJb98iCVG1iE+5xGy+PeYjRuYLndcgxMW
	/6FYkF6YEP9Udq3ryCHseYJCX0EdMHQ5mo3vVhtAv/2Kgm4M8bOcShiT0x+REbwpWgVk5S7C2YOMi
	fYCo8aGfRtnXLiow4Z1zaudomzMTLr5/MP/l4FPTLaerrqir0+oV1gdwRY/jX9vgiYNidVs89ymQd
	nZauOK3Pe/x4pXbTJkyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msKIm-007ifZ-LP; Wed, 01 Dec 2021 07:45:16 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msKIk-007ieH-If
 for linux-phy@lists.infradead.org; Wed, 01 Dec 2021 07:45:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 318BAB81DB4;
 Wed,  1 Dec 2021 07:45:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D506EC53FCE;
 Wed,  1 Dec 2021 07:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638344710;
 bh=PhKsrRw9R4/4lBT6Vqg0SK7GxrnEvzF/EvK1ACPean8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DH6vwBrPEsGI5LHMAqUhLvQu/pepqvR/kP6544IoQ4V4h96pQQYr+m4rwKZO0R2sI
 q0sKlM7uhpxTTMm+lPaJVs2qizEOsn444NspzQ9C2Df+0vr4O/cO9Oj4SwxHBBR8/Y
 dkBfiqDtdy2vF41Xg//h+pgyZMIWd3IaIJDl5ha1AJgHlhF2eaPr9kYw4cY+kTOck3
 SnB6hA5tI+OVs2Q9V8lnHS/n8PxW5finVy5T737OZNVtiep5lUTuzl/FBNu+Sj+hcj
 BjgzHkQoa58VQMIdI62eYfjPC9vrBeQW6x374x+nkWvHvoBTYW8zsilJ1kkE3+qIzd
 0GWXpgy4OULTw==
From: Vinod Koul <vkoul@kernel.org>
To: "Martin K. Petersen" <martin.petersen@oracle.com>,
 Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] scsi: ufs: dt-bindings: Add SM8450 compatible strings
Date: Wed,  1 Dec 2021 13:14:54 +0530
Message-Id: <20211201074456.3969849-2-vkoul@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211201074456.3969849-1-vkoul@kernel.org>
References: <20211201074456.3969849-1-vkoul@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_234514_773614_D1C4AF04 
X-CRM114-Status: UNSURE (   8.40  )
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

Document "qcom,sm8450-ufshc" compatible string. "qcom,sm8450-ufshc" is
for UFS HC found in SM8450 SoC.

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt b/Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt
index d8fd4df81743..d0fee78e6203 100644
--- a/Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt
+++ b/Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt
@@ -16,6 +16,7 @@ Required properties:
 			    "qcom,sm8150-ufshc", "qcom,ufshc", "jedec,ufs-2.0"
 			    "qcom,sm8250-ufshc", "qcom,ufshc", "jedec,ufs-2.0"
 			    "qcom,sm8350-ufshc", "qcom,ufshc", "jedec,ufs-2.0"
+			    "qcom,sm8450-ufshc", "qcom,ufshc", "jedec,ufs-2.0"
 - interrupts        : <interrupt mapping for UFS host controller IRQ>
 - reg               : <registers mapping>
 
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
