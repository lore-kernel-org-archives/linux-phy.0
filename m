Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1755AC54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 22:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1oR0Tq57qAPdXWxr8cvSM0FXWDnDPb1H4GoKct2ytp4=; b=dOJD0dHatoIfK9
	SGmY9Ziuay2eixkDqwhhwei8I+UOFu+lanwMhaxCUNjBAc9JlnI+Pwxv+Zv1O1uSqfFFGr76+vVIV
	U+DVgpOWYXvXWycifzv9hMr+UVhc5+GHHYTdsGyLYuxl46pHb3MUkNmI3EoSKSJeB9X9JuxFUuFMo
	WY/Kh9ZGXQh9OaPBNUnI6uDwJCHUgCd3pC+WcwSWfiuuJF++O8/79Q++iq1ENHSa94kTxQ7Chpz4t
	ikey4+EOWVmoXlVn53s+p1EUOvHu//YJ7GkT4l+1wkmWCu/04ZxWZC1Ph6+3i4x1Vll6VtgVkbYqi
	JNSFPRumAk+w5d8Kfujw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oalxo-007QKX-9H; Tue, 20 Sep 2022 22:43:36 +0000
Received: from mail-il1-x134.google.com ([2607:f8b0:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oalxl-007QJ8-7s
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 22:43:34 +0000
Received: by mail-il1-x134.google.com with SMTP id k9so2198499ils.12
        for <linux-phy@lists.infradead.org>; Tue, 20 Sep 2022 15:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=b8dyl9244tY8nMIX9q1PRZuMZkGz0f5pEOzanhucPvA=;
        b=Yk2bQf7UvCto57hCAVFg2bl5UyUOKKotFL4ZFw8RDpGbLLhs4AbHUy407v4TVsfVQH
         8VTux4naPtWhZRYAbJTQjmTgDA6Ez4qiUvR2S7tkBSb8AdffooWj+gxekCYVQXV+09G6
         Wd7XR3PAB773gmgVjZwWpC7kotPBO274tCg9ikzhGzQKBNYnNSAnUqVfFt4gl/9r35o3
         0FQzS/3YJ8p5g2d7Cv//mWWzQyhA/Ya3RUKdZ3WrbFFm7+P/3P1QN0ImmUdPu/S9ZK/N
         zOqFMChTYcyGN+VciCu8SVcemVhZxit+eeOt8+W6PN9ofZAk8L0xLxdZ4T3EZtgontcw
         HNLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=b8dyl9244tY8nMIX9q1PRZuMZkGz0f5pEOzanhucPvA=;
        b=iZOAZjBpNjcyX5RQsVzfgxzmMSg6CcRyC+uJT9uZAOfeV4230l4u3Q/EKyTn6jElyP
         8lDtcCej7lrCqfMsIY7se+oHlPvuoClJerlEWaUbQLQ5VHlr3uWrV9Bpd2Xv+NNcAayB
         dkDQ+4TSybfMVjCGDrhc7QD5aktmDJI91IXeYywWiOhmkSmclMPQCPs3n/+Gv70241W9
         QF8LGUPHFGrDLUvEvtsmOGmrt9oqnyM3IvPLfkbxDSInht12tifLOKOkHn5OkhMOwQNb
         jlVfXRMawM9YAbtCMDpXVA1yxaxHg/1ziX5gehOi7W3Yx5XYhcNNnlLs1X3jNJYY10JR
         uVJQ==
X-Gm-Message-State: ACrzQf16LpTGTPDOV8v+Zef9YjTAXaRoN3DlHkWtuQDhpgLRc+Gw5wRt
	RmWA3t8UvNP4Ow/c88BwOGw=
X-Google-Smtp-Source: AMsMyM6fCi/HU18Py5bqDsyyU69KaF/bT/2N8tT5o9m4Muc9JOL0bnJYmhIO9/Jinbwppx7rh/fLiQ==
X-Received: by 2002:a05:6e02:12c6:b0:2f6:5f42:89ed with SMTP id i6-20020a056e0212c600b002f65f4289edmr828295ilm.153.1663713811347;
        Tue, 20 Sep 2022 15:43:31 -0700 (PDT)
Received: from localhost ([2607:fea8:a2e2:2d00::a533])
        by smtp.gmail.com with UTF8SMTPSA id f15-20020a056602088f00b006896f36afecsm438791ioz.15.2022.09.20.15.43.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 15:43:30 -0700 (PDT)
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
Subject: [PATCH 1/3] dt-bindings: phy: qcom,qusb2: document sdm670 compatible
Date: Tue, 20 Sep 2022 18:43:18 -0400
Message-Id: <20220920224320.152127-2-mailingradian@gmail.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220920224320.152127-1-mailingradian@gmail.com>
References: <20220920224320.152127-1-mailingradian@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_154333_296902_8EADB6EB 
X-CRM114-Status: UNSURE (   9.27  )
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

The Snapdragon 670 uses the QUSB driver for USB 2.0. Document the
compatible used in the device tree.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index d68ab49345b8..636ea430fbff 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -30,6 +30,7 @@ properties:
       - items:
           - enum:
               - qcom,sc7180-qusb2-phy
+              - qcom,sdm670-qusb2-phy
               - qcom,sdm845-qusb2-phy
               - qcom,sm6350-qusb2-phy
           - const: qcom,qusb2-v2-phy
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
