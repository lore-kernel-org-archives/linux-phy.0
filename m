Return-Path: <SRS0=tTY/=KD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69E9C43611
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 07:09:51 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 344C3608FE
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 07:09:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 344C3608FE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X/W7dcK/4rZtBKLCSosFJyH7Qq/qiNn0Ot+HeyFvdSo=; b=qSpFA+GAZIaBzH1eisz5iKXZn
	G/+C13yehO5yzRzZF4mn24eg17zmgg68JpkzeYz5nXVD0jWhHXMCUJECMrBLuVufhKtLNUvxSJFP/
	N6Izp7dC3bmTQ1JGhhTRzpVhUnKjnrGKHRr9ajMF080IxT3KBYxmq/tG3SNi0hhSkvNtQ0jZokHxf
	6ZGA9v7oMzyZWYX0sfqEsSCf/+6gm9hrLxSy+XKWDC29AYQZfZRjo3hgxONQsoOb/i3cKWphhJXpo
	vYK4G8LTo4HP8DdhNEbQs2oLF/BGvbTwfOrptIRuKkOt+USk0MDCuMHBysEcjcrp8dlWTZgR5kLUT
	hjsnluPPw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfH5x-009276-Ho; Sat, 08 May 2021 07:09:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfH5q-00925k-EG
 for linux-phy@desiato.infradead.org; Sat, 08 May 2021 07:09:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=5j0/SkQ5MnH/k0JVcJB2AM+3scDK+wjHcTxj/JFadC8=; b=KnhTrWx4kclr93nmhC2BW4AxYr
 E5zAGXCi4g5+t41Vbb5PLeMjDAsmOAfZfPPkKxcfBqTOMEyHOsWT50ZiUCdsT94YPINzW+53GrrB3
 cs3GvmXjOG4p/BmMhDuSdb+0ndTQIistrfCUGwuLPyKNlSfiHau3t3bZlQtMnQInohAESTY6dZNgt
 KsmhqtezewddC/eS0YFOyXWc0aV6xcmzpCGkVu0ZwOMUELuQy6ipKi4/giLTfXl6+qSN38DvEjYuP
 isIiSVQIqtj9yNnbhsXNc4T5y1Ie3/Sz1olZp7FYb14jK449ws6b/MdzYF4AWBAExzGHnUjGAnFcV
 uquWp2bQ==;
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfH5n-007PoD-VC
 for linux-phy@lists.infradead.org; Sat, 08 May 2021 07:09:41 +0000
Received: by mail-wr1-x42f.google.com with SMTP id v12so11365057wrq.6
 for <linux-phy@lists.infradead.org>; Sat, 08 May 2021 00:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5j0/SkQ5MnH/k0JVcJB2AM+3scDK+wjHcTxj/JFadC8=;
 b=GA+TKHud80mn4qE30fVhSRtcBi0OjBR1MavRxpfJqh0LQSgNZdUJOY80kToQ1cYmNG
 f9J159mvua6gFHdBOpfBuF0nXdkmsQEcbmAzpJqpGOhjfncF7mXYrkJDcw1A4+bDvBA3
 x68H5TAhq8jY2YgIHk345vZUN/+UAu4VJHd5x2gJrUDfLwyuLr5zqGEJuFe3NrvQPjk+
 5CXvMW3rt3dz5BjNR2nAZ9vwAe8vLEkuw+jmZI4zGInQAqH28zJ/uBg8Pno9/oE57h73
 fQDEDMijv6fQPYdxUcdzZ7TgdE6hT333DkE3sIssI0D15Jki6gCEqA4N3VKyfMkCmAMF
 /dNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5j0/SkQ5MnH/k0JVcJB2AM+3scDK+wjHcTxj/JFadC8=;
 b=cJcrfreo5dJVqmXC4kCGHsVInbpWT3o7f18zsqbSuv+TpK5kOUBYW5w5ztD+zZP9r3
 yJ/9ndkET1X14A3J7Ri0YGI4fIQkkXwnEPVo3Egi6ZjPXltN+7e9mZUGykp0GVG0sXLR
 zJvzl54LyHP9/TfSHcP4MHJAIQnLZQfzx11Zi+OSoXH4JU0q4qfPhILjfZtEMRNHbPjE
 aPvJaz1iPrSpmmqsdTjBSFfUrr71aqks4Zc5LTTXSmHtgQ3CuEjO28WJiS7DXBymxART
 3mjMyBJK+usnEeJpyUjg5Z7Tb2OdDG6iI6heFFfmyqvi/P+cmVVljSwo7aYYcKADKwBg
 7wtg==
X-Gm-Message-State: AOAM532KjsTn3YBGUf7Re0z275s1nOeMSt6oijIii+IlKa4Vax4kfdqc
 7oK+pFU1+F8dcIHDi3bFbMY=
X-Google-Smtp-Source: ABdhPJwjBXqL1KZBUhuCyAQwuynl0Jh6CqAysR/8Lz1mlmCIOEzf0l/RQ+mHfVULZtM07Z2hKEIZDg==
X-Received: by 2002:a5d:525c:: with SMTP id k28mr17406270wrc.158.1620457778811; 
 Sat, 08 May 2021 00:09:38 -0700 (PDT)
Received: from localhost.localdomain
 (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
 by smtp.gmail.com with ESMTPSA id s18sm11740345wro.95.2021.05.08.00.09.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 May 2021 00:09:38 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: kishon@ti.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, linux-staging@lists.linux.dev,
 gregkh@linuxfoundation.org, neil@brown.name, ilya.lipnitskiy@gmail.com,
 kernel test robot <lkp@intel.com>
Subject: [PATCH RESEND v2 6/6] phy: ralink: phy-mt7621-pci: properly print
 pointer address
Date: Sat,  8 May 2021 09:09:30 +0200
Message-Id: <20210508070930.5290-7-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
References: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210508_000940_012117_1D0763E4 
X-CRM114-Status: GOOD (  12.35  )
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

The way of printing the pointer address for the 'port_base'
address got into compile warnings on some architectures
[-Wpointer-to-int-cast]. Instead of use '%08x' and cast
to an 'unsigned int' just make use of '%px' and avoid the
cast. To avoid not really needed driver verbosity on normal
behaviour change also from 'dev_info' to 'dev_dbg'.

Fixes: d87da32372a0 ("phy: ralink: Add PHY driver for MT7621 PCIe PHY")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/phy/ralink/phy-mt7621-pci.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/ralink/phy-mt7621-pci.c b/drivers/phy/ralink/phy-mt7621-pci.c
index f56ff10b0885..242c5d8b8635 100644
--- a/drivers/phy/ralink/phy-mt7621-pci.c
+++ b/drivers/phy/ralink/phy-mt7621-pci.c
@@ -273,8 +273,8 @@ static struct phy *mt7621_pcie_phy_of_xlate(struct device *dev,
 
 	mt7621_phy->has_dual_port = args->args[0];
 
-	dev_info(dev, "PHY for 0x%08x (dual port = %d)\n",
-		 (unsigned int)mt7621_phy->port_base, mt7621_phy->has_dual_port);
+	dev_dbg(dev, "PHY for 0x%px (dual port = %d)\n",
+		mt7621_phy->port_base, mt7621_phy->has_dual_port);
 
 	return mt7621_phy->phy;
 }
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
