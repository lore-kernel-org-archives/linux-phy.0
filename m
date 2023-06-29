Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21164EB64D9
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jun 2023 14:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U2DF6FtEg6lR9xO4/WXF0Yd2sAhCQaSjMflLwrlnw7Y=; b=EmJM/fwnerSwEL
	32sUX6LmGxRr8rlBG7a1H+71Wsw9RdRNSMIATkeKCApQjaT5MQxtMoAUSvO8Oazr/crNIKEgSBzhD
	IBUqBo6nmVID3MzQZs7BZB76KHehz9XfJxekCDrdGAFMVqEBujBW9i6YCsRf6VmG/GOPIhkLWt+Zy
	OV4NuenXAGCkJ8VaNog4n1HAp9bgGbPyJSlg3KuZBoJ6cLGC2TMAchhOmqBdfvik1zUqZBi5rjVFT
	ao+Z03J19U1teXnhv1gvQzCBxWF41+SEKmZ/egYfmoqfibPm1W9bJZ9zI32WwLiJebwZkA8O3BwHL
	iaU0xBLyJ6EMD9XFXu1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qEsuj-001KeV-2U;
	Thu, 29 Jun 2023 14:46:29 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qEsuf-001KdN-0c
	for linux-phy@lists.infradead.org;
	Thu, 29 Jun 2023 14:46:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1688049983;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zDXFOarJFkvxNU7P1GHKG3noUeFa/ZYuvulMUbxlN1A=;
	b=eXwI/4OYtZp5vKR5PCv3XtPt0bd4DjdcfXha2kLmeghDy0cy18iL/tZszxtGFO3ITWpYB6
	dYy5jE75TNKL15bCqSk+mz0H9K48w61GYbKWNd71isU6isV5awB6ytDFIAdb7CnjDktTA8
	y6CPCr3kDDakMekXQXKlQr52P5TssPM=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-128-ClYKkDvRMA60uMFpgrl7QQ-1; Thu, 29 Jun 2023 10:46:21 -0400
X-MC-Unique: ClYKkDvRMA60uMFpgrl7QQ-1
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-635dba99f82so8715946d6.3
        for <linux-phy@lists.infradead.org>; Thu, 29 Jun 2023 07:46:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688049981; x=1690641981;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zDXFOarJFkvxNU7P1GHKG3noUeFa/ZYuvulMUbxlN1A=;
        b=URr7Rv+cAjjaS0RaW5F711w1ooAUGZoGMem3WZHQCxmZM5Y7fbeSFGNai9nlS6HzSx
         kijQXBb8UalZAGk+b0OIxH/TSLyPMOdcg+BWJiJzhJTNjiQUzwgHovZlybNS6MVBay/u
         pku162ipgYTaUVMdzr77JMzeIGPagfG4IIr7lrilIGzxPI6hF+4CGhXjnu+iBilHXGd9
         +4xADF6ucST7kbD0kbzqCJHOiyFek7gsNaATdF0M7LCCxjW2R4NagmYM73BUIUJQaWaH
         WgsMLoMJMxGiXaINCanlznfURALL5UiTqWAVqNzrkkusKrzkSp70GtOOG8W9wLqEzpj/
         YfEg==
X-Gm-Message-State: AC+VfDzo8exY9B4SKUGd3rKOzrK3HbVIsMH0CVUum3cqwcA6pCsH6caZ
	x/z99CLtQo/Nf1SgcLnqrOCUxdHhwErwYArEP9UPbaTujLJ8yym2Tq8lwyzkJakvv+iUNlmfJb0
	lpTnKBorRpZgu+jtkzOeS1PhFeg==
X-Received: by 2002:a05:6214:2483:b0:635:dbb4:853e with SMTP id gi3-20020a056214248300b00635dbb4853emr15923412qvb.54.1688049981101;
        Thu, 29 Jun 2023 07:46:21 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7CgQm3B3HQ8J0z+gAS6H/08cIkKpo/GCX/poZibomgLtQPS418bo46ORUPF/WAp8JuwB//QA==
X-Received: by 2002:a05:6214:2483:b0:635:dbb4:853e with SMTP id gi3-20020a056214248300b00635dbb4853emr15923392qvb.54.1688049980886;
        Thu, 29 Jun 2023 07:46:20 -0700 (PDT)
Received: from fedora.redhat.com ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id a17-20020a0ccdd1000000b005dd8b9345b4sm7055590qvn.76.2023.06.29.07.46.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jun 2023 07:46:20 -0700 (PDT)
From: Adrien Thierry <athierry@redhat.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Adrien Thierry <athierry@redhat.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v4 1/3] phy: qcom-snps-femto-v2: keep cfg_ahb_clk enabled during runtime suspend
Date: Thu, 29 Jun 2023 10:45:38 -0400
Message-Id: <20230629144542.14906-2-athierry@redhat.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230629144542.14906-1-athierry@redhat.com>
References: <20230629144542.14906-1-athierry@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230629_074625_322021_BD19B6B7 
X-CRM114-Status: GOOD (  14.71  )
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

In the dwc3 core, both system and runtime suspend end up calling
dwc3_suspend_common(). From there, what happens for the PHYs depends on
the USB mode and whether the controller is entering system or runtime
suspend.

HOST mode:
  (1) system suspend on a non-wakeup-capable controller

  The [1] if branch is taken. dwc3_core_exit() is called, which ends up
  calling phy_power_off() and phy_exit(). Those two functions decrease the
  PM runtime count at some point, so they will trigger the PHY runtime
  sleep (assuming the count is right).

  (2) runtime suspend / system suspend on a wakeup-capable controller

  The [1] branch is not taken. dwc3_suspend_common() calls
  phy_pm_runtime_put_sync(). Assuming the ref count is right, the PHY
  runtime suspend op is called.

DEVICE mode:
  dwc3_core_exit() is called on both runtime and system sleep
  unless the controller is already runtime suspended.

OTG mode:
  (1) system suspend : dwc3_core_exit() is called

  (2) runtime suspend : do nothing

In host mode, the code seems to make a distinction between 1) runtime
sleep / system sleep for wakeup-capable controller, and 2) system sleep
for non-wakeup-capable controller, where phy_power_off() and phy_exit()
are only called for the latter. This suggests the PHY is not supposed to
be in a fully powered-off state for runtime sleep and system sleep for
wakeup-capable controller.

Moreover, downstream, cfg_ahb_clk only gets disabled for system suspend.
The clocks are disabled by phy->set_suspend() [2] which is only called
in the system sleep path through dwc3_core_exit() [3].

With that in mind, don't disable the clocks during the femto PHY runtime
suspend callback. The clocks will only be disabled during system suspend
for non-wakeup-capable controllers, through dwc3_core_exit().

[1] https://elixir.bootlin.com/linux/v6.4/source/drivers/usb/dwc3/core.c#L1988
[2] https://git.codelinaro.org/clo/la/kernel/msm-5.4/-/blob/LV.AU.1.2.1.r2-05300-gen3meta.0/drivers/usb/phy/phy-msm-snps-hs.c#L524
[3] https://git.codelinaro.org/clo/la/kernel/msm-5.4/-/blob/LV.AU.1.2.1.r2-05300-gen3meta.0/drivers/usb/dwc3/core.c#L1915

Signed-off-by: Adrien Thierry <athierry@redhat.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index 6c237f3cc66d..3335480fc395 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -165,22 +165,13 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
 					   0, USB2_AUTO_RESUME);
 	}
 
-	clk_disable_unprepare(hsphy->cfg_ahb_clk);
 	return 0;
 }
 
 static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
 {
-	int ret;
-
 	dev_dbg(&hsphy->phy->dev, "Resume QCOM SNPS PHY, mode\n");
 
-	ret = clk_prepare_enable(hsphy->cfg_ahb_clk);
-	if (ret) {
-		dev_err(&hsphy->phy->dev, "failed to enable cfg ahb clock\n");
-		return ret;
-	}
-
 	return 0;
 }
 
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
