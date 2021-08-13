Return-Path: <SRS0=FSiF=NE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4448C4338F
	for <linux-phy@archiver.kernel.org>; Fri, 13 Aug 2021 20:14:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7FC6A610F7
	for <linux-phy@archiver.kernel.org>; Fri, 13 Aug 2021 20:14:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7FC6A610F7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rpUVPecYkl0KufBv1Dl9CvnkXyKz7SgAcVFTxg/1t5w=; b=G/vTanUJU+T9jQ
	HVWsW01lJnIMeV8shU46QVcAd7HHUJF0KMVflvubs08owMMTJJg+EzbYda8yelIwDhDpcs87j4U2T
	dppXRRJPtnNFc+Js15r2wiLvtOAaEsuzaaMyKPlXEN9jSnQ+M7Y7JXd7AHsjO7wOuhY7EUTUQEJjB
	+NKjAeLImQwA4Sqb3ibjog2gs5EryTLN5Ihpa8NK8Ylnq8BaC+DB7vwU5nrVutuit8E0H+LdPGb0Q
	1+c6j3eBewX1N2tahhOoR86rCEYO+41/XBer2eKt751ZJsUpO43EsfUirYfPbEoUpCSAyHvNLUIc2
	fnnDIZ5+RpGHW88/QXJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEdZA-00DXYu-02; Fri, 13 Aug 2021 20:14:08 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEdZ5-00DXHl-Ee
 for linux-phy@lists.infradead.org; Fri, 13 Aug 2021 20:14:07 +0000
Received: by mail-wr1-x432.google.com with SMTP id l18so14795854wrv.5
 for <linux-phy@lists.infradead.org>; Fri, 13 Aug 2021 13:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qnqsJL5RG/oRlU8TcmHp5/K/uq0HSR5XN4HSC4RRnJk=;
 b=fmotEx4sLKTW9aYn3QpHhxgW1/vvjnaM9CsPVULTOd8EMKtZnCjGMzaoFUrIZEt1CY
 Rd82/4Oh5VzxyH64bIPNaNq0Y/0xFCHzbwON+4fIEoZ2lk3LfhAwdEb9l6cwAsNTzcrs
 3ZaPA1AVvHb/OqDUUuoNpFEzeSra2oulTAZNb058UWZqe/JaTISorgHzTa4SksLCHFrh
 BcO14vzqBpf78VSgckw/uH/jTR+X7Um/oXnEoOltxc+DiXYfaWgOqNRc2gFmDabpK1cY
 TMSVakbtSZs6befOpjN4LBL+bmDSuxYQMDYc1ho8lgJNslngKNX2V/2anhZboxTYIoqc
 /SsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qnqsJL5RG/oRlU8TcmHp5/K/uq0HSR5XN4HSC4RRnJk=;
 b=ZeIpi9b2mmXOAvE70cjX5+Ud7zsj8I9jkBEmSaxNTnP9N0U1olQb5sLE0itgVFaoSA
 zB+tIsB4RyXHde5N9nvVKfO6UkBN/lSMFfhjQb4sLHcY3+W7ekICepZ5cfwpgbmPcwsx
 BTeE1JJ4FUQdlsPWUBbtFe91xBK6TaubzDOaMC7mkzAHNeQwpCnZ4mDUILpzyepWMdsn
 DWcoKuQx1vp0Z+UIap8v/QykRyrhFCFJtxkwyXB0c0gewanYkVV+6ib4EnGgjbFtaeCH
 glbdf72rIAAzjieUF4aALcg+QQHYxcR9/hxTN2wk4qS5ESpx1SGiPyOfRI9clKeG3OLg
 eu4g==
X-Gm-Message-State: AOAM5310jTVJFyzio8MbdYen4xFfchbiVDN9YM7SrZLvhKO+/xn4wCzP
 elmMsuEQ9UyL/A67GEC1rFQ=
X-Google-Smtp-Source: ABdhPJy2zOj7c5caqJCNnlMGon9MOewZDAv5ABt5Swl4kamuQwtXU9Nc6Vg2Bam4XUxV29KFn6dORg==
X-Received: by 2002:a5d:6d03:: with SMTP id e3mr5030064wrq.153.1628885521123; 
 Fri, 13 Aug 2021 13:12:01 -0700 (PDT)
Received: from localhost ([91.92.14.102])
 by smtp.gmail.com with ESMTPSA id h2sm2354990wmm.33.2021.08.13.13.11.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Aug 2021 13:12:00 -0700 (PDT)
From: Iskren Chernev <iskren.chernev@gmail.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht,
 Iskren Chernev <iskren.chernev@gmail.com>
Subject: [PATCH v2 0/2] Add UFS PHY support for SM6115/4250
Date: Fri, 13 Aug 2021 23:11:49 +0300
Message-Id: <20210813201151.974512-1-iskren.chernev@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_131403_535734_5BB17083 
X-CRM114-Status: UNSURE (   8.14  )
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

The UFS PHY found on SM6115/4250 is named v3-660, found on cheaper qcom devices
(possibly starting with sdm660), but up until recently wasn't used much due to
prevalence of sdhc port for internal storage/sdcard.

The name is a bit misleading, because most of the registers found on v3-660
don't share much in common with v3.

The register values/sequences are taken from OnePlus repo [1].

[1] https://github.com/OnePlusOSS/android_kernel_oneplus_sm4250

v1: https://lkml.org/lkml/2021/8/5/235

Changes from v1:
- Suggested by Vinod
  - removed v3-660 constants for regs with same name and value as v3 regs

Iskren Chernev (2):
  dt-bindings: phy: qcom,qmp: Add SM6115 UFS PHY bindings
  phy: qcom-qmp: Add support for SM6115 UFS phy

 .../devicetree/bindings/phy/qcom,qmp-phy.yaml |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp.c           | 124 ++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           | 134 ++++++++++++++++++
 3 files changed, 259 insertions(+)


base-commit: 8d4b477da1a807199ca60e0829357ce7aa6758d5
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
