Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 172F5C46467
	for <linux-phy@archiver.kernel.org>; Mon, 26 Dec 2022 03:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O6z2Yf6CrDzA5Sg5A6HGDX4jLKRtFm7lprTEAIeeHsc=; b=QaLx/qXzPqyP7g
	jKSk50dlGsvsGO1w874iLah/ysHw1vJgn9B/Uv8sNfjfqrY9v5z1lZo9G+htzsb5w+tyfrY+HQPag
	kjpIOmTUTsnofpAgDdvUI3TGRXcHhbrYd6zSQPNh8EoODT17suhQIi6vc1lJNh4+MdKeUGwhzXvCS
	IRknJCMJPokGuDYaKq56O5ahEzLBh7hH6xWAzn8Eqt0IOBBLsgneWeAFbhIPWKTsgT7AUssyRAJEH
	VPyCEIzsdPuasX3dqyMvrmqsP9xQidaZMrQJXVvqZ0DzQmyUec+BtrFTRk2F8pdNwhMgsEJ6o4rFq
	FY9J29iOBOuuGKFiGitw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9duC-001Eq8-C4; Mon, 26 Dec 2022 03:12:00 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9dtI-001ELW-BC
	for linux-phy@lists.infradead.org; Mon, 26 Dec 2022 03:11:09 +0000
Received: by mail-lf1-x12e.google.com with SMTP id g13so14550805lfv.7
        for <linux-phy@lists.infradead.org>; Sun, 25 Dec 2022 19:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xCxzLVf2hWUuKQW8OMy2XQ3RUyeAaq22gTKfh7WKh4U=;
        b=hQIuSbsfbmlPARYuxNQwe4qSwEgYlbiOx6KYQRcH1k0LpsQxmW+FA/gXHE3lcX1p9+
         AKL4BAdnuGZ2VsyqMJlruS4ITeqCC4R5hw3Kt5iSLeAuDHfSvNaru1aXeFba9onDONtm
         U9UusTUy5MT+QGi8a/Zc+2v0n1JhTVNQkyqucWSOsu62dtsRIN2GC1W5DeLp7ssVnDeE
         fi0HIzu86On5zb+1Xk025AiXdDAdmEXvUgKFK1hCsbQOcGSh2qX8HnpC/CnPdZTgdZZB
         MTWZ4BLmSeDcNaoPnkkvC1OTY66x9mTOvvo8hBFAB1xDrwJ4vyStdv1CPWrEYOI52bMR
         NoTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xCxzLVf2hWUuKQW8OMy2XQ3RUyeAaq22gTKfh7WKh4U=;
        b=m5lbQVmzfWzdzEvq+H68hih2ok4xfnzD1wMFv3W66qpngd25aGYRA6fPC1n/VZ0diK
         3ZElUlXX4cIHYfe8C8BuXD3TMEGGlK4/J8bN3T4qi1c9ZWQ8UhkaBfb/axg8PfyoKr76
         Nfq6XgcCEtcfzZgWV6JPoUQHe3/S32EyKvjnuf+qgS+bClRoRFdiBkj8/jcsdwBdjNtP
         YzrAGk75Vq1Fg0uQTGST+CaY2OMq0inZ1SVXlQlLpNgx/zyBiIak3JTKG5STJXigaM41
         4YMB4BpkgTvilvqPgyR/9NIr2J0T7Y7LJBEodDLvD3yO0i0t26n1zUTIu/0jdncTdylx
         m/yA==
X-Gm-Message-State: AFqh2ko+4j6qwDt16qFlUVa1b7X+MZbz0hNlUTHmA0QdGFA37lf3ATzu
	PzkXuDYIgryB0p6zL25K78zR9w==
X-Google-Smtp-Source: AMrXdXsa9LCbzhYW+UV9AYutbv4orTGDloCpOs6CcMUL2eLTERixNfveBNLln72T/fHuKQXP+Tsxsg==
X-Received: by 2002:a05:6512:1527:b0:4ca:f4f2:49ab with SMTP id bq39-20020a056512152700b004caf4f249abmr4081935lfb.39.1672024260274;
        Sun, 25 Dec 2022 19:11:00 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id a12-20020a2e860c000000b0027f770526ebsm1165388lji.75.2022.12.25.19.10.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Dec 2022 19:10:59 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/3] phy: qualcomm: pcie2: register as clock provider
Date: Mon, 26 Dec 2022 05:10:56 +0200
Message-Id: <20221226031059.2563165-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221225_191104_523040_DE3ED31A 
X-CRM114-Status: UNSURE (   8.13  )
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

On Qualcomm QCS404 platform the PCIe2 PHY provides PIPE clock to the gcc
(Global Clock Controller). Register the PHY as clock provider.

Changes since v1:
- Dropped 'phandle to' from supply descriptions in schema (Krzysztof),
- Reordered clock-related property definitions in schema as suggested by
  Krzysztof,
- Dropped extra empty line at the end of the schema (reported by
  Krzysztof).

Dmitry Baryshkov (3):
  dt-bindings: phy: qcom,pcie2-phy: convert to YAML format
  phy: qualcomm: pcie2: register as clock provider
  arm64: dts: qcom: qcs404: register PCIe PHY as a clock provider

 .../bindings/phy/qcom,pcie2-phy.yaml          | 87 +++++++++++++++++++
 .../bindings/phy/qcom-pcie2-phy.txt           | 42 ---------
 arch/arm64/boot/dts/qcom/qcs404.dtsi          |  1 +
 drivers/phy/qualcomm/phy-qcom-pcie2.c         |  6 +-
 4 files changed, 93 insertions(+), 43 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
