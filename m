Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B12E7C7619A
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 19:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=07a8GltwO/KlXRePvPYmhlvSGfjDREOxUFnWCTIDJ1g=; b=uiI38P/mIGbZ9d
	xfCksBOTuUMqeUbh6Dldkugp262zTvKDzD31PcK21FUoXh1Jzqx+tZc/i0qthxtxDixlWel5g82NP
	JOc6wyIT6dHX6E+oy6zqp1zbM4z6oyexydMxI5RegrMkCrFqy493A1f+qul4Jzx29FoqG3fOd5sEn
	T1O6smonJKdYKDypIcy650gEEJzk0zWLnEDHSwD1hsFbpUrujCA1DO/kWhCQ3cflPXPJEVYYmgEba
	O+6C7SA9Hyw3xKa9o4EDlatPk6Bl3rColJeQR1d+RCbGYrt0qrdGaWxxKGJNX34JyEVk9vT12J751
	eyImceSEiip5WnYXchqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk8f6-005Urs-0x;
	Wed, 05 Apr 2023 19:19:16 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk8f3-005Ur7-2A
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 19:19:15 +0000
Received: by mail-pl1-x62c.google.com with SMTP id ja10so35360771plb.5
        for <linux-phy@lists.infradead.org>; Wed, 05 Apr 2023 12:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680722352;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3zlksD92y91W/zBiGYAiTH3OBW9sw1/DW7nrq7m6H8A=;
        b=Tl8NBWMiJl9vi0VjN3/5ExPfrReizRoo5kUk43xO2MZ4ES/Meyyl10g8bSByHqrnA7
         nXq8pLWn8eup0i1CwY3XfmnQM86lZQvv9y3Hgnfyd7LlO1iOSh6fj74qJWf5ZKnMu2LC
         UPjngBqvWGV2POebFrjV23T02xTWE/vlJArmaLwNMbCfsGZ+9Fic3gmBFtq8Goar2bmk
         VOD8Z0NY6OiRBjK3v10or97jKnbUTQdQJma2x4MFObp7E/4cVLWZVTzO0SRAh6AXIbW2
         QgD39X+nNeNPPjbNa93ExmFP3hH5/A86Qu3TDraeNoTx3vN3xa6pafG7Z31vC8UrvOkF
         WEvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680722352;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3zlksD92y91W/zBiGYAiTH3OBW9sw1/DW7nrq7m6H8A=;
        b=4h34xIEKu1kI6kErRKueeGNxoi+wIOs+FVXuSMwfsYicWV0fE3k1Fm4rWtzElHxQAR
         eNefaGgfSpzCv/Qi3QdrExlHfHNjR8RZmmeaS5JdRDm9BQNugTAh2wiQnlB0d7zd91tT
         dqlAsIb7Fhbdm1dUWBtUr6PQfdIcJU3Pa690p57hw3pvCNtjFIo56WjCbYmrVQIZZDKY
         87367c3O5/eWDwy2M1+qUhtB7i3tiF9iHXjZHFOYHIEPQR7IqY2gwpiNEHl1nJYNHhw6
         ifomDxASOXFHU4sP8xZUsjkupXjI9ivUpsBH9YCnSfPDaqakrbKIPn+AhLSgkLT7Iyr/
         qIXg==
X-Gm-Message-State: AAQBX9e6OZe11iHb00wbXCcjaxnggMQXDEhkQSJJui+GHSvTbzJiEWbX
	yghIRGudCda8Hlx8qPrzHuf69w==
X-Google-Smtp-Source: AKy350ZnCH0zsQ7BpkuAXwC/NfeSdLVgSm8Gk9+vTwYOmSnoat6y6vPz+7X6Fr1oyoUrhW00QR6npg==
X-Received: by 2002:a17:902:fb05:b0:19a:9610:b234 with SMTP id le5-20020a170902fb0500b0019a9610b234mr3167771plb.1.1680722352018;
        Wed, 05 Apr 2023 12:19:12 -0700 (PDT)
Received: from localhost.localdomain ([223.233.67.41])
        by smtp.gmail.com with ESMTPSA id d9-20020a170902aa8900b001a1d7329235sm10478097plr.234.2023.04.05.12.19.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 12:19:11 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: agross@kernel.org,
	linux-kernel@vger.kernel.org,
	andersson@kernel.org,
	bhupesh.sharma@linaro.org,
	bhupesh.linux@gmail.com,
	krzysztof.kozlowski@linaro.org,
	robh+dt@kernel.org,
	konrad.dybcio@linaro.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Subject: [PATCH v5 0/2] Enable USB SS qmp phy for Qualcomm SM6115 SoC
Date: Thu,  6 Apr 2023 00:46:31 +0530
Message-Id: <20230405191633.1864671-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_121913_741981_B6BCD274 
X-CRM114-Status: UNSURE (   8.75  )
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

Changes since v4:
-----------------
- v4 can be seen here: https://lore.kernel.org/linux-arm-msm/20230401154725.1059563-1-bhupesh.sharma@linaro.org/ 
- Collected Krzysztof's Ack for [PATCH 1/2].
- Added more descriptive commit logs as per Dmitry's comments on v4.

Changes since v3:
-----------------
- v3 can be seen here: https://lore.kernel.org/linux-arm-msm/20221215094532.589291-4-bhupesh.sharma@linaro.org/
- Fixed v4 as per the downstream driver code: https://android.googlesource.com/kernel/msm-extra/devicetree/+/refs/heads/android-msm-bramble-4.19-android11-qpr1/qcom/bengal-usb.dtsi#296

This patchset adds the support for USB SS qmp phy for Qualcomm SM6115
SoC. For the previous versions of this patch there were conversations
on irc as to whether this was a 'qcom,usb-ssphy-qmp-usb3-or-dp' or a
'qcom,usb-ssphy-qmp-dp-combo' as per downstream code and hardware
documentation.

But after a careful look at downstream dtsi (see [1]) it appears that
this indeed is a 'qcom,usb-ssphy-qmp-usb3-or-dp' phy and not a
'dp-combo' phy.

[1]. https://android.googlesource.com/kernel/msm-extra/devicetree/+/refs/heads/android-msm-bramble-4.19-android11-qpr1/qcom/bengal-usb.dtsi#296

Bhupesh Sharma (2):
  dt-bindings: phy: qcom,qmp-usb: Fix phy subnode for SM6115 & QCM2290
    USB3 PHY
  arm64: dts: qcom: sm6115: Add USB SS qmp phy node

 .../phy/qcom,msm8996-qmp-usb3-phy.yaml        |  4 +--
 .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  3 ++
 arch/arm64/boot/dts/qcom/sm6115.dtsi          | 36 +++++++++++++++++--
 .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |  3 ++
 4 files changed, 42 insertions(+), 4 deletions(-)

-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
