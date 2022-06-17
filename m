Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94969CCA479
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jun 2022 10:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SbQzPx9dKSk7Fwz63Y/SUvoZvBHmxIYJ6CF7TQyiJ+Q=; b=hOJJnrM/33Rgaf
	WaQkt/G/yWu1QEATdf2cMGONOkjR2rMF0A4B31gzFuwK1k4ae3K377i055P+1WL30V+ttkmjg2quS
	CmCPXRC40Euc1Fyn7eHLAtPcB0DeaC13Me0DQ+31QPyG8WXqydoOFuTppXMHHDx4bQVnBXZApO9dE
	YDodbenZQ2D3vafGrcCPOtafWUR+dXZx7uD1KkPnOMfUBvUjsW65fGvv199wO/7diEVeVswGmZemJ
	Orq54nWhLp1NC5UKzPlyGNfcRYDqxvqvALt6vEDJQZpzNcqgCj8tx7bK5blyzrWPTaY4eC9au/XiD
	jJhrAnxZIcSl0Vvp5qNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o29Kz-006z5O-WB; Fri, 17 Jun 2022 10:36:26 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o29Kx-006z1r-54
	for linux-phy@lists.infradead.org; Fri, 17 Jun 2022 10:36:24 +0000
Received: by mail-lf1-x12f.google.com with SMTP id i29so6308054lfp.3
        for <linux-phy@lists.infradead.org>; Fri, 17 Jun 2022 03:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BPM1lPElVRKHfSfZkivxc6Klx1L3jnABydrUVBQMP0U=;
        b=T3xd5AFu0aHBgrFvV/NHxWYh+71RiAe0Eb5xnkHI0menhC2kuEo3wShfU2B58UUOvG
         CmBDiAG7ci86yMRjHj8W1NDYKgv9K908P/mPrNJkRxgXcFzTTPnnOxtJ6UzQMTix2MxJ
         3UXIms+ZEue6hENMMfsLhxjUTlR1oE7pPk3paU4X8FPaBXcND8kG2m1B7XFzrySfbH78
         7QcBiVWV7PN3e1u/bEfLiiozdny8GMg0M9olf3tWIQ7G4cO4z/uV1vgYzHe4GYufp3BW
         6DiUZ/JKvVenxBKCRUOp8pTwHsmV3oVD7fsu8wt4UaBigHI6hyMadTnwsn2BuKwnUVFv
         BxGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BPM1lPElVRKHfSfZkivxc6Klx1L3jnABydrUVBQMP0U=;
        b=C06B8JhLH/1dRQrNLJMve/XSUx4QbTIRjQkS9Pg6Hj2keoEDEeX7gapOKqJwnvGtCi
         DSHzhJSV/xtWIFXOPsW0QDCZImG8dkYM/raZ/kXOfNZoX1LhLyQIJkHRAQmIF+r2w1A/
         WVQxhO8PyVTtUbWwqAex9re3Kg4ka/c4mFc6BTI4efG5hxmYKqhF0sMcRnOoUBhOyKuH
         LtOo+IGz5EFAYn7VFaoTGTnuLOyoB0MWl41dscf+bovrjQA7PE5+K8pV0RnI7t5g9XvT
         91nz/xEw4qDzM7PCwqYvg4T7ZYatlgLeHG0F7HXwNbmRgRPZ85r/whOnjhLSGpuHsNLT
         MSbQ==
X-Gm-Message-State: AJIora+R5yabrVLLtImig3NmogWnlBfLaP5irOSiM81uFuw7uWyXDArY
	UeOfF25Wnw+GTRtWJJDuA/8lBIH0V7k2ZPlD
X-Google-Smtp-Source: AGRyM1vQFxmhM36CJpjLmGbKY/c+jI34RGfZYGRL2Wt7y8RQnl89EqIsPtHq0/HJz1sNjOM5CrFERw==
X-Received: by 2002:ac2:4e86:0:b0:479:242:61da with SMTP id o6-20020ac24e86000000b00479024261damr5242193lfr.40.1655462179436;
        Fri, 17 Jun 2022 03:36:19 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d3-20020a056512368300b00478ff020832sm591803lfs.106.2022.06.17.03.36.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 03:36:18 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH 3/3] arm64: dts: qcom: msm8996: add #clock-cells to the HDMI PHY node
Date: Fri, 17 Jun 2022 13:36:08 +0300
Message-Id: <20220617103608.605898-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220617103608.605898-1-dmitry.baryshkov@linaro.org>
References: <20220617103608.605898-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_033623_235751_7CE25CD5 
X-CRM114-Status: UNSURE (   8.95  )
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

Add #clock-cells property to the HDMI PHY device node to let other nodes
resolve the hdmipll clock.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 9932186f7ceb..f94f10947f26 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -964,6 +964,8 @@ hdmi_phy: hdmi-phy@9a0600 {
 				clock-names = "iface",
 					      "ref";
 
+				#clock-cells = <0>;
+
 				status = "disabled";
 			};
 		};
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
