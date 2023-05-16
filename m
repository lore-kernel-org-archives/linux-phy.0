Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED06AC77B75
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 15:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2fbWFqycwpEu+DdKTBIyEexbgAZ/J0gmKtjo0q7j+1U=; b=jssESzbdkGKSwa
	kcVpRMMPVJWU58MN0CQuwT5jDRtdCuexCm1VW11brfDMvKopRlNEuBkIDmzeDF270Tnsom2PPjh+Q
	eVn+gymmwlkK0amETvwxXucQlpDejCoTq2zv6aL2ojBKWQ5QFdGY19W7dyUQe5yXXrtVbIefnXP1W
	EMtazxrnJWkPheYUC76ojAY5CzSCvXkYhnvPugnzhMlXF2QBGt1eu4r3FK/lAmvqKbaastCDJSJMr
	3Kcdqj5f7O7cgwhCVMT4k0e17WAimNyrpuN7lNNu9hjPUVOfEHrH4Wpg0ltTTJL2nxle+3hwUvB3a
	J91XgUu/exhj1eJOGXSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pywEv-006Bkv-1o;
	Tue, 16 May 2023 15:05:25 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pywEs-006Bk6-0r
	for linux-phy@lists.infradead.org;
	Tue, 16 May 2023 15:05:23 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-6438d95f447so9905684b3a.3
        for <linux-phy@lists.infradead.org>; Tue, 16 May 2023 08:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684249521; x=1686841521;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7txPToyylLXj/XeurHwXRxqGzvOp+rd7gJyEEX+n+mc=;
        b=PvT7igHMLEj8zD6P4R7JabDlBcl9puACGqWkd8D8L68rJbLbFTpSBEMtOs0zB59ssb
         cwjEa6KM18yUWqFIYkxkUO61wBCI8ZTekcW8mvyjgjaKeoJ+XU5mE7hndRPUGjyVbXRZ
         R0B1qiyVjs69DTDnP+z0TUxs6neB2P7iGxhFn41NVpfS6qPLX9eewNgjvDduIhiMv/vx
         MlO27RMkw12+Ff8Lg+HGQWMtVF8LkP6+//0JEpYkhiQr/Z0FVnlPRrBPPwk7HszsfFsl
         HSo0eKqsvH32V7tdH0JrFgJ6U97ERr2FiSm4vU6MGx5YK8A3TM/MAHrZNB28/T9RoBQC
         BcNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684249521; x=1686841521;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7txPToyylLXj/XeurHwXRxqGzvOp+rd7gJyEEX+n+mc=;
        b=dv/z5TpTMvz1RdXR9pjl0r8wGFeZqwV1rmwrwG1j00MuAUMKtXHzICaV5i6lipeGJG
         FNT3OgeaomYg6Jy5GH/v4O9E1unERnsSdzfRWT1t27oCY55iht1uqib7AxqoRao/j9hg
         Tho+YgWYj++e82+zqcC7jocjBnBHv0InvNCK7eg6FoBeuLWBuOGJhM7Uq8Zd92oyITB4
         9YEqDzBE3G+RYNCaR2t7LhYynVpWDzego7VMaqY2WI6AyVLlnwEGKVoZSoSqA7gDLRaO
         8VQz8CXt45dJA/O+VUV5qHSLtsz+iW4+EbCu+LoPENP7SVjiER89Ms4aIG6E6wrzPL1M
         lLOg==
X-Gm-Message-State: AC+VfDw/V6E6k61GHAiDD295AnsFyH9w/aobWPKFPC7LV1RVozeJuQaO
	jncsRgZbAgtnvRworu0L6zFOMg==
X-Google-Smtp-Source: ACHHUZ7OlVfboY2rOaNjd3FbvEe5wJbXRpyzeqvDCudGA3Geq+oEtvj4mUoMHww3/5QfIIX3lMwX4g==
X-Received: by 2002:a05:6a20:7d82:b0:103:4c5d:667a with SMTP id v2-20020a056a207d8200b001034c5d667amr27948776pzj.4.1684249520825;
        Tue, 16 May 2023 08:05:20 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:6bed:72cf:f5c9:ba94:6b85])
        by smtp.gmail.com with ESMTPSA id h1-20020a654801000000b005302682a668sm12817164pgs.17.2023.05.16.08.05.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 08:05:20 -0700 (PDT)
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
	krzysztof.kozlowski+dt@linaro.org,
	dmitry.baryshkov@linaro.org
Subject: [PATCH v11 0/4] Enable USB SS qmp phy for Qualcomm SM6115 SoC
Date: Tue, 16 May 2023 20:35:07 +0530
Message-Id: <20230516150511.2346357-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_080522_334316_57970382 
X-CRM114-Status: UNSURE (   9.80  )
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

Changes since v10:
-----------------
- v10 can be seen here: https://lore.kernel.org/lkml/20230502053534.1240553-4-bhupesh.sharma@linaro.org/
- Rebased on phy/next, as Vinod was seeing rebasing issues with v9 while
  applying.

Changes since v9:
-----------------
- v9 can be seen here: https://lore.kernel.org/linux-arm-msm/20230501192432.1220727-1-bhupesh.sharma@linaro.org/
- Addressed review comments from Dmitry on v9, regarding register size
  and pcs_misc offset handling. Also collected his R-Bs.

Changes since v8:
-----------------
- v8 can be seen here: https://lore.kernel.org/linux-arm-msm/20230410171010.2561393-1-bhupesh.sharma@linaro.org/
- Added driver change for new bindings used for sm6115 / qcm2290
  devices.

Changes since v7:
-----------------
- v7 can be seen here: https://lore.kernel.org/linux-arm-msm/20230409200934.2329297-1-bhupesh.sharma@linaro.org/
- Addressed review comments from Dmitry and added "pipe clk".

Changes since v6:
-----------------
- v6 can be seen here: https://lore.kernel.org/linux-arm-msm/20230407061122.2036838-1-bhupesh.sharma@linaro.org/
- Addressed review comments from Bjorn and Dmitry and dropped old bindings in this
  version.

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

Bhupesh Sharma (4):
  dt-bindings: phy: qcom,qmp-usb: Drop legacy bindings and move to newer
    one (SM6115 & QCM2290)
  phy: qcom-qmp-usb: add support for updated qcm2290 / sm6115 binding
  arm64: dts: qcom: sm6115: Add USB SS qmp phy node
  arm64: dts: qcom: qrb4210-rb2: Enable USB node

 .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 27 -------------
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 38 +++++++++++++++++++
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts      | 24 ++++++++++++
 .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  3 ++
 arch/arm64/boot/dts/qcom/sm6115.dtsi          | 29 +++++++++++++-
 .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |  3 ++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 22 +++++++++++
 7 files changed, 117 insertions(+), 29 deletions(-)

-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
