Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F3D1C677F1
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 14:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cZRSpthJWhBXtC46CXJud2PgOEqO6I363qPBjavHrQk=; b=S6DZxYaZMI4lfy
	z8JmcKKA8Q2H2tV5T8gjBMSbynNle62ic+SKhfFc5noY3M5BUUuUmWb3UiXNGM7ZKikjPuzHCZnQj
	/BvtyHTza0jFgXQY8cePHu8S9p/Hr7Kaps4GEg7LP1ZgDD+sx6s6CFLUzFpIyLFCB4efpRb8XpVIp
	W8wBr/jBgMux43ZUfmjJMg4PyWeCYda5qfaf0Dgl49tcJ9DN4A5/tUVGPfKeZwZazwlvor2IlwkdF
	UhJS0kwrDwSDv+nh7erhJYp29c8gKDe0lgV04J2O30/jvnwILmRpXXe3anGWntz8ua++wM+xwWUDD
	eAQ0AQTG6tWM7MzZHUnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHmpG-00EanS-E4; Tue, 17 Jan 2023 14:20:34 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHmpD-00Eamg-Vk
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 14:20:33 +0000
Received: by mail-wm1-x333.google.com with SMTP id f12-20020a7bc8cc000000b003daf6b2f9b9so4938856wml.3
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 06:20:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fHE/v4+uK+hhFNGRiRI8Oa2ab1RUtvMhDGA3+YRGHLE=;
        b=yx3j2Bpp8LHeZsYwke9yWaWsEXsl1Uu726mdIDkWhMfC3ejEbQQgF2gPovYBa28Gqd
         Ps+fGV/qlIUWKSs0i79XP+4EYWladvlKco32eLngSjXQKmoe18qyyeUAHvY4xdJqOBrs
         ZXz2clV+UNlhFoPHPMn/dLqfwghOFLYw+V+bjC6YX6o8th2RAkYPfiPkvTa9+fwLT/jL
         AlhPuoEOVTEVQmFOO18BTlCrSdh/SQ9cdXVPx/PUW5TlT8jd40Mjs3jxonLZCAA7wm26
         G7xKkE0b7/x7ImwyZKwsNj5lW6NBke5d4EWEKoeKSJwYTy/Cc0GXVrPyUeIMDqJnaKin
         LKgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fHE/v4+uK+hhFNGRiRI8Oa2ab1RUtvMhDGA3+YRGHLE=;
        b=hOg9X+C+RWs6A43ln1vzpwDDBpmrsnVEo9jFsU8nhscgb3ZwpDXLsls10mImzhT9jI
         cVIce8Ili/bpdflolrR68pc2L+q1eXiPzClie4AqY82/2r+p+eyAcn/LvhEt230IIkB+
         jiBqzcyHb0glE6Z+hFN1tT5FWUolWSG59Tam0iT1PqWVdzgbOdtgFWNfnIv+cHSpv5j6
         z76DFNzGrOo2Yu76BQDvtIGHJVvIpLRQDHYj4A/Z3dwfOd1UXPOyISxDoz+1dSmXzlF+
         XpVBX+9lvZ5zVUTqUY2XmqN2lpBCUBIrW7NsBTvdss21YjcOtJwG9UtPTqCN83QYlF3D
         Qdhw==
X-Gm-Message-State: AFqh2kpNtQYSIE8Ym0gBpHDBa4dJHJYqXoMiSsGO10H1TOIdogbyBj68
	h1sRAKcWt/FnRYq8vGcS+Bdwzw==
X-Google-Smtp-Source: AMrXdXs86RTSb1BFxvzXGXbl+Vq7UDVuLIdG2zrOo+T+L1NzXhmxLcw2L4lqgDYVAam/LHTAn+iGUw==
X-Received: by 2002:a7b:c309:0:b0:3d9:f801:bb6 with SMTP id k9-20020a7bc309000000b003d9f8010bb6mr3201564wmj.10.1673965229777;
        Tue, 17 Jan 2023 06:20:29 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id i8-20020a05600c354800b003cf894dbc4fsm40443133wmq.25.2023.01.17.06.20.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 06:20:29 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH v4 0/6] phy: qualcomm: Add UFS support for SM8550
Date: Tue, 17 Jan 2023 16:20:09 +0200
Message-Id: <20230117142015.509675-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_062032_041043_7088B7A5 
X-CRM114-Status: UNSURE (   8.77  )
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

The v3 of this patchset is:
https://lore.kernel.org/all/20230117125555.163087-1-abel.vesa@linaro.org/

Changes since v3:
 * correctly ordered the compatible in schema file

Abel Vesa (6):
  dt-bindings: phy: Add QMP UFS PHY comptible for SM8550
  phy: qcom-qmp: qserdes-com: Add v6 register offsets
  phy: qcom-qmp: qserdes-txrx: Add v6 register offsets
  phy: qcom-qmp: qserdes-txrx-ufs: Add v6 register offsets
  phy: qcom-qmp: pcs-ufs: Add v6 register offsets
  phy: qcom-qmp-ufs: Add SM8550 support

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |  1 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h    | 31 ++++++
 .../qualcomm/phy-qcom-qmp-qserdes-com-v6.h    | 82 +++++++++++++++
 .../phy-qcom-qmp-qserdes-txrx-ufs-v6.h        | 30 ++++++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h   | 77 +++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 99 +++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  3 +
 7 files changed, 323 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
