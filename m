Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8CB7C10F1D
	for <linux-phy@archiver.kernel.org>; Tue, 13 Dec 2022 12:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=595xj0swIV/Ub4hKuEsxc29dFaZCTIuVsUjRfOQq+gU=; b=iS3PT4w31WFPTy
	+OqEzvku4iCG2CmU3OwEXfZ9NFii3gDCO6TH091KXo92ZMiE046hjsK9xoZIxT44FVhWxvjvu80yL
	62mXGYQaXsHpgFIQfpk7oJTbMUVdmP9yLIvhyaJ6YL8mRmeGoDq4/HzyQtcU7u8YvhVGcCMCJwr3l
	jQa18jUJpHuDUKQSmB1u3PKZ0ojRyc+4BrEbBRxr5LYFOIZUxyTEyAKRFJN/+I57OzIAT7qe2kmDW
	DbaT0RMeVQvuUwZkVlWD1aXK4+bL/2U2sp728sLH5e2rY0JFV3ldrzrv8KbsldSvb54OhZTeEs4re
	Y4OEYH1LaAtC4FDP5skA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p54PU-00H9Xi-5y; Tue, 13 Dec 2022 12:29:24 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p54PS-00H9WN-2O
	for linux-phy@lists.infradead.org; Tue, 13 Dec 2022 12:29:23 +0000
Received: by mail-pf1-x42e.google.com with SMTP id 65so2055478pfx.9
        for <linux-phy@lists.infradead.org>; Tue, 13 Dec 2022 04:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PE+N1Gt7gGhT7n4RSqzdZOvLJC2LaUfbxIBsv2ZH22E=;
        b=c0vjS0nWa0vtcHTHwwgvDJUpfJLA8wLcA+h4xzxkUaFFMu7alJOjtQOFHBtfipU2ro
         lcC50Ke9qOuIC7bXqZsGxdNFgRJiAvn7SJwAHDoZHFB0+9ob5y5MWPnjXME2MPWBqtUe
         br0mKI+1reVRTjp6rBFCa04joQZBwKYtnnEa0P0+kALh6PtsDVSigsTr8yzjhG00FMoX
         5ICrfB9iLhfZdqDs25kzK2gnSz7VK4+jfMhSc99zZ0US/08IKupYykB5YN3ED03vsJWK
         xSzWQTKXZN8DTt2FjXPWttv6E+waW+bIsajy0SFBAUJzg+H+5f+hAV7ap5l9bIGX7xxu
         etqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PE+N1Gt7gGhT7n4RSqzdZOvLJC2LaUfbxIBsv2ZH22E=;
        b=K55ss0Eyi0E/V07IhtYTjBZdTvMl7/qtuLIgJSZZD6H/rZC66kZZfd0ALZMgea8L2L
         ptg4d9+swA6vKYkPJUVdCRxWY2xoi8ZrvXlrvVkLN6IisqnX5r86jOUmaFs6W1+FQ0Ud
         7wpvfaNRdxF2gxS/rrKnH+SbzAH+3gD3yFUErhql8S/SSX/l7AuxecfwoxM3ZD3ZcrAI
         AfsRS6UBWr70suS8p6LnYuO8IxB2vukv/janm27ue0wkhoEErbGzfiPlTGyNyZAwBxWV
         qyCEEQGzJF/r+0/9WBAkSW59HmON/WYaaUBHxX1Plcizmcw8dHAZcE2YYV9JyWQ/wS1E
         u7FA==
X-Gm-Message-State: ANoB5pkdWDETqPa3pLAnV4x/QrURf0N0de0K0JMH/A+GVpBPa3kTpSob
	HmP3mVJnu4xpfHt/m8erDXEPQw==
X-Google-Smtp-Source: AA0mqf42wIJlaGrjyscSyxfrsCX6wYLLGGWN2fZBuQgon8p4dxNSQ3PcWR2HLv9MPBgwK7o5KQZ2og==
X-Received: by 2002:a62:e21a:0:b0:576:d2cc:1ad2 with SMTP id a26-20020a62e21a000000b00576d2cc1ad2mr20161699pfi.6.1670934559070;
        Tue, 13 Dec 2022 04:29:19 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:1c60:4bad:5c3:ab51:3d81:6264])
        by smtp.gmail.com with ESMTPSA id y10-20020aa793ca000000b0057555d35f79sm7602468pff.101.2022.12.13.04.29.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 04:29:18 -0800 (PST)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: vkoul@kernel.org,
	linux-phy@lists.infradead.org
Cc: shawn.guo@linaro.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	agross@kernel.org,
	bhupesh.sharma@linaro.org,
	bhupesh.linux@gmail.com,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski@linaro.org,
	andersson@kernel.org,
	konrad.dybcio@somainline.org
Subject: [PATCH 3/3] phy: qcom-qmp-usb: Add Qualcomm SM6115 / SM4250 USB3 PHY support
Date: Tue, 13 Dec 2022 17:58:43 +0530
Message-Id: <20221213122843.454845-4-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221213122843.454845-1-bhupesh.sharma@linaro.org>
References: <20221213122843.454845-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221213_042922_128437_2A88FBDE 
X-CRM114-Status: GOOD (  10.08  )
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

Enable SM6115 / SM4250 USB3 PHY support by adding the
qmp_phy_cfg data. Since this PHY is the same as the
one used on QCM2290, reuse the QCM2290 qmp_phy_cfg data
already available.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 7a847ffe46daf..8ede8a6ab5e02 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2622,6 +2622,9 @@ static const struct of_device_id qmp_usb_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sdx65-qmp-usb3-uni-phy",
 		.data = &sdx65_usb3_uniphy_cfg,
+	}, {
+		.compatible = "qcom,sm6115-qmp-usb3-phy",
+		.data = &qcm2290_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,sm8150-qmp-usb3-phy",
 		.data = &sm8150_usb3phy_cfg,
-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
