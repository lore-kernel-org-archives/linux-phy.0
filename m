Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74067C76196
	for <linux-phy@archiver.kernel.org>; Fri,  7 Apr 2023 06:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Kxw02r2N5tJ0fss5Qu5U03BrGQCXkCNZFJoO2RLuEIU=; b=RzyV6tvNgWVb8m
	uXwhwaIXunvm7yV5s4qDn5tz2gBUR8RffoYbOfN+hjlpX0lkQvtLvQv31yrDjZHuFGTQK9MezP0fq
	vl+dqcNNWzhuNDYqs+W0rEAquGJ9sXLQmW35R3j6YfkZiSMgXKC5FlP2TisWjT9dK2DqzVQ9+mkub
	YKjdHDJVAMqd1dsdNVFhCZs50D7DccXe/wJmZ3wlqDlUwpTt6yNkOFP47o7PlrnzoD/l6JCgFJLw3
	QNVNuO5rAb6d90DZxEvmySiEp/RgPnnT20CAU6yiTWEM+hcl5rIEHSqYXd6dbiAHRNd+JDDrMj6pr
	QExoKSJjh/GSh5vmo/xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkfJy-009FCq-2f;
	Fri, 07 Apr 2023 06:11:38 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkfJv-009FCR-38
	for linux-phy@lists.infradead.org;
	Fri, 07 Apr 2023 06:11:37 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-62ddb232ddaso292133b3a.1
        for <linux-phy@lists.infradead.org>; Thu, 06 Apr 2023 23:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680847894;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gmR6rgctA5h10qi1E78YOiMPgpuJw+XUWgs2ChaCqpA=;
        b=jODbys5Apjv7G2eYFmFneVRNWweq5T5O59tDNnQOXJxee50FOgwRIdkDzdq0Kdanhr
         Cke51z1sgQEKCgS4MHLHgzSTHSQlHZJjfHLMshUxX2cgq56MiSm5ldiI1GAn9H55rODy
         MdI1gd58eKVBF5qT+R5i1eTcl3HqtWcpNfX+jdC/Zcc55oKtvEWByPI7O5MKfqMPpcf2
         Vxl+AngaHUao19oybBOjcyaW/9hFgfvx9b9itGKU0Aj458+7afFVmLqu71tAfkeY81cc
         20X4G16nvTPMUmvFFVpZUJQnqV7ajI2dX9y8yTIdb9jiTZ0rY6B3CV1jayfFSfa+eXbZ
         8dNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680847894;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gmR6rgctA5h10qi1E78YOiMPgpuJw+XUWgs2ChaCqpA=;
        b=idFuFfJUlaJCKWel9nrvosrZs6w+I1zJUmtuK0pobK9zcB4gWsTUk6PFyxYjmTV4hZ
         bz1H7u5rJsHVLBlmwQBzrYRRLK2QqjCT7jBITCSeuaSWa1YHFQLKo1AlVmVwJ6mnMbOd
         rW4XVtrU1pNUPQtznY3cMv0fb//AbuVbODvwPBJiyoXPX7Vd58qqnJw6LBVpxqbnYzcw
         slJvCSEV9srMQ7SumRkEdTu0+CsGzHgSEsesPZ+WysQ9GxDGBkG8YTC23yViBXdvZ/BF
         yYSPkTQYBlCymZ0TKxe9sJze0MiIlKnIMwfoScf37jtoTWCMu4nyWgs1+ZiX8mRyMgJl
         4uZQ==
X-Gm-Message-State: AAQBX9eq9xMr9rucc4tTHz0iDl0JXC1TW44hl7inwOkzbYgtCJcBXFg7
	C+/Jo9kmbsoMBLE2q1ytumhWDA==
X-Google-Smtp-Source: AKy350Y7KRs3leRqQpn30cRKbXpN644SPm6MQrKtQyUq0iAZ3hOGXe20kE/v1O6tA+VYYJhJ9Jhz7w==
X-Received: by 2002:a62:38c9:0:b0:625:4b46:e019 with SMTP id f192-20020a6238c9000000b006254b46e019mr1077459pfa.9.1680847893649;
        Thu, 06 Apr 2023 23:11:33 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:6a11:8ba1:beba:def7:a4ae])
        by smtp.gmail.com with ESMTPSA id u25-20020aa78399000000b0062d7e9bb17asm2253879pfm.81.2023.04.06.23.11.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 23:11:33 -0700 (PDT)
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
Subject: [PATCH v6 0/2] Enable USB SS qmp phy for Qualcomm SM6115 SoC
Date: Fri,  7 Apr 2023 11:41:20 +0530
Message-Id: <20230407061122.2036838-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_231136_017706_64220E5D 
X-CRM114-Status: UNSURE (   8.86  )
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

Changes since v5:
-----------------
- v5 can be seen here: https://lore.kernel.org/linux-arm-msm/20230405191633.1864671-1-bhupesh.sharma@linaro.org/
- Addressed review comments from Dmitry and made [PATCH 1/2] compatible with his 
  'split away legacy USB+DP code' series:
  <https://patchwork.kernel.org/project/linux-phy/cover/20230324215550.1966809-1-dmitry.baryshkov@linaro.org>

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
  dt-bindings: phy: qcom,qmp-usb: Drop legacy bindings and move to newer
    one (SM6115 & QCM2290)
  arm64: dts: qcom: sm6115: Add USB SS qmp phy node

 .../phy/qcom,msm8996-qmp-usb3-phy.yaml        |  27 -----
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 109 +++++++++++++++++-
 .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |   3 +
 arch/arm64/boot/dts/qcom/sm6115.dtsi          |  36 +++++-
 .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |   3 +
 5 files changed, 144 insertions(+), 34 deletions(-)

-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
