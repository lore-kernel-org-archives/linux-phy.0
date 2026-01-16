Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06096D4A5E4
	for <linux-phy@archiver.kernel.org>; Fri, 16 Jan 2026 02:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vAz3r39fRRqSsZ7dq+kR4yYVS59rZeLxDgjjCcwZP30=; b=kbvHGLUDBC93rs
	lKDDBSJjQwdC5E836l8B9beI82NLzboMFaPgd7dmpDEh6hcuWUz06H+6son322NFE+p1WaK+Y8tgz
	z4GJdCAfogzltg4a/+QDZkTj5OX8PLzvko9cBgmtZDRqKVSakpqFtlFk7kExsi1eEH3ahi31OZvHk
	zPUUWztJ+HLwMXUqzqHzyFUkCQ7LxCvcJoVAoAQijQh06QDngfLQwxB0pPm6OyraKDG8fvap4gKWf
	RffyUl5LU1ZjLjXY7PoB6+8vLVxLEBppCMbInhXtbZdi5Nv84VhUqfz6drSddDa4AYH0YgvWE75Rb
	PiIZXFHSkh/nCc3kP85w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgZBT-0000000DRbT-3A1S;
	Fri, 16 Jan 2026 02:03:31 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgZBR-0000000DRb9-1EMd
	for linux-phy@lists.infradead.org;
	Fri, 16 Jan 2026 02:03:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9139D442F1;
	Fri, 16 Jan 2026 02:03:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A952C116D0;
	Fri, 16 Jan 2026 02:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768529008;
	bh=DkpW3zYqmOwUKSxDph4dzyzLm9SF8AXpnbf5qImijEs=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=WDSprsMLMODh21KcQsCnCCx6GPBHrrzvGmRZxShpKF4CjYiSrGajH6BoFOyJl0BMO
	 EI1P5PpfxYF8Vf2VU8eIRMIUC+8oAUOQ1QDsBf75icIoVXPWNdFd69ucX/aDS8QNRZ
	 CWyCmDWx7zvLL6y6cS/pLk7YMLAjs2sncAHYclHPfqVzX+CW23EmqDg10bNXYacx/Y
	 DUXUjcT2dgqcLScFqxFGSAcCpdwr1FHOLvLJ4LF1K0AmD7B3KorhGkz3MwWjAybiMG
	 +uCyG+1SDT9YuOQATetjfrvnAwVpxbRzkvxntGRTzzjukvEzteofEXRuU1cgo3ybqF
	 g3veFPMtwCfhg==
MIME-Version: 1.0
In-Reply-To: <20260114092742.13231-3-angelogioacchino.delregno@collabora.com>
References: <20260114092742.13231-1-angelogioacchino.delregno@collabora.com> <20260114092742.13231-3-angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v8 02/10] spmi: Print error status with %pe format
From: Stephen Boyd <sboyd@kernel.org>
Cc: dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, sre@kernel.org, angelogioacchino.delregno@collabora.com, krzk@kernel.org, dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com, melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com, ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org, luca.weiss@fairphone.com, konrad.dybcio@oss.qualcomm.com, mitltlatltl@gmail.com, krishna.kurapati@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, kernel@collabora.com
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, jic23@kernel.org
Date: Thu, 15 Jan 2026 20:03:26 -0600
Message-ID: <176852900658.16445.9455000795236599425@lazor>
User-Agent: alot/0.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_180329_381846_CE618565 
X-CRM114-Status: UNSURE (   3.92  )
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

Quoting AngeloGioacchino Del Regno (2026-01-14 03:27:34)
> Instead of printing just a number, use the %pe format for error
> status, increasing readability of error prints.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
