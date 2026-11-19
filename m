Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367B960A2608
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 12:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=XjS52QwF;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=NtNY7VkR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=eL4otrRriasvwWHMcXESdbm9w4f7hRWd2gC0vZ0v/Pk=; b=XjS52QwFLGPDogr2FqDfmvouMR
	pNv5skrZuUvI9DA6KH9tTsrjE43A1s/4P0AVLi+cGlEc5LtAbLfqT4RbCdPA2D3IrZsUdukGSZa7a
	nIrcnZ1o0+raKDbap6jcG0yEDySdlpLYBrdPoimRMG6pUM3iWfF8Es/6FKsmO21j1lC1fA2eJFubi
	eHtz8z63wtTomxatKLsjQ7ESzBwcLHP2j36Tx/ZP++Vi0Q1GRxKILqK2JdC6LGjOcZIpLs0sobix3
	3W3pLtkirvAd0PotW1tkhrisuFIRJ6SxnbTEJXfLagRoUeSlgNtN6/flj6CZrSNzVzreQIIP1Qjy4
	4cmanmSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU1Wk-0000000BuiW-40OK;
	Thu, 19 Nov 2026 12:46:10 +0000
Received: from mail-dl1-x122b.google.com ([2607:f8b0:4864:20::122b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU1Wi-0000000Bugn-1unk
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 12:46:09 +0000
Received: by mail-dl1-x122b.google.com with SMTP id a92af1059eb24-18818daa3e7so368051c88.0
        for <linux-phy@lists.infradead.org>; Thu, 19 Nov 2026 04:46:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795092367; x=1795697167; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ePm/Spv9q5yyXs0Oc6DXANzhxURarQDfA2TJuyX+qkU=;
        b=NtNY7VkRCfK2Izew6FTnKLcCFFKKZt1HsLqP0kIBGFad7/S+rF9zOtsR3QizwO7cir
         7EbFDjCYjNcaXtkL7SoEo9YIoL0srotXXvogtPU6HEWvgwarQFh542UKiyAiFD/efWx/
         YNEshL1riBIJxSimyaZ0N9JQlnMnprC+JrXb8k17Mp7GUwEZ6SG1cw6v8KrYr2oK7H+t
         ohzgXRyYsswET8fQwrXr8ma1MH3T98WUR3xmrYKDXeDEMOsYslGe2HbfhNGowsPjENpX
         R+9grpjbuq8hw6ieeuOXPNZhpQodfasFpkD/asOjkbmkpl3gBU9TnBAQDb6sJjJkaTJI
         zHqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795092367; x=1795697167;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ePm/Spv9q5yyXs0Oc6DXANzhxURarQDfA2TJuyX+qkU=;
        b=xgm0VyxLlSNteKQfwYJ4Ysgla7TviKbmTff10czaDS7IKyvUs01li8K1lYLsV7JU68
         UM6Un4Oc6EPm+l9Thi5eXidRAke8c32bqoyJdS1DEI2xQz3yzs9gwRNkGik9JHWmvpqE
         UO2v0NRK0D9vmmropmhEaP77hvbFsTYrrFhnlykNVi8InyfS9Xy3qrCWZOlG9CHaf/cU
         M2tBAkyqxGn0ZBdxw/uHRlYoQj5+2IoMtB1nBOGYeCU9XMUcxxxssnGMDrmJ6OE1UV6v
         k9txuIaavaVbIgPPW/XIgyfe2kB2QS+1022Z5MXaVirPp643InzEEUT9pOKaHw/A7T35
         Tf8w==
X-Forwarded-Encrypted: i=1; AL+hErEJm6c3kZ4nAM1xW0PJqApqHyfkP2YnRkS238XzyA0QV+NLXuDXPJwoSlyPD+1yDlFCDiE6IsZ6keY=@lists.infradead.org
X-Gm-Message-State: APuU4Z/kr3mzaiioEyNDT8dqFwCFqy7SU0JbRM+0UpztTA0uY8vN7XMO
	fG/msSiy0zDlCg3Z2Q4S9tONrAvEwtwAAxNMFGMy7fhDKW9RYYdl5o59
X-Gm-Gg: AYBFou2M95zvOdVNUaxdUorTnTqNlwW+G8hkrsJsdwkEs7SSMZ8+PxtH/APPRGgiPf0
	bJqpghIp17oZvnyKNYarxIPE84zQXHa2lvUCwkvkb3WKJd0HZqe+mO6AyAPpkTkmHKyL7yZ+/H4
	qwU1+pM7YK2VbBwED3Nmy2gED6aHTVnRRPSUbxfy2xssmMprpd39gLEkUs0lDNUB1tm/b/grEg5
	Sqy20iz0ZcUIRt7Hnz52reeHp3TBksYJFiN5oSKugHqCgv6UhLvhQbdcX3Xkl5YKzCPLeUt9fpi
	4M2arT9ADZSxnZ+Dwj2Pbuh7vFkO5DWyja3YeMxL1Nqr52H3vfvojiG02mAR0aUoIP9RfULsxs3
	vTDL+yc1tdQ/vjozW5Ol1HF9gRkzd+jgSoyNng+7f/1IPmVytTyT60AscULPYz/MpGjMkBi6VHU
	Y0tOMo6bMRJsf9cvWhgY2TF8+fcDriO+FTZOeGQIN3AtXsBELmYFdEmYbo8nqkANybVKw+tGZZI
	44qZJwkjQuLYeG38Jr5Hy7w0hLR4hLVm3QrjSzJey6vWO5cxk2LajfbR80tGBwnHdyOy2Q+PYNw
	Vqnq+U3zVF63ykGuduzjOLqXxI46ZIHjG7w=
X-Received: by 2002:a05:701b:2810:b0:159:f192:5290 with SMTP id a92af1059eb24-1b5524b591cmr769675c88.13.1795092367360;
        Thu, 19 Nov 2026 04:46:07 -0800 (PST)
Received: from DESKTOP-NM9EKIA ([2001:e60:8509:ba6c:11e:f696:8454:757])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b5447da7e0sm22350329c88.9.2026.11.19.04.46.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2026 04:46:06 -0800 (PST)
From: Joonhoe Kim <26rote@gmail.com>
To: gregkh@linuxfoundation.org,
	Thinh.Nguyen@synopsys.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: andersson@kernel.org,
	konradybcio@kernel.org,
	heikki.krogerus@linux.intel.com,
	abel.vesa@oss.qualcomm.com,
	abelvesa@kernel.org,
	wesley.cheng@oss.qualcomm.com,
	krishna.kurapati@oss.qualcomm.com,
	konrad.dybcio@oss.qualcomm.com,
	dmitry.baryshkov@oss.qualcomm.com,
	neil.armstrong@linaro.org,
	val@packett.cool,
	balaji.kalkonda@oss.qualcomm.com,
	tvlad744@gmail.com,
	effeffe99@gmail.com,
	prashanth.k@oss.qualcomm.com,
	yongxing.mou@oss.qualcomm.com,
	peter.chen@oss.qualcomm.com,
	tapas.rana@oss.qualcomm.com,
	vkoul@kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/2] dt-bindings: usb: qcom,snps-dwc3: Add mode-switch
Date: Thu, 19 Nov 2026 21:45:57 +0900
Message-ID: <20261119124558.1548-2-26rote@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.5
In-Reply-To: <20261119124558.1548-1-26rote@gmail.com>
References: <20261119124558.1548-1-26rote@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_044608_811913_F261D6CB 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The QMP USB3-DP combo PHY stops the USB3 PIPE clock when a Type-C
DisplayPort pin assignment gives it all four lanes for DisplayPort,
while the controller can keep running its USB 2.0 port. The controller
has to move to the UTMI clock before that happens, so it needs to know
the Type-C mode. It does not route any signals itself.

The Type-C class passes the mode only to graph nodes that have the
"mode-switch" property, so allow it on the controller node through
usb-switch.yaml. Orientation and retimer switching do not apply to the
controller.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Joonhoe Kim <26rote@gmail.com>
---
v4:
- Add Reviewed-by from Krzysztof
v3:
- Drop the mode-switch line, the usb-switch.yaml reference allows it.
  Disallow orientation-switch and retimer-switch (Krzysztof)
- Say in the message that the controller does not route any signals
v2:
- Use the common usb-switch schema instead of a local definition

 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index b77c02c64..fdc2bc8d3 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -158,6 +158,10 @@ properties:
       HS/FS/LS modes are supported.
     type: boolean
 
+  orientation-switch: false
+
+  retimer-switch: false
+
   wakeup-source: true
 
 required:
@@ -170,6 +174,7 @@ required:
 
 allOf:
   - $ref: snps,dwc3-common.yaml#
+  - $ref: /schemas/usb/usb-switch.yaml#
   - if:
       properties:
         compatible:
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
