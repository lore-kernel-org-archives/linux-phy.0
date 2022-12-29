Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E33D7C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 29 Dec 2022 19:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/DNOj+t2w+oKDZsn8E0qY5i67sbk2AwHEjto9d/RnGQ=; b=GmIL1t2XTHkiGd
	nlKjxZr/0wOCPpiPbsd862MvKV+bbAyXnaqE6h8BEa2MFvx+cgaKLOgGbH0USqIjXU2thOqHM9jtf
	pvHJA+RvMbBl77aA/oemzPL/zSC2IQF1Hg2g1y4rbR+eLjC3lFxxrpLM0z0JeDckAkHPvV6B0MASX
	SdIqY8+VCyvgs7HLyZL5jU2nb9b/9F1z3khqNeIRGG52h0tlvOMR0Hwac0tHNHF+6hcidiIFuCL+O
	K+8m0BcBOtTNUgt6AwDspPzHwzW+JdvWo2+GHuisySDMtG79BO+GDf7Zrmfqc/fzauOrHusMq4XV6
	t6LAT4knxhUSWQmMKDGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAyEt-0014WO-4K; Thu, 29 Dec 2022 19:06:51 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAxjM-000pfq-Mf
	for linux-phy@lists.infradead.org; Thu, 29 Dec 2022 18:34:18 +0000
Received: by mail-ej1-x62f.google.com with SMTP id qk9so46842283ejc.3
        for <linux-phy@lists.infradead.org>; Thu, 29 Dec 2022 10:34:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=no1oGPAMfu3UahXnB9UWch8Dq0drmE2MoF9HYiX8qdk=;
        b=UOKiv/x5GxHnqKLebOv1jT3ZNQxPq6pUKmOVI7sLyGpIfUuysrgzPwgQmg0Bn+aebi
         nsISs40nbm/jyVM/05Ja2AjJsZ61e5cYzAHTcWA2GnHdpVv5JM/gBoA+LEV3mIt6vLLZ
         oSu5/g1R68M/tKev9P921yTq40WDmaezcHLfM7qTGC85CjJ3OOwIQxRFoF+qvZNRSAl3
         oZ/qdjT+gT+W2+M2BhnUEtlSwGlnL4N8wmqLuCgymEZyO+Vs/BBFQqW7++Dp/PeCHYxR
         ZlX90yqUztobRNLeUbNuG4jcD9BciS5+YxLIjs2LUa7eSY4CxAqEqvWDNAvcwCA8FrOP
         dhyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=no1oGPAMfu3UahXnB9UWch8Dq0drmE2MoF9HYiX8qdk=;
        b=yHgc4Nr7Gf9sTpn3DMcY8W4cvkhXnRgG2eP4tx9CVgJlDi0W6ec0k+J7MVFoZzYVxX
         TyXZ02fC4FOvLu/oqARODFowVjcw66NU3WpLVl5yXEWa5sPi/Ax++vXtntWgcxNo8mm4
         7fqClxRXZbotB5EsaMAuHk7S+ZvefM/1R6Vw5/W0dD9c0R+brUwatUCGCNM0AV0nBshQ
         a6W1ylPTY9BpOJSTEp+emew3rfgBiZJvcgBz+Xzp8LPW0XL5xqmSZ0upw3J5ltq9dLo/
         2BKmfDjKZfC4DkPPqaMmr4Fd7TGEBkOf5W+ZhI5y6FzWKBLaEmFsZhbyN5y/E4/6RpYM
         tcog==
X-Gm-Message-State: AFqh2koSKrNDY2BCZJWVi6LbhZeQUIjX8sZn68pdaN9WMgjGUD1eLUnQ
	F6+StV3IvFylTneuQ1Pf6kHnwA==
X-Google-Smtp-Source: AMrXdXuYnpHFOzlOs0ES03vrrItmdl43Pa8Zm5EPbxnp1GEMInsgQcyjSZj5ETUig0M6DAHHggbxaw==
X-Received: by 2002:a17:906:a14c:b0:7c0:b4bb:919 with SMTP id bu12-20020a170906a14c00b007c0b4bb0919mr29432888ejb.10.1672338852751;
        Thu, 29 Dec 2022 10:34:12 -0800 (PST)
Received: from planet9.chello.ie (2001-1c06-2302-5600-12a8-8cf4-e3f6-f90f.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:12a8:8cf4:e3f6:f90f])
        by smtp.gmail.com with ESMTPSA id g22-20020a1709064e5600b007c0688a68cbsm9013936ejw.176.2022.12.29.10.34.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Dec 2022 10:34:12 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: agross@kernel.org,
	andersson@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	bryan.odonoghue@linaro.org
Subject: [PATCH v2 0/2] qcom: Add a method to manually toggle the DP pullup on HS USB PHY
Date: Thu, 29 Dec 2022 18:34:08 +0000
Message-Id: <20221229183410.683584-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_103416_808773_7DFAE06D 
X-CRM114-Status: GOOD (  13.55  )
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

V2:
I'm clearing out old patches in my tree and opted to rework the naming of
the relevant flag to align with the downstream name. Also the original set
was sent against a .txt description which has now moved onto .yaml.

I haven't retained Rob's Acked-by since its +18 months and the
Documentation patch applies to .yaml now not .txt

https://lore.kernel.org/all/20200528223458.GA804610@bogus/T/#mb20456db4a3d1cf608bb6335a1b6fa9dda8cb0cb
https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/drivers/usb/phy/phy-msm-usb.c#2736

V1:
On an MSM8939 we have a system behind both a type-c controller and a USB
Hub. VBUS is not connected to the PHY and no GPIO is available to signal
VBUS state to the USB controller and PHY.

In this case we've used USB role-switching to transition between
host and device mode.

The current code in qcom-usb-hs only touches the VBUS pullup control bits
if we have an extcon but, setting those bits is still required on the
example I gave of the MSM8939.

This series takes the downstream concept of a DT driven flag for the VBUS
pullup bits and applies it to upstream in the poweron/poweroff path of the
PHY.

I've opted to unset the bits on PHY poweroff though in downstream the bits
are only ever switched on if the flag is present, downstream never switches
the bits off again. I think though, setting the bits off on PHY power-off
is the right thing to do, so I've done it.

Bryan O'Donoghue (2):
  dt-bindings: phy: Add qcom,dp-manual-pullup description
  phy: qcom-usb-hs: Add qcom,dp-manual-pullup logic

 .../bindings/phy/qcom,usb-hs-phy.yaml         |  7 ++++
 drivers/phy/qualcomm/phy-qcom-usb-hs.c        | 36 +++++++++++++++++++
 2 files changed, 43 insertions(+)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
