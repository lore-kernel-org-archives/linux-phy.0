Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F5C4C6FA8F
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 20:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d0iMzUDcl5aujZQBFhZwWFIwM682ZdVr47aq7HyV92g=; b=SxYfmfJQRcUqbI
	u3g7vENBwO8g4pKmuLDJnPhgfBbWy+oLAbNUsu+F4+4dWxVjzZcyH/v7H4wG+a0WAAz4mOQCjUrtl
	Yon02CY8JzbN5nrlPK9iWj3T5Ql95tPE+ylQ4N4R+n6hgLxQaQh3Nvv30sss9k4otJEDhqtkRtaqD
	5asTbnxzPkOQTdhkkdobFbzx8kzb3nMkqVBecVbkIRbsGKr8OP4gQ0+2rV2DIEXyy2tWqD41TdbSC
	ah8C5GTziSOBTrCjWxBIcwZlccp9XV+2CQpZvOygfK4fB6yIHUaJPVYTb7rG54Pty9LN2LWDeeaso
	h6l9fBP/GVe/d5cHVd5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb5o6-00CFua-2l;
	Tue, 29 Aug 2023 20:59:26 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb5o3-00CFtN-2U
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 20:59:25 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-5007abb15e9so7628057e87.0
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 13:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693342761; x=1693947561; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tZtGJPMqA3+qy7SC3bVVwrx8Hadb7bSfghlu98ga0vU=;
        b=dYFLmzHYXyrOVR2qVwjigS+7ZKLrshuEyyvD5jev571CeJx8b5ep5YQ9b4ZmjCeEGW
         gIzV+AtfPMKYToQHT8njWm/bq4MoZpnhBUVnmee/lY9/690J3TLVPZVlcnFnAI+uwYrC
         dPUHGPewLHwDLmECpcoR+KTtgAbI/mPZavEvXGLX4k7KuwGJWE1wMSKftZpgA0wKyoI5
         f79Bmhmvjuj231Gm9wa2P4OD6SmPRVwpgmge3SKmwVIEzlx09BydkAoifs6sj+tmnbqm
         chGChJypyKijt4gCSlVReMxbmzBvyvYTQQ1hCJ1SLwqu8qr/0oybfMBwiNqXserTQebI
         cUbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693342761; x=1693947561;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tZtGJPMqA3+qy7SC3bVVwrx8Hadb7bSfghlu98ga0vU=;
        b=X1BLFVqmPKFSIb7jWr14pbCSWT46Dig1jRznu7WvuGRe8COg0M1yAmcu9CHemoRrqp
         E40vNqNg6Kc/gCN86TSx/ieAnNaq7Y7ShNCKtI2rtwg8yK5f43zPzTh/FAU8v0GUcHYl
         vOdCgrhb+6cGhgAAu0rj3Y5vMmYjmrOgublgdvdM7gAi08qEzWcIAUhUlZMXE2BD7SUx
         CZOI7PaLPwStJc4IkCudnTp+7zcg3rX2WDz3T5Bq6DJIYpt+eQgyadaUrkdbKwddSxcz
         NoyoLIBLQmzU/qWRev1N/xuvmvacf8gzJsgh2oOO0h/BCtc4Cvce2Yh3grzFKXNpZHJh
         Y9Xw==
X-Gm-Message-State: AOJu0Yxdf7vU65l1h28O9IfaD+1JAYfEaDsFWk6+u84p0BjLuALs8PzO
	nxnW3SCbV6vVMmMh6/tvNdRPQA==
X-Google-Smtp-Source: AGHT+IEcdMrmJxE2aJj/jV2hEqio6NzYH0SNelvPC/jDlyK4JlIHA3ikCuV+e47VYI9y9Mps5r8bdQ==
X-Received: by 2002:a05:6512:5d0:b0:500:9ee2:15f with SMTP id o16-20020a05651205d000b005009ee2015fmr42215lfo.46.1693342760949;
        Tue, 29 Aug 2023 13:59:20 -0700 (PDT)
Received: from [192.168.1.101] (abyl195.neoplus.adsl.tpnet.pl. [83.9.31.195])
        by smtp.gmail.com with ESMTPSA id q30-20020ac2515e000000b004fbad09317csm2074025lfd.189.2023.08.29.13.59.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 13:59:20 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH 0/2] 8550 USB QMPPHY fixups
Date: Tue, 29 Aug 2023 22:59:03 +0200
Message-Id: <20230829-topic-8550_usbphy-v1-0-599ddbfa094a@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABdc7mQC/x2N0QrCMAwAf2Xk2UDXsrn6KyLS1swGRlcaJ8rYv
 xt8vIPjdhBqTAKXbodGbxZei0J/6iDlUJ6E/FAGa6wzk/X4WisnnIbB3DeJNX9x9P3sxnP00RF
 oF4MQxhZKylqWbVlU1kYzf/6j6+04fivHdst4AAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan+linaro@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Adrien Thierry <athierry@redhat.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1693342759; l=767;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=LZ6XZ3mggyAs4bqjIFE2iaDrGjBXBRUJrIRgbaHBbA8=;
 b=FI1L+7AsJ4F9NBPyc6tx/PIqm34odB1VlyqcTI1V8LdnlGhYs+EBkPnoM/6jEoj8VhGhCQJ69
 h45wQOfvihhDJ/TdhOXG9hIFOpq6rqcJEj9c9n6LnZPtHByXf7RUCCE
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_135923_810584_8414DAD8 
X-CRM114-Status: UNSURE (   5.54  )
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

Inspired by [1] I went over the 8550 QMPPHY init sequences and found
some inconsistencies. This series attempts to fix them.

[1] https://lore.kernel.org/linux-arm-msm/20230828152353.16529-1-athierry@redhat.com/

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Konrad Dybcio (2):
      phy: qcom-qmp-combo: Square out 8550 POWER_STATE_CONFIG1
      phy: qcom-qmp-combo: initialize PCS_USB registers

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c      | 6 +++++-
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h | 3 ++-
 2 files changed, 7 insertions(+), 2 deletions(-)
---
base-commit: ae782d4e2bf53b0b642ae860794f7a39470f995a
change-id: 20230829-topic-8550_usbphy-691f367b9b3e

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
