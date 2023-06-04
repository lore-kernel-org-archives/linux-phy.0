Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 265BAC7EE2E
	for <linux-phy@archiver.kernel.org>; Sun,  4 Jun 2023 06:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2NXtSrv33hANtmv64VKJzxPOPbt6Iqg6nQJlzAccBuI=; b=3G6weBpZoh8eHo
	3PgxITrSw0E3Y5E4HGDpscgJ340CITBaaPUmRT24QIXuhksAefeNHgT01Yw+3Hg1U1KClEoawhgYR
	VmoYh838zqSIvNqhzYn1WOkKhR210OKSG3TqnNWbFKSXvpcSStcSifm+SGRfdHlZOEl6RlKsW6+Qj
	ihQTBTjztFtl1d+TXKufn38DEh0ahbJcYPGAJF6cO5hGT2oQ6z3fx4ZLxjuxrgbwP23tXl+yNDABC
	W3NroDvbkGaQBzxXPJiJ/poE0hJ8Z5Wu8hnRRxGSdXsA4mlj3qQuYUybA0nsj77tyU9yxamMzEULI
	XMMBxv/6wAk0EJ7xJHvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5hGT-00BS9t-2Q;
	Sun, 04 Jun 2023 06:30:57 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5hGR-00BS8h-1C;
	Sun, 04 Jun 2023 06:30:56 +0000
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-3f6c2f2de19so35878731cf.0;
        Sat, 03 Jun 2023 23:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685860252; x=1688452252;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l9dG+oN5uOmuQYXLewl1nCF0/Os/UQTTZl0+MY2RxWE=;
        b=gCJ5TP16lpl3NL9edgkLyptik5lxamQvDz9/NcrrCB5/qLi0RFhmGMOrw07lKHIXKl
         MvqiSGXAwqeddk7gJoREoOIbmNq4x1iutytGUo+XsmK60SbnHiuiW4tF/dBG6cjDXW44
         lPRJGjkDPeqL4X5xxTZAFoQketE5thpSVIdC8MPD1krE97GhIod4NaJ9ML+2i1205FAe
         /7UqDG4ncHlXQvf0ofRSM5McjxcrGoKZuUsn7sWdowWTEAAUfldA8xjq2JxrWT3CA4zx
         zciE6ybOjqCxs8jAEnN+hhmM/DMnEY/0AyE+QhOR9DM4vZ91gYxf2bfgiaHRj3bOqKpD
         HWFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685860252; x=1688452252;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l9dG+oN5uOmuQYXLewl1nCF0/Os/UQTTZl0+MY2RxWE=;
        b=PAcH/iACL/jgdH3OHN99XAP4CszYfC/rO5f7IduDVwGOyEOukXBI7mq1Gv7ch8I0vL
         5Y4jqmnsbeEUGlLMf6iOFyZmV44w4Mv7JmtDgFoHDEUOFp6JPtUNHinKEVkOL/Nu+7Xd
         W4nwENXJQZNX079lHPeGM/JUtTPboUPKe/VCZ85N8nhzRWHZ+ifl1VlgQnnK4kzD9WNz
         JKpIu1rzHC5aXO4tT339eqR70fqfX2hhB1lmNOvznui+LDla/sZFed4rQW7Yl1gIYnft
         D/EVKgekuulOa0NpqakxLzvnJAliygbmhOmpSyl7jnZJVNffgHrxuY4niLMRW8NS6Mmy
         H2CA==
X-Gm-Message-State: AC+VfDx27L97cdz/f7atyIZoj+S346ZBToBRck6doedfYyMdvtKeJXNb
	9xK5JUm6uqHb1zDga15nr5M=
X-Google-Smtp-Source: ACHHUZ5iCQcREmJp1oKpaQjZpi78wA4hoUCp69qQTizw8BsmlhFgInVn73vbiI3SQZtsLLwE2MFSvw==
X-Received: by 2002:ac8:59d3:0:b0:3f6:9678:9d2a with SMTP id f19-20020ac859d3000000b003f696789d2amr3671891qtf.47.1685860252380;
        Sat, 03 Jun 2023 23:30:52 -0700 (PDT)
Received: from Latitude-E6420.mynetworksettings.com ([2600:4040:2007:9800:ab78:dd77:aea4:8d1a])
        by smtp.gmail.com with ESMTPSA id e10-20020ac85dca000000b003f018e18c35sm3044163qtx.27.2023.06.03.23.30.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jun 2023 23:30:52 -0700 (PDT)
From: Rudraksha Gupta <guptarud@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org
Cc: Rudraksha Gupta <guptarud@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/4] dt-bindings: arm: qcom: Add Samsung Galaxy Express
Date: Sun,  4 Jun 2023 02:30:18 -0400
Message-Id: <20230604063032.365775-2-guptarud@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230604063032.365775-1-guptarud@gmail.com>
References: <20230604063032.365775-1-guptarud@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230603_233055_412281_B58EA7D3 
X-CRM114-Status: UNSURE (   8.58  )
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

Add a compatible for Samsung Galaxy Express SGH-I437.

Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d9dd25695c3d..133d69b2b73d 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -191,6 +191,7 @@ properties:
       - items:
           - enum:
               - qcom,msm8960-cdp
+              - samsung,expressatt
           - const: qcom,msm8960
 
       - items:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
