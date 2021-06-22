Return-Path: <SRS0=dFK9=LQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA00C2B9F4
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 20:32:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7D8FF6137D
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 20:32:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7D8FF6137D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J46sfZ8ylvcR00abzmIR6Qj4X9n2mBAybRP7/YHjoLM=; b=QFDvg0NcUTx0yi
	vakTU7mB+q6O0B4XLJMZcLxOKBCBK6813zqNAt8NQzbokInDChvLKmEcg0ufqFa3Kf3UKR07v509Y
	jgYxaQSJHIYjYov6IvKLsWLPjgVqhP68cq8F7k4S03/4XhdJeUBncHVLzsuHcCX90pm0j4YZ0JK+M
	3+aWF7HyH/DLbayeVs7zO1nkvkmUtUvA3g093WnDZ5lOHRbo/RUfY62w9GWmTkHPczPRooN0+3ftC
	UIANKAHnCRu8SS1JTSud8dxQ3LmhR1utKTpiqdJxFR/pTpmHnWncBmIpfMy/mnIuSXCNui9sdd2Hw
	UCqVKZEnSzQIsxwFRaTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvn4k-008MBL-0n; Tue, 22 Jun 2021 20:32:50 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvn4h-008MAE-6y
 for linux-phy@lists.infradead.org; Tue, 22 Jun 2021 20:32:48 +0000
Received: by mail-ed1-x536.google.com with SMTP id i5so535202eds.1
 for <linux-phy@lists.infradead.org>; Tue, 22 Jun 2021 13:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hJ3e9mokzvcYFf2RFFI+m+L0p65e4PGAuykS5ZlYTVY=;
 b=u/0Zrba8rWZh50fzgKbTkUXafR/0mXWtFhGYU2DfzdVhVCRggN6ZN8VO1b81bPOSrZ
 KNMvxDfFWVJ/KLZvGVNQ8tB+I5KtQBxAj+E/1jGsi94qTD8smxxBQfkmri96oeoI2WCF
 uZo9D6BaP20sZBZLTwau5gZqOuZazqWgfXRlhbGq7Y/mVPxLMWxNizLQIwF2uwT+NPE3
 +ETaVtqLeTyo1YBeY9vaLP45lfhcTkdK4kTfyNbLFG2ltm0PXXprqvXGF4RKJrUK3jMx
 PfRXNJHF7uTEexXaJZsXv95UeNxtcZ/Kqona3HvlNoM7LDOqoLAbH+cRclh+WA4+GlQ6
 SD/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hJ3e9mokzvcYFf2RFFI+m+L0p65e4PGAuykS5ZlYTVY=;
 b=DH4nvvEqiWSvqMgAsyAJf5SErf4/udo4egRc0RE1X+hK736f9ThNDkDuSlTjaty7QH
 k3W2K7aEtCyDznb5kd1yRRDV/MD/m/U8Kmr3RYvBCBCTJ+qxB8Fb754lGBhnC5bF+F0J
 2/MndfXgwFDlIajnkeNW3zD0TI37ARZnv7ZupnbeGrJ7GMRemC3BFvgQRDNpPZYC+oWF
 KVqAg90svngkgu4ke7Te1yw/J+b8ExRyxdW6y94TzzeRiQ7ujTyQb2QvCnFJjXTNmaz0
 xZhlfIoFi08vBZzuKCcKIpZuDNUdly86uwm9pEl5HTz8z+ypGvmYfbc7TVVUCJsm5GBz
 p3aw==
X-Gm-Message-State: AOAM5338LWBVywpCLCboyQvfAH3EMNyTP3HhUSVCLKKzUzlmDUnuf61t
 277oH+iYfLu/S2JEdejHeQ8=
X-Google-Smtp-Source: ABdhPJxA445qpE2sE2EuJP9nMCYUDNR/+2aGTVa7n4kX0JBTcgRaJwkHQWqgcV/oFmgYlIPOdnAOyA==
X-Received: by 2002:aa7:db03:: with SMTP id t3mr7590601eds.153.1624393964833; 
 Tue, 22 Jun 2021 13:32:44 -0700 (PDT)
Received: from localhost (178-169-161-196.razgrad.ddns.bulsat.com.
 [178.169.161.196])
 by smtp.gmail.com with ESMTPSA id o5sm732979edt.44.2021.06.22.13.32.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Jun 2021 13:32:44 -0700 (PDT)
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
Subject: [PATCH v1 0/3] Add USB HS support for SM4250/6115
Date: Tue, 22 Jun 2021 23:32:37 +0300
Message-Id: <20210622203240.559979-1-iskren.chernev@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_133247_291612_DB628950 
X-CRM114-Status: UNSURE (   6.39  )
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

The USB controller found on SM4250/6115 is dwc3 (phy v1), very similar to
existing supported phys (like msm8996), with slighly different tune seq.

Iskren Chernev (3):
  dt-bindings: usb: qcom,dwc3: Add bindings for sm6115/4250
  dt-bindings: phy: qcom,qusb2: document sm4250/6115 compatible
  phy: qcom-qusb2: Add configuration for SM4250 and SM6115

 .../bindings/phy/qcom,qusb2-phy.yaml          |  2 ++
 .../devicetree/bindings/usb/qcom,dwc3.yaml    |  2 ++
 drivers/phy/qualcomm/phy-qcom-qusb2.c         | 34 +++++++++++++++++++
 3 files changed, 38 insertions(+)


base-commit: e71e3a48a7e89fa71fb70bf4602367528864d2ff
--
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
