Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21BD4C6FA82
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 22:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CrJOdhrZNly8Msojj9uLzn8s6Ry30Nue4edPwpc+nrE=; b=KhKdEyplTq2Lma
	04BCyH89LF87oC+2zwXruMjBtdPxipSV0lLjZySweEQYsI+82Xvd5+EUDTLbeOfbDCkPmyCxKm4FK
	op0s38SNv+HxvYuczZflnQwyQGX4jy3fsXqbq3auHJ9hjyYrpoq0FoxTIQYOqlzoe/wZsygTpk2Np
	uJAJMyJjtuncvDb4M4cvRDzz0ZnRNn0Fyyq4l1vktFQA5gZwo7vRMcgtZhpDEcaE8onjNE4ExPsFa
	ZuVjOAJD/jmYvJ9KnT3/Ad7sYd8cEw2Llozk6iVI2DbmLxcK5kMAe7Y/aWUfSYtwDq79Dpl3VsD1H
	3pyi4c2OZ3aFNOXq+E/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oalxp-007QLC-Ie; Tue, 20 Sep 2022 22:43:37 +0000
Received: from mail-io1-xd34.google.com ([2607:f8b0:4864:20::d34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oalxn-007QJm-3k
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 22:43:36 +0000
Received: by mail-io1-xd34.google.com with SMTP id v128so3598949ioe.12
        for <linux-phy@lists.infradead.org>; Tue, 20 Sep 2022 15:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=9a2wQGNji3boWcvaNVrwZhkiyGjSoKvaRS3Zd386lDg=;
        b=g6ERxAhf777weg4HEcFO40b1tz+J4XhJtUghq+25u9skBlMQ3/MHI+uQtBlNUCZqRl
         jsIfdDiysRbXghXVyHc9NDzy73aBb1NeUurfeHlP/m8AHPr6JtY/bLXSSgdUl6pTd8n2
         8r+E6+FuJ/VwTaA5r4m5rrDQCIlEchJtvNtn03E9nYVc6xKOCp+BsW5bA95YoV4zjo6s
         FGWGZRr+2VQS4aWXx7H8VCUiWDzoNihyHMiXx7LHzTB1y/Xllu14Moc+rAWrq3NCtrl3
         mny2ijsDkVmGh+t09web9vBPf7h0z7fTqOavIBwxhilQ3H7Fsj3vGUGCmyZebW1jYRUO
         H7PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=9a2wQGNji3boWcvaNVrwZhkiyGjSoKvaRS3Zd386lDg=;
        b=8H56PmWCPvS+jOuCmUfDOBrv3Bjiu2JR+ZgUTenjJwyzEIeZPVYm+3NZj0TgDGwdi9
         cYJc0TjpiDcasluQM/CXM/rKmqaxV4MaYuog6IuIM+8na76aIHPosmr3n6Bbq/3hyzSM
         0Q2moLVA8eKg3USIMiVcChsM6mt6Vcwl0ZbdYCV0NZrBHKRpkxWJPtxF1iIX7dYqNMc+
         c5DRsr5zJg2bPhB5k815arelVuPGaN4sB8FcrVKO9HErA4o814LK8KgcDbxFi6I6KSqn
         8Nuv5EBtAUXUKOw8ddI2kRQaEQtDbaWeLi0Np8M7gx50Y4q8fgOn1jC97qNPXARxaGx5
         qtNg==
X-Gm-Message-State: ACrzQf1tFUBU+wUnhHMVc6rHBcqw94cCpF9axRwxIcsQ6ulNF9jLRsqf
	KGxCIiPaXQkV1MVk8mmWMVQ=
X-Google-Smtp-Source: AMsMyM7beyr+muSO5TPlz7inBaw8v8504lIvag6iEzHC99XHPuDOQfWPanu/0+ozVGnJSr267jkepA==
X-Received: by 2002:a05:6602:2b06:b0:67f:fdf6:ffc2 with SMTP id p6-20020a0566022b0600b0067ffdf6ffc2mr10543707iov.111.1663713813879;
        Tue, 20 Sep 2022 15:43:33 -0700 (PDT)
Received: from localhost ([2607:fea8:a2e2:2d00::a533])
        by smtp.gmail.com with UTF8SMTPSA id o13-20020a0566022e0d00b006a28964dc6fsm449473iow.7.2022.09.20.15.43.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 15:43:33 -0700 (PDT)
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
Subject: [PATCH 2/3] dt-bindings: usb: dwc3: add sdm670 compatible
Date: Tue, 20 Sep 2022 18:43:19 -0400
Message-Id: <20220920224320.152127-3-mailingradian@gmail.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220920224320.152127-1-mailingradian@gmail.com>
References: <20220920224320.152127-1-mailingradian@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_154335_169723_BD266F7A 
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

The Snapdragon 670 has DWC3 USB support. Add a compatible to reflect
that.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index cd2f7cb6745a..021bd9ba4261 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -26,6 +26,7 @@ properties:
           - qcom,sc7280-dwc3
           - qcom,sc8280xp-dwc3
           - qcom,sdm660-dwc3
+          - qcom,sdm670-dwc3
           - qcom,sdm845-dwc3
           - qcom,sdx55-dwc3
           - qcom,sdx65-dwc3
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
