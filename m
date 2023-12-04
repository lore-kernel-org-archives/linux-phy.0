Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D642BC4167B
	for <linux-phy@archiver.kernel.org>; Mon,  4 Dec 2023 15:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1t1SLOYQz3geiScr3AibkAVwIneVC9zH+/DzUHJ4UX4=; b=qJ8v+U2zzb44RS
	qXmp5rvFlxlbaY+fRGOMF3dW9UZh6A5c53KNSMyysnRl3W7E68ZTTXKiJqNaWj9a7glomCzWdrBeU
	jBEJVAlr6abmChLO6LlP3KDFxpqGY/0F2u9AxPGvWSgYL+JdejSKlcJrlplQ8fG8FXZ6rnrJV0im6
	abhKHO22kalAhVY9OGDZ30w37oV6IHbrWuABx4uvozbtbwa+1KtqVoK+Y55hMAxIoQ+s+gb2cKzLp
	HkiCq9WfpuRjCgdGfysbEA/zhbtMda9/LMZylj0IgJ9pDEnAINid6JNea3Kjqfi/IP8xGlhA4tVhv
	07dtKACzaBKZlVcVF2FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAASK-004tc7-1f;
	Mon, 04 Dec 2023 15:01:56 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAASF-004tZh-2Y
	for linux-phy@lists.infradead.org;
	Mon, 04 Dec 2023 15:01:53 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40b397793aaso28216135e9.0
        for <linux-phy@lists.infradead.org>; Mon, 04 Dec 2023 07:01:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701702107; x=1702306907; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zINM1okmZX3LeNIZxM4CFTe5s+jh7nnY/35H7xAy7yc=;
        b=QOuXsoU+vlpXLYBRba4nx7sHyxpPMrHsWWZOip/OZfiQdtv4vtJfkP9ENqPT1T9UiI
         YlOfVw1sgtAXJhjsOS1AE+BhXTqfhPcEKmBjWjVU8IsWHpXkziHhLnBVJsrE8MWFE5AU
         roazXA6uEt4oZAU8K72SrT9HJf7pbkMmaQEkTZcByhpVTTW/8zVVx5iyaO+FhOEE8M8W
         Bt+IRmxHAcqd1uRcwZHdZYSC5rG6rnqE5gT9lvkD0h0zqcepYIwME7KsfkFo6eGNVuQH
         N7Ap7cweJ1YjABC4meHrC4CKd4tBCUj7lwoYhBS5WWE6E6RzXP+vN9PSfSFE5FNqUqrf
         cHsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701702107; x=1702306907;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zINM1okmZX3LeNIZxM4CFTe5s+jh7nnY/35H7xAy7yc=;
        b=SoOTOpIyaubQWb7r8MSWw8kjRQhUrXUauJEECrs3wrdVZyuxywQleLNwS0p2I72/g1
         WkpokhW5g2vee+kBaHRNwsvM+rRMpjeTnymTW8/odc0DpXG50ygrcUg8HCJmHOJ7k170
         K2+HVnJ3fv6f1fEhQLu9fmZQm3h58AC/6BGO2kFbXHzkUePPWR4zNVQaEzx39CErDF0h
         YYYpip3l9eZZYTrlxCfgIqiqIsnjINfvod/gggqCYw4tFnSnL/2XK3tyQs+RZ4zzsEBC
         IRWDd1IEP6yE3Z7qzQqUn14ahiQdZZVD99NZXTeswybN1g3ZpFW3EeloXLZFot4wsw/d
         B3vQ==
X-Gm-Message-State: AOJu0YzFaUqLzeS+4yPok/LCmegNDFcbfgKCikIewsPVUg0vTqAo9PeL
	vjgnoaA7IKeFtikeid/ImocHyg==
X-Google-Smtp-Source: AGHT+IGdousMNLimLTKPCBAoNngKkERPZVGyvA1N0j4SLFXWXkwulvp9Tu6BmM9bO83Cgen2z7CdKw==
X-Received: by 2002:a1c:7c0e:0:b0:40b:5e26:2378 with SMTP id x14-20020a1c7c0e000000b0040b5e262378mr591590wmc.41.1701702107116;
        Mon, 04 Dec 2023 07:01:47 -0800 (PST)
Received: from [127.0.1.1] ([82.77.85.67])
        by smtp.gmail.com with ESMTPSA id n16-20020a05600c501000b00407b93d8085sm19041661wmr.27.2023.12.04.07.01.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 07:01:46 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v2 0/2] phy: qcom: edp: Add support for X1E80100
Date: Mon, 04 Dec 2023 17:01:35 +0200
Message-Id: <20231122-phy-qualcomm-edp-x1e80100-v2-0-114e789f0195@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAM/pbWUC/42NSw6DIBRFt9Iw7mv4xFQ66j4aB4APIUGwUI3Gu
 PdSV9DhOcm9ZycFs8dCHpedZFx88SlW4NcLMU7FAcH3lQmnXDDGOUxug/esgknjCNhPsDJsKaM
 UVHM3rLHWCq5J3WtVEHRW0bj6EOcQqpwyWr+ewVdX2fnySXk7+wv72X9SC4Pak1K0UlLstXgGH
 1VOt5QH0h3H8QWhhOcB2AAAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1365; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Qa4ftx3CC4GaXW0fbbBlA83h4BynsQFZ8fy7MwCf1Ec=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlbenRWxwbX//ylPmWeNi+DkcS9YuXhUjsgMzGB
 x1yAHbHYP+JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZW3p0QAKCRAbX0TJAJUV
 VhssEACWAn6IZzUEkTKCl1WK49N+WfepOn5CCHgbgxsvS1zO8Tt6mafDJlCqJeqxi0asISOvzUx
 vYuThO/pEqiFEV+7qRFpDc6RldOziPyqGkakUae6fjx1wCj5lS8iKIskUiftN0iw7j/jfg2b86w
 DlykAGqK04GBCWKE970MoM3MggIezQkV8Uv57gI433LKGe90ORe0f51PnLzHf6qUxb1m6bbcnAK
 vyRx9JKWK+7+xqySVAp0+70KL42PmKb+BW6wJy8waBAIducNZM4yxISDqRzTsWdj4NMuYeIgucK
 VovKbPnJNDKgbmXt5tbAca31MTT6F0ORtVnmrFQK9Tb7WXKfzh44Qb0nn7ZjGufbBcy0Xf90qoW
 vMAUY7wE4YBXE09MA4wDYDORzzaEiOL/3ilqh85hRi8KdjNBXlVnlR+KWy+7Fg53HCVbL48Hzbg
 OY4XUYbQ/MWSi/0qN0RbYOBZlL3IZcoPLOJCdW0SUrZiQEvE9rQCxY+O0O1U42JNuFtzzJ0I0Aq
 dWWNNzH+sK+uK2o26O7BljMBFqLY/ik+t28UY0mX1LI/vArzhxNxaxf44EDLUUXSWM4LI22uNWq
 e1fR2RcePGjTrtvEwCT2vohJhl1Xo6OXLy0w9vpQKvrnQvRETZZJIFyXqLTwrX9ETuu1k7fNxr0
 zFDRLCtw4lGXkcw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_070151_912789_33CBF4C2 
X-CRM114-Status: UNSURE (   8.03  )
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

This patchset adds support for the X1E80100 eDP/DP PHY and documents its
compatible.

This patchset depends on the QSERDES_V6_COM_SSC_ADJ_PER1 register offset
added by the following patchset:

https://lore.kernel.org/all/20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v2:
- Added Krzysztof's R-b tag
- Re-worded commit message for bindings to suggest same PHY can work in
  both eDP and DP mode rather than being different PHY types.
- Implemented different qcom_edp_configure_ssc and
  qcom_edp_configure_pll for each version of the PHY.
- Dropped the cfg8 override in qcom_edp_phy_init
- Used enum instead of defines for PHY versions
- Link to v1: https://lore.kernel.org/r/20231122-phy-qualcomm-edp-x1e80100-v1-0-a9938990edb3@linaro.org

---
Abel Vesa (2):
      dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles
      phy: qcom: edp: Add X1E80100 eDP and DP PHYs

 .../devicetree/bindings/phy/qcom,edp-phy.yaml      |   2 +
 drivers/phy/qualcomm/phy-qcom-edp.c                | 230 +++++++++++++++++++--
 2 files changed, 214 insertions(+), 18 deletions(-)
---
base-commit: 629a3b49f3f957e975253c54846090b8d5ed2e9b
change-id: 20231122-phy-qualcomm-edp-x1e80100-a57c15fff32b

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
