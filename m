Return-Path: <SRS0=oIvu=KB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8367EC433ED
	for <linux-phy@archiver.kernel.org>; Thu,  6 May 2021 11:17:46 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D86476117A
	for <linux-phy@archiver.kernel.org>; Thu,  6 May 2021 11:17:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D86476117A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=E9KNGpBJ79DtV6qE3/CRc42HK0X65NOeG6iA3+rQXrU=; b=QsXmNCyOXge/6iA/kZEw4pQijt
	FzeDdUlSzxJqMXl44n5X5QarDfaFbBd+8mjHGsAImN6Nm1IsW0610LoseymGcDhaix4gj6mCBrWVK
	K/EO1ujPPU5Zgskzvv6exwoMA0ZZjEd6z0tUrsioJj4Y31VESih9TAaNVzfaqwJWLmah05Y3WpHQ5
	OXC9ZY7VKLfkR+doD2THV03Yv9sN3T5CH5+l4jPUTw4f8YeFCFeZll9ufNrQOIksL4hmWEY/rqLEe
	WPgtnTQlCuG0dPxr20tomBBZuONPnEHO31R7zAdJudFHHylm7rAo/7nzKD2cOfMIhkjQfXjrNm4tF
	yoyCue1A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lec0j-0046Vw-A4; Thu, 06 May 2021 11:17:42 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lebyl-0046Ce-2A
 for linux-phy@desiato.infradead.org; Thu, 06 May 2021 11:15:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=ZKPKjC32Qn6kjND+LenXIZJVBF0PVCvDa6k0IxhTJHs=; b=bbAa9EG64Mxg2O1KYjRN6E8wlB
 R4SSK1Nd5DuLClBOWBqO8eDofg3GPREmJaZ49hZG+0HP/chmX4YQXJcs4y2+scGPceFv/RmTnVYP9
 xKitU+DXiVFJrGqaCNx4mY67mFHHtZHfwmRQ40+J8raqW78rui96HSNiQ8TW3twZZQtPJxuX3fw3H
 4zbr72YE9s96SU6+m/PmILKlcG+DY+/qAqZdO4LKh+5cDVZnYpZ4EicjZXhmc8l907UvcHDpkXdo5
 zljmlg+RqfFXl8LlZDE5kiUjDbwQpMWsXH2/v5dk4URuJjIYnkvYrO0gdXdhRUwqXqyAro9wb6Mvl
 i8yOBiXA==;
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lebyi-005ygD-JP
 for linux-phy@lists.infradead.org; Thu, 06 May 2021 11:15:37 +0000
Received: by mail-wr1-x429.google.com with SMTP id h4so5163310wrt.12
 for <linux-phy@lists.infradead.org>; Thu, 06 May 2021 04:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZKPKjC32Qn6kjND+LenXIZJVBF0PVCvDa6k0IxhTJHs=;
 b=KgMOyS4KfgGxmnqr/4bT0Qf2amG8M8M6esBofLumfkPmpZZ3Wxy8zgDGma+ML/YhvS
 h0+zDu6rX6/rbRMsiUMdbmFYDKT14FGHCcMuVfLXHZ+H1vPYvgLfb3KqsXoA2zgsnZ0K
 o8n+TDX9+4biv2xszruxtiz+T0QFCm6CaxehPfwkDG3KjIUldnHufQjMNxCaTvLkfnHp
 Y3NwTejxApoCelJylntzNERXtdtwm5LZ1xY4s54p9fIW1z0nh+UaJhbyF6SeG73wGX2s
 8EGaK9/nc9kexFqwGUyq6JASLSTnBnARcgw5rUmmI+5+GgGp20BRwyHMcC4tqpanMx/w
 gaVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZKPKjC32Qn6kjND+LenXIZJVBF0PVCvDa6k0IxhTJHs=;
 b=F5Kepv2Lby0cMRzuohCJluSPhrlIXwyThFuolTlCMaUZaJx85TlXX4LPCuYiIM69kv
 6J7n/xJGcM7ZoXA/NPNCSmWvkM5dT4g2u9u3L4RBB78k8B5tEAt0gLPvlHkGeocroJ29
 0Lxl8+lqKQYK+dreVYUilI8sz/S73VhxbsSNYvzLKPXbxa4vdDOHhHBDbErsivdyBIwn
 CxvbQKP3eciqo+muHxXuqFIKyptANXPUHgvTAb/ZoO2cJyLGbmZZOfrN+Zh3T0/uKeoC
 X22WbfNwS7F4Rx+882miJ9X3PMOpUL7WG9/YWYLzkLZGlzAihGqGymc1kbO/MUS00r0M
 PA/g==
X-Gm-Message-State: AOAM532zXinSvwWufudyOnbMc9Jq5496rW1Z+B2LWD/OwcTxpXtztSmq
 SDOXePrroPxSSt4bbVkdDsI=
X-Google-Smtp-Source: ABdhPJyEP75X+AJ8yeboScGjjt1ct0gGgAHI0daEWAMuYw/MAXK8h11es+AAXrMrI+arA/e7CozvMw==
X-Received: by 2002:a05:6000:154e:: with SMTP id
 14mr4473511wry.24.1620299734257; 
 Thu, 06 May 2021 04:15:34 -0700 (PDT)
Received: from localhost.localdomain
 (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
 by smtp.gmail.com with ESMTPSA id u5sm3642433wrt.38.2021.05.06.04.15.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 May 2021 04:15:33 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: linux-phy@lists.infradead.org, kishon@ti.com, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev, gregkh@linuxfoundation.org, neil@brown.name,
 ilya.lipnitskiy@gmail.com
Subject: [PATCH 0/5] phy: ralink: mt7621-pci-phy: some improvements
Date: Thu,  6 May 2021 13:15:26 +0200
Message-Id: <20210506111531.21978-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_041536_657830_93A970C5 
X-CRM114-Status: GOOD (  13.32  )
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

Hi all,

This series contains some improvements in the pci phy driver
for MT7621 SoCs.

MT7621 SoC clock driver has already mainlined in
'commit 48df7a26f470 ("clk: ralink: add clock driver for mt7621 SoC")'

Because of this we can update schema documentation and device tree
to add related clock entries and avoid custom architecture code
in favour of using the clock kernel framework to retrieve clock 
frequency needed to properly configure the PCIe related Phys.

After this changes there is no problem to properly enable this
driver for COMPILE_TEST.

Configuration has also modified from 'tristate' to 'bool' depending
on PCI_MT7621 which seems to have more sense.

Thanks in advance for your time.

Best regards,
    Sergio Paracuellos


Sergio Paracuellos (5):
  staging: mt7621-dts: use clock in pci phy nodes
  dt-bindings: phy: mediatek,mt7621-pci-phy: add clock entries
  phy: ralink: phy-mt7621-pci: use kernel clock APIS
  phy: ralink: Kconfig: enable COMPILE_TEST on mt7621-pci-phy driver
  phy: ralink: Kconfig: convert mt7621-pci-phy into 'bool'

 .../bindings/phy/mediatek,mt7621-pci-phy.yaml | 12 +++++++
 drivers/phy/ralink/Kconfig                    |  4 +--
 drivers/phy/ralink/phy-mt7621-pci.c           | 33 +++++++++++--------
 drivers/staging/mt7621-dts/mt7621.dtsi        |  4 +++
 4 files changed, 38 insertions(+), 15 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
