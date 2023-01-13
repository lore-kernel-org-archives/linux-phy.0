Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AD00C3DA78
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 19:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uxiPwmFbWIzh/ZXY7MwtsLBk/QOj26fHHRYC0rsZzL8=; b=bRecU3oZpvShZn
	/kCVF+T91VsJeGtO1QTCwKv2/vbcjSsu2HQlEMK/uqyum9P34tRapGIBmv5VcNT0xzligOA6I92NL
	9ht7R4ekA1TiJRYQ3lbNpTQ7YPOnwUkUcUYIg45+KLv+OPz6/qgRtw3/g2C8Wi0Rmx27NC1C+H/8v
	JJ3GElvGtIjUXsq9OG3Xeubzz/N8vxlSC7wp4LhvtDOYw0qWzKkj1awkJg0bBNN3Ko/pLNSwaYdSE
	WH0y7EWxP7ADwv4uaNkYiiuuucyeDGtWxMsnHSi3PkONIXlXvWmtObDNFqLJ0fnVaKp93z4Bt4wQa
	STIvYTL7JhWPEaFB2LSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGPUY-004BCf-HT; Fri, 13 Jan 2023 19:13:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGPUW-004BCU-NR
	for linux-phy@bombadil.infradead.org; Fri, 13 Jan 2023 19:13:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=Et22JhnKg/kt2UBl4SoRivvBu8s0rw17xl6bojKJNDo=; b=MRxkmwfMfEkJPV+hD1HbtIaAO8
	xYpwsFI4lQbMaRAtCjCjzLGL8rTNkSCSrtvT0lsiucZbK6Acni9EbzaYtWzA48EcvTzcW5yjuZ61Z
	V1EyoyXps0UjadhwUv9RnNdQUO9eZZ5dZU4He70eAIGxsJQmE78q/MV0mJgJDKgvQ49cPALl5UsBi
	zwApCh+DRv52CtVVSQ/kKigxwDt5rlnfM7ML9oyfrqibFd3c7zdveEf6wUcFOIFZhlVwALKaLTyTC
	uFVfaSR/6sSNAbmflglcTJHDMbIqSkpuid6fPYBX8OqYUluGfVA9VtVZ+zS47IAMr5g4CNWRB86Z8
	uq5x35ow==;
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pGOgN-004Qjs-16
	for linux-phy@lists.infradead.org;
	Fri, 13 Jan 2023 18:21:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 3A4F0CE20F3;
	Fri, 13 Jan 2023 18:21:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A477DC433D2;
	Fri, 13 Jan 2023 18:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673634099;
	bh=tWt/37/DUHtIfoFRxoBH6pc5cjTsClvEGdHWSa/YyJA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nN5SRtxlC7Gg1oDu7kOWHxD1mO73wz+1GrJhLh9qFV+8JrX7LVTVgdZudnADAsrFx
	 A+xfQKPuA5qiHOMUW92idfUvEuMQG48l2NAGe1aD7/JX75qr4X0hRlJUJs/W8Uf0lF
	 REuFSr+UReGbj7O4PIcctmBYnFK+jyHE6iX8qYWf4rr9fZKwiW4rX2yTVmnhpuYB5u
	 if4Ly45tUzzE3lgf+bH4oKblt7qd5UsoN6Q4etMHHhPZgbfir0rOv0ooGXWFMO6/dV
	 D36D3S7WLr41GkUlHGhu75sF15l8Te0Pdwfwj+hvXpTZx90iq+IMsrSGwgKTcp/MSy
	 5jLYRiQ9v4ePA==
Date: Fri, 13 Jan 2023 23:51:35 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Lux Aliaga <they@mint.lgbt>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	kishon@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
	bvanassche@acm.org, keescook@chromium.org, tony.luck@intel.com,
	gpiccoli@igalia.com, ~postmarketos/upstreaming@lists.sr.ht,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org, linux-hardening@vger.kernel.org,
	phone-devel@vger.kernel.org, martin.botka@somainline.org,
	marijn.suijten@somainline.org, Dhruva Gole <d-gole@ti.com>
Subject: Re: [PATCH v6 2/6] dt-bindings: phy: Add QMP UFS PHY compatible for
 SM6125
Message-ID: <Y8GhL0B1llPLLAhX@matsya>
References: <20230108195336.388349-1-they@mint.lgbt>
 <20230108195336.388349-3-they@mint.lgbt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230108195336.388349-3-they@mint.lgbt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_182139_680294_CBEAA386 
X-CRM114-Status: UNSURE (   6.00  )
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

On 08-01-23, 16:53, Lux Aliaga wrote:
> Document the QMP UFS PHY compatible for SM6125.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
