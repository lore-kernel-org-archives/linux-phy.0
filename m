Return-Path: <SRS0=Q81u=LV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73A38C48BC2
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 18:58:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 302CC61C18
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 18:58:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 302CC61C18
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WORNMFyIrxhLbs7fqOZCXyPNpfQ3k0DLJMRWZYMMPxw=; b=LIDN3myQDtaZLj
	81PE0q21QZYhKOnhlYbBNnlhUNVVwGZ7vr1MBb/6c66lcME9lorgXYLfE5vHGqftS5m6xh3bpsy9r
	YVyvsXiWAElvUcR3dn3mycoaDTULXMyy0fdKikd9r5JymiiPpQs/eutNuCWVUFcTKYhv6LUpsU6+/
	Gj6d6KxYqm+3fpcroZ1G3t4h7TDF0fBthYVCfsssX+RjanNouNOK/ZuB5hh5EL4eu3EO+6VsoovUu
	IAeBgioM0KQHHnr0kkD51I0MHmePdv/ABVI1/NjdYIzV5wrU5uAmcSUxJ/CPfDFkf8KcCzVak+jVp
	JjY4aO5AvDBJaUi+P6lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxZyh-0060H3-Lc; Sun, 27 Jun 2021 18:57:59 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxZye-0060Fq-Tj
 for linux-phy@lists.infradead.org; Sun, 27 Jun 2021 18:57:58 +0000
Received: by mail-wm1-x333.google.com with SMTP id
 a5-20020a7bc1c50000b02901e3bbe0939bso9522006wmj.0
 for <linux-phy@lists.infradead.org>; Sun, 27 Jun 2021 11:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hbU5C53by8ndXGtDEtCLVhoqtGIcQT0Y5XrfcYaPR5U=;
 b=XjbWv8UNt42p5A0Ph1knmvdygMxaAn/0g7apE32zRAGtCJ6jnfpBY3FMJOW/cYse9G
 9JqccMrWywt7QkNDMNiupj0MLtOSD7MOG7L+XeOrsSPouSpsuRsNPzdecg+x113BFUIV
 yrR3FoJ4xRg+2YNePg4gmbRy9iobLHkmcCvvHSK7wuL0zzbbjiKnPykJcaRP3Owy9DpL
 tijine4/Bd1BDcYyxfFnlzVmG8fkWRwLd4KFdfdo8hXRRCaIS9BtOl8zj/ebqUo1WfA5
 3EwtoFHVm9GnC679/nVA/Cgh97zeHJr2mWx8+bqGYnA+kgiWBtYqODrWb7gn6l5lEJAw
 zAQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hbU5C53by8ndXGtDEtCLVhoqtGIcQT0Y5XrfcYaPR5U=;
 b=gEnYpj9vr0gtICUb29MtGuR35c1+0DMhA904+ygafFJ41xkyx1T3QjRD+k1/F3Iv5U
 KegW5Yy8m8XzqWGIvJmomfwME3zOyBkMPtRVoJATkgz9HqUJGB/oThS+xt8GRMYo55jJ
 mDOel7d1Kpuwf2NQo8+JWHebC+/R9V1IhDLRm7EwE3UZH/sJlq3yDFEdjlYx4fyj4AWC
 FmwVE5mjn2ZBMs0vb3LWQy9sku+ivwkVzleRg59y1tX4WRD6I8WtZLuf26so9o3u3HXS
 nO/KTlFnTVXKH1ft4Q7438gHQvcQtWcrdifzzoaAP4/RoHaiwSRxS1QuR48fxU1jvDWZ
 KM6g==
X-Gm-Message-State: AOAM532f6OSeZvZKKM/Dz4N3EYPRb1XRJflwm5ncaQHqnNDlwJeJ8rsj
 8ObA2LYqEehD27HRiLWZbA4=
X-Google-Smtp-Source: ABdhPJytfeyRGXE5YzR0zAsxyOTXEKP5cpkjgw0SUEWYEw3BnHQyhWkoHAtaXKSC0/4czYQMCh41Ag==
X-Received: by 2002:a1c:4d10:: with SMTP id o16mr468366wmh.160.1624820275513; 
 Sun, 27 Jun 2021 11:57:55 -0700 (PDT)
Received: from localhost (178-169-161-196.razgrad.ddns.bulsat.com.
 [178.169.161.196])
 by smtp.gmail.com with ESMTPSA id e17sm13615158wre.79.2021.06.27.11.57.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 27 Jun 2021 11:57:55 -0700 (PDT)
From: Iskren Chernev <iskren.chernev@gmail.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Manu Gautam <mgautam@codeaurora.org>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 Iskren Chernev <iskren.chernev@gmail.com>
Subject: [PATCH v2 1/3] dt-bindings: usb: qcom,dwc3: Add bindings for sm6115
Date: Sun, 27 Jun 2021 21:57:48 +0300
Message-Id: <20210627185750.693222-2-iskren.chernev@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210627185750.693222-1-iskren.chernev@gmail.com>
References: <20210627185750.693222-1-iskren.chernev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_115756_997397_DCFB17F9 
X-CRM114-Status: UNSURE (   8.44  )
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

Add the compatible string for SM4250/6115 SoC from Qualcomm.

Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index 413299b5fe2b..938b1137fac0 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -19,6 +19,7 @@ properties:
           - qcom,sc7280-dwc3
           - qcom,sdm845-dwc3
           - qcom,sdx55-dwc3
+          - qcom,sm6115-dwc3
           - qcom,sm8150-dwc3
           - qcom,sm8250-dwc3
           - qcom,sm8350-dwc3
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
