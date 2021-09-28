Return-Path: <SRS0=m7K2=OS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9D73C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 28 Sep 2021 02:20:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 80BD161260
	for <linux-phy@archiver.kernel.org>; Tue, 28 Sep 2021 02:20:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 80BD161260
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ng3eO/D4nv7PbhHlu9j1v1ilqmJLdWVlu0KjbroNpd4=; b=ymzxhysCMRqbsR
	TYRK8YvfjTBTTcv9g9qOIdlokXwqWT1020tPs/hndWBZEctMgnHXLzm2Jk4XtkP4z0ki0RKk+vZAA
	WEiXV/RyKQHF6G9E6DiNjlAWUbHPJCp9xAfL7vPGu595v75x9joHQMzuXMkbE8IYj/b/10o1HFPKh
	5wPtQ6b788K2z+Bb42SUs33DSbBkD3AuC++y1iNsoo5q2RkHlUe4JQhn0vYlRZ0aYZAlZD/sMGLjf
	eRXHm/jpDfCt9FoD2NM40VRiiPEhvlqZxt7Ln2L4hN6n9cuN2pLtA9/Yap/pszCRiDF3oUZcZ4zkt
	xVB/narMvdieTVVdxb/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mV2jN-005Fe3-Va; Tue, 28 Sep 2021 02:20:29 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mV2jL-005FdG-6w
 for linux-phy@lists.infradead.org; Tue, 28 Sep 2021 02:20:28 +0000
Received: by mail-pf1-x436.google.com with SMTP id g14so17649576pfm.1
 for <linux-phy@lists.infradead.org>; Mon, 27 Sep 2021 19:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qHSumsFttLNe13vy2J2oY9G24Uv+x+gtP2uj1qdWakg=;
 b=XFaKrbicAE6MOpmf9fQ/3JJ+kZkW/PeuWDB5ZjnQ0QGs1Mp5Di/jwitdHQM2indyCa
 Z/9j+E+QPCa37kz8uaMUWSbYLL7qWCmimkX2x4PtZ0rcKS/5yV5ZowVP0g44ins406Rc
 cy3ay2TAsVjifjTOP2TMsP0LfGHBrml14J7UqenNeJvd1A0dR2LmR5doGNa5nSUWOz5A
 9HOIiQY+SsLLGtjVYk2p/rcndvoJ92oGoDclxtB1JPkN3WRaozOISMsRfB4W2ZCk0QaN
 p/emf1cqbkNXM2sDuCcRieUeMgHs12sgWlMO/pwmNph9acuVaoILE3qQOD5emHhOQDMi
 oq+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qHSumsFttLNe13vy2J2oY9G24Uv+x+gtP2uj1qdWakg=;
 b=uMPfFpF2IHdcaduqW0bYaetZCmzoDRL5/eCxVdI54Xa742G/JaGtdl8MGED/mA+lP/
 rdO57VmP4J0EKFV4IDmTwSLspKkvlUujIJYpg00ZtAodcZg1k4rp53sajSknQZY77VKP
 76ebLfKttkGxUxPr2qTwXQXLmwNT1VXdu+zyRjmEiq2OESSGLN+jxBnJKlU1A3THoUrn
 Vyh6X2kPc5XHP6RiZ9GRnnVmS4BJTg9Wf5IDdjwDwjqY51+KrrZCisiJtkrXdvHgLhLB
 zEWGZ/P3CI4ZGD/BAU1Ook6RLqtPAIhRFFR6Utn2Mcuf6eLVBo7oyhiOdDZc3DtOpwUZ
 ZXOA==
X-Gm-Message-State: AOAM533B2r9NTQOfETYTd2Y/0gQb+abaUH4zkQnIMVuT5zVvIaLqqeF+
 5ENCdRhGxoMRJ4gk9hFxGCFO2A==
X-Google-Smtp-Source: ABdhPJzXL8A2F3RqJqnz6h6cJYNbXuaeta2bLaHDKzTDqrS9svQq+oMfQ0pUUulrGexEbWkEB74vyQ==
X-Received: by 2002:a63:af4b:: with SMTP id s11mr2351998pgo.185.1632795626732; 
 Mon, 27 Sep 2021 19:20:26 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id u12sm19178729pgi.21.2021.09.27.19.20.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Sep 2021 19:20:26 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 Jami Kettunen <jamipkettunen@gmail.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH v2 2/3] phy: qcom-qusb2: Add missing vdd supply
Date: Tue, 28 Sep 2021 10:20:01 +0800
Message-Id: <20210928022002.26286-3-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210928022002.26286-1-shawn.guo@linaro.org>
References: <20210928022002.26286-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_192027_280896_A6D4ADA0 
X-CRM114-Status: GOOD (  11.65  )
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

Per downstream kernel, beside vdda-pll and vdda-phy-dpdm, vdd is also a
required supply for QUSB2 PHY digital circuit operation.  The driver
works right now likely because firmware already sets it up.  Add it for
correctness and completeness.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index 3c1d3b71c825..02845e08dac0 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -371,7 +371,7 @@ static const struct qusb2_phy_cfg sm6115_phy_cfg = {
 };
 
 static const char * const qusb2_phy_vreg_names[] = {
-	"vdda-pll", "vdda-phy-dpdm",
+	"vdd", "vdda-pll", "vdda-phy-dpdm",
 };
 
 #define QUSB2_NUM_VREGS		ARRAY_SIZE(qusb2_phy_vreg_names)
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
