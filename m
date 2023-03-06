Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D20F9C6FD1C
	for <linux-phy@archiver.kernel.org>; Mon,  6 Mar 2023 17:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I/sJSl1fVY1UbD7XY+RrwD68FaBm/CDoUrH1fpN/HPM=; b=zcnr+GupGGi0r3
	uLUHgYqx25ELZ7taSb6WfuVj9K4YoCjNSOLqQC5p41DGoKqpm5ykNI49iW2LITDlfIfoAWyxkG6LI
	x5ti50jbE/9xS/sk1uKrm0acvHoT9dQE2gUsS/qd1FqXNx3KekVPY+M1eA4KmYvD1OvQHYNthf9l+
	cHIbOxHfMGcqbj5z0cFJGhs2o9DYD2M/5Idb4VXGMt3yYSnHkxkbTIDhfq343LHT4Ww5st7lRb1tn
	a/bqjxy7cXZwjanHhBft7O7CF7xEnmw1o+Cknlirfz6OY22U3+SOROpTgJXqHwjnmkvwvyob0jOZO
	Bb7JCbi+bPbNxbrl3zLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZEHX-00E38y-5i; Mon, 06 Mar 2023 17:05:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZEHU-00E37h-3s
	for linux-phy@lists.infradead.org; Mon, 06 Mar 2023 17:05:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9C29461042
	for <linux-phy@lists.infradead.org>; Mon,  6 Mar 2023 17:05:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0D6DC433D2;
	Mon,  6 Mar 2023 17:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678122347;
	bh=Co92hpAVMlgBOmR5hA65uy5h05hdlthpq3qPqXsKyEg=;
	h=From:Date:Subject:To:Cc:From;
	b=XHDcSY6escgseT2VHhy5KBymKxWYu1vh/Swa3Ni53WQVO4NIBl0+FQ8pDVcfDsCeF
	 h5nORZX+qmtDHfmJvnAwUwXEGRJxCDaKmazoEQtP4LY07+uIN/qd5QUhkRFR0eAn5n
	 GoLhRtkgpJ8KLf3REmXF6iUq8Q8VpN8t6cZ74X05lV1/+kfQ+UyKHHO4kgyql4ldti
	 v5h+uugKtnahoQRnAqE7mEduDw5ZJQ1WyN+9jMvVMxhC4KGgFtbmiiIafAWQ3jwHfP
	 D0bCQwim3hQVJqRctVFqTdAoBIvi4vWSRVOLeTDXfGmrgwY4oCO4pif6QUR+dd5zGv
	 CtvO+ZCzIN+EA==
From: Mark Brown <broonie@kernel.org>
Date: Mon, 06 Mar 2023 17:05:35 +0000
Subject: [PATCH] phy: xgene: Depend on ARCH_XGENE rather than plain arm64
MIME-Version: 1.0
Message-Id: <20230221-phy-build-deps-v1-1-7091bcbd16b0@kernel.org>
X-B4-Tracking: v=1; b=H4sIAF4dBmQC/x2NywrCQAwAf6XkbCBdi6K/Ih72Ed2gbJeEqqX03
 7v1OAPDLGCswgbXbgHlj5iMpUF/6CBmX56MkhqDI3ck53qsecYwyTth4mp4PhE5SpeB4gAtCt4
 Yg/oS8559R33tuio/5Pf/3O7rugH/ojXIdwAAAA==
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Mark Brown <broonie@kernel.org>
X-Mailer: b4 0.13-dev-bd1bf
X-Developer-Signature: v=1; a=openpgp-sha256; l=1141; i=broonie@kernel.org;
 h=from:subject:message-id; bh=Co92hpAVMlgBOmR5hA65uy5h05hdlthpq3qPqXsKyEg=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBkBh1oUJDveQFe6Wogi93Pxnal4K2K87wkzdDnPgio
 gfPtyrqJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCZAYdaAAKCRAk1otyXVSH0ANCB/
 0QLCg/luyzP39lzGYdJEFAzJLmIoe7sb+FyMPHoM4jtIJVueM2XKMtHEC9WOY8Xslo04d12mRtf95J
 Mb2BadxWKtg8fevAvlRyGcZo8fjMPS6ktXFNgoqUP9ftZsh3JuZaQbtRc7JuCgOUxhzWy2iU/3gLQ+
 Hh7haWz0DJWHYvC0UAKyxUCCs5JB3XE89oF7vgy/q3mVUNtjGuPIQCO3HvByv31y+XqxSoJGJeVvOp
 D8JmQEQ+pN9nGFuFsHmkz84HMFxgMMtwQuJSo2E0UxZeCsxGUMkbojHyt4log5DfOmPi4pH7bwRBbn
 FG7DvD8gp5+7kW5G4+jLXZSqQRkGTz
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_090548_233495_446E03D1 
X-CRM114-Status: GOOD (  12.46  )
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

The X-Gene PHY driver is unlikely to be useful on a kernel without general
X-Gene support enabled but currently only depends on arm64 rather than the
specific platform support. Narrow the dependency to ARCH_XGENE like we do
for other X-Gene specific drivers to ensure that users who have configured
down the set of platforms enabled don't see the option.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/phy/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index 7bd00a11d074..f46e3148d286 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -44,7 +44,7 @@ config PHY_PISTACHIO_USB
 
 config PHY_XGENE
 	tristate "APM X-Gene 15Gbps PHY support"
-	depends on HAS_IOMEM && OF && (ARM64 || COMPILE_TEST)
+	depends on HAS_IOMEM && OF && (ARCH_XGENE || COMPILE_TEST)
 	select GENERIC_PHY
 	help
 	  This option enables support for APM X-Gene SoC multi-purpose PHY.

---
base-commit: fe15c26ee26efa11741a7b632e9f23b01aca4cc6
change-id: 20230221-phy-build-deps-760020d940c4

Best regards,
-- 
Mark Brown <broonie@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
