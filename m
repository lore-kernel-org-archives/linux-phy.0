Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E857606A32D
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 11:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IBZLPTA7;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=YdJwbNPF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Mk+0oSB0r1ALK49+S6SbKLxGgOACAz3kP1GfAmDPATQ=; b=IBZLPTA73elD+r2uQywNhMKYUw
	/FA0Vg536PFqPXFXynrKSJhFu8njys0wKj3uXfYiB/iT2zwib1ct+l9pG4YjxDvfSYa2DbIUx9cCl
	PmEUn0tVetOxKnCIZxV4yjNQZAPiGqVI2mQd5yZU6/58uT3FyWYLKryDNXukbG4NF2TIGiz3iD7VR
	V+Kotff7qhu3rNrFnZSqju69HoRL5miLmq14CNp4uQBVrwfXvRZKQN0VK9aFAXuq6HroCkpNOQ/Kf
	d3lsBUmLpx0zODoneZ1N27qT5NgWm7AiMfeHh5Lwl3F7Bth42pq3P4YXMITm+nHQdvEUkdAE4EOfX
	BJTTac9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM1nN-00000006rGj-0VIH;
	Wed, 28 Oct 2026 11:26:17 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM1nL-00000006rGc-452N
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 11:26:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EDEB360120;
	Wed, 28 Oct 2026 11:26:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE3591F01825;
	Wed, 28 Oct 2026 11:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793186774;
	bh=/sE16aGDaCkN/EIpOu3CIs8WvRvo9DtyJnWQtEnGXBQ=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=YdJwbNPFKcKbVvIVx9IFYAXcOmOjY1ccSluwasVu8WepyWG8qaWeqwEkUMCHBICyo
	 a2bZeKuP63FutEcEjJ5XsVNV4xqWY2gd4RhcdhA1VQ5SmdJS94b5gRSgoSieLZdIXG
	 d9wvMn/diivuRdWBxgo6q2HJxnQgRr7vp1fEuWEjaS/SSNbrp0zw06bFz6Ntl2XthK
	 eITiOcGjhpQlBLHdHi5nF4t3dL8ew4rSFD8bTmgiLL3P7Frw1rduL+YX868DKWsi4x
	 u2wPJT6NCUk7mElxrLTIplSj3j2xrkY5Sl3J87vhStjG7yU9FL9gI6H8nn1HjWesQP
	 4hnLVRuAdc9Rw==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: qualcomm: qmp-combo: Differentiate clocks related
 to the USB block
From: Manivannan Sadhasivam <mani@kernel.org>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 jason.pettit@oss.qualcomm.com
In-Reply-To: <20260930-qmp_phy_usb_clks_v1-v1-1-d4dccc9eb263@oss.qualcomm.com>
References: <20260930-qmp_phy_usb_clks_v1-v1-1-d4dccc9eb263@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 16:56:07 +0530
Message-Id: <179318676785.5872.8903659001969511852.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=753; i=mani@kernel.org;
 h=from:subject:message-id; bh=PXDcYlRfxhpVoV3buVH6AaRX+9doHJ/a8b5z79Vu5xc=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq4dvSN2fuAy5c7TedFxYydDa0vs0rXW0E/R1dm
 4gDCH430g+JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCauHb0gAKCRBVnxHm/pHO
 9Ym4B/40HJgdzcY0y1BiwZbFSTw05uZKzx3wjH3V0I7oOt2PdzQbNR/Z4v4zo1q0SaHM8dIGR52
 r1qOPGYnZ3dsxUD7UrKurQyYzY9xTUJHGqD2BHX1DZ7prdwC3wGxAASGyk06BaWSh2xr68s0QNR
 wVnU0eX9cUXpWuBlPLV5bXyF910OKjmtXgKll6gjBSD5tHPtQxv9fIpKs002jBVhi4RgRP/1RCF
 AvgSc8T/AewVjMO2LiyZNNpGLS0jtmz/f5IdwhVsuJyU2vkqSGR4cbSWvCmls74+/zWmZxg1+a0
 AUjFzNiH8h8amWAAyKAIq4lXpl5s5T6dDIrvU2dgVL50k9gn
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

On 2026-09-30 18:16 -0700, Wesley Cheng wrote:
> The Qualcomm QMP combo PHY has a USB and Displayport block that is
> sourced with different clocks.  In situations where the USB path is not
> utilized, and only Displayport is active, unnecessary clocks are enabled
> and not used.  Split the current clock list into USB specific clocks,
> which will be enabled whenever the USB initialization routine is
> executed.
> 
> In addition, move autonomous mode control specifically when USB is
> active, as its primary purpose is to detect RX detection and LFPS
> signals, which occurs only when USB is active.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>

Please take a look at the issues pointed out by Sashiko.

- Mani


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
