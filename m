Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D74E6C761AF
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 15:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O3y/OI3yNpGr/ZmZw7wZEZNygxeRffFoIpy5rYy3oY4=; b=Y45+hb6amfNv4z
	vtdANJTnbuV1YQnNEaIsgzpU3ZpiEJFkR/Ntfv6D2MTMFc7WM6wg1938di6z+C1Au1QagJ1AJnWmI
	hmv2Xj76YVAjCJblQGM706Ba+PKJ+Jt2wBoOd76mxB7SU3V83FO5VJte9bOjLGvp7p5PLzd8RPRdC
	nps2Uvxe9Vcj8simFFIni9Ghk6EOTV2NdittkQdMr1dX/ecYTy99vLBRYWUDYcFgUjS9mTW65UbFp
	qzo/94Yc8VzkoxZ8SBSWhRteZns9/6psxHHwjSHSnGFVmidSA/ZnGX29MUXsXwexUfhzZX5sUreUE
	MGb5N/IwS3/zBPKKtwXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piGQz-007s3l-1k;
	Fri, 31 Mar 2023 15:12:57 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piGQv-007s1T-2x
	for linux-phy@lists.infradead.org;
	Fri, 31 Mar 2023 15:12:55 +0000
Received: by mail-lj1-x233.google.com with SMTP id b6so3350987ljr.1
        for <linux-phy@lists.infradead.org>; Fri, 31 Mar 2023 08:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680275571;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xbv/I5MVp1iCuv0Iib/fBfKCalVBVtTZIuwCTcTsAn0=;
        b=jESewajAZxLET9y1IsIUBduXwUHuZrs339Hotbf7wo/xB1XRHpBQODD8iH+pzzykkc
         KKNkcxvaJNX8dc7lHH6JoZ1voiP+Jo2JnLbHsTyFS9/rJoHFTAtiIW4JjxjrfaeDi14P
         k8PyPAE5JejpoUd9NBAfvK9Qm09OoyjVsbt6EfQod4O93R9dMp8OQhUelUADmzFePYSb
         ZPTg+kSmwDGHrJ6yHKp2lQ9qqQNtcdBBH0izdDf3RrzXap78L3+xcu2Nac7jwJbhYcws
         wPhalfiALy13mHiKFVU30cy6PpZvzd0KQ0LICgoSjB+UBUIUVLidvupqI4mbfojMlW5s
         /A/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680275571;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xbv/I5MVp1iCuv0Iib/fBfKCalVBVtTZIuwCTcTsAn0=;
        b=6QnqFt6sIa+9kCIoOmh6prUMB9sqKII2aEuMVkQSd5v/4MSfc27k9Q3bccyvkln9Dq
         78MBHmnM03E2FCsfY47MgEoQel8TqjoZuw7rNg9CH0Vjs1prsuK+NwEv0VbayVQNgxjI
         vvNSUKzAp+avdF3RX7BapvZjhqMGxx/rTUldFxfNvFUTcxXejK4EJAUyXwDkAxuXh21e
         EieBJQtLD/NamN02pPy7lCJO1gkhOY7shVtAXzoud3ujycPGW/FGdF9+bnlJp4hkrYcx
         nppULSOxpPnx9+vLaIs1T14MWoZUa3D+ur9RMbORLsAEk97Besk/pXRfSDk0zlfEUMxk
         xWmw==
X-Gm-Message-State: AAQBX9fi4OYPxiG/0rIVWHEqJCoKDOMIjQkfDC3p5b1EUDGZoaIO2Pq7
	e14EO7sTP/HxAJoJ4l9q/JPOPg==
X-Google-Smtp-Source: AKy350ZEuDaDtxdN2I7aAkhVEhAorj8u0MpeoZ3VKbgSZCRA0FEvfUSZGqrWCyDnyZeg3esd3sCgkQ==
X-Received: by 2002:a2e:9093:0:b0:298:b045:af96 with SMTP id l19-20020a2e9093000000b00298b045af96mr7952630ljg.9.1680275571213;
        Fri, 31 Mar 2023 08:12:51 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a8-20020a2e9808000000b002934b5d6a61sm395709ljj.121.2023.03.31.08.12.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 08:12:50 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>,
	stable@vger.kernel.org
Subject: [PATCH RESEND v2 1/2] phy: qcom-qmp-pcie: sc8180x PCIe PHY has 2 lanes
Date: Fri, 31 Mar 2023 18:12:49 +0300
Message-Id: <20230331151250.4049-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_081253_958275_4B74C5ED 
X-CRM114-Status: UNSURE (   9.55  )
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

All PCIe PHYs on sc8180x platform have 2 lanes, so change the number of
lanes to 2.

Fixes: f839f14e24f2 ("phy: qcom-qmp: Add sc8180x PCIe support")
Cc: stable@vger.kernel.org # 5.15
Sgned-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index b1e81530d551..f378c1ebefd7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2331,7 +2331,7 @@ static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
 };
 
 static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
-	.lanes			= 1,
+	.lanes			= 2,
 
 	.tbls = {
 		.serdes		= sc8180x_qmp_pcie_serdes_tbl,
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
