Return-Path: <SRS0=3Sk+=OV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 063FEC433F5
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 06:16:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A781B61A51
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 06:16:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A781B61A51
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cYZ1i1AorhQw9cv0rFbIUHfn+kLF0MBPt4I+UuHiRgc=; b=Gay/bvyPOHeiZE
	6sZu4xw89sJXjSlKejrNiGlmtSfi59zmY6iEnW8+bAMLEkAAsy+W/3hH6mdYdjT3AlotTawmqxNzp
	6AEp7aKW254FJSvb999cpuuGzGYYTtNMvVuCZlO9HomaZ+vX+1sz5FvS6VqS8L/k9bG+13cznRaOj
	+b7oZGc9dF2RzXKVuz6m5r0onUDzMbUaTgCydTcux82ZpU9LirZP9BPy8zNdyGHQhl9qh2EF8t1Vf
	FMb79UzPHjSfJZrCEDnLBfL10bYWl54seS4lGOITtQMYijX2FRGx+5eW7eHf2mokP+WxoCfyUNeJE
	4ZLSp8oO0XunE4VRjYbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWBqf-00GmPE-5Z; Fri, 01 Oct 2021 06:16:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWBqT-00GmNn-9U; Fri, 01 Oct 2021 06:16:34 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1B6D961A56;
 Fri,  1 Oct 2021 06:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633068992;
 bh=uRhCoCH0T2pPwyMMrtCZpwXpGhC5/Pvxf2swNMGuqvo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CYo15rKP/+eEA9jDu7WeXeiIRW5WRaUdNgnWj7oceXI3jaALMK+lth8vJ/mSNyfGo
 EGqbj98H++YaQ2dwPPsyNJqM9rnpHKfF9sYUekJ8YCLeQQuuMUV6RhyLOe4oghx65e
 w0AFDsfGWKeo/UrAUfBLJ2otGgTP5eed1KLXmWSgGRf/ZFIsme0CjNculOe4YtgPeK
 yMFWxV4jlmqq1E6lb5rEbYVO8dxliZwovX+vyqg8CpRyEc/gCFtk77XACPpDcrHufg
 2yxMzLRJpiJgEc+qX8iA+rXSuQ1PdTTx697QvkLnSTTp9qR77FzpYypr95PqdRPzsC
 kGOu6BSAPgUBA==
Date: Fri, 1 Oct 2021 11:46:28 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, Chanho Park <chanho61.park@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 1/2] phy: samsung: unify naming and describe driver in
 KConfig
Message-ID: <YVanvDPnpCpYjPgL@matsya>
References: <20210924132658.109814-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210924132658.109814-1-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210930_231633_396420_46A3F207 
X-CRM114-Status: UNSURE (   5.88  )
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

On 24-09-21, 15:26, Krzysztof Kozlowski wrote:
> We use everywhere "Samsung" and "Exynos", not the uppercase versions.
> Describe better which driver applies to which SoC, to make configuring
> kernel for Samsung SoC easier.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
