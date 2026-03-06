Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF9E9FCC05D
	for <linux-phy@archiver.kernel.org>; Fri,  6 Mar 2026 19:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q440DGDt4GNBtUaYCuwdQ6M/Ywt79E7niyW7Z67pcEo=; b=S/cN+bT6q2iDRB
	oYwU4jjIPNWAlTglZExEkWmvFaN45QbimkbBd0kb5mv0OlWzjXhj1lU4oCQxW9e++RNFXuSBLoZwu
	iRW6pzb2koR2XGz0K33/CLT93ZEPVbZH307iHQ3l+LMHqw6Dm/TtsWB2YJB6oXOes+wC8Yaozuwyg
	2xK9xcyYJh63wC/KvRzMb+tmeQX58a+NB31ovDdC4emHjQvxyMvt/NP1sNxISsCxquwqcdgrBNtb4
	IhfeICkYeGp9aZqtsPZdV+Qu7mh1QFkQy1RhRIiOG76U4pU57S/ByKW0AzuTZWzp8AEoWJCCyMUnn
	9/kyEvcXgMsW/Is/37Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyaRA-00000004Mf7-23JK;
	Fri, 06 Mar 2026 19:02:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyaR8-00000004MdR-3kOT
	for linux-phy@bombadil.infradead.org;
	Fri, 06 Mar 2026 19:02:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=uq+Zu8LykB2khmPRxrzoypE2Ot8bOB1NxKiqjP0T/vQ=; b=Xq+ug9b3T4xkLT3yqTfoDGyCdT
	A0V6jCt/aThLVkJXhcgYjd9XC9yo577qawsbRq8jUUtNmCuDgXuMGQaGtkr2wp3Nycgnyu6E/CxxH
	9646KuXXhlIXOg6YIb4Owfhh1shWozynsFRjj9loubmGw5rRntvjb35VN1np/Ff9xnYJ0xrEH97YT
	QW9qc0seT3+0mj6tJnYGv9bKgdFNATfc9z76/a1zD0K553wbSrc0gZM/c2yTRpWhiJvzsvKziNw6L
	c1q56L83FyUyxzzocrYz/WJdpfLeR65+nXoXA7cmClaBpBVrFhEBjlZoVdNaVvO9t8q+awv1xPyiw
	uCDcuOkQ==;
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyaR6-00000009UuN-0HLO
	for linux-phy@lists.infradead.org;
	Fri, 06 Mar 2026 19:02:09 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-439ce3605ecso1668661f8f.0
        for <linux-phy@lists.infradead.org>; Fri, 06 Mar 2026 11:02:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772823725; x=1773428525; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uq+Zu8LykB2khmPRxrzoypE2Ot8bOB1NxKiqjP0T/vQ=;
        b=Vk/eEDeqcoJXhlS54MNqam8nDr2mOOK6R9qKg8UEN9s7MOpX5Z0cy8VJq1xPxQrHXG
         sxiEk85vHHRNKEo8hYXOmn4Ev4LevOGXUU1mM1qzFzio2x0cCY8N5XE8NUkcOqrwTkTG
         kWDWEa/hXQE0BuqDC5mg3pq1XAYThGS19tPaTI1rVYyAVjsDtEPtRC0zToBB1CfgDFfU
         0UTiNvmnzy5J4I43Q/miUj80/YPumlwSk1c6RHmZk01BPawEttLyxkdoTQZcCf2VPx32
         mqPrvqvE8pU6dKFuwnj2FSrgUeP0rm6XUahsuiZdZg6bHgsEKNa9mjp4AP2B10yEAP/0
         hj3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772823725; x=1773428525;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uq+Zu8LykB2khmPRxrzoypE2Ot8bOB1NxKiqjP0T/vQ=;
        b=LuWAV2xJtedmVUoeIsIFdFVkZanqYXOT1Y8aGbObUfulLvomPSHmkslq5jfB1/os42
         w+NJchzkudHrC/iewyiFHdJZ/sjibp2Ql2idTovkgaTHKr7+M42AEwxNtLrzirRBVx6Y
         N87FvOmQ2SdT09TyGfWw+kZJZ3bIM+Jh0FYT/hxHhY8xIb2iK1wZei/iwDnP979tbJBD
         BrfSr0pqiVaYFUOHRCZy3VtkaTLCn69c97KkiZqhpUMFEeZrzUl6KzqnaewNrLvbeFTm
         6Fs/sGKLE1G7yq7n1gqBNhm0ft6Q7jvgwgfI2g4SUR5M+PX1dxDPP/09Yk0bkOvp2vNU
         /4hg==
X-Forwarded-Encrypted: i=1; AJvYcCVD637PRuq3pf1NzsFTpMQe/WMfKHwhCbs61lXCjJUeR1zXFb2mJ80CyQrhEuSq2HKmBmAp/fetSgk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwofEvvtbutaYH4qCwYB3zUIYkWeqtqISEgpeO+EHLkbpfBigHL
	sRUzu9G4tT5e4ai8gvK6syRqjH+81JT8+mZSk14zF/1m5OIlYgqVItRp
X-Gm-Gg: ATEYQzyGOFQgVi1HSPmadoQuGxmZ4lf9nnwQ0wnBAqo9PexvQdk5wBfScuCZnrI6SkI
	vKMKPZB/w/m2X2T0u39jBWzpOoU53jIuWifmvNkvnmZjk124assbKCO9zdJf/zpIwcICSbStZqk
	E3BQDLVm/XghO6tUwfePdmf0x2IKVPa3kkL/TTEN0M2J83nebswWJTAmcwAWZFqc+2MN1ZUP5zO
	f2Wsi1RMSM0UG+/nVjXaFC627m6KSBo9SaeHCI1pcvxGUk0AJrB/6wXVZeHkZ6Kl6oDIPevULnD
	UjGocHnAVrePsvOISeTe3pDnuHS2GsUaQCi4zP+JQM9KSshya5f87jnsUw6egB6Tka3Tnucu8Gn
	nYJsuTOK4IeGcUGKtYTYlHjf+lg8blYJHJvGFW2hS7KyqT9X3blDGcwABUhS+6GmWgaRHmG69hO
	rT51GtFyHGUArAZWMoaVNGXT+mfp0eQZ+WLMwTrvxAPKGV44dJkKsxlTI=
X-Received: by 2002:a05:6000:4313:b0:439:a95b:3c43 with SMTP id ffacd0b85a97d-439da65e31amr5770839f8f.21.1772823724684;
        Fri, 06 Mar 2026 11:02:04 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-439dae2ba66sm4743436f8f.20.2026.03.06.11.02.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 11:02:04 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 1/4] dt-bindings: soc: Add bindings for Airoha SCU Serdes lines
Date: Fri,  6 Mar 2026 20:01:50 +0100
Message-ID: <20260306190156.22297-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260306190156.22297-1-ansuelsmth@gmail.com>
References: <20260306190156.22297-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_190208_223090_1ED5C35E 
X-CRM114-Status: GOOD (  11.26  )
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

The Airoha AN7581 SoC can configure the SCU serdes lines for multiple
purpose. For example the Serdes for the USB1 port can be both
used for USB 3.0 operation or for Ethernet. Or the USB2 serdes can both
used for USB 3.0 operation or for PCIe.

The PCIe Serdes can be both used for PCIe operation or for Ethernet.

Add bindings to permit correct reference of the different ports in DT,
mostly to differentiate the different supported modes internally to the
drivers.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 include/dt-bindings/soc/airoha,scu-ssr.h | 11 +++++++++++
 1 file changed, 11 insertions(+)
 create mode 100644 include/dt-bindings/soc/airoha,scu-ssr.h

diff --git a/include/dt-bindings/soc/airoha,scu-ssr.h b/include/dt-bindings/soc/airoha,scu-ssr.h
new file mode 100644
index 000000000000..a14cef465dad
--- /dev/null
+++ b/include/dt-bindings/soc/airoha,scu-ssr.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+
+#ifndef __DT_BINDINGS_AIROHA_SCU_SSR_H
+#define __DT_BINDINGS_AIROHA_SCU_SSR_H
+
+#define AIROHA_SCU_SERDES_PCIE1		0
+#define AIROHA_SCU_SERDES_PCIE2		1
+#define AIROHA_SCU_SERDES_USB1		0
+#define AIROHA_SCU_SERDES_USB2		1
+
+#endif /* __DT_BINDINGS_AIROHA_SCU_SSR_H */
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
