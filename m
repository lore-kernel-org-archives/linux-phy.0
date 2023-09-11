Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9354EE57DF
	for <linux-phy@archiver.kernel.org>; Mon, 11 Sep 2023 20:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bNRc5KQ0hp4lYjG6DHFvhPlQD/XmZYFH1g13z/rHe5E=; b=GgOg0uh+wX4LOw
	2sdj2ephmIbAaoeJ/8Vh3m4CxldOo6/fY15rvtm5B7AAKxZnKlnuzlB3eRb/zGilL0yp4WK690K5Z
	ocz/+GokDF9hdk39uwBCC0kDN0F7ogyYFvcqJKRO5ZJTP6O3Oc4zyt1/oE15l0fcFEpyMzwUHqPwi
	k/BmFwhmiv7ujAoePDQKKespJSVLR0jtdliFHlmC6odwHsLL3i0Lwe9msN5HUwbVwy2BUuV7sii9w
	Ua2/0lvSLe74D3d4d+3PqMnw+V7HdR5L9fjsnYOydAx4FCEy8NTUo5wvsBk90OAJN3MIBcwXewFFu
	6L9Y6T8EebqcAbgU4hbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfngG-001IDy-0U;
	Mon, 11 Sep 2023 20:38:48 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfngD-001IDQ-1E
	for linux-phy@lists.infradead.org;
	Mon, 11 Sep 2023 20:38:46 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-501bd6f7d11so7986371e87.1
        for <linux-phy@lists.infradead.org>; Mon, 11 Sep 2023 13:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694464723; x=1695069523; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=37OsjzF5m+al/zXK2QWqSvM4L7XWKLb+zPwOOhEzbPI=;
        b=GHemYdAZBg7WVWJsep78iQcICQ/y0Up6e8HGp6BpEPs6YIs6VL/kuWy6OgNuPpom8I
         k3aqx/jecikCeyNig8em8P2ewbCD48SrkV9tDq/lqY219CLp9aWLCL6k9OF986i7bzq9
         9FND8Yzw8H/tZYuCZBD6XIpByEFc6gqOrzEJaR77GTanWVPBI0vDsfcasSYOV2j/8J6b
         zVXqwc9nOiF1YvuHoaa70sGfMt1dZyyKpeBdxrhFHbJOXVGdk4whj9ozbp+s3WGscFqy
         jX9FhDS9qV3Hj8SOzqJKj4Rjg7MxkC6+t9aPf7LMuef0o1VYilRlhqnpopnQ8iVduDKF
         NkNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694464723; x=1695069523;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=37OsjzF5m+al/zXK2QWqSvM4L7XWKLb+zPwOOhEzbPI=;
        b=af1hbQ6gqRPL8NufvFqu6qHHGzJ1i1ApEslrxKuEt1FRNRQ+CSz3LovVQJ2bHpGKBB
         tAh9gpgLsQr+oNmAYwcDso0VM5AjLN3JuqDKxMet9wzF+G4KixeziRc/JBH2WlJ+wn7p
         liIQ0m+lAT98h74rlrwG/IH76YjhGfiRXjLnMXuAIPJYWTzr1BQrEzpLlNLEWRzm1KvY
         kipJsyAE2gWrUJWpA1RQmLb6nLZTQnQwLJ+U8SYqHzRBCd4ekUsjWdmHVCacDzmL6llP
         93PWbAdMhT2xWN9SwCelah8b6cucMp2VZVvy1mhuJiFGSZ5qQkhMWsT/G1uDBVF+Jou3
         XsKA==
X-Gm-Message-State: AOJu0YzzeLehNYETK64cxJzGHUVrIHOc2epESD79l2jdHMlreGcYBohq
	393tvtIf2T8V6DxnZ37EAhrICJzYdu45RyNtPz4=
X-Google-Smtp-Source: AGHT+IE/sR/H0S9Rss/BHwpM+5UNkI3p5aeardc1ZB482te0FFBMKSOhsuMdpWQv4rMVaeNKdwIqGw==
X-Received: by 2002:ac2:4bcf:0:b0:500:bddc:56d5 with SMTP id o15-20020ac24bcf000000b00500bddc56d5mr9330424lfq.37.1694464723295;
        Mon, 11 Sep 2023 13:38:43 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id l9-20020ac24309000000b00500b3157ec2sm1447753lfh.148.2023.09.11.13.38.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Sep 2023 13:38:42 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 0/3] phy: qcom-qmp-combo: correct sm8550 PHY programming
Date: Mon, 11 Sep 2023 23:38:39 +0300
Message-Id: <20230911203842.778411-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_133845_448853_ECE12C75 
X-CRM114-Status: UNSURE (   6.15  )
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

Fix several small issues with the QMP USB+DP PHY programming on the
Qualcomm SM8550 platform.

Dependencies: [1]

[1] https://lore.kernel.org/all/20230829-topic-8550_usbphy-v3-0-34ec434194c5@linaro.org/

Changes since v1:
- Rebased on top of Konrad's patchet ([1])

Dmitry Baryshkov (3):
  phy: qcom-qmp-combo: fix the prefix for the PCS_USB v6 registers
  phy: qcom-qmp-usb: move PCS v6 register to the proper header
  phy: qcom-qmp-combo: use v6 registers in v6 regs layout

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 50 +++++++++----------
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h    | 28 +++--------
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h    | 20 +++++++-
 3 files changed, 50 insertions(+), 48 deletions(-)

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
