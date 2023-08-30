Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8874AC83F14
	for <linux-phy@archiver.kernel.org>; Wed, 30 Aug 2023 21:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K3HvdtRt0F2CfDVmZD7fCytRnVBSoNrSebBDYgwFDks=; b=om/JUGK2HK3NM1
	yoH9dCHhXU5bGgI4XtSnVFTUyz7kdVGr8tsflQ4PyLdb6ACzijVCKqlNNyXxPb5ErPGv5tOLlPj2m
	SvgNomwZQLGDzVaPkRWcPwEqEerxsTJ2cBHIRWznnlFG4g0xElvuyuHWyG/jjqO6I4yg7DNS7PuG7
	kPL6CsxKywIIv7dhSxZQnPfv3P1MR8krrUGBml5ikHtFgj2X4k1MXogxyR0QMHWGoOUd4i+YYT1W7
	AszpB2d1v2nZV8DKrALWSIlbo4yy75a7H3z/3gCmAoB2bSVcAOVzOxoZWm17M1uoxk9y92seenNfN
	uf002F7YUcZRDNXlOtgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbSVl-00EBdp-0q;
	Wed, 30 Aug 2023 21:14:01 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbSVh-00EBcx-2d
	for linux-phy@lists.infradead.org;
	Wed, 30 Aug 2023 21:13:59 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-500760b296aso138780e87.0
        for <linux-phy@lists.infradead.org>; Wed, 30 Aug 2023 14:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693430034; x=1694034834; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sB4LTQroQIGZnNvkckG2TO4c/EOlTMJPaJP5M9r0cjY=;
        b=B/NEBITeFnLJpXTgOwecuh15YeuvRzH9vsSedvQS2Ialn0sphioEx66L1LOidj+vKO
         wlwd5tcqK+7sF3h0X7o0O4sjJIqx7nfL1ITzqbYXKRcRSWVF+04v4TYAfrYOfcqQo8vs
         iIg7u9FtM4NIyKIjG9KfHwwWfei7EK73uoFoyvQdSyrm7wk+pW40ml7WIa7mWRNHGsAK
         f43ItMD74Tqq+F/XwXfUFctMgcwWW4ylR1pkNl6EIWmoooSmFdkUT1pgI8O0Vn0kCb9N
         OCnBXGyNwlmdqs1VgJUs1kjUTuhKYFOa/Pp1zL9CDE2ao6TQo+pq8kMmjRWk4YOBIGja
         uRJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693430034; x=1694034834;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sB4LTQroQIGZnNvkckG2TO4c/EOlTMJPaJP5M9r0cjY=;
        b=SmYe2yfta6uHN0/M6XhQdfHWeGeIRDPPBTpD8ucgOVw+V37mnXOLI9Ya0Y1+u3YzWb
         hA6ZKfi9cq0vEf5xIqiA6pjR9mVrWj1yWFQUovZFvcHACXveM78sK0q3tU58WaNQ18nt
         P8Vv6D95YzII1u4T21OT39iqaR7X3Oo9rmSlyr+dEcxyy8se0VTK2I+C6LQKqqEQprQh
         vNlYANaj+/f68TGN+uGqH3tR6qmpbPPbMjrjri/oudKhE7jKb5U51tgszIu3YEV0veZi
         IWAOdnF3xJSqPWpL+vRJtXAvtWilR7PDlzGS4rijp5CCoF21lDGe1sEezoIoUS2wX6vw
         uWrA==
X-Gm-Message-State: AOJu0YxEPM438Bx0fEPwB4+1OaIsOAklEQ41Bgy1vt5KVfSY8ZMzDoXt
	oDcyeVAcihHkVHlVnrGATnjocA==
X-Google-Smtp-Source: AGHT+IHH8z5u+wFNCt7HFZifQcuML8FzOtVdrPCQzrgiEVU88nCH/TpoI+LrP5n+nExQGynp3QOA5g==
X-Received: by 2002:a05:6512:1305:b0:500:ae25:cd46 with SMTP id x5-20020a056512130500b00500ae25cd46mr305523lfu.11.1693430034380;
        Wed, 30 Aug 2023 14:13:54 -0700 (PDT)
Received: from [192.168.1.101] (abyl195.neoplus.adsl.tpnet.pl. [83.9.31.195])
        by smtp.gmail.com with ESMTPSA id b3-20020ac25623000000b004f37bd02a89sm2516351lff.287.2023.08.30.14.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Aug 2023 14:13:53 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH 0/2] FEMTOPHY REFGEN regulator
Date: Wed, 30 Aug 2023 23:13:50 +0200
Message-Id: <20230830-topic-refgenphy-v1-0-892db196a1c0@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAA6x72QC/x2N0QqDMAxFf0XyvEBXBct+ZfjQZpkNSCytE4f47
 wt7PId7uCc0rsINHt0JlXdpsqrB/dYB5agzo7yMwTvfu9A73NYihJXfM2vJXwzk4xgSDQOPYFW
 KjTHVqJSt08+ymCy2l+N/85yu6wfxVjS9dgAAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1693430032; l=674;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=WB4bhWM031cMBzGe9vpFJGgvxxhPlYOAzO/I1MMx46Q=;
 b=4apGHqCzc+krs+LpAviYiZ40vIExSBHGwta/L37TDxa06T+G4bYYPCfs3iM5DDLfQakdafVDV
 XbWkSJ5dl5ACs744bdhPtiHYTHMZV84Oc8KZGzbOqRTavLvkRlV7gZ2
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_141357_858653_AE8D2392 
X-CRM114-Status: UNSURE (   6.96  )
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

The FEMTOPHY gets a reference voltage from the REFGEN regulator.
Make Linux aware of that.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Konrad Dybcio (2):
      dt-bindings: phy: qcom,usb-snps-femto-v2: Add REFGEN regulator
      phy: qcom-snps-femto-v2: Add REFGEN supply

 Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml | 3 +++
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c                     | 2 +-
 2 files changed, 4 insertions(+), 1 deletion(-)
---
base-commit: 56585460cc2ec44fc5d66924f0a116f57080f0dc
change-id: 20230830-topic-refgenphy-8c2a78bc44e7

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
