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
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8094C49EBA
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 18:58:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 77029619A3
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 18:58:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 77029619A3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y9JJXtW28kWsqoxPzPdQHyGp0il5/AfeRjYmVKyonbE=; b=YppEcHJT9dhiRH
	GVc8BYjCcFtCW6gAgiiepyHAeFUKy+cIscmU1KXbV6zoIpbqdrR7ETPEfVLHP/SBCw0L3XN2pOzj6
	T94f7KMeejmPzpGAWFlvO5qvlCUSzr7HmAQOfnwEqrvhHGV/mWgSsaYlx/odbfRWLhVLQxopvyl/4
	mvOdWVCKqmv/wsM0u0I0ajrQBidAW6X4l8YfjxqNVgWY7iKmT2hRZbUFmL5iMW6CUS5hjg00UATy0
	LJtXc/Ya1HwuxhS8JtTffdFNo7tAWtB1LgG/M6ZwSbJj1C38d4dsatwfpA1Mehk8QgpOmZSRSabSz
	vi1BPALWhn71QVyFnWDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxZyj-0060I2-UP; Sun, 27 Jun 2021 18:58:01 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxZyh-0060GC-20
 for linux-phy@lists.infradead.org; Sun, 27 Jun 2021 18:58:00 +0000
Received: by mail-wm1-x331.google.com with SMTP id
 v20-20020a05600c2154b02901dcefb16af0so9476777wml.5
 for <linux-phy@lists.infradead.org>; Sun, 27 Jun 2021 11:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WV89p0Dh9gFyvzsassxs03sxu1k2bjjeRxKtJF5OFHo=;
 b=r/FZHPU5TX09KIVaCfM9qyyo+peXe9RLGnjeSfKAMdkrItxgE9ofpNzg+AcKCNA5sz
 ainW9i0slya2f7w0LzdA9M/vfhK6EqE+Nz9HeKmcuTwqjuL8rqS91NMUsKnB+u6dQU7E
 lGQtyDP745holSf+DztMl8SRbBgTeiJPEESS+/hP7DFpS3dp6fzSStlFyyMMZtGbwEe/
 rGKDVMxz8pu2RHaCNfHiXU0b0+60ia8P+B6Flyy0QXo8F096RpAmzp2uxULD3eg6QOyx
 557x2ur4ux/HtHU45+TD22qbCVGU7B5sx0WcKFp97MV1teEukaanMhdcklz9YUdHlWCt
 1kiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WV89p0Dh9gFyvzsassxs03sxu1k2bjjeRxKtJF5OFHo=;
 b=T6/clQCmZoPDvgT2FRy4JDHLSg85iBRvsDabg0NQPURPq6rmQ2T0VYIsz+jQ5NPqHO
 s9YHles0mR3V5oytoTMR3A7HRKPE4gLN1OvZd2ZACaBnlRf95sELIurCbSXM+SB1MjmM
 AlqyXNtd3BIsoh2lSbrucQrMkUujGZtufQYCowNa2XgEYV74LHXuOG/QaHH9NAuQYgou
 1ehC1wuk41YrNxGgFEMY3Dx88YEj1HICqWzkRkYsfM1Y8mHsPM6LEHMhSMzFxUW5pKUr
 7lmLRHcJJ+2zucCfWxqvCYVp8vAZDN6a0Gqcuo7Ie2W8Nv9CZyy+IWGxYOfEkBoskftW
 KvBQ==
X-Gm-Message-State: AOAM532selG0Ew6Ap1CdpRYZf+iz8TDq9b8LGs2bYblYR49jYaAUfj58
 d0EFWLZgpwDUFUkcJeGTv+M=
X-Google-Smtp-Source: ABdhPJxZBXH4OwU+1hiA4jfv4zG3+2Hi4cZND0kX1kzYG49lBMk5OFZjP+Qqr6rW4KzCV4xiqM1K2g==
X-Received: by 2002:a1c:4d07:: with SMTP id o7mr22141772wmh.97.1624820277600; 
 Sun, 27 Jun 2021 11:57:57 -0700 (PDT)
Received: from localhost (178-169-161-196.razgrad.ddns.bulsat.com.
 [178.169.161.196])
 by smtp.gmail.com with ESMTPSA id g7sm8755840wmq.27.2021.06.27.11.57.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 27 Jun 2021 11:57:57 -0700 (PDT)
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
Subject: [PATCH v2 2/3] dt-bindings: phy: qcom,
 qusb2: document sm6115 compatible
Date: Sun, 27 Jun 2021 21:57:49 +0300
Message-Id: <20210627185750.693222-3-iskren.chernev@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210627185750.693222-1-iskren.chernev@gmail.com>
References: <20210627185750.693222-1-iskren.chernev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_115759_143227_4236FA44 
X-CRM114-Status: UNSURE (   8.47  )
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

This compatible string is for the HS USB PHY on sm4250/6115 platforms.

Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 9f9cf07b7d45..3110d3a0331b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -23,6 +23,7 @@ properties:
               - qcom,msm8998-qusb2-phy
               - qcom,sdm660-qusb2-phy
               - qcom,ipq6018-qusb2-phy
+              - qcom,sm6115-qusb2-phy
       - items:
           - enum:
               - qcom,sc7180-qusb2-phy
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
