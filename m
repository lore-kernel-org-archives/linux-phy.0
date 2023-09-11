Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E28FEEB580
	for <linux-phy@archiver.kernel.org>; Mon, 11 Sep 2023 20:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Kq7gfobPaiMggoAIq/vGfkA70c7I/cHudZlOlGo3Ti8=; b=NeC9xDiHWZu5ag
	zCIwOw8U57njOL3VKrO/Wn+skXt2mYFYfZ5pcy447lDDJf8OgcakHQSgH3QpGEdOGFGEOqjEcd+nF
	eQ0MhPc+AGkVVkrkmFv6zQsAFKz+iPuk2vqIJOenn+SNKyIFMGBFjb+1kgYy4Ce4zZD7Cp4pl/PDT
	a9i9aj7764QVNQzl5iHdazZPtmgVdEsYjD1ivDjx6xicNQWUcXJVXgTPIcuiGPNOL15Uh/v6+x3+E
	QOC0I0OtHDV/dTGqBeDFLgh80tf3oeX6nhxezXwYD0TbgxjDgsF3rnr3FBrf5xnGjEWS2JzR3etwE
	WipsXkyMGQPGI+ml6lUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfnBr-001FeQ-2e;
	Mon, 11 Sep 2023 20:07:23 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfnBo-001Fdi-0g
	for linux-phy@lists.infradead.org;
	Mon, 11 Sep 2023 20:07:21 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9aa2c6f0806so171004366b.3
        for <linux-phy@lists.infradead.org>; Mon, 11 Sep 2023 13:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694462837; x=1695067637; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8xKtPAeHdfJ6/z/qz3x+wJCKOROjQ3kUyd8YMWyjKpg=;
        b=SN90vIhR1lhGhFitdzsCe0xlcmkRAx52+r8CpfRHp5Jm3vwLk0XJVpaLUwLn5NxlGu
         0CSLnxn4wjALW/bmNi7Kp0wOzL95ZiUKE7j6+nMJ3MRg+BmrvphE0p+R/a27/4ZjNqfq
         xQLBBnGqfQAfJYhP0ZoAXhuFj2royp050QD1bPJc8NTUpvHDa42zR+TFmz5DIw2VKFbW
         n9sAzi40wwYPqh6q9Jgw00eA0pZ7ooJWJZ6lf/9wUW67f74eiDHyCRfbDdBlndHy5o6U
         bcUcyUv6F3ufwPgdOsOLal4ZPM2YLy59In/F+jXvMaJPkTVMcdgbJ3lAY5HrHgIWfkFC
         cStQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694462837; x=1695067637;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8xKtPAeHdfJ6/z/qz3x+wJCKOROjQ3kUyd8YMWyjKpg=;
        b=DCtIU6D0VALqDt39S2GgKvS5M6z/No9uFCK4Y3n+YS9bMspoglzmPCkUORsnqa6FOP
         rTsRBCkq/+6YKkMexdboS80BavB6jRynQwr9KoRCgkxU26RTW2Yfd2dvlC1pJ+EI6jVK
         CSN0TOg3nXGVYTON4TQKBwUIYqY9uVo3wiSHoDm+fNYdnR3M1fEqNZq+m0+fHCfcFL4W
         av1nA3yvEtxU3ZNU2Ab04IY3c33R8Cp++/GcvmqbQMYR+IkRYek3gdulKauoCZwJEceO
         cQboYE/px/wJKJxwtBm/suYYML2p0yQeOGinO+Gd75YFdKK9Y+cxxsgaN7MPCwl48wj5
         8kAA==
X-Gm-Message-State: AOJu0Yz+lOFyMGSn+DALXlVjCXi9JkSyxaOrZrdxIGw5LDdvQEi85ej8
	42IaPC7CRNOyqMyo/a3izEZ8cQ==
X-Google-Smtp-Source: AGHT+IGw5HRTK8mnycR6zM+zwfL0W2TNmF+pb14up1M7rBqIYMeESqMSuAp5jZ9Yaws+53PW629XQQ==
X-Received: by 2002:a17:906:ef8b:b0:99b:4ed4:5527 with SMTP id ze11-20020a170906ef8b00b0099b4ed45527mr8984194ejb.25.1694462837037;
        Mon, 11 Sep 2023 13:07:17 -0700 (PDT)
Received: from [10.167.154.1] (178235177248.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.248])
        by smtp.gmail.com with ESMTPSA id z19-20020a170906715300b00992e14af9b9sm5753258ejj.134.2023.09.11.13.07.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Sep 2023 13:07:16 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v3 0/2] 8550 USB QMPPHY fixups
Date: Mon, 11 Sep 2023 22:07:13 +0200
Message-Id: <20230829-topic-8550_usbphy-v3-0-34ec434194c5@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHFz/2QC/4WNywrDIBQFfyW4rsVHXnbV/yilaNTkQtCgiTSE/
 HtNdt20yzlwZjYUTQAT0a3YUDAJIniXgV8K1A3S9QaDzowYYZy0TODZT9DhtqrIa4lqGlZcC2p
 53SihuEH5p2Q0WAXpuiE/3TKOeZyCsfA+Q49n5gHi7MN6dhM91l+JRDHBlRBaKyuJKOV9BCeDv
 /rQo0OX2F8FywrZMFtyTqmm4kux7/sHHpDgDAsBAAA=
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan+linaro@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Adrien Thierry <athierry@redhat.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694462835; l=1082;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=GbuZM1oKvKUNGOcNj2S2w9EzwDPdJOgvLs+UCp8aD1E=;
 b=q7PWDq7q/ELe5Zp+ef3vBLiTCjnqaXMGeijHC9KwM/0rgl8uSFltZ3UzMCialzQSMukCziLdk
 cApa95206WKCOnqU9gWPPHTGL2GeW7s/A0GE2tcxAVQEv9H6neDKF2G
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_130720_264374_339649DB 
X-CRM114-Status: UNSURE (   6.25  )
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
Changes in v3:
- v2 except it now compiles (missed .c change)
- Link to v2: https://lore.kernel.org/r/20230829-topic-8550_usbphy-v2-0-a72f43311d19@linaro.org

Changes in v2:
- Pick up tags
- "Q6" -> "V6"
- Link to v1: https://lore.kernel.org/r/20230829-topic-8550_usbphy-v1-0-599ddbfa094a@linaro.org

---
Konrad Dybcio (2):
      phy: qcom-qmp-combo: Square out 8550 POWER_STATE_CONFIG1
      phy: qcom-qmp-combo: initialize PCS_USB registers

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c      | 6 +++++-
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h | 3 ++-
 2 files changed, 7 insertions(+), 2 deletions(-)
---
base-commit: 7bc675554773f09d88101bf1ccfc8537dc7c0be9
change-id: 20230829-topic-8550_usbphy-691f367b9b3e

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
