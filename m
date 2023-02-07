Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F1EEC636D6
	for <linux-phy@archiver.kernel.org>; Tue,  7 Feb 2023 13:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rOtQAPpq0Tn/syhz05bT8pxfdLQ2tM42mKu4gklUbIY=; b=mrpOVvx9tVRnYS
	jRFeGzfLpSzbpHieVfKWHhm2Ta1SV4MwWCHRP+6Na+vyI+3o8OKu8F1XhOyoLWzwykDeJJP4zi6pw
	yuiAt1e4uuBOkC2hAWodJo8Lwesn30nuaywgkMUWiPgZZX+HSa0aUgxpog+X1vNMCrnmNWqz8+3dg
	7yweNNWvBreujnZT3UxbAi57evoKe+fHNf0iJudt4k68pJifes8MBrZthhqbSsnpWnM+dgi+Q8i/d
	ndEsohxv2fYDPip/mMRVBM8m0AVYYQNCT9En/UXBe7eTu+nRJ3A+dER0VGMKPK1RhoTxNnauj/saY
	Wokep+HWGPbKDEFqVUYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPOS1-00CMoZ-Qe; Tue, 07 Feb 2023 13:56:01 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPORz-00CMnJ-A1
	for linux-phy@lists.infradead.org; Tue, 07 Feb 2023 13:56:00 +0000
Received: by mail-wr1-x42f.google.com with SMTP id h3so5791988wrp.10
        for <linux-phy@lists.infradead.org>; Tue, 07 Feb 2023 05:55:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=woyCLhhr9GNDZ+ZK9imdrAaOvVCw51EmSZRJm9R7J5w=;
        b=NtU54NwNW0ruK/8LURJT6C7S7FeX/i5HcbZpzVPSd8N4FDeryJMrp6kX0Ad05ncNEc
         g9vDeJ1/IVQLVx3XzIc+t86oT6mr60a2tMn0UqqxrOC8LSTRd3ycdIRBs7chpFuPc0X+
         qNqC4otwYGd4bjSgMGjhAh9e1OMmbbFXvFVFQk2fS0fSVcPbp2uq0k6KMaYkKSDnhysS
         88iL/fSSSKruvvOoLlrRofeuXgpaYWHUsuRSg+VS1V/wvSI6x2njwiqw/sSFXA8M80/r
         x/pD2M37xtEOV4yy03FSeC9nDx60cjzg8MdiBWM/e85wWIfOP82P5LNmh1KzLIACptYD
         Fomw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=woyCLhhr9GNDZ+ZK9imdrAaOvVCw51EmSZRJm9R7J5w=;
        b=txnH9QQzQq9HrjxcAMN1F/3Z/Vx/m5W2YW/KL8KkOInprNnhZda4Pz/k9dTTo0fKXO
         pWskQ+M6tvC8VIZWFee6/5FPJ/IwWNdDT7X0fF+tPASRnla0yABAixe5Sayk5I7QJ1X7
         HCWixtiHPMf/BJkqzuHc6BBDHoEOkzxjhRpWm5NR45YfPhrDARKkaiimZkG9k0lRkwGr
         iUP/MsmSPakSPFSspG9a8mTVDiKfuvhXg/4+9oYXFk+6oL4xsVkpIBo09Ngaoc+Rd4ST
         cTmb/ldyzecWqJDEsfpURS2kPsaRmT6/7IjEX8d9wrcQvUzM0mYBE/BzuhM8l6Ajk9Ql
         E1Lw==
X-Gm-Message-State: AO0yUKUXT9RCWScS8ABsIN2Gi/PdiI54SHPvzCcRmg4XUZy/rtvQBw/q
	Pu15Mla1TGsm/q+3E2Bg3SsO5g==
X-Google-Smtp-Source: AK7set+310+2rkvwM3A7GBlhW9EtKuxs3n1k3TNZRXyXkrqITOpLCmAe3j3hq/Bam4I+ObeiHtxrgQ==
X-Received: by 2002:a05:6000:188d:b0:2c3:be89:7c36 with SMTP id a13-20020a056000188d00b002c3be897c36mr15394572wri.25.1675778157897;
        Tue, 07 Feb 2023 05:55:57 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id p10-20020a5d59aa000000b002be5401ef5fsm11611312wrr.39.2023.02.07.05.55.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 05:55:57 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 2/7] dt-bindings: mfd: qcom,spmi-pmic: Add pattern property for phy
Date: Tue,  7 Feb 2023 15:55:46 +0200
Message-Id: <20230207135551.1418637-3-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207135551.1418637-1-abel.vesa@linaro.org>
References: <20230207135551.1418637-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_055559_367296_A506D546 
X-CRM114-Status: UNSURE (   9.48  )
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

The phy pattern property will be used for providing eUSB2 repeater
functionality. This will be modelled as a Qualcomm PHY driver.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

The v3 (rfc) is here:
https://lore.kernel.org/all/20230202133816.4026990-2-abel.vesa@linaro.org/

Changes since v3:
 * made this the second patch rather than the first in the series

 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index adf88245c409..1e6fadec1301 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -135,6 +135,10 @@ patternProperties:
     type: object
     $ref: /schemas/pinctrl/qcom,pmic-gpio.yaml#
 
+  "phy@[0-9a-f]+$":
+    type: object
+    $ref: /schemas/phy/qcom,snps-eusb2-repeater.yaml#
+
   "pon@[0-9a-f]+$":
     type: object
     $ref: /schemas/power/reset/qcom,pon.yaml#
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
