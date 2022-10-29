Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C47C1C433FE
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 14:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+0v/HdUJSaCArmDYB4XOwriTdz9+CY1UkeNyGzC+FA=; b=rFQuMnv5og71gF
	jvAdhgzOiWQuLsblyCFDVWcSpD4JICqBIZ8KN0eE08KPfSPgzrFqnh3i6YTlDUpS7PqC2Itujg+mS
	izxQCVZL+DJolRzzTbgJSQoqRBNnfw7FO8RBbL+GgKOUF9YkMtyesy3x/Y77qz9gYTO/5J1oBo3Qw
	8G+5aQUUD13ut5u2vYsF0Iihe7UqGm6HTZ1T/tmIG7Z0fWhH3h/eziJ7iuyXk/E90RhPN6titbaZb
	ZHcYrNs5nirjc1xgiylC3coduCrGXMq8v7j3wxQGK9kBW6ce9depjrRB1/Kah8Ss6hEbjoSMmey6M
	DWKx5K+ocElHbRzsnQng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oomeJ-006UDk-3y; Sat, 29 Oct 2022 14:17:23 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oomeH-006UD7-L8
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 14:17:22 +0000
Received: by mail-pf1-x435.google.com with SMTP id f140so7121228pfa.1
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 07:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zpvMghJCmR+gGIw9o+kRim98+XO1f+vARcxfCW900eI=;
        b=yYkL76DgBZx6Rsxi/Ij7SK5aFTqXLyr8YZGbEESvuOrPUHyVHS41Rwf2pOZtswXz7z
         LdLe+ktnRkuSMnbkg+/i2Hd9M5JA3pPtYuqgwrh5KvSGIMfV0xTx1Hj1Bz7nYzA70eB5
         qOy5Srrfl9TMw9D0R22oHirewUnz+uiD0DZp6nnGyfbv/DzdHJ+tuT63EjSQpy9UUb+9
         pMhSU6af+L9KoWoHin2GJdANibYtScE6IKgtshtqMQPY5YF7iUA2kXA2rYw2RqhF3NMR
         Vg5GmOsFaJcvNTQM8HqyQE3qZnC3RQNavPUpM3NXIMrBD6ytPCaz9pbzZwGOAOoykjUP
         wLNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zpvMghJCmR+gGIw9o+kRim98+XO1f+vARcxfCW900eI=;
        b=gfqzah7aaGuLbpXi7cs3qWizQKc+CzsTsADooaoaQlOjc0aqlfFDaykG8u/4yrPjNR
         E3b/660Tel4jNSeYQDxwSzEGTBRGDG7OgXhgbEXL4KWDmSgfPrHiYBmUN06BOWMEACDO
         +NkDX2CTY1H2cbCbmiOsWIaFJ4IeMKNm1edIkvw3A4bDSh4kgh37QLyOQ4U+GYu6Ivrf
         L3qiQ/2egGZCnflvW3Ppc1ssVqWTbqf82T5rU0HBKm2KCdca18O/Vq/VSlxqL3Ht5fTk
         U0ttwldaE0Xe7UP66repJOGsiEf8Zf/NCL7SXFyJt69O1mtZ8GzBLtygi9l7mn3QkSoN
         Wr+w==
X-Gm-Message-State: ACrzQf12XKHIWAEWAv44LmN3Tz8WFIFInk6S2QlKdkST0I9VeG5WKj3h
	gaYcfUfa07Acj45saAB8nGFh
X-Google-Smtp-Source: AMsMyM5UyeJR8v0O/g6VCLnIvcYt7DT1bOrRBBnA/htxwCrn3uXpfqP7PUi6J8UKxdSnLBc3vuMVfg==
X-Received: by 2002:a63:d313:0:b0:46b:2ea0:5b68 with SMTP id b19-20020a63d313000000b0046b2ea05b68mr4189259pgg.464.1667053041148;
        Sat, 29 Oct 2022 07:17:21 -0700 (PDT)
Received: from localhost.localdomain ([117.193.208.18])
        by smtp.gmail.com with ESMTPSA id u4-20020a170902e5c400b001866049ddb1sm1370157plf.161.2022.10.29.07.17.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Oct 2022 07:17:20 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	andersson@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@somainline.org,
	robh+dt@kernel.org,
	quic_cang@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 07/15] arm64: dts: qcom: qrb5165-rb5: Add max-gear property to UFS node
Date: Sat, 29 Oct 2022 19:46:25 +0530
Message-Id: <20221029141633.295650-8-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_071721_708061_5B5ADE50 
X-CRM114-Status: UNSURE (   8.45  )
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

Add "max-gear" property to UFS node to specify the maximum gear speed
supported by the UFS device on the RB5 board.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index bf8077a1cf9a..bdc3b879293f 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -1250,6 +1250,7 @@ &uart12 {
 &ufs_mem_hc {
 	status = "okay";
 
+	max-gear = <4>;
 	vcc-supply = <&vreg_l17a_3p0>;
 	vcc-max-microamp = <800000>;
 	vccq-supply = <&vreg_l6a_1p2>;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
