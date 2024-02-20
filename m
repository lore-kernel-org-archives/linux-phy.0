Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 090D2C5475B
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 19:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uoG68FXC3Qy3PMDd//swsMMd153FW8xgQ22tU0GKjCE=; b=l9ESeacJW1/ybg
	RuAKxIrR+45qKZUXnheX0D9h4Y6VrVAzJrIKWG0FdyRLmKdRdv3ovj2iz/LLzfDGdqb46McovdkbS
	duLJc/5ww9bH6fuPJQAaGVHpW6F9qLoreBPa1ZVeG2enubKGe6k+EZaRPqGcydCTeJpic2IlyJHhe
	ji4PWDpuooiJwUpXiSeIqk1wskbTNaNtbXcIaAjBvNhSYiX6WJD1FVeJiBIbTbS7vuecgkBJElGRk
	4+GW1oxFojorb3Ind25b+PIubEBbSgMbargIRLmMOOf5adCSWwDp3D3za3bugoFX1ad7M14lLnHUu
	unFzLbWM6wvLyTtJMH4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcVZ8-0000000FuWo-2zk4;
	Tue, 20 Feb 2024 19:14:06 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcVZ6-0000000FuWI-0q8f
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 19:14:05 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-41273252555so921965e9.2
        for <linux-phy@lists.infradead.org>; Tue, 20 Feb 2024 11:14:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708456442; x=1709061242; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GBBZEpewC9BLRC+ZISwlxkj/pUQLQpzkfsio0tQwFB0=;
        b=bXD/8/YEfMEs0OgZh9uyUDMnoq4HUiawTRHPhluwPv5x6bOd0h9gGIb/gGvvEqXRig
         CVVapqOfq96VM+fQCF2VqukArYIEjraXfiMTcxHdLWILXC0eDAjAo9rd4559sYszatwQ
         sp4WfKCDd3fjtXSy0ym0V//ZTxGdGBxlqhdSCt1j51rXcgt2k1ml5lsbAjO28XsArUyd
         ok2HC6erJhiz2tGtUfPw1ZeaLnb+OmvrUcX3XW8rrsoi6MQ9fOWHModNLMQGrcUZ/dUw
         NyItlFl7gs8l4IPyajcsesKZw02l9VvNFvjxSXLKN/et+aDHD+691mhN1jjtHuHWeBZB
         ghfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708456442; x=1709061242;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GBBZEpewC9BLRC+ZISwlxkj/pUQLQpzkfsio0tQwFB0=;
        b=HojOZA9GrY2fDkH1oaj1bFwnH8kq7dc8WY6uXLuxrsSdZUlSjwI1HnP8FInuUvnzM1
         PJnYAU1GAXU3kM2UJe/o0NAVGQdHi6lhasHJVxIzk0WEr8aTrCr2+1rgeM2zJiqAWpz1
         dNiGAHzxgysMejfIxitely4vmigMN2dWQOnsp4boyF6651VfJmWryt0kNhqBRs7e9pq5
         CI7sv8wnHsews/fTydbEeQbtKz4mMBe0TbLAsHkaRVtv2jaMgsiQ2Qsqg6nkn70du+qL
         bLBRzo3Pw3KgEKPYk+x8vHgSRKhqslfEQRWiYfV5MvZ5lnPlgtyA5whJSk9m1IQLt1Iz
         x9lg==
X-Forwarded-Encrypted: i=1; AJvYcCUWoNA3BRELGwb5PKSPNTT4x7atcB1sYrx0IDz6ZV3KVuo+6HB5dSb6sJWtuES6Y0bHt5WAsC2vXuXGatEwuJzbxwfzGD+GOjO2jnSZcg==
X-Gm-Message-State: AOJu0YzwH0cIow5VIPHGsn82Fsy9N7T/Pz+F9+dl5qa78uI1SonZv6Y1
	IJCNjTAZ5iEa1SSQso9Z6cR/bdGJeBcsSJ/SeiEB/bWoxaXQwUMc
X-Google-Smtp-Source: AGHT+IHBXdNX8jfFHVljuYY+fDBgzTiYvU4aoKgQpeXGTMPlWv5Vyn2OpBFMl+BtOqoPl7MZSe+EhQ==
X-Received: by 2002:a05:600c:1391:b0:410:e41a:fc0d with SMTP id u17-20020a05600c139100b00410e41afc0dmr12504690wmf.24.1708456441861;
        Tue, 20 Feb 2024 11:14:01 -0800 (PST)
Received: from [192.168.20.102] (57657817.catv.pool.telekom.hu. [87.101.120.23])
        by smtp.googlemail.com with ESMTPSA id i6-20020a05600c354600b004107686650esm15807564wmq.36.2024.02.20.11.14.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 11:14:01 -0800 (PST)
From: Gabor Juhos <j4g8y7@gmail.com>
Date: Tue, 20 Feb 2024 20:13:47 +0100
Subject: [PATCH] phy: qcom: m31: match requested regulator name with dt
 schema
MIME-Version: 1.0
Message-Id: <20240220-phy-qcom-m31-regulator-fix-v1-1-7675b4a916b3@gmail.com>
X-B4-Tracking: v=1; b=H4sIAOr51GUC/x3MwQ5EMBCA4VeROe8kbSnhVTZ7KAaToEyXEPHuG
 sfvP/wXBBKmAFVygdDOgf0coT8JNIObe0Juo8EokyljFC7DiWvjJ5xSjUL9Nrq/F+z4wLKw1ro
 st6rWEAeLUMzv/Pu77wdEwVPabAAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Sricharan Ramabadhran <quic_srichara@quicinc.com>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Gabor Juhos <j4g8y7@gmail.com>
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_111404_281534_DBB10DC7 
X-CRM114-Status: GOOD (  13.98  )
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

According to the 'qcom,ipq5332-usb-hsphy.yaml' schema, the 5V
supply regulator must be defined via the 'vdd-supply' property.
The driver however requests for the 'vdda-phy' regulator which
results in the following message when the driver is probed on
a IPQ5018 based board with a device tree matching to the schema:

  qcom-m31usb-phy 5b000.phy: supply vdda-phy not found, using dummy regulator
  qcom-m31usb-phy 5b000.phy: Registered M31 USB phy

This means that the regulator specified in the device tree never
gets enabled.

Change the driver to use the 'vdd' name for the regulator as per
defined in the schema in order to ensure that the corresponding
regulator gets enabled.

Fixes: 08e49af50701 ("phy: qcom: Introduce M31 USB PHY driver")
Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-m31.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
index c2590579190a..9d84858ba1db 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31.c
@@ -297,7 +297,7 @@ static int m31usb_phy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(qphy->phy),
 				     "failed to create phy\n");
 
-	qphy->vreg = devm_regulator_get(dev, "vdda-phy");
+	qphy->vreg = devm_regulator_get(dev, "vdd");
 	if (IS_ERR(qphy->vreg))
 		return dev_err_probe(dev, PTR_ERR(qphy->phy),
 				     "failed to get vreg\n");

---
base-commit: b401b621758e46812da61fa58a67c3fd8d91de0d
change-id: 20240220-phy-qcom-m31-regulator-fix-97555a4650b1

Best regards,
-- 
Gabor Juhos <j4g8y7@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
