Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E560F606A321
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 04:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=WAVHxmKe;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=LV4UTJ6b;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Y/sEtHC5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hl0bfeslV+pc6seTde96A6R7PfJeJhBNK+PT1Het+R8=; b=WAVHxmKez5kAVdrB5ILw8ZgSn7
	arZMXC0FruPryz3AY047LRBTQgd/sbuis4SplxneJUqvww0TWZTakc50P4iZe4wTO0GMnMe+QB2uK
	DSKOloBCYeeTg+Wwl9w02Top5mjkLJNWfjqhLCd1vl7uyhSrDo+HBV7DNyoVpkhtTCkIAFoor1VID
	0ihm3tGeGUeEFUyBPtgmi+f7PuCvc+BecnpmtE2anOB2JEsszEgS9vRYYYN6vpRKAVKBh+cbTpzKb
	WJrq+TfWAIkKzZJa+DIaSINUNT5a2bV0sPtOv+m3Rkp+Hwar6IL0VyPxtpWteJ/gRxLpt4d/I4Eo1
	+bnOZgrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW4lS-00000008OxI-2nPJ;
	Wed, 25 Nov 2026 04:37:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW4l9-00000008Omm-3WZm
	for linux-phy@bombadil.infradead.org;
	Wed, 25 Nov 2026 04:37:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=37Yw/Yh5Rz5Fzq741ubEI/Rr+lL1nn4+JbSz5DFAcwM=; b=LV4UTJ6bEPjSdsoqemOsFTQ095
	pfuWzb5yEZQm5fth7vKbHweZx/pa5txuRkuWK6zSqBfRXM2cdXqjzsi92KQy39qzhfzMIgdzRYK2N
	IyBfgCMhBSS/SgXwdaChcGnkhwopZrkEW60CnaqIJqrrhaxZf4IJtr/xWKU0CgyUz27zx9rAXe2gu
	J7WfifqtTJpYQky4YP8QNtXe1Y25InQed8ckGOkuKWPZAq5NxETKCA6Kx42iKiPk34bu5qmrVqJbG
	vAnGn+B22BflnzrmC/ah2T4XdnSyjz1g4Hch85mEnsAYeDJLuzu/xaCBmDvmuiM0cSL9PYsNYE/we
	gnlC9YJg==;
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW4l6-00000004psO-3tRD
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 04:37:30 +0000
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-cde0daf3a2aso2246233a12.3
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:37:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795581446; x=1796186246; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=37Yw/Yh5Rz5Fzq741ubEI/Rr+lL1nn4+JbSz5DFAcwM=;
        b=Y/sEtHC56fzYBmlKANn7RnpkL/AuYiBAQH0l7kCidHUmjt331+RoBTsHorfBzPBrrz
         amGaEy7bwAcfAcZa3GOuUw6lh+G3gK3YW+stIzpHuJF+uBYrbutrsaMy6iG8IxqGR/Z8
         9NtS1mO/Nft0+DUi+kvWMy1dShYmINyByYWWHgdU2Bw+oBnlVe0cb9ZmfqbiqstLdQAy
         ED/K7xA/AX2DLGItSDINDEJelENmeMy2C8/UJwHNoaxMuYNIwd2frcDMYTrymx6nynrj
         EF3ZbFODJ9GcLGu0W3v+c0XpoJEEi9KdI6rJa/kNl9vQpXK4x9IYtYOtwd668mPcVhK3
         VXOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795581446; x=1796186246;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=37Yw/Yh5Rz5Fzq741ubEI/Rr+lL1nn4+JbSz5DFAcwM=;
        b=on33PgJvF6k9kv5ilIifr4uxyXzFDRYgRevONKhJdJW6iCMsPgqZKM8wujpgmx11RD
         ENZXYzj4k35ecpmDn+UtWv/2/Ne+jQcu+g5/yzPNhmqq7ObqKbhtowP7sUE0eoFbRA/Z
         U118/d04sRu+jFFqNd3StYZaBOGBPo9syF420avMnI2HhL9oOiW7C2YqxWqQVTO6wA9R
         YWzSjm+E10KqUeiZA/wJOB2wfdtgAFsuny/k/CTHtjmHg2tv1bnT4yWg24PR6HF/jBtG
         C/ZuCEc+5IuuAZW+PSspOMCP63ILJCJAeOJVzsAwUtQCXJGQjicIEnM+zvo3bNsw/YQn
         qweA==
X-Forwarded-Encrypted: i=1; AL+hErGBGbfYD9jM2FqTNePn4tzEi8ep4X+z+424vSVCJaOe5eJUi6k1dZiXi/gBoUTnMEiwIgTe4vex/Ck=@lists.infradead.org
X-Gm-Message-State: APuU4Z9ASeA/sqc5/IKKTJZVdb4NaTXJCQrFag9oLqXtlsE9ZgcX/iGT
	mFquweGDutekqUTOmCUgYTWjRbw4vffQpWmiBuMHG1TvRGZFA7J8kumj
X-Gm-Gg: AZFdTZcsCfHFX0ch0wGc73F08UQvGEDKv+0PyPQLZ7NtqDoYBwHOMDmXVWBZCBuKUWd
	T2/9VgCy4gKi/iRWV/tBd05NWJ9s2AHF2N6RNWRDc7J9PaMLV+E9Pimz7IGLa1PbStvltQvli0o
	n7iKV9rQsvkZ6b9m00hHssTEGI91Hb6qAhqIRUhYcgmktF1kEvUudSac6ylRyyjmDM7TlFrxqEx
	k3nYvbZP0If6iRkJ9ehiXdIMC2YYajQnEehcP4QsERuhfeZFNrXODJIZvePL4D/imqM/m/1Ym16
	CWcGkS4i2gP+elJ5ilIfS10OOQYip/j8pUIjVSkBE4RZueWk4GwAz2Crn3kkcn3675ecP1GCQux
	CeHh2aCB+sF+WM3lgzw2KJaN3QupcJhpAFH9YvIpB1Sb2EEwQ96cmxgk27c+O3zbgnTvRxvk8IC
	6UZqZn8viiU98qMAy1GRpeWpe6lyO7Nr2f1EFOAaFMGSzsYxmx3YIYPpcaiccvmZHRTzKLGJ51P
	QagI8ew293T3gADS/+hc7h/vAUDGL9uioSoMpoaQdk2Md/qP+VIeTDQdfVsh33X0is48JWwfgY/
	oDCYtAe/Zm9qCGcNUBnuXE1ogwc=
X-Received: by 2002:a17:90b:4a48:b0:3b1:4018:bfdd with SMTP id 98e67ed59e1d1-3b41c7d5cc7mr13865555a91.7.1795581446160;
        Tue, 24 Nov 2026 20:37:26 -0800 (PST)
Received: from localhost ([2001:19f0:8000:4ce8:5400:7ff:fe0e:e6b2])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b405d63728sm30506154a91.8.2026.11.24.20.37.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 20:37:25 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Aksh Garg <a-garg7@ti.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Inochi Amaoto <inochiama@gmail.com>,
	Rhys Tumelty <rhys@tumelty.co.uk>,
	Manikandan K Pillai <mpillai@cadence.com>,
	"vladimir.oltean@nxp.com" <vladimir.oltean@nxp.com>,
	Qiang Yu <qiang.yu@oss.qualcomm.com>,
	Hans Zhang <18255117159@163.com>,
	Yao Zi <me@ziyao.cc>
Cc: linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-ide@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH v5 3/8] phy: core: Make phy_put() ignore NULL and error pointers
Date: Wed, 25 Nov 2026 12:36:34 +0800
Message-ID: <20261125043639.249525-4-inochiama@gmail.com>
X-Mailer: git-send-email 2.56.1
In-Reply-To: <20261125043639.249525-1-inochiama@gmail.com>
References: <20261125043639.249525-1-inochiama@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_043728_986635_4EC4ACAB 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.2 (/)
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

Add NULL and error pointer check to the phy_put(), so it can ignore
any bad and empty pointer, this will simplify the release handler
of the bulk data API.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 drivers/phy/phy-core.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index efbd7e139dce..5004d28b167a 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -780,6 +780,9 @@ EXPORT_SYMBOL_GPL(of_phy_put);
  */
 void phy_put(struct device *dev, struct phy *phy)
 {
+	if (IS_ERR_OR_NULL(phy))
+		return;
+
 	device_link_remove(dev, &phy->dev);
 	of_phy_put(phy);
 }
-- 
2.56.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
