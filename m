Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C97C6C38142
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 22:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1QplL3XpoXdLHIvLZlnsp3Bp/7XtRrFUyhVjIAt81HE=; b=Syx7lOE4yz1MSg
	EiEvBhOs29Povg0K7A1Hbp4lLukSq3gY4Mcee36nwEz94W3JqB6wTcd/+CHDAmoBha/pwJZn1rv1n
	af98xsOvPUT5vU8TYarEprg3b6FaYbnuWKUH1q3uFq0nMUQM8Gfubw4WLONUHaA83fXhs/rGnHfgs
	UhFVANHjpgWJ06g0h31XkkeGgSFhG9EpgQ1PLXkFdBw78EPnqD3x+KBmiqyI7GsF9JHbJpH3KgAhC
	J8k1wG/nCO8dfVsYuIzgEpdlt02M8/ZBJv8b7GaXdg/XqxmdLAYWsWzRIYI5wUCs2IldjS8ma0905
	McvPx6ROgqU/L2tmGBEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHueW-00G8n9-8o; Tue, 17 Jan 2023 22:42:00 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHueU-00G8lR-0u
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 22:41:59 +0000
Received: by mail-wr1-x42e.google.com with SMTP id r9so9385987wrw.4
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 14:41:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xUqDldFBsGR6KbhnRzegEmDQZV+g6bdLTxhuChW3+yA=;
        b=mAZZfV7P+Q90do3euBBjMfHjd9Z28dfSDEXugPemuVlQtAm0EltZXIOFGtPgOvljTk
         VUTXklPR2yRTVfPXohWZudFj3ps0ZXPYC1X0pEstWTU4QJef/qzSkuOY+iNDgZ6tRIQN
         82g+yPTAlai230VJclNcGibm3dHIIDAc0xDN/ntlrEIC9yirl0mftsRhImMQPMwmBsmN
         CQrrA74BVScQAuw5SOIqwE/6jqYwNae8L9RzDP9i3cQYKnZDXoM6xs5JpfA4BIJSUoRY
         50hrPyxI/ZHTMeuOM94MzHUcTXzSSyFuNJTELJ+D5Qmg05DcY4ty00lGounB/LZIwIZK
         S1Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xUqDldFBsGR6KbhnRzegEmDQZV+g6bdLTxhuChW3+yA=;
        b=FD9D///ThmZTtVH44SkbV5CGqemlZbmlAGfQ24FacVqIDVv4aOQ9s+PC3PebElJGzE
         fzBEZjcyZ+sToSr3bTBhKTQ2hnA3gPOaoK8ObvtGmY9oxT5ieBvjpF4z3yiJjjDmQ4bj
         oqMVa3kBCIIcTReBWOqY/LiBhhgxK0YZMMHGn4v0Gh8/KeyjLt0Wc2uoK3fPMKyD9YkT
         0zie13KhipVmFLcpCePtj85Z1N9k4Xyg2umKObBjtqBL7GfaZEA9XUteXGO8jRXs76so
         vGnmzNLD138TqvH2OmiZhMG/gB2aIzRL2bvx6wNX2X6ehIKUKU8yxvG5RgOvCyCvL8hm
         7M5g==
X-Gm-Message-State: AFqh2koW/nfy1joyok1mL2sOQF2t5blMNHRI/dqwzZerOUZ8R0t3zhLd
	Zgmg3tP//55gj0jfLAdGcBDYjg==
X-Google-Smtp-Source: AMrXdXvM3tw3J7ANIPzNfGtPJCABq67WAU2OzSlerJZLOzHR9rP6cwmASEJFfLAXYeoiS5A5qnrcjw==
X-Received: by 2002:adf:de10:0:b0:2bc:8555:5d19 with SMTP id b16-20020adfde10000000b002bc85555d19mr4546046wrm.12.1673995314211;
        Tue, 17 Jan 2023 14:41:54 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id m1-20020a5d6241000000b002bbdaf21744sm27024916wrv.113.2023.01.17.14.41.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 14:41:53 -0800 (PST)
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
Subject: [PATCH v5 0/6] phy: qualcomm: Add UFS support for SM8550
Date: Wed, 18 Jan 2023 00:41:42 +0200
Message-Id: <20230117224148.1914627-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_144158_109708_4FC96675 
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

The v4 of this patchset is:
https://lore.kernel.org/all/20230117142015.509675-1-abel.vesa@linaro.org/

Changes since v4:
 * Renamed QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE[24] to
   QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE[24] in patch #4
 * Added Dmitry's R-b tag to patches 2, 3, 5 and 6

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
