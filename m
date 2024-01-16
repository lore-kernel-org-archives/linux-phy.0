Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1933C4707B
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jan 2024 01:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xC8zgcxIB3qN7dPPGa9OkKMWT+BBF/iXBTMLzbxyuZ4=; b=Ln/OiVmpPb7adR
	C+cLT4tx8UqWLLox2Hv48K8h33gQkPEc/dWtVY3b9UhdBEQ7iSew1jAenNyOcQPw5LOi7dvu9Y2YS
	zV7DVp71+CsFSSNHiWQMj6ymsasto4c2ludsGM5Zl2URh/l1neKSnoV73JtruPbovf7kiJhQBcVJa
	hzRNYK7TiDC+yRjTxNMZRg5KVBKpm9i3f71/beWQ0g7fuiM5Xf4MdyLeahI6YNFrXTmajV7rrDnsh
	8MosPWzdNqIIg0MPzwI+Eq9iueAgkYSK5JEx599GhqUBB9CcEgDETxvGJoAsyNJdXGrrrgQu7LK6k
	iesSGkDjs8yxQtDowR6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXz8-00AeCu-1k;
	Tue, 16 Jan 2024 01:11:22 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXz5-00AeAC-22
	for linux-phy@lists.infradead.org;
	Tue, 16 Jan 2024 01:11:21 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2ccec119587so114422081fa.0
        for <linux-phy@lists.infradead.org>; Mon, 15 Jan 2024 17:11:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705367475; x=1705972275; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FuT1DaaoZzFJEGnrKpG/Tzsp72d4M51WYP5lgXMmZno=;
        b=V1AjYV/y+uiw3LedeGu55V8ZoNnvIXbrXzAyWaIZGFuhrwHmYXOyVsCv7c//ceAeK5
         5/RvgTgnFstEjOb34HL3NVUQRx966+ME7gasMx6m+FCEAFV+hRQmmrAQpWpACxQmehF9
         /BVkLhyXE9BqfFEcydSwF/tFjfd5HJ0kt7Txm5Q3r73SU5C6UXG+tJI2AY2/apjO1YWl
         U0NQLrBBkR/xHRy5fRI4v6JHGMfDKi1ivi++JSRit60vBpnHAolJ0/c11To58shO3MqY
         ShkTUXB3xkrZFPF4FBTfbtaCV1bl/MX/biTQeDC1JRHQUF9qnjvckX2DIIku+wYCxkSd
         BSjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705367475; x=1705972275;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FuT1DaaoZzFJEGnrKpG/Tzsp72d4M51WYP5lgXMmZno=;
        b=TPZDj9SUPf8U37TzP+7kKhoe0Zc9miP5WH6TPV8qsLH6okez/1580MCXpk2PjjNMbI
         96V1FgIlV/KxAfNGt+AR21HGXcetOOEX85PTZNdyfqhtxR1SyhNHo1cNubI5bfJjB5ja
         cXalMdWQtHnZk4QKocLsIJBb1xZu0IsVJrBiA1m9o5o7Uj/LR6hHxDK8EY8lae+opm/4
         e7VVDaF8uQXzoSVMWq2AySDq1DTjyeguFZU11akH51LJOu77p9uR6Juk42NFWHsz9zai
         EkfyYvWtOlaBzfa1+zcTR+OYMerp6vmZX7aNLzF5CtWZVRomNO8FRe7tvjaEgzrp/8J+
         nQnw==
X-Gm-Message-State: AOJu0YzdJ3uPVd9sG6uxEOremT9Hiu3RR3bzZw5veaxEpivK6a8adcjx
	A940PbLqecZec8AsYGOXmObRI8X5uTJ03w==
X-Google-Smtp-Source: AGHT+IGyhsXsnRx/d5EzPD1IgnMLJ1jUTVTcSGSZ1BQPLWqIPq/ZA/bdrN+ZSmIp7P0TutZabWsR+w==
X-Received: by 2002:a2e:9013:0:b0:2cd:dfe:74c7 with SMTP id h19-20020a2e9013000000b002cd0dfe74c7mr2998718ljg.21.1705367474822;
        Mon, 15 Jan 2024 17:11:14 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id q15-20020a2e84cf000000b002cc7a2f7a9asm1513414ljh.98.2024.01.15.17.11.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 17:11:14 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 0/4] phy: qcom: qmp-usbc: enable SDM660 support
Date: Tue, 16 Jan 2024 03:10:54 +0200
Message-Id: <20240116-sdm660-usb3-support-v1-0-2fbd683aea77@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJ7XpWUC/x3MPQqAMAxA4atIZgNtLRW9ijj4EzWDWhoVofTuF
 sdveC+CUGASaIsIgR4WPo8MXRYwbcOxEvKcDUYZq7S2KPPunMJbxgrl9v4MFzbOTpWihmpjIJc
 +0MLvf+36lD5GhRa+ZQAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1313;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=4+Wceje7kSG2L86r73rRdjLpXN0pBa/Fh0jrdnHD6tw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlpdexq13GIcRe8q7m4biVtRgBz2DhlPntHD3rf
 9T4kSFiLGeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaXXsQAKCRCLPIo+Aiko
 1fsbB/9cj+61hor/z9r2g2jDT7le990apsTRNdvB2MDIBB1N3G1276UUNvM8qs8yioH3wWogUgd
 j8Pw0Ev7tCUdNb6265mME+s8/Q+DFZHwY5kH/JP440FvL+sWdy8EseTI7NdLMByvjpx9aCLNyra
 DHvL4Fw2Tmz2ya+NpRueMkXUPakj5lgGZS4X7SeA2zcp1y0I40QWI/V6rWHY7uSgy137U6QdJyM
 quBbgxpDpe81sHaHG8G0B/TowKpCcpOup8SNNU1vx+NzI9J0juggwFWBLp2y9OIznM4jonwP3wd
 9gNjvWOC6wfWW+jXE16tHv8G7gmHGKfTuRM68YfYvLKuKU1I
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_171119_670313_9AA04AB9 
X-CRM114-Status: UNSURE (   6.15  )
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

Enable support for the USB3 QMP PHY present on the QUalcomm SDM630 /
SDM660 platforms.

Dependecies:
- PHY-related changes of [1]
- [2]

[1] https://lore.kernel.org/linux-arm-msm/20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org/
[2] https://lore.kernel.org/linux-arm-msm/20240116-usbc-phy-vls-clamp-v1-0-73b2da7691c5@linaro.org/

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Dmitry Baryshkov (4):
      dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: support SDM660
      phy: qcom: qmp-usbc: enable SDM630 support
      arm64: dts: qcom: sdm630: add USB QMP PHY support
      arm64: dts: qcom: sda660-ifc6560: enable USB 3.0 PHY

 .../bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml    |  2 ++
 .../arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts |  5 +++
 .../boot/dts/qcom/sdm630-sony-xperia-nile.dtsi     |  6 ++++
 arch/arm64/boot/dts/qcom/sdm630.dtsi               | 36 ++++++++++++++-----
 .../arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts |  6 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c           | 40 ++++++++++++++++++++++
 6 files changed, 87 insertions(+), 8 deletions(-)
---
base-commit: 737cf0e409063e44e36bf564cc679f9eb88f6e8d
change-id: 20240114-sdm660-usb3-support-964c30e9e722

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
