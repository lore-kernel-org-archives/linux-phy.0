Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76F2EC25B78
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RRcuIt6A0hEKlWmQcobZxHjicN61FwQvPuX2UjRWHVo=; b=Q4YQRWwjuXZGIR
	44M1boE+IIyyK8q1bTEwuw4aekPLZrQyBzqC8tknYHF6PMOTLOa6Lm0lZys/QDUaaTiRQx3R3ry4T
	Tcp/MxbSj3FZsh/Ua256PVsxrKgswdMy3iW9hYbdWlLbasn4og3oDXeGPSWp0khA4Xf5jdjT9pAC5
	U2C2ldryMD8L/R2ICz5TrtLb32rKHF8iIKks6lAPd+iLXCqErlFVpnfwfCJxoDtYEmiXzNkKntYYY
	akCePO3EHQXZHVIxpqMu4F9zmiMsZAQvYnibtp9ANv1j3vRDB3VpDcYXIfgFTXSA0bJ+LCHD5MgJp
	aZ/VpiGBKmkqnCaBsH4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBUf6-0000000E2Nc-48Cf;
	Mon, 27 May 2024 07:20:53 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBUf3-0000000E2LM-2ufx
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 07:20:51 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-a6269ad9a6fso322924566b.2
        for <linux-phy@lists.infradead.org>; Mon, 27 May 2024 00:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716794447; x=1717399247; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AkdVlAH7H727EJKfv8gTzn9ghdbfncnefHYXkt3aRf0=;
        b=nxoTOqZZ8p8tfOfDJmfsdw49NC7pQkKKGRriSsEmg8s9IfnW3UNHYdUMISteuoV4Cj
         90dATnKj4JwmW+BKWgrX9yOFpWuENQHqvGNaAR8YAw1DNCAMwcR8eQJoNKdl/2jMWey+
         WKkiYZaJTDc7v4fpTgc/tWyhJSUj9VovlE3JLtDNKKQUC4B+GrQmp/hkqBpx0HckGhVe
         Ue1uNQaWEzjGOzSJwQVjCt/tpA5fvSVAL65lr5Phf3j7FC2zGFU0V1JRIIotzabEpPrz
         /Qu7NHxCaXKNm+e+m/oQUR5ufoRX8m2d5GaXVvPiUPXYcDyo8iES1IlfB44k+i5V8leh
         io3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716794447; x=1717399247;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AkdVlAH7H727EJKfv8gTzn9ghdbfncnefHYXkt3aRf0=;
        b=mBBHs6pkTw3jfy5WuBnUXZPihJzG9RvfPq2H+/R07k25yZMA678o0HE4WLqILLOvSV
         KYAtyPulxPQP03nnLVS4Qhr/udV+e/1sxVC/OuBAu/pO7wvWmSRNkUKD1CzTnAIC8kpl
         WlmTqqs5LuhRd2DsmEVpFouNuC23mQmSpOViJsgHoCDnuoCJxOKNmv1QwXh/wFkuSVvx
         rPrHz1FQn/2omqv6ckvvbM4CAf9Csz/wna0ZtKY2jFdPGj/bbzrOTI1W/t4XVA9wzzrR
         9wDQVEmS9tnqfi4jRwVrZvT/slC8HHwVhvERjFiBbP0gl6tmselzzzkUqb4UcNz3c8EU
         PFIg==
X-Forwarded-Encrypted: i=1; AJvYcCVf9ZVwHoUJ9vp6HEvNt6wCeFXnS4bYYiRvd+tK2dUPp85O+tfQD+oRTJDyr4VXL2wK7QkReuCxiBBWQp3D8WU0Ap6La8nvX6HwdoNcnw==
X-Gm-Message-State: AOJu0YxPZI21qnpFIBGkhUdrx17nEuikgpQoH1nK5EUp23WIJHGmHjaT
	Y9UQK7MAS7tCABYtgc3LcTeyIzCxWSbahUrRfCP1A9xuS7Rp0lBOSZxV7uhYycY=
X-Google-Smtp-Source: AGHT+IHyXTPfpGiqJNGw/wb//hf46P2Ia3frMuqLeuTwELxuQnRyb4yg3XTxGIm8oU9MYPEgdl2oSA==
X-Received: by 2002:a17:906:dfc3:b0:a61:54c3:9f8a with SMTP id a640c23a62f3a-a62641aaea4mr581240966b.7.1716794447039;
        Mon, 27 May 2024 00:20:47 -0700 (PDT)
Received: from [127.0.1.1] ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a626cc8e295sm457915666b.185.2024.05.27.00.20.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 00:20:46 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/3] phy: qcom: qmp-combo: Fixes needed for DP
Date: Mon, 27 May 2024 10:20:34 +0300
Message-Id: <20240527-x1e80100-phy-qualcomm-combo-fix-dp-v1-0-be8a0b882117@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEI0VGYC/x2N0QqDMAxFf0XyvEBSpo79iuxBbToD09YWxSH++
 8JeDhwO3HtCkaxS4FmdkGXXonEx4VsF49Qvb0H15uDI3Ym5xYPlQUyEafriuvWfMc4zGoaIQQ/
 0CV2QuvXBN0PdgA2lLFb+J93run4Xn5mDdAAAAA==
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Kuogee Hsieh <quic_khsieh@quicinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1013; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=dZjdgueL6cvr3JXpH+eAzbdQJ3QnE0RMjGUz6fcosb0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmVDRE0pYpvgLqgkNRQ2L6KXta0oULvu1fXPt8M
 tQtLQ1ovMWJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZlQ0RAAKCRAbX0TJAJUV
 VopgD/4iX+SadAWdpw3UjTZRH50ZqGTJl3tgu/GtYzd66CDmln4TwOguoD0w5awiRfwvh1XRfGq
 fF9+h7WJlLOj6cpRfW7exSUjaIUyAZRzCrGkWrmP3eWZsWcirkgIQrZU4PiXpNs3Mn/LBgqWjZR
 6Ii/+3Vb82tfUFIj5WjURoFODAbC5Y+ajan153dI8LfuytjvJCcjIrx20tSBRgcN1TOVrQmiH3l
 aB4PvUi3T7/+saX+Jp9LkNf5wwmiF5PhsoxjJsPzNYRC1DlMcuEWCldhJHcGu+W4U+zQUsNX70d
 1ebdLbXZ8tmTwN1sp8FliWsdYolPyBocAVFZLab69XEp6WFP1zM1UXd1ceZMYUDTDuOwUedoA7u
 V8hMRgSBMl9lCcdeAlPijp6YPewoOlP+H9Ff7+iww7UUcncwmfkm9wB3PAbaA90Ve1QJw5uknjl
 UTBjc6b5TuJrqFtQpOl/0I9Zb9pxguC2fBf7/tI2TnjzDxM4k8t6Hy42DTXzaaCOtqx3lqODhSx
 T8QhzQI/cjevJnpZm39grYZj9h2XaPOZviVWoz6Gn9gqFBtEZc61seiuotr2vZp9E4tI2yYd0tZ
 eFNUo5IiJSebTJy3gRNrXHvY6OKMRGIQKHOtRjZBmKJw7PEwlMZgoTzG7M597ErZLMpsNVR8Yug
 d9g+sbCFkjBC6ig==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_002049_992705_96562FF4 
X-CRM114-Status: UNSURE (   6.44  )
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

DP is not currently enabled on any of the X Elite platform boards
upstream yet. These fixes are preparatory work for when the support will
land upstream. The USB part of the PHY doesn't need these fixes in order
to work properly.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (3):
      phy: qcom-qmp: qserdes-txrx: Add missing registers offsets
      phy: qcom-qmp: pcs: Add missing v6 N4 register offsets
      phy: qcom: qmp-combo: Switch from V6 to V6 N4 register offsets

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 189 +++++++++++++++++----
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6-n4.h      |  32 ++++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h |  13 ++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |   2 +
 4 files changed, 207 insertions(+), 29 deletions(-)
---
base-commit: 3689b0ef08b70e4e03b82ebd37730a03a672853a
change-id: 20240117-x1e80100-phy-qualcomm-combo-fix-dp-2fe57dfd6b56

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
