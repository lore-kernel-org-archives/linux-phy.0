Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78D7DC43219
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 19:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RNIN41STxFlFknIt2VF3rTMv3xSVvA+jr+BbhbBYkao=; b=1Hm1u8oMzC5F/w
	6Xy05RZwgOo+lV8Ac9066lhFa7cOPkcDdqo/5P7WXDZe/I32L6PaDQwzWka8zrRqgmdUtK2qSouI2
	F/LWb8GyqKu0aoE2gMkQo2KlV5Q3Nb6lv5HNkeDIlL/tH/SyWDteW67nFu4AAG4FgQ3+plW5e291S
	OcV3okf81lbFbbdx9ToE/mayLfdP2xRgbhY3SY4JtqPEjPkzQ+57beddmMd+nNdGkgEd/5v540MZa
	Ne5tvFBkdiFTt3Eq5f4EtzP6F/Z8dxnR7eyX11kHkbhiouqlm13Pd1LX2Wwg3UDCxcW1HEFUjRubh
	Juvc//YL7DKNozNZ8iNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otDHx-008mFF-Ik; Thu, 10 Nov 2022 19:32:37 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otD8X-008fcE-W8
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 19:22:57 +0000
Received: by mail-lf1-x136.google.com with SMTP id j16so4997841lfe.12
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 11:22:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2UIsc+krPU1fGDfYe329apj6IkVzAs3KMEB9BP123HE=;
        b=xGsM2EAqwLZkorkLw2taqh3SSEK5T9RvT5LE0v8o0+f3q3wm/g9txVkNQ+hZp5/dXD
         BN9Hi2CUksCV8LCOLWpBnn9pgKhNa44Gt2JPutTERmbMPjvqWaNwrsLNQKsv5Qo2nCnK
         gOaXzc5qWhs5avgmf7V87AaXwEGEGkwnd+FkMVBMb8TivH0qJmIKzpF8vYf+4ParW1t2
         ABAHJDpyzWVzgIhvRcr1DVc/H5WgYogLvlf77gmlRF5tVfl5q+WHNeHjNtKlFjrAzkNI
         wHl6GoxlKOwLctZdtN1zFne428sshFayuGcrloj5FxBmG9h2UvJ4fhyS/r9GDi2YNaCr
         4SkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2UIsc+krPU1fGDfYe329apj6IkVzAs3KMEB9BP123HE=;
        b=NxKlaXBlNu0UhIUA7OB6tdc4LaVCOmhBsRLAu/7SnSl6almg0ZQVuK/1sY63VWT+G+
         HL1Uz3RGG9ms0vr7bgVPg4tODNnewaoA7astOCv33YegkmRqos7DNQWMNPTLcPH+Evoc
         Pt4CwNm5iwQpKNVW5nIX9gZ9H/enkFt1y1JwmlMggMbLyH+E9R4MNgFlazj+B4CDu1b3
         TWRjUHwrGECuD+DPsyBO9Yu11fmY1Lfz9/6kPzkuohPsEd5T3eKCBIhc/RX8v4f57fGv
         7/T2OuQAULfDx1kBV+Pjq6yxJUYQ2dKv7/mQ6nf8hmxj11frUnhKgkMd48w0iF6tSMtJ
         zErQ==
X-Gm-Message-State: ACrzQf2pmtwDxz0Rguz4+YbvOr8+uWBD7yWh1qNqrJDEONOSjD0naNXA
	+jFWkQHG5Mr3eJwlMX+OWmP6dMV4mYOh2w==
X-Google-Smtp-Source: AMsMyM7NS4nGToVkCC13upgnbeWT7NN05gXMSURAxNNTIE9HTHL4AQQDp0nTw2DXzJzoCihtZmd0kA==
X-Received: by 2002:ac2:58e3:0:b0:4b0:fa45:9423 with SMTP id v3-20020ac258e3000000b004b0fa459423mr1892081lfo.154.1668108170073;
        Thu, 10 Nov 2022 11:22:50 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h8-20020a05651c124800b0027758f0619fsm40345ljh.132.2022.11.10.11.22.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 11:22:49 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 01/13] phy: qcom-qmp: fix typo in QSERDES_COM_CMN_RSVD5 value
Date: Thu, 10 Nov 2022 22:22:36 +0300
Message-Id: <20221110192248.873973-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
References: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_112254_103019_AD1CB892 
X-CRM114-Status: UNSURE (   9.48  )
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

Fix typo in QSERDES_COM_CMN_RSVD5 register definition.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com.h
index fbaf6ef467f8..7fa5363feeb9 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com.h
@@ -135,6 +135,6 @@
 #define QSERDES_COM_CMN_MISC2				0x1b8
 #define QSERDES_COM_CORECLK_DIV_MODE1			0x1bc
 #define QSERDES_COM_CORECLK_DIV_MODE2			0x1c0
-#define QSERDES_COM_CMN_RSVD5				0x1c0
+#define QSERDES_COM_CMN_RSVD5				0x1c4
 
 #endif
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
