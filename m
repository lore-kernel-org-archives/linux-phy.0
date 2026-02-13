Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0215EF48EE
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 09:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iSdc9P+wtoue5QQacIelJQo4a0DlPfXRLdby/RUJCVI=; b=oq+/+7UfSxOxGv
	3EGQ8FI5XEeJUYadVCcnHSGV80PSubjuSpYTUKzkCWsesnens+ZX5RFb4+aFzgrqItxJIGNExs1Mo
	QR+vunO7ngmuUvLPwGpS4Tx6gxnMn4cV9cmYm6SxB8NsRFc4Ev27dj09ALgridNUObbEGqXBc1LsK
	0NZDZSYAeQrsD3nlGw7/XGTsbsgzn1ZA6gXCqBS3lFdhQc+MdzOuKilQeSGpHi1a8NXkbDvrQBLxS
	6OgLhOUtm4IsppaEPNXpyQ2oVvN+6sfYrLbuchw8EbaxHymKUc/DDofT1us1G2HewBS8a6crMNNrG
	F7/SSC5uomlW3djDZGuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqp8y-00000003DBv-1cy8;
	Fri, 13 Feb 2026 09:07:20 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqp8w-00000003DBl-34UI
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 09:07:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B29266132B;
	Fri, 13 Feb 2026 09:07:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C7A0C116C6;
	Fri, 13 Feb 2026 09:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770973637;
	bh=W/LWsnvp3cad7tMldpHh4EFXdjZoGYCeGPUJl8RNGb8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O2vd52PmJQgdASKdlWc6ve9iWZBraTdFqNTTAPGlN1cKbeZK/uuD90QuviImzNxOH
	 Qgq7iOYKSjgfoEfz8SlqkcjJR0lBil/a6QPrll5Kf/i5FTyeACypyP2Z+pXqv+7teL
	 NHU88uEKaluujOctZRjaMNnV/jvX68ellOkULMz3crjpyiSqA0vFz17Rg7BSegF5hl
	 dcXIorwvYNzFkNc1Nysu3lrut0iqSEn3fAHwnysorBbUIixUy2ckG5RJ2AUIvcPyDX
	 kGbxqQCHaVLwWrYtLI9a7f8gxcv4DAHiQfr8vUFy1/xGcjNk33zcletS8Pgl3MZGwn
	 RLLba5cASco1g==
Received: from johan by rho.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1vqp8n-000000001AK-2OWV;
	Fri, 13 Feb 2026 10:07:09 +0100
Date: Fri, 13 Feb 2026 10:07:09 +0100
From: Johan Hovold <johan@kernel.org>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com,
	neil.armstrong@linaro.org, konrad.dybcio@oss.qualcomm.com,
	Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v3 5/5] phy: qcom: snps-femto-v2: Fix possible NULL-deref
 on early runtime suspend
Message-ID: <aY7pvakkOnaYsd5p@hovoldconsulting.com>
References: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
 <20260205160240.748371-6-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260205160240.748371-6-loic.poulain@oss.qualcomm.com>
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

On Thu, Feb 05, 2026 at 05:02:40PM +0100, Loic Poulain wrote:
> Enabling runtime PM before attaching the hsphy instance as driver data
> can lead to a NULL pointer dereference in runtime PM callbacks that
> expect valid driver data. There is a small window where the suspend
> callback may run after PM runtime enabling and before runtime forbid.

So here too, the commit should reflect that this cannot really happen in
practice.

> Attach the hsphy instance as driver data before enabling runtime PM to
> prevent NULL pointer dereference in runtime PM callbacks.
> 
> Reorder pm_runtime_enable() and pm_runtime_forbid() to prevent a
> short window where an unnecessary runtime suspend can occur.
> 
> Use the devres-managed version to ensure PM runtime is symmetrically
> disabled during driver removal for proper cleanup.
> 
> Fixes: 0d75f508a9d5 ("phy: qcom-snps: Add runtime suspend and resume handlers")
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
