Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44745606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 15:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iTTqC4/5;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=EQXvaxss
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=6UU9Ojr232CDet79hrd625jjOYmcVIw4mI2Xbe4kzL8=; b=iTTqC4/5wobdTyqmejjWGBbTR7
	pXkIvQsawMJcNPRMIuQ7rt9XpEMDUyDcyTY3czrKmeGfp+CiPYnAAsvGMrFJ7aU0AfGfN1HldmYRn
	akM+WayfE9jdQpvP7rOm1lOJofPKs05TaSjNK7Rt/IAJhIbTeaWYQusAcG0zuiStqgs6pisW1EHOG
	4iurxYELbZ+SmilQTLcSt3058GIdH9/JDHCYH4/aEko+Shgtg/0fUMrAdfMSmV6wtjZECSsNwxZNG
	MyDFlX75SX+XMomJJirc2+u5/P+6QscGm5w+wXKe9EXAAOluppnu2uceg2hNFGb/uvRZ+3CAW9B/H
	+QVgHEXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWy3d-0000000Gswk-43m5;
	Fri, 27 Nov 2026 15:40:17 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWy3c-0000000GswI-2h0C
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 15:40:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 60D0844688;
	Fri, 27 Nov 2026 15:40:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E4531F000C1;
	Fri, 27 Nov 2026 15:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795794016;
	bh=tKebX395MPBUtnrs1wapuNSuu9yDp888WscSsnZmE3g=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=EQXvaxss2fZNA1aQjVWEty4gmAnbcXCQ7LXMsZavdxc6MN9KYGeuMME4Qmy0DdZLd
	 wNAVt/GIZGAr9YF2QwZrnF7ZFpMOWpz05nBZTWrfors/BpujWyWR2Aq5MDqJJmwSsc
	 xi8cnWTVsDUQU6LCIZfiQBhrk/8LTVd8fNx7Kb/nx/xkjuUe+pGQIQOlElu2Lf527b
	 eNcOty4GHLATfuDWsAutQLp1fNi6TfipRa2csjbnh0lu4xzSfEWccg/ueW1nssGusK
	 +OAvLXmA8urNGq+A3zJG4ooR2fjKJm19tgPOy0RZ76cSVWDhfatuTHVn35wW516hJG
	 VEh0dmk+onNhg==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: samsung: exynos5250-sata: fix unreliable PLL lock
 timeout
From: Manivannan Sadhasivam <mani@kernel.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-phy@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
In-Reply-To: <20261118191233.376139-1-m.szyprowski@samsung.com>
References: <CGME20261118191239eucas1p1054471efd4b07967555d34a2aed994c0@eucas1p1.samsung.com>
 <20261118191233.376139-1-m.szyprowski@samsung.com>
Date: Fri, 27 Nov 2026 21:10:09 +0530
Message-Id: <179579400918.13164.7642589711897506797.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1415; i=mani@kernel.org;
 h=from:subject:message-id; bh=4fnP70Hwi6oxs/49NcriEAR5sL3O4G7nAt6m7i5s4ks=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCaRc320Fk4ATr3mRxwdqMXXQpeQlGisBquRvW
 NqIHyk/pS+JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawmkXAAKCRBVnxHm/pHO
 9bo/B/905D9IsfVrMtj+WvHvnGRygHeovcwNzp/hX/QSguBA8GcSRjj7J7HEEaw6rTzgc4RncDt
 at+GWy80EImliinHzJwMpR3sWdlWbxMOex9N5PfosSNnk9a+4ZlA7794ofY7hkaY/l44fWYfkhy
 6q5SBL2e1zyXW9xuA368XVXvi9qK8eMNXIr42U3hisSsVNug0hWQ+3YWU4LKxNdQdXGlDqFx/K8
 g1JFHr5wMQqughQWivLitCRdsrZXPWThWCoHuhCYy+zUDqJoSoAKQIa7qMQ+H7NelCOv4Bs3KS6
 A+uMeeiYj6P2EAPrpKntNxWV5NHHx+ElNahxHO5C46Gq6EKx
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-18 20:12 +0100, Marek Szyprowski wrote:
> On Arndale boards the SATA PHY occasionally fails to initialize, which
> makes the AHCI controller probe fail and the attached disk disappear:
> 
>   phy phy-12170000.sata-phy.11: PHY PLL locking failed
>   phy phy-12170000.sata-phy.11: phy init failed --> -14
>   ahci-dwc 122f0000.sata: probe with driver ahci-dwc failed with error -14
> 
> The PLL lock is polled by wait_for_reg_status() with a timeout of
> usecs_to_jiffies(1000). On ARM with the default HZ=100 that rounds up to
> a single jiffy, so the effective timeout is anything between almost zero
> and 10ms, depending on where in the tick period the wait starts. The
> loop also does not re-check the status after the deadline has passed,
> so an interrupt or preemption during polling can turn an already locked
> PLL into a reported failure. Finally, -EFAULT is a misleading error code
> for a timeout.
> 
> Replace the open-coded loop with readl_poll_timeout(), which measures
> time with ktime, performs a final read after the timeout, and returns
> -ETIMEDOUT. Use a 10ms timeout, matching the upper bound of the
> previous behaviour with HZ=100.
> 
> Fixes: bcff4cba41bc ("PHY: Exynos: Add Exynos5250 SATA PHY driver")
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
