Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25C60C6FA92
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 22:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QgslidoxtQxaA5T1cO5kBSYcQCqX6QVyl+jxjkmtXdM=; b=OzuCpxHcG9o7ys
	9vOWt5KHYNnCPYz39hIyY4cMWds4bMo6CNg9XXMegEIxSSdCJza2Hwsc/C6Z4ZbTJaYrsjBx4TEIg
	NDsxk5pNBED/2w5o7aldplDOcudcuncicN8IJsyLKVxKFsGBF+i/b+3l0nqZh8VWN9WfdhB/UAX9w
	IctdJSTSi90UKVE/kJjWeyd/c5HtpeKhISlP5VJjcIBLSRAuC7tueWS85x7KYVV+IXkC/fMZktAoi
	VAD6LgGeLB8SDq0vUwTKOQ1s5aM3szFh0z/sZLpN4nljDroJTvmJovXTmNXv9Le8HIm/vg8Q7GnJo
	kwF+Dz0oqJ+vJ42Xaiow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oalxo-007QKh-DW; Tue, 20 Sep 2022 22:43:36 +0000
Received: from mail-io1-xd2b.google.com ([2607:f8b0:4864:20::d2b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oalxl-007QJ9-Cs
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 22:43:34 +0000
Received: by mail-io1-xd2b.google.com with SMTP id r134so3628828iod.8
        for <linux-phy@lists.infradead.org>; Tue, 20 Sep 2022 15:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=nFAUedsUxBlySo2MTS0W3FNkaJTiK1eOxhG9I/NOEvk=;
        b=fYTPTuolkUTeEMR8/B4KqNuwol/Kp2cWBXJuZUP4aSGZENbHy8h/vro3DPJYoXuD0y
         Xv0eWzfb//Jq8fPADfk7PFg6sgxpHrqvTkui7QAn6KgkH7K+nANLo9PDS4zoopS2hhkd
         I0xXkatWsF4bayLRyeogGGGPWDVeOUuWiKf6cTEP4I5WLO1hAQYXOn1+NMN5GtE9FNGo
         r4bjbHJuaXUCZKDFBO+5NVRt79nP+Un3bsI6VP03TYPxBMyUwT9hCuzDUP/XsL+tUfgb
         ImOXjOezSafIm6mCBWVKb2o8JgnWjk/drYEHNoomBvAYGIweFzDvQHX0w18lP0CFKs2Y
         KLvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=nFAUedsUxBlySo2MTS0W3FNkaJTiK1eOxhG9I/NOEvk=;
        b=53n32RZv8U7/lZ805acwURbWd7dZmHDwiyr7DpF383CS7IaX5GxlnL5K7stEAy1lkt
         Q3uj4eGyjGgMafaK7vHoByiDevc2FZxh40u8OZ20Xu9R7FJWLTBTPVH+UTZCRRxsjfxd
         0cS2egfbGRajhp4U7DYWdg+GAEcgUnT16hDWk9f2SN3POaApzCYrFUxEpb785yZ21Cgs
         O7BSwCo1NX9bBYGUv1girHoAe7KVhK2Qk1/JpoWXedUCI6PIeY/N+sqBTtUT3nHb8f1Q
         kwqCH1sce5Tv5dIFys/6Gu1iUESjCkcMBdc9GsTy8vdzqPIz9WZDjtYOmCBtPdhRM6y5
         JUKw==
X-Gm-Message-State: ACrzQf2Wj36mSOFtNvxFMkUZUwukIaDcMrYcH/tIzNTfkdO2/QfxzK1I
	OYfoZwTUrHl9BO636qK/P9E=
X-Google-Smtp-Source: AMsMyM6QDkvI5JccVZkUC6pDooMsxg5WyMFda4zAZHddt7tf12r8xJtGk1JGb4kHikqRnKcSWlH1/w==
X-Received: by 2002:a05:6638:1686:b0:35a:2566:6786 with SMTP id f6-20020a056638168600b0035a25666786mr11835273jat.180.1663713808345;
        Tue, 20 Sep 2022 15:43:28 -0700 (PDT)
Received: from localhost ([2607:fea8:a2e2:2d00::a533])
        by smtp.gmail.com with UTF8SMTPSA id c97-20020a02966a000000b0034d90222997sm392192jai.66.2022.09.20.15.43.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 15:43:27 -0700 (PDT)
From: Richard Acayan <mailingradian@gmail.com>
To: linux-arm-msm@vger.kernel.org
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Felipe Balbi <balbi@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH 0/3] SDM670 USB 2.0 support
Date: Tue, 20 Sep 2022 18:43:17 -0400
Message-Id: <20220920224320.152127-1-mailingradian@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_154333_449118_14F9F9F2 
X-CRM114-Status: UNSURE (   6.70  )
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

This adds compatible strings for USB 2.0 on the Qualcomm Snapdragon 670. I
have no way to test USB 3.0 because my SDM670 device doesn't have USB 3.

 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml      | 1 +
 drivers/usb/dwc3/dwc3-qcom.c                              | 1 +
 3 files changed, 3 insertions(+)



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
